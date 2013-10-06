show tables;
create table zynews(
	id bigint(20) primary key auto_increment,
	title varchar(100),
	content text,
	newsdesc varchar(200),
	createtime datetime,
	newskwd varchar(100)
);
create table rule(
	id bigint(20) primary key auto_increment,
	ruleid varchar(100),
	ruledef varchar(200),
	ruletype varchar(100)
);

insert into rule(ruleid,ruledef) values('IndexNewsSmallImg','image/index/2013-36_6116457.jpg');
select * from zynews;

update zynews set title='怎样报名参加淘宝一周年庆典',content='xxxxx',createtime='2012-2-2',newskwd='aaaa',newsdesc='afdsdsd';

select * from rule;
insert into rule(ruleid,ruledef) values("IndexNewsList","1,2,3");
insert into rule(ruleid,ruledef) values("IndexNewsDesc","美国海军作战部副部长格林纳特上将9月5日在华盛顿的讲话中首次提到，美国将在日本部署濒海战斗");
insert into rule(ruleid,ruledef) values("HotNewsBgImg","image/news/notic_bg.jpg");
insert into rule(ruleid,ruledef) values("HotNewsList","1,2,3");
insert into rule(ruleid,ruledef) values("SchoolDescContent","朝之阳");
insert into rule(ruleid,ruledef) values("EducationConditionContent","很棒");

insert into rule(ruleid,ruledef) values("SchoolAddressContent","矿院");
insert into rule(ruleid,ruledef) values("DownloadDesc","您同样可以通过Nibiru客户端查看以下游戏，并且应用中提供了游戏的推荐下载方式xxxxxxx");
insert into rule(ruleid,ruledef) values("DownloadNoticeList","矿院;马鞍山;朝阳");
insert into rule(ruleid,ruledef,ruletype) values("DownloadSrcType","1,2,3,4","语文,数学,英语,历史");


create table download(
	id bigint(20) primary key auto_increment,
	href varchar(100),
	srcname varchar(200),
	upltime datetime,
	srctype int(5)
);




