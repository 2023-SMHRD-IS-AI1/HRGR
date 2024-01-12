drop table member;
select * from tb_cust;
-- Member 테이블 생성
create table member(
	email varchar(100) not null,
	pw varchar(100) not null,
	phone varchar(100) not null,
	address varchar(100) not null,
	name varchar(100) not null,
	birth varchar(100) not null,
	gender varchar(100) not null,
	primary key(email)
);

-- test 데이터
insert into member(email, pw, tel, address)
values('admin@smhrd.com', '1234', '010-0000-0000', '서구 금호동');

select * from tb_cust;
       
SELECT * FROM tb_cust
WHERE cust_phone = '456';


-- Message 테이블 생성
create table message(
	num int not null auto_increment,
	sendE varchar(100) not null,
	receiveE varchar(100) not null,
	message varchar(2000) not null,
	senddate datetime default now(),
	primary key(num)
);

insert into message(sendE, receiveE, message) values('test1', 'test1', 'test1');
insert into message(sendE, receiveE, message) values('test2', 'test2', 'test2');
insert into message(sendE, receiveE, message) values('test3', 'test3', 'test3');

select * from message;

select * from message where receiveE='admin';

delete from message where receiveE='admin';

-- board 테이블 생성
create table board(
	idx int not null auto_increment,
	title varchar(100) not null,
	writer varchar(100) not null,
	filename varchar(100) not null,
	content varchar(2000) not null,
	b_date datetime default now(),
	primary key(idx)
);

select * from board;

select * from board order by b_date desc;



ALTER TABLE tb_cust
MODIFY COLUMN cust_id INT AUTO_INCREMENT;

DELETE FROM tb_cust;

DROP TABLE IF EXISTS tb_favorite;
DROP TABLE IF EXISTS tb_diary_image;
DROP TABLE IF EXISTS tb_review;
DROP TABLE IF EXISTS tb_qna;
DROP TABLE IF EXISTS tb_order_detail;
DROP TABLE IF EXISTS tb_order;
DROP TABLE IF EXISTS tb_prod_image;
DROP TABLE IF EXISTS tb_prod;
DROP TABLE IF EXISTS tb_diary;
DROP TABLE IF EXISTS tb_seller;
DROP TABLE IF EXISTS tb_cust;


CREATE TABLE tb_cust
(
     cust_id          INT UNSIGNED AUTO_INCREMENT COMMENT '회원 아이디', 
     cust_pw          VARCHAR(100)      NOT NULL    COMMENT '회원 비밀번호', 
     cust_name        VARCHAR(40)      NOT NULL    COMMENT '회원 이름', 
     cust_nick        VARCHAR(20)      NOT NULL    COMMENT '회원 닉네임', 
     cust_email       VARCHAR(50)      NOT NULL    COMMENT '회원 이메일', 
     cust_phone       VARCHAR(20)      NOT NULL    COMMENT '회원 연락처', 
     cust_birthdate   DATE             NOT NULL    COMMENT '회원 생년월일', 
     cust_gender      CHAR(1)          NOT NULL    COMMENT '회원 성별', 
     cust_addr        VARCHAR(1000)    NOT NULL    COMMENT '회원 주소', 
     joined_at        DATETIME         NOT NULL    COMMENT '회원 가입일자', 
     cust_role        CHAR(1)          NOT NULL    COMMENT '회원 구분', 
    PRIMARY KEY (cust_id)
);
select * from tb_cust ;
ALTER TABLE tb_cust COMMENT '회원';

CREATE TABLE tb_prod
(
    `prod_idx`    INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '상품 식별자', 
    `prod_name`   VARCHAR(50)     NOT NULL    COMMENT '상품명', 
    `prod_desc`   TEXT            NOT NULL    COMMENT '상품 설명', 
    `prod_type`   VARCHAR(20)     NOT NULL    COMMENT '상품 타입', 
    `prod_price`  INT             NOT NULL    COMMENT '상품 가격', 
    `prod_stock`  INT             NOT NULL    COMMENT '상품 재고', 
    `cust_id`     VARCHAR(30)     NOT NULL    COMMENT '회원 아이디', 
    `created_at`  TIMESTAMP       NOT NULL    COMMENT '등록 일시', 
     PRIMARY KEY (prod_idx)
);

ALTER TABLE tb_prod COMMENT '상품';

ALTER TABLE tb_prod
    ADD CONSTRAINT FK_tb_prod_cust_id_tb_cust_cust_id FOREIGN KEY (cust_id)
        REFERENCES tb_cust (cust_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
