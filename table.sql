CREATE TABLE user_table
(
	user_id NUMBER(10) NOT NULL,
	user_name_id VARCHAR2(18) NOT NULL,
	user_naem VARCHAR2(40) NOT NULL,
	user_pass VARCHAR2(12) NOT NULL,
	user_pro VARCHAR2(300) NOT NULL,
	user_pro_image VARCHAR2(100) NOT NULL ,
	user_head_image VARCHAR2(100) NOT NULL ,
	user_key_flag NUMBER(1) NOT NULL,
	delete_time DATE default sysdate NOT NULL,
	primary key(user_id),
	unique (user_name_id,user_pass)
);

create sequence user_sequence
start with 1
increment by 1
maxvalue 10000
;

CREATE TABLE follow_table
(
	follw_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	follwer_id NUMBER(10) NOT NULL,
	approval_flag NUMBER(1) NOT NULL,
	primary key(follw_id),
	FOREIGN key (user_id) references user_table(user_id),
	FOREIGN key (follw_id) references user_table(user_id)
);

CREATE TABLE tweet_table
(
	tweet_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	content VARCHAR2(400) NOT NULL,
	create_time DATE default sysdate NOT NULL,
	primary key(tweet_id),
	FOREIGN key (user_id) references user_table(user_id)
);

create sequence tweet_sequence
start with 1
increment by 1
maxvalue 1000
;

CREATE TABLE res1_table
(
	res_id NUMBER(10) NOT NULL,
	tweet_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	content VARCHAR2(400) NOT NULL,
	create_time DATE default sysdate NOT NULL,
	notice_flag NUMBER(1) NOT NULL,
	primary key(res_id),
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (user_id) references user_table(user_id)
);

create sequence res1_sequence
start with 1
increment by 1
maxvalue 1000
;

CREATE TABLE tweet_image_video_table
(
	tweet_id NUMBER(10) NOT NULL,
	res_id NUMBER(10) NOT NULL,
	tweet_folder VARCHAR2(100) NOT NULL,
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (res_id) references res1_table(res_id)
);

CREATE TABLE nice_table		
(
	nice_id NUMBER(10) NOT NULL,
	tweet_id NUMBER(10) NOT NULL,
	res_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	create_time DATE　default sysdate　NOT NULL,
	notice_flag NUMBER(1)　NOT NULL,
	primary key(nice_id),
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (res_id) references res1_table(res_id),
	FOREIGN key (user_id) references user_table(user_id)
);

create sequence nice_sequence
start with 1
increment by 1
maxvalue 10000
;

CREATE TABLE retweet_table
(
	retweet_id NUMBER(10) NOT NULL,
	tweet_id NUMBER(10) NOT NULL,
	res_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	create_time DATE　default sysdate　NOT NULL,
	notice_flag NUMBER(1)　NOT NULL,
	primary key(retweet_id),
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (res_id) references res1_table(res_id),
	FOREIGN key (user_id) references user_table(user_id)
);

create sequence retweet_sequence
start with 1
increment by 1
maxvalue 10000
;

Drop  sequence retweet_sequence;
Drop table retweet_table;
Drop  sequence nice_sequence;
Drop table nice_table;
Drop table tweet_image_video_table;
Drop  sequence res1_sequence;
Drop table res1_table;
Drop  sequence tweet_sequence;
Drop table tweet_table;
Drop table follow_table;
Drop  sequence user_sequence;
Drop table user_table;
