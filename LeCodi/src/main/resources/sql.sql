-- 회원 table
create table tbl_member(
    userid varchar2(20) primary key        -- ID
    ,password varchar2(50) not null        -- PW
    ,name varchar2(20) not null            -- name
    ,birth varchar2(30)                    -- 생년월일
    ,phonenumber1 varchar2(20)             -- 핸드폰 번호1
    ,phonenumber2 varchar2(20)             -- 핸드폰 번호2
    ,phonenumber3 varchar2(20)             -- 핸드폰 번호3
    ,postcode number(20)                   -- 우편번호
    ,address_primary varchar2(300)         -- 기본주소
    ,address_detail varchar2(300)          -- 상세주소
    ,email_id varchar2(100)                -- 이메일 ID
    ,email_domain varchar2(100)            -- 이메일 도메인
);

commit;

-- 비회원 table
create table non_member(
    phonenumber varchar2(20) primary key   -- 핸드폰 번호
    ,orderpw number(4) not null            -- 주문비밀번호
    ,address varchar2(300)                 -- 주소
    ,postcode varchar2(20)                 -- 우편번호
);

commit;

-- 창고(오프라인) table
create table tbl_store(
    storecode number(10) primary key        -- 창고(오프라인) 코드
    ,location varchar2(300)                 -- 위치
    ,phonenumber varchar2(20)               -- 오프라인 전화번호
);

commit;

-- 배송 table
create table shipment(
    shippingnumber number(10) primary key       -- 배송번호
    ,shippingamount number(30) default 0        -- 배송수량
    ,shippingdate date default sysdate          -- 배송날짜
    ,shippingaddress varchar2(300)              -- 배송주소
    ,shippingPHnumber varchar2(20)              -- 배송지 전화번호
); 

-- 회원 주문 table
create table tbl_order(
    ordernumber number(10) primary key          -- 주문번호   
    ,orderdate date default sysdate             -- 작성날짜 
    ,userid varchar2(20) not null               -- 유저ID     fk
    ,shippingnumber number(10) not null         -- 배송번호    fk
    ,shippingaddress varchar2(300)              -- 배송주소
    ,shippingPHnumber varchar2(20)              -- 배송지 전화번호
    ,extrarequest varchar2(300)                 -- 기타요구사항
    ,constraint order_userid_fk foreign key (userid) 
    references tbl_member(userid) on delete cascade
    ,constraint order_shippingnumber_fk foreign key(shippingnumber) 
    references shipment(shippingnumber) on delete cascade
);

commit;

-- 비회원 주문 table
create table nonmem_order(
    ordernumber number(10) primary key          -- 주문번호   
    ,orderdate date default sysdate             -- 작성날짜 
    ,phonenumber not null                       -- 임시아이디    fk
    ,shippingnumber number(10) not null         -- 배송번호      fk
    ,shippingaddress varchar2(300)              -- 배송주소
    ,shippingPHnumber varchar2(20)              -- 배송지 전화번호
    ,extrarequest varchar2(300)                 -- 기타요구사항
    ,constraint nonmem_order_phonenumber_fk foreign key (phonenumber) 
    references non_member(phonenumber) on delete cascade
    ,constraint nonmem_order_shippingnumber_fk foreign key (shippingnumber) 
    references shipment(shippingnumber) on delete cascade
);

commit;

-- 제품 table
create table product (
    productcode number primary key              -- 제품번호
    ,ordernumber number(10)                     -- 주문번호     fk
    ,productamount number(10) default 0         -- 재고
    ,price number(30)                           -- 가격
    ,cloth_category varchar2(20)                      -- 카테고리
    ,manufaturedDate date default sysdate       -- 생산일자
    ,discountrate number(10) default 0          -- 할인율
    ,cloth_size number(10)                            -- 옷 사이즈
    ,color varchar2(20)                         -- 옷 색상
    ,imageaddress varchar2(300)                 -- 이미지 저장 주소
    ,constraint product_ordernumber_fk foreign key (ordernumber) 
    references nonmem_order(ordernumber) on delete cascade
);

commit;

-- 창고(오프라인) 재고 table
create table products(
    storecode number(10) not null               -- 창고(오프라인)코드  fk
    ,productcode number(10) not null            -- 제품번호
    ,productamount number(10) default 0         -- 재고
    ,constraint products_storecode_fk foreign key (storecode) 
    references tbl_store(storecode) on delete cascade
);

commit;

-- 카트 table 
create table cart(
    cartdate date default sysdate primary key   -- 카트에 담은 날짜
    ,userid varchar2(20) not null               -- 사용자ID fk
    ,productcode number(10) not null            -- 제품코드 fk
    ,cartmount number (10)                      -- 카트에 담은 수량
    ,constraint cart_userid_fk foreign key (userid) 
    references tbl_member(userid) on delete cascade
    ,constraint cart_productcode_fk foreign key (productcode) 
    references product(productcode) on delete cascade
);

commit;

-- 공지 table
create table notice(
    boardnum number(10) primary key             -- 글 번호
    ,title varchar2(30) not null                -- 글 제목
    ,context varchar2(2000) not null            -- 글 내용
    ,userid varchar2(20) not null               -- 사용자ID(관리자) fk
    ,inputdate date default sysdate             -- 게시글 등록 날짜
    ,constraint notice_userid_fk foreign key (userid) 
    references tbl_member(userid) on delete cascade
);

commit;

-- 공지 게시판에 사용할 시퀀스
CREATE SEQUENCE seq_notice START WITH 1 INCREMENT BY 1;

commit;

-- 댓글  table
create table reply(
    replynum   number(10)   primary key          -- 댓글 번호
    ,userid   varchar2(20)   not null            -- 유저ID fk
    ,context   varchar2(2000)   not null         -- 댓글 내용
    ,inputdate   date   default sysdate          -- 댓글 등록 날짜
    ,boardnum   number(10)                       -- 글 번호 fk
    ,constraint reply_userid_fk foreign key (userid) 
    references tbl_member(userid) on delete cascade
    ,constraint reply_boardnum_fk foreign key (boardnum) 
    references notice(boardnum) on delete cascade
);

-- 질문게시판에 사용할 시퀀스
CREATE SEQUENCE seq_reply START WITH 1 INCREMENT BY 1;  

-- 문의글 table
create table qna(
    boardnum number(10) primary key             -- 글 번호
    ,title varchar2(30) not null                -- 글 제목
    ,context varchar2(2000) not null            -- 글 내용
    ,userid varchar2(20) not null               -- 사용자ID(관리자) fk
    ,inputdate date default sysdate             -- 게시글 등록 날짜
    ,constraint qna_userid_fk foreign key (userid) 
    references tbl_member(userid) on delete cascade
);

-- 문의 게시판에 사용할 시퀀스
CREATE SEQUENCE seq_qna;






-- ↓ 이 아래는 아직 테이블 추가 안한 수정 전 버전 논의 필요

-- 후기 table
create table review(
    boardnum number(10) primary key             -- 글 번호
    ,title varchar2(30) not null                -- 글 제목
    ,context varchar2(2000) not null            -- 글 내용
    ,userid varchar2(20) not null               -- 사용자ID(관리자) fk
    ,inputdate date default sysdate             -- 게시글 등록 날짜
    ,constraint notice_userid_fk foreign key (userid) 
    references tbl_member(userid) on delete cascade
);




insert into tbl_member values('admin', 'rhksfl', 'Le Codi', '991111', '010', '1234', '5678', '99999', '서울시 서울동', '서울아파트 101동 101호', '99999', 'naver.com');
