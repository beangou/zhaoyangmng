<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="variable.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IN ADMIN PANEL | Powered by INDEZINER</title>
<link rel="stylesheet" type="text/css" href="${bgpath}style.css" />
<script type="text/javascript" src="${bgpath}jquery.min.js"></script>
<script type="text/javascript" src="${bgpath}ddaccordion.js"></script>
<script type="text/javascript">
	ddaccordion.init({
		headerclass : "submenuheader", //Shared CSS class name of headers group
		contentclass : "submenu", //Shared CSS class name of contents group
		revealtype : "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
		mouseoverdelay : 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
		collapseprev : true, //Collapse previous content (so only one open at any time)? true/false
		defaultexpanded : [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
		onemustopen : false, //Specify whether at least one header should be open always (so never all headers closed)
		animatedefault : false, //Should contents open by default be animated into view?
		persiststate : true, //persist state of opened contents within browser session?
		toggleclass : [ "", "" ], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
		togglehtml : [ "suffix",
				"<img src='${bgpath}images/plus.gif' class='statusicon' />",
				"<img src='${bgpath}images/minus.gif' class='statusicon' />" ], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
		animatespeed : "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
		oninit : function(headers, expandedindices) {//custom code to run when headers have initalized
			//do nothing
		},
		onopenclose : function(header, index, state, isuseractivated) {//custom code to run whenever a header is opened or closed
			//do nothing
		}
	});
</script>

<script type="text/javascript" src="${bgpath}jconfirmaction.jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.ask').jConfirmAction();
		$('#userName').focus(function(){
			$(this).val("");
			$(this).css("color","black");
		});
	});
	
</script>

<script type="text/javascript" src="${bgpath}niceforms.js"></script>
<link rel="stylesheet" type="text/css" media="all"
	href="${bgpath}niceforms-default.css" />
<style type="text/css">
h3{
font-size:18px;
color:#256c89;
font-weight:normal;
padding:15px 0 5px 20px;
margin:0px;
float:left;
clear:both;
}

</style>

</head>
<body>
	<div id="main_container">

		<div class="header_login">
			<div class="logo">
				<a href="#"><img src="${bgpath}images/logo.gif" alt="" title=""
					border="0" /> </a>
			</div>

		</div>

		<div class="login_form">

			<h3>Admin Panel Login</h3>

			<a href="#" class="forgot_pass">Forgot password</a>

			<form action="/zhaoyang/usr/LoginAction" method="get"
				class="niceform">

				<fieldset>
					<dl>
						<dt>
							<label for="email">Username:</label>
						</dt>
						<dd>
							<s:if test="#request.errMsg == null">
								<input type="text" name="userName" size="54" />
							</s:if>
							<s:else>
								<input id="userName" style="color: red" type="text" name="userName" size="54" value="${errMsg}"/>
							</s:else>
						</dd>
					</dl>
					<dl>
						<dt>
							<label for="password">Password:</label>
						</dt>
						<dd>
							<input type="password" name="userPwd" size="54" />
						</dd>
					</dl>

					<dl>
						<dt>
							<label></label>
						</dt>
						<dd>
							<input type="checkbox" name="interests" id="" value="" /> <label
								class="check_label">Remember me</label>
						</dd>
					</dl>
					<dl class="submit">
						<input type="submit" name="submit" id="submit" value="Enter" />
					</dl>
				</fieldset>

			</form>
		</div>

		<div class="footer_login">

			<div class="left_footer_login">
				IN ADMIN PANEL | Powered by <a href="http://indeziner.com">INDEZINER</a>
			</div>
			<div class="right_footer_login">
				<a href="http://indeziner.com"><img
					src="${bgpath}images/indeziner_logo.gif" alt="" title="" border="0" />
				</a>
			</div>
		</div>
	</div>
</body>
</html>