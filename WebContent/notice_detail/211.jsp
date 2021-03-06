<%@page import="com.zhaoyang.orm.Notice"%>
<%@page import="com.zhaoyang.util.UtilForGenerateNews"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../variable.jsp"%>

<%
	Long a = Long.parseLong(request.getParameter("id"));
	UtilForGenerateNews util = new UtilForGenerateNews();
	Notice news = util.findNotceById(a);
	request.setAttribute("notice", news);
	List<Notice> notices=util.gonggaolan();
	request.setAttribute("notices",notices);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>朝之阳辅导学校</title>
		<link rel="stylesheet" type="text/css" href="../css/common.css" />
		<link rel="stylesheet" type="text/css" href="../css/news.css" />
		<script src='../js/jquery-1.7.1.min.js'></script>
		<script src='../js/news/fsrPMD.js'></script>
		<script src='../js/news/news_detail.js'></script>
		<!-- Demo特殊需要的js -->
		<script type="text/javascript">
			$(function() {
				$('#common_head').load("../head.html");
				$('#common_foot').load("../foot.html");
			});
		</script>
	</head>
	<body>
		<div class="wrap">
			<div id="common_head"></div>
			<div class="main clearfix">
				<p class="bread_crumb">
					首页&nbsp;>>&nbsp;<span>网站公告</span>
				</p>
				<!-- 新闻面板 -->
				<div id="news">
					<div id="news_content" class="clearfix">
						<h2 style="color:#333333;">${notice.title}</h2>

						<p class="news_desc">
							<s:date  name="#request.notice.createTime" format="yyyy年MM月dd日 HH:mm:ss"/>
						</p>
						<div style="float: right;margin: 10px 0">
							<!-- Baidu Button BEGIN -->
							<div id="bdshare" class="bdshare_b" style="line-height: 12px;">
								<img src="http://bdimg.share.baidu.com/static/images/type-button-5.jpg?cdnversion=20120831" />
							</div>
							<script type="text/javascript" id="bdshare_js" data="type=button&amp;uid=6637252" ></script>
							<script type="text/javascript" id="bdshell_js"></script>
							<script type="text/javascript">
								document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date() / 3600000);
							</script>
							<!-- Baidu Button END -->
						</div>
						<p class="simple_news2">
						</p>
						<div class="news_text2">
							${notice.content}
						</div>
					</div>
				</div>
				<div id="news_right">
					
					<!--公告-->
					<div id="notice">
						<div id="text"  style="height:130px; width:90%; overflow:hidden; float:left;margin-top: 60px;margin-left: 10px;">
							<div>
								<s:iterator value="#request.notices">
									<li>
									<a href="<s:property value="id" />.html"><s:property value="title"/> </a>
								</li>
								</s:iterator>
							</div>
						</div>

					</div>
					<div id="adv01Div">
					</div>
					<!--新闻关键词标签-->
					<div id="lablesDiv">
						<h3><img src="../image/news/20130817104802.jpg" /></h3>
						<div id="lables">
							<p>
								<span><a href="#">PS大神</a></span>
								<span><a href="#">创意趣图</a></span>
								<span><a href="#">我和我的小呆了</a></span>
								<span><a href="#">熊孩子</a></span>
								<span><a href="#">搞笑动物</a></span>
								<span><a href="#">三维立体</a></span>
								<span><a href="#">极简</a></span>
							</p>
						</div>
					</div>
				</div>

			</div>
			<div id="common_foot"></div>
		</div>
	</body>
</html>
