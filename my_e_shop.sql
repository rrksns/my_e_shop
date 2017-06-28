show tables;

create table admin(
admin_id varchar(20) primary key,
admin_pw varchar(20) );

drop table seller;

create table seller(
s_id varchar(20) primary key,
s_pw varchar(20) not null,
s_email varchar(40),
s_addr varchar(255),
s_mobile varchar(30),
s_regDate date,
s_reg_conf VARCHAR(1),
s_gender VARCHAR(10),
s_birthdate DATE,
s_name VARCHAR(20),
s_mob_conf INT,
s_tel varchar(30)
);
select * from seller ;
insert into seller (s_id,s_pw) values('leelee','leelee**');
alter table seller add numOfbiz int;
alter table seller add s_gender varchar(10);
alter table seller add s_birth date;
alter table seller add s_name varchar(20);
alter table seller add s_tc_conf varchar(1);
select * from seller;

create table user(
u_id  varchar(20) primary key,
u_pw varchar(20) not null,
u_mobile varchar(30) not null,
u_img varchar(50),
u_email varchar(40) not null,
u_joinDate date not null
);

drop table shop;

create table shop(
sh_id varchar(20) primary key,
sh_name varchar(50) not null,
sh_addr varchar(255) not null,
sh_web varchar(255),
sh_tel varchar(30),
sh_cate varchar(30),
sh_content varchar(500) not null,
sh_summary varchar(100),
sh_operTime varchar(50),
sh_brTime varchar(50),
sh_img1 varchar(100),
sh_img2 varchar(100),
sh_img3 varchar(100),
sh_img4 varchar(100),
sh_img5 varchar(100),
recru_sub varchar(50),
recru_con varchar(255),
sh_count int(100),
sh_pick varchar(30),
s_id varchar(20)
);

alter table shop add foreign key (s_id) references seller(s_id);

drop table board;
select *from board;
create table board(
bd_num int primary key,
bd_subject varchar(40),
bd_content varchar(255),
bd_regDate date,
bd_count int,
ref int,
re_step int,
re_level int,
s_id  varchar(20),
del varchar(2)
);
alter table board drop column start_row;
alter table board drop column end_row;
alter table board add(del varchar(2));
alter table board add foreign key (sh_id) references shop(sh_id);
alter table board add foreign key (u_id) references user(u_id);

show tables;
drop table menu;
create table menu(
it_id varchar(20) primary key,
it_name varchar(40),
it_group varchar(30),
it_price int,
it_cont varchar(255),
it_img1 varchar(100),
it_img2 varchar(100),
it_img3 varchar(100),
sh_id varchar(20) 
);

alter table menu add foreign key (sh_id) references shop(sh_id);


insert into seller (s_id,s_pw,s_email,s_mobile,s_regDate,s_gender,s_birthdate,s_name) 
values('ee', 'ee', 'e@gmail.com', '01041001111','20170202','m', '20120909','ee')

select count(*) from board;
select count(*) from board;
select * from board;

create table shopDetail (
sh_detailId	int(20) primary key,
24h_open	VARCHAR(1),
driveThru		VARCHAR(1),
takeOut		VARCHAR(1),
dineIn		VARCHAR(1),
delivery		VARCHAR(1),
aloneMeal		VARCHAR(1),
parking		VARCHAR(1),
parkingSpace		int(20),
toilet		VARCHAR(1),
smoking		VARCHAR(1),
mobileCharge	VARCHAR(1),
blanket		VARCHAR(1),
kidsroom		VARCHAR(1),
freeWifi		VARCHAR(1),
sh_id int(20), foreign key (sh_id) references shop(sh_id)
);