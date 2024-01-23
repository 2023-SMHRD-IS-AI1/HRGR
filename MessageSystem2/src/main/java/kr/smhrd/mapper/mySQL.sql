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
DROP TABLE IF EXISTS tb_diary;
DROP TABLE IF EXISTS tb_seller;
DROP TABLE IF EXISTS tb_cust;
DROP TABLE IF EXISTS tb_prod;


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

        
delete from tb_cust;

-- cust_id 번호초기화
ALTER TABLE tb_cust AUTO_INCREMENT = 1;

-- tb_cust 초기화
DELETE FROM tb_cust;

-- tb_cust 조회
select * from tb_cust ;
use campus_23IS_LI1_hack_1;
-- tb_prod조회
select * from tb_prod 

tb_cust테이블
cust_id, cust_pw, cust_name, cust_nick, cust_email, cust_phone, cust_birthdaate, cust_gender, cust_addr, joined_at, cust_role

tb_prod테이블
prod_idx prod_name prod_desc prod_type prod_price prod_stock  cust_id created_at

tb_review 테이블
review_idx prod_idx cust_id review_content prod_ratings reviewed_at
insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과', '농산물', '20000', '50', 1, NOW());

insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '20000', '50', 2, NOW());

select * from 
-- 사과 검색했을때 상품평점순으로 보여주기
SELECT
    tb_prod.prod_idx,
    tb_prod.prod_name as prod_name ,
    tb_prod.prod_desc as prod_desc,
    tb_prod.prod_type,
    tb_prod.prod_price,
    tb_prod.prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_cust.cust_name,
    tb_cust.cust_nick,
    tb_cust.cust_phone,
    tb_cust.cust_addr,
    tb_review.review_idx,
    tb_review.review_content,
    tb_review.prod_ratings,
    tb_review.reviewed_at
FROM
    tb_prod
JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
JOIN
    tb_review ON tb_prod.prod_idx = tb_review.prod_idx
WHERE
    tb_prod.prod_name LIKE '%사%'
ORDER BY
    tb_review.prod_ratings DESC;
    
    

prod_idx prod_idx review_content prod_ratings reviewed_at


insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(2,2,'맛있다.',3,NOW());

select * from tb_seller ;


update tb_cust set cust_role='S' where cust_id=1


insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '23000', '41', 3, NOW());

insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '20400', '30', 4, NOW());
insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '24300', '20', 5, NOW());
insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '45000', '60', 6, NOW());
insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '22000', '10', 7, NOW());
insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '22000', '30', 8, NOW());
insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '55000', '20', 9, NOW());
insert into tb_prod (prod_name, prod_desc, prod_type, prod_price, prod_stock, cust_id, created_at) 
values('사과', '맛있는 사과1', '농산물1', '210000', '10', 10, NOW());

insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(3,2,'맛있다.',1,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(4,2,'맛있다.',2,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(5,2,'맛있다.',5,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(6,2,'맛있다.',4,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(7,2,'맛있다.',2,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(8,2,'맛있다.',2,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(9,2,'맛있다.',1,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(10,2,'맛있다.',3,NOW());
insert into tb_review(prod_idx,cust_id, review_content, prod_ratings, reviewed_at) values(11,2,'맛있다.',2,NOW());


select *  from tb_favorite

select * from tb_prod_image

    
    
    select * from tb_prod 
    
    UPDATE tb_cust
SET
    cust_pw = '새로운_비밀번호',
    cust_nick = '새로운_닉네임',
    cust_email = '새로운_이메일',
    cust_phone = '새로운_전화번호',
    cust_birthdate = '새로운_생년월일',
    cust_addr = '새로운_주소'
    
WHERE
    cust_name = '찾을_이름';
    
    
CREATE TABLE tb_order
(
    `order_idx`        INT UNSIGNED     NOT NULL    AUTO_INCREMENT COMMENT '주문 식별자', 
    `prod_idx`         INT UNSIGNED     NOT NULL    COMMENT '상품 식별자', 
    `cust_id`          VARCHAR(30)      NOT NULL    COMMENT '주문자 아이디', 
    `total_amunt`      INT              NOT NULL    COMMENT '주문 총금액', 
    `discount_amount`  INT              NOT NULL    COMMENT '할인 금액', 
    `pay_amount`       INT              NOT NULL    COMMENT '결제 대상 금액', 
    `pay_method`       VARCHAR(10)       NOT NULL    COMMENT '결제 수단', 
    `paid_amount`      INT              NOT NULL    COMMENT '결제 금액', 
    `delivery_addr`    VARCHAR(1000)    NOT NULL    COMMENT '배송지 주소', 
    `receiver_name`    VARCHAR(50)      NOT NULL    COMMENT '수령자 명', 
    `receiver_phone`   VARCHAR(20)      NOT NULL    COMMENT '수령자 연락처', 
    `delivery_msg`     TEXT             NOT NULL    COMMENT '배송 메시지', 
    `order_status`     VARCHAR(5)       NOT NULL    COMMENT '주문 상태', 
    `ordered_at`       DATETIME         NOT NULL    COMMENT '주문 일자', 
     PRIMARY KEY (order_idx)
);

insert into tb_order (prod_idx,cust_id,total_amunt,discount_amount,pay_amount,pay_method,paid_amount,delivery_addr,receiver_name,receiver_phone,delivery_msg,
 order_status,ordered_at)values(31,1,12000,1000,11000,'카드',10000,'광주','상권','010451112','132','결제완료',NOW())

    select * from tb_order
    
SELECT tb_order.*, tb_prod.prod_name AS prod_name, tb_prod_img.img_name AS img_name
FROM tb_order
JOIN tb_prod ON tb_order.prod_idx = tb_prod.prod_idx
LEFT JOIN tb_prod_image tb_prod_img ON tb_prod.prod_idx = tb_prod_img.prod_idx
WHERE tb_order.cust_id = 1;
    
  
select * from tb_favorite


SELECT
    p.prod_idx AS prod_idx,
    p.prod_name AS prod_name,
    p.prod_price AS prod_price,
    di.img_name AS img_name
FROM
    tb_favorite f
JOIN
    tb_prod p ON f.prod_idx = p.prod_idx
JOIN
    tb_prod_image di ON p.prod_idx = di.prod_idx
WHERE
    f.cust_id = 1;
    
    CREATE TABLE tb_review
(
    `review_idx`      INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '리뷰 식별자', 
    `prod_idx`        INT UNSIGNED    NOT NULL    COMMENT '상품 식별자', 
    `cust_id`         VARCHAR(30)     NOT NULL    COMMENT '회원 아이디', 
    `review_content`  TEXT            NOT NULL    COMMENT '리뷰 내용', 
    `prod_ratings`    INT             NOT NULL    COMMENT '상품 평점', 
    `reviewed_at`     DATETIME        NOT NULL    COMMENT '작성 일자', 
     PRIMARY KEY (review_idx)
);
    
select * from tb_review where cust_id = 1
insert into tb_review (prod_idx,cust_id,review_content,prod_ratings,reviewed_at)
values(25,1,'진짜 개맛있다.',5,NOW())

SELECT
    p.prod_name,
    i.img_name,
    r.*
FROM
    tb_prod p
LEFT JOIN
    tb_prod_image i ON p.prod_idx = i.prod_idx
LEFT JOIN
    tb_review r ON p.prod_idx = r.prod_idx
WHERE
    p.cust_id = 1

UNION

SELECT
    p.prod_name,
    i.img_name,
    r.*
FROM
    tb_prod p
RIGHT JOIN
    tb_prod_image i ON p.prod_idx = i.prod_idx
RIGHT JOIN
    tb_review r ON p.prod_idx = r.prod_idx
WHERE
    p.cust_id = 1;
    
    
    
   SELECT
    p.prod_name,
    pi.img_name,
    r.*
FROM
    tb_prod p
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
LEFT JOIN
    tb_review r ON p.prod_idx = r.prod_idx
WHERE
    p.cust_id = 1

UNION

SELECT
    p.prod_name,
    pi.img_name,
    r.*
FROM
    tb_prod p
RIGHT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
RIGHT JOIN
    tb_review r ON p.prod_idx = r.prod_idx
WHERE
    p.cust_id = 1;
    
    
    
 SELECT
    r.*,
    pi.img_name
FROM
    tb_review r
INNER JOIN
    tb_prod_image pi ON r.prod_idx = pi.prod_idx
WHERE
    r.cust_id = 1;
    
    
    
    
    SELECT
    r.*,
    pi.img_name AS img_name,
    p.prod_name
FROM
    tb_review r
INNER JOIN
    tb_prod_image pi ON r.prod_idx = pi.prod_idx
LEFT JOIN
    tb_prod p ON r.prod_idx = p.prod_idx
WHERE
    r.cust_id = 1;
    
    SELECT
    r.*,
    pi.img_name AS img_name,
    p.prod_name AS prod_name,
    p.prod_idx AS prod_idx
FROM
    tb_review r
LEFT JOIN
    tb_prod_image pi ON r.prod_idx = pi.prod_idx
LEFT JOIN
    tb_prod p ON r.prod_idx = p.prod_idx
WHERE
    r.cust_id = 1;
    
    
    
    SELECT
    p.prod_idx AS prod_idx,
    p.prod_name AS prod_name,
    p.prod_price AS prod_price,
    di.img_name AS img_name
FROM
    tb_favorite f
JOIN
    tb_prod p ON f.prod_idx = p.prod_idx
JOIN
    tb_prod_image di ON p.prod_idx = di.prod_idx
WHERE
    f.cust_id = #{cust_id};
    
    SELECT
    p.prod_idx AS prod_idx,
    p.prod_name AS prod_name,
    p.prod_price AS prod_price,
    di.img_name AS img_name
FROM
    tb_favorite f
JOIN
    tb_prod p ON f.prod_idx = p.prod_idx
LEFT JOIN
    tb_prod_image di ON p.prod_idx = di.prod_idx
WHERE
    f.cust_id = 1;
    
    
    
    CREATE TABLE tb_qna
(
    `qna_idx`        INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '질답 식별자', 
    `cust_id`        VARCHAR(30)     NOT NULL    COMMENT '회원 아이디', 
    `prod_idx`       INT UNSIGNED    NOT NULL    COMMENT '상품 식별자', 
    `question`       TEXT            NOT NULL    COMMENT '질문 내용', 
    `questioned_at`  DATETIME        NOT NULL    COMMENT '질문 일시', 
    `answer`         TEXT            NOT NULL    COMMENT '답변 내용', 
    `answered_at`    DATETIME        NOT NULL    COMMENT '답변 일시', 
     PRIMARY KEY (qna_idx)
);


insert into tb_qna (cust_id,prod_idx,question,questioned_at,answer,answered_at)
values(1,25,'오늘 배송오나요?',NOW(),'아뇨 내일 갑니다.',NOW())


SELECT
    q.qna_idx AS qna_idx,
    q.cust_id AS cust_id,
    q.prod_idx AS prod_idx,
    q.question AS question,
    q.questioned_at AS questioned_at,
    q.answer AS answer,
    q.answered_at AS answered_at,
    p.prod_name AS prod_name,
    pi.img_name AS image_name,
    p.cust_id AS product_customer_id,
    s.company_name AS seller_company_name
FROM
    tb_qna q
JOIN
    tb_prod p ON q.prod_idx = p.prod_idx
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
LEFT JOIN
    tb_seller s ON q.cust_id = s.cust_id
WHERE
    q.cust_id = 9;
    
    select * from tb_cust where cust_id=1
    update tb_cust set cust_role='S' where cust_id=9
    
  select * from tb_prod where cust_id=9
    
select * from tb_cust; 
  

SELECT
    r.cust_id,
    p.prod_name AS prod_name,
    p.prod_price AS prod_price,
    pi.img_name AS img_name,
    r.prod_ratings AS prod_ratings
FROM
    tb_review r
JOIN
    tb_prod p ON r.prod_idx = p.prod_idx
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
WHERE
    p.cust_id = 9;
  12-25  
  select * from tb_review
  
  insert into tb_review (prod_idx,cust_id,review_content,prod_ratings,reviewed_at)
values(19,1,'뭐맛있다.',5,NOW())


CREATE TABLE tb_diary_image
(
    `img_idx`        INT UNSIGNED     NOT NULL    AUTO_INCREMENT COMMENT '이미지 식별자', 
    `diary_idx`      INT UNSIGNED     NOT NULL    COMMENT '일지 식별자', 
    `img_name`       VARCHAR(250)     NOT NULL    COMMENT '파일 이름', 
    `img_real_name`  VARCHAR(1000)    NOT NULL    COMMENT '파일 실제 이름', 
    `img_ext`        VARCHAR(10)      NOT NULL    COMMENT '파일 확장자', 
    `img_size`       INT              NOT NULL    COMMENT '파일 사이즈', 
     PRIMARY KEY (img_idx)
);

insert into tb_diary_image (diary_idx,img_name,img_real_name,img_ext,img_size)
values(1,'푸키먼231.jpg','C:\eGovFrame-4.0.0\workspace.edu\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HaruGreen\resources\upload','jgp',12)
 

CREATE TABLE tb_diary
(
    `diary_idx`      INT UNSIGNED     NOT NULL    AUTO_INCREMENT COMMENT '일지 식별자', 
    `cust_id`        VARCHAR(30)      NOT NULL    COMMENT '회원 아이디', 
    `diary_title`    VARCHAR(1000)    NOT NULL    COMMENT '일지 제목', 
    `diary_content`  TEXT             NOT NULL    COMMENT '일지 내용', 
    `created_at`     DATETIME         NOT NULL    COMMENT '작성일자', 
    `diary_likes`    INT              NOT NULL    COMMENT '일지 추천수', 
     PRIMARY KEY (diary_idx)
);

insert into tb_diary (cust_id,diary_title,diary_content,created_at,diary_likes)
values(9,'싱싱한 사과','맛좋은 사과1',NOW(),25);


SELECT
    d.cust_id AS diary_cust_id,
    d.diary_idx,
    d.diary_title,
    d.diary_content,
    d.created_at AS diary_created_at,
    d.diary_likes,
    di.img_idx,
    di.img_name,
    di.img_real_name,
    di.img_ext,
    di.img_size,
    s.cust_id AS seller_cust_id,
    s.company_name
FROM
    tb_diary d
LEFT JOIN
    tb_diary_image di ON d.diary_idx = di.diary_idx
LEFT JOIN
    tb_seller s ON d.cust_id = s.cust_id
WHERE
    d.cust_id = 9;
    
    select * from tb_cust
    
SELECT q.*, p.*, i.img_name AS prod_img_name
FROM tb_qna q
JOIN tb_prod p ON q.prod_idx = p.prod_idx
LEFT JOIN tb_prod_image i ON p.prod_idx = i.prod_idx
WHERE p.cust_id = 9;
    
select * from tb_qna
update tb_qna set answer='뉘예' where prod_idx =25 and qna_idx=2 


SELECT 
    p.prod_idx,
    p.prod_name,
    p.prod_desc,
    p.prod_type,
    p.prod_price,
    p.prod_stock,
    p.cust_id,
    s.seller_idx,
    s.company_name,
    s.business_type,
    s.certified_yn,
    s.created_at AS seller_created_at,
    i.img_idx,
    i.img_name
FROM
    tb_prod p
JOIN
    tb_seller s ON p.cust_id = s.cust_id
LEFT JOIN
    tb_prod_image i ON p.prod_idx = i.prod_idx
WHERE
    p.prod_idx = 25;

    select * from tb_qna

    
    SELECT
    q.qna_idx AS qna_idx,
    q.cust_id AS cust_id,
    q.prod_idx AS prod_idx,
    q.question AS question,
    q.questioned_at AS questioned_at,
    q.answer AS answer,
    q.answered_at AS answered_at,
    p.prod_name AS prod_name,
    pi.img_name AS prod_image_name,
    p.cust_id AS product_customer_id,
    s.company_name AS seller_company_name
FROM
    tb_qna q
JOIN
    tb_prod p ON q.prod_idx = p.prod_idx
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
LEFT JOIN
    tb_seller s ON q.cust_id = s.cust_id
WHERE
    p.prod_idx = 25;

    
    SELECT
    r.*,
    
    p.prod_name AS prod_name,
    p.prod_idx AS prod_idx,
    pi_product.img_name AS product_img_name
FROM
    tb_review r
LEFT JOIN
    tb_prod_image pi_review ON r.prod_idx = pi_review.prod_idx
LEFT JOIN
    tb_prod p ON r.prod_idx = p.prod_idx
LEFT JOIN
    tb_prod_image pi_product ON p.prod_idx = pi_product.prod_idx
WHERE
    p.prod_idx = 5;
    
    SELECT
    r.*,
    pi_review.img_name AS review_img_name,
    p.prod_name AS prod_name,
    p.prod_idx AS prod_idx,
    c.cust_nick AS cust_nick
   
FROM
    tb_review r
LEFT JOIN
    tb_prod_image pi_review ON r.prod_idx = pi_review.prod_idx
LEFT JOIN
    tb_prod p ON r.prod_idx = p.prod_idx
LEFT JOIN
    tb_cust c ON r.cust_id = c.cust_id
LEFT JOIN
    tb_prod_image pi_product ON p.prod_idx = pi_product.prod_idx
WHERE
    p.prod_idx = 25;
    
    
    select * from tb_cust
    delete from tb_qna where qna_idx=3
    
    
     SELECT
    q.qna_idx AS qna_idx,
    q.cust_id AS cust_id,
    q.prod_idx AS prod_idx,
    q.question AS question,
    q.questioned_at AS questioned_at,
    q.answer AS answer,
    q.answered_at AS answered_at,
    p.prod_name AS prod_name,
    pi.img_name AS prod_image_name,
    p.cust_id AS product_customer_id,
    s.company_name AS seller_company_name
FROM
    tb_qna q
JOIN
    tb_prod p ON q.prod_idx = p.prod_idx
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
LEFT JOIN
    tb_seller s ON q.cust_id = s.cust_id
WHERE
    p.prod_idx = 25;
    
    select * from tb_review
    
SELECT 
    P.*,
    R.*,
    PI.*
FROM 
    tb_prod P
LEFT JOIN 
    tb_review R ON P.prod_idx = R.prod_idx
LEFT JOIN 
    tb_prod_image PI ON P.prod_idx = PI.prod_idx
WHERE 
    P.prod_idx = 25;
    
    
    
    SELECT
    r.*,
    pi_review.img_name AS review_img_name,
    p.prod_name AS prod_name,
    p.prod_idx AS prod_idx,
    c.cust_nick AS cust_nick
   
FROM
    tb_review r
LEFT JOIN
    tb_prod_image pi_review ON r.prod_idx = pi_review.prod_idx
LEFT JOIN
    tb_prod p ON r.prod_idx = p.prod_idx
LEFT JOIN
    tb_cust c ON r.cust_id = c.cust_id
LEFT JOIN
    tb_prod_image pi_product ON p.prod_idx = pi_product.prod_idx
WHERE
    p.prod_idx = 25;
    
    select * from tb_mycart
    
    
    CREATE TABLE tb_prod_image
(
    `img_idx`        INT UNSIGNED     NOT NULL    AUTO_INCREMENT COMMENT '이미지 식별자', 
    `prod_idx`       INT UNSIGNED     NOT NULL    COMMENT '상품 식별자', 
    `img_name`       VARCHAR(250)     NOT NULL    COMMENT '파일 이름', 
    `img_real_name`  VARCHAR(1000)    NOT NULL    COMMENT '파일 실제 이름', 
    `img_ext`        VARCHAR(10)      NOT NULL    COMMENT '파일 확장자', 
    `img_size`       INT              NOT NULL    COMMENT '파일 사이즈', 
     PRIMARY KEY (img_idx)
);


select * from tb_cust
   
insert into tb_prod_image (prod_idx,img_name,img_real_name,img_ext,img_size)
values(30,'푸키먼11.jpg','C:\eGovFrame-4.0.0\workspace.edu\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HaruGreen\resources\upload','jpg',12)
    



SELECT 
    p.prod_idx,
    p.prod_name,
    p.prod_desc,
    p.prod_type,
    p.prod_price,
    p.prod_stock,
    p.cust_id,
    s.seller_idx,
    s.company_name,
    s.business_type,
    s.certified_yn,
    s.created_at AS seller_created_at,
    i.img_idx,
    i.img_name
FROM
    tb_prod p
JOIN
    tb_seller s ON p.cust_id = s.cust_id
LEFT JOIN
    tb_prod_image i ON p.prod_idx = i.prod_idx
WHERE
    p.prod_idx = 30;

select * from tb_diary

SELECT q.*, p.*, i.img_name AS prod_img_name
FROM tb_qna q
JOIN tb_prod p ON q.prod_idx = p.prod_idx
LEFT JOIN tb_prod_image i ON p.prod_idx = i.prod_idx
WHERE p.cust_id = 9;

-- tb_seller 테이블에서는 company_name만 선택
SELECT company_name AS company_name, NULL AS diary_title, NULL AS diary_content, NULL AS created_at, NULL AS diary_likes, NULL AS img_name
FROM tb_seller

UNION

-- tb_diary 테이블에서는 전체 열 선택
SELECT NULL, diary_title, diary_content, created_at, diary_likes, NULL
FROM tb_diary

UNION

-- tb_diary_image 테이블에서는 전체 열 선택
SELECT NULL, NULL, NULL, NULL, NULL, img_name
FROM tb_diary_image;


                  
SELECT
    q.qna_idx AS qna_idx,
    q.cust_id AS cust_id,
    q.prod_idx AS prod_idx,
    q.question AS question,
    q.questioned_at AS questioned_at,
    q.answer AS answer,
    q.answered_at AS answered_at,
    p.prod_name AS prod_name,
    pi.img_name AS prod_image_name,
    p.cust_id AS product_customer_id,
    s.company_name AS seller_company_name
FROM
    tb_qna q
JOIN
    tb_prod p ON q.prod_idx = p.prod_idx
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
LEFT JOIN
    tb_seller s ON q.cust_id = s.cust_id
WHERE
    p.prod_idx = 25;
    
  
    SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_type,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_cust.cust_name,
    tb_cust.cust_nick,
    tb_cust.cust_phone,
    tb_cust.cust_addr,
    tb_review.review_idx,
    tb_review.review_content,
    tb_review.prod_ratings AS prod_ratings,
    tb_review.reviewed_at,
    tb_prod_image.img_name AS img_name
FROM
    tb_prod
JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
JOIN
    tb_review ON tb_prod.prod_idx = tb_review.prod_idx
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx
WHERE
    tb_prod.prod_name LIKE '토마토'
ORDER BY
    tb_review.prod_ratings DESC;
    
    
    SELECT
    S.company_name AS seller_company_name,
    D.diary_content AS diary_content,
    D.diary_likes AS diary_likes,
    DI.img_name AS diary_img_name
FROM
    tb_diary D
JOIN
    tb_seller S ON D.cust_id = S.cust_id
LEFT JOIN
    tb_diary_image DI ON D.diary_idx = DI.diary_idx
where D.cust_id=1

    select * from tb_cust where cust_phone=#{cust_phone}
    
    
    SELECT di.img_name
FROM tb_prod p
JOIN tb_diary d ON p.cust_id = d.cust_id
JOIN tb_diary_image di ON d.diary_idx = di.diary_idx
WHERE p.prod_idx = 25;

SELECT
    p.cust_id,
    p.prod_name AS prod_name,
    p.prod_idx AS prod_idx,
    p.prod_price AS prod_price,
    pi.img_name AS img_name,
    r.prod_ratings AS prod_ratings,
    r.review_content AS review_content
FROM
    tb_prod p
LEFT JOIN
    tb_review r ON p.prod_idx = r.prod_idx
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
WHERE
    p.cust_id = 1;
    
    
    SELECT
    p.cust_id,
    p.prod_name AS prod_name,
    p.prod_idx AS prod_idx,
    p.prod_price AS prod_price,
    pi.img_name AS img_name,
    r.prod_ratings AS prod_ratings,
    r.review_content AS review_content
FROM
    tb_prod p
LEFT JOIN
    tb_review r ON p.prod_idx = r.prod_idx
LEFT JOIN
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
WHERE
    p.cust_id = 1;
    
    
    insert into tb_review (prod_idx,cust_id,review_content,prod_ratings,reviewed_at)
    values(33,2,'괜춘',4,NOW())
    
    
    
SELECT prod_name FROM tb_prod WHERE prod_name LIKE '%당근%' LIMIT 1;



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

insert into tb_prod (prod_name,prod_desc,prod_type,prod_price,prod_stock,cust_id,created_at)
values('배','맛잇는 사과','농산물',20000,12,1,NOW())


SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_type,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_cust.cust_name,
    tb_cust.cust_nick,
    tb_cust.cust_phone,
    tb_cust.cust_addr,
    tb_review.review_idx,
    tb_review.review_content,
    tb_review.prod_ratings AS prod_ratings,
    ROUND(AVG(tb_review.prod_ratings), 1) AS avg_ratings,
    tb_review.reviewed_at,
    tb_prod_image.img_name AS img_name
FROM
    tb_prod
JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
JOIN
    tb_review ON tb_prod.prod_idx = tb_review.prod_idx
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx
WHERE
    tb_prod.prod_name LIKE '사과'
GROUP BY
    tb_prod.prod_idx, tb_prod.prod_name, tb_prod.prod_desc, tb_prod.prod_type,
    tb_prod.prod_price, tb_prod.prod_stock, tb_prod.cust_id, tb_prod.created_at,
    tb_cust.cust_name, tb_cust.cust_nick, tb_cust.cust_phone, tb_cust.cust_addr,
    tb_review.review_idx, tb_review.review_content, tb_review.prod_ratings,
    tb_review.reviewed_at, tb_prod_image.img_name
ORDER BY
    tb_prod.created_at DESC;

    
    select * from tb_prod
    
    delete from tb_prod where cust_id=9
    
    
    
     SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_prod_image.img_name AS img_name,
    ROUND(AVG(tb_review.prod_ratings), 1) AS avg_ratings
FROM
    tb_prod
LEFT JOIN
    tb_review ON tb_prod.prod_idx = tb_review.prod_idx
LEFT JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx
WHERE
    tb_prod.prod_type ='농산물'
GROUP BY
    tb_prod.prod_idx, tb_prod.prod_name, tb_prod.prod_desc,
    tb_prod.prod_price, tb_prod.prod_stock, tb_prod.cust_id,
    tb_prod.created_at, tb_prod_image.img_name

UNION

SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_prod_image.img_name AS img_name,
    ROUND(AVG(tb_review.prod_ratings), 1) AS avg_ratings
FROM
    tb_review
RIGHT JOIN
    tb_prod ON tb_review.prod_idx = tb_prod.prod_idx
LEFT JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx
WHERE
    tb_prod.prod_type ='농산물'
GROUP BY
    tb_prod.prod_idx, tb_prod.prod_name, tb_prod.prod_desc,
    tb_prod.prod_price, tb_prod.prod_stock, tb_prod.cust_id,
    tb_prod.created_at, tb_prod_image.img_name
ORDER BY
    prod_created_at DESC;
    
    
    
       SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_prod_image.img_name AS img_name,
    ROUND(AVG(tb_review.prod_ratings), 1) AS avg_ratings
FROM
    tb_prod
LEFT JOIN
    tb_review ON tb_prod.prod_idx = tb_review.prod_idx
LEFT JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx

GROUP BY
    tb_prod.prod_idx, tb_prod.prod_name, tb_prod.prod_desc,
    tb_prod.prod_price, tb_prod.prod_stock, tb_prod.cust_id,
    tb_prod.created_at, tb_prod_image.img_name

UNION

SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_prod_image.img_name AS img_name,
    ROUND(AVG(tb_review.prod_ratings), 1) AS avg_ratings
FROM
    tb_review
RIGHT JOIN
    tb_prod ON tb_review.prod_idx = tb_prod.prod_idx
LEFT JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx

GROUP BY
    tb_prod.prod_idx, tb_prod.prod_name, tb_prod.prod_desc,
    tb_prod.prod_price, tb_prod.prod_stock, tb_prod.cust_id,
    tb_prod.created_at, tb_prod_image.img_name
ORDER BY
    prod_created_at DESC;
    
    
    
   SELECT 
    p.*, 
    pi.img_name 
FROM 
    tb_prod p
LEFT JOIN 
    tb_prod_image pi ON p.prod_idx = pi.prod_idx
WHERE
    p.prod_idx = 47;
    
    
    SELECT 
    prod.*, 
    img.img_name,
    review.prod_ratings
FROM 
    (SELECT * FROM tb_prod ORDER BY created_at DESC LIMIT 10) AS prod
LEFT JOIN 
    tb_prod_image img ON prod.prod_idx = img.prod_idx
LEFT JOIN 
    tb_review review ON prod.prod_idx = review.prod_idx;
    
    select * from tb_favorite
    
    
        SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_type AS prod_type,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_prod_image.img_name AS img_name,
    ROUND(AVG(tb_review.prod_ratings), 1) AS avg_ratings
FROM
    tb_prod
LEFT JOIN
    tb_review ON tb_prod.prod_idx = tb_review.prod_idx
LEFT JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx
WHERE
    tb_prod.prod_type = '농산물'
GROUP BY
    tb_prod.prod_idx, tb_prod.prod_name, tb_prod.prod_desc,
    tb_prod.prod_price, tb_prod.prod_stock, tb_prod.cust_id,
    tb_prod.created_at, tb_prod_image.img_name

UNION

SELECT
    tb_prod.prod_idx AS prod_idx,
    tb_prod.prod_type AS prod_type,
    tb_prod.prod_name AS prod_name,
    tb_prod.prod_desc AS prod_desc,
    tb_prod.prod_price AS prod_price,
    tb_prod.prod_stock AS prod_stock,
    tb_prod.cust_id AS prod_cust_id,
    tb_prod.created_at AS prod_created_at,
    tb_prod_image.img_name AS img_name,
    ROUND(AVG(tb_review.prod_ratings), 1) AS avg_ratings
FROM
    tb_review
RIGHT JOIN
    tb_prod ON tb_review.prod_idx = tb_prod.prod_idx
LEFT JOIN
    tb_cust ON tb_prod.cust_id = tb_cust.cust_id
LEFT JOIN
    tb_prod_image ON tb_prod.prod_idx = tb_prod_image.prod_idx
WHERE
    tb_prod.prod_type = '농산물'
GROUP BY
    tb_prod.prod_idx, tb_prod.prod_name, tb_prod.prod_desc,
    tb_prod.prod_price, tb_prod.prod_stock, tb_prod.cust_id,
    tb_prod.created_at, tb_prod_image.img_name
ORDER BY
    prod_created_at DESC;
    
    select * from tb_prod
    
    delete from tb_prod where prod_name='당신은 귀한사람 당귀'
    select count(*) from tb_prod where prod_name='123';
    
    update tb_prod set prod_name='당신은 귀한분 당귀' where prod_name='당신은 귀한사람 당귀'
    
    SELECT prod_name FROM tb_prod WHERE prod_name LIKE '%사%' LIMIT 1;
    
 insert into tb_order (prod_idx,cust_id,total_amunt,discount_amount,pay_amount,pay_method,paid_amount,delivery_addr,receiver_name,receiver_phone,delivery_msg,
 order_status,ordered_at)values(31,1,6200,1000,6100,'카드',6100,'광주','상권','010451112','132','결제완료',NOW())
 
select * from tb_review