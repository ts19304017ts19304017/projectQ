CREATE TABLE user_table
(
	user_id NUMBER(10) NOT NULL,
	user_name_id NUMBER(18) NOT NULL,	
	user_name VARCHAR2(40) NOT NULL,
	user_pass VARCHAR2(12) NOT NULL,
	user_pro VARCHAR2(300) NOT NULL,
	user_pro_image VARCHAR2(100) default 'default_pro.png' NOT NULL ,
	user_head_image VARCHAR2(100) default 'default_head.png' NOT NULL ,
	user_key_flag NUMBER(1) default  0 NOT NULL,
	delete_time DATE,
	primary key(user_id),
	unique(user_name_id)
);

create sequence user_id
start with 1
increment by 1
maxvalue 10000
;


CREATE TABLE follow_table
(
	follow_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	follower_id NUMBER(10) NOT NULL,
	approval_flag NUMBER(1) default 1 NOT NULL,
	primary key(follow_id),
	FOREIGN key (user_id) references user_table(user_id),
	FOREIGN key (follow_id) references user_table(user_id),
	UNIQUE (user_id,follower_id)
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

CREATE TABLE res_table
(
	res_id NUMBER(10) NOT NULL,
	reply_res_id number(10) ,
	tweet_id NUMBER(10) NOT NULL,
	user_id NUMBER(10) NOT NULL,
	content VARCHAR2(400) NOT NULL,
	create_time DATE default sysdate NOT NULL,
	notice_flag NUMBER(1) default 0 NOT NULL,
	primary key(res_id),
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (user_id) references user_table(user_id),
	FOREIGN key (res_id) references res_table(res_id)
);

create sequence res_sequence
start with 1
increment by 1
maxvalue 1000
;

CREATE TABLE tweet_image_video_table
(
	tweet_id NUMBER(10) NOT NULL,
	res_id NUMBER(10),
	tweet_folder VARCHAR2(100) NOT NULL,
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (res_id) references res_table(res_id)
);

CREATE TABLE nice_table		
(
	nice_id NUMBER(10) NOT NULL,
	tweet_id NUMBER(10) NOT NULL,
	res_id NUMBER(10),
	user_id NUMBER(10) NOT NULL,
	create_time DATE　default sysdate　NOT NULL,
	notice_flag NUMBER(1)　NOT NULL,
	primary key(nice_id),
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (res_id) references res_table(res_id),
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
	res_id NUMBER(10),
	user_id NUMBER(10) NOT NULL,
	create_time DATE　default sysdate　NOT NULL,
	notice_flag NUMBER(1)　NOT NULL,
	primary key(retweet_id),
	FOREIGN key (tweet_id) references tweet_table(tweet_id),
	FOREIGN key (res_id) references res_table(res_id),
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
Drop  sequence res_sequence;
Drop table res_table;
Drop  sequence tweet_sequence;
Drop table tweet_table;
Drop table follow_table;
Drop table user_table;
