[펫DB]
create table pet(
petid varchar2(100) primary key,  -------펫고유아이디
classify1 char(2),          -------강아지 : 1, 고양이 : 2
classify2 varchar2(100),     -------A1 업체분양 , A2 개인분양, A3 유기분양
dogkortype varchar2(100),    -------ex)비숑, 비글, 요크셔테리어..
dogengtype varchar2(100),    -------ex)bishong, biggle..
gender char(2),          -------수컷이면  M, 암컷이면 F
age varchar2(100),     -------나이(개월수) 
price varchar2(100),      -------가격 
jusa varchar2(100),
pic varchar2(100))     --------접종여부(O,X)


create sequence seq_petid increment by 1 start with 1 nocycle nocache;
insert into pet(petid,classify1,classify2,dogkortype,dogengtype,gender,age,price,jusa,pic) values(SEQ_PETID.NEXTVAL,'1','A1','시바견','shibainu', 'M', '1', '300000', '0','sibal.jpg');
insert into pet(petid,classify1,classify2,dogkortype,dogengtype,gender,age,price,jusa,pic) values(SEQ_PETID.NEXTVAL,'1','A1','비송프리제','Bischon Frise', 'M', '1', '300000', '0','husky1.jpg');
insert into pet(petid,classify1,classify2,dogkortype,dogengtype,gender,age,price,jusa,pic) values(SEQ_PETID.NEXTVAL,'1','A1','포메라니안','Pomeranian', 'M', '1', '300000', '0','pome.jpg');
insert into pet(petid,classify1,classify2,dogkortype,dogengtype,gender,age,price,jusa,pic) values(SEQ_PETID.NEXTVAL,'1','A1','웰시코기','welshcorgi', 'M', '1', '300000', '0','wel.jpg');
insert into pet(petid,classify1,classify2,dogkortype,dogengtype,gender,age,price,jusa,pic) values(SEQ_PETID.NEXTVAL,'1','A1','푸들','poodle', 'M', '1', '300000', '0','poodle.jpg');
insert into pet(petid,classify1,classify2,dogkortype,dogengtype,gender,age,price,jusa,pic) values(SEQ_PETID.NEXTVAL,'1','A1','허스키','husky', 'M', '1', '300000', '0','husky.jpg');
insert into pet(petid,classify1,classify2,dogkortype,dogengtype,gender,age,price,jusa,pic) values(SEQ_PETID.NEXTVAL,'1','A1','허스키','husky', 'M', '1', '300000', '0','husky.jpg');


select * from pet;
drop table pet;