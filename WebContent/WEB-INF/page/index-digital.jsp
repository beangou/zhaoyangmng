<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
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
		oninit : function(headers, expandedindices) { //custom code to run when headers have initalized
			//do nothing
		},
		onopenclose : function(header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
			//do nothing
		}
	});
</script>
<script src="${bgpath}jquery.jclock-1.2.0.js.txt" type="text/javascript"></script>
<script type="text/javascript" src="${bgpath}jconfirmaction.jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.ask').jConfirmAction();
	});
</script>
<script type="text/javascript">
	$(function($) {
		$('.jclock').jclock();
	});
</script>

<script type="text/javascript" src="${bgpath}niceforms.js"></script>
<link rel="stylesheet" type="text/css" media="all"
	href="${bgpath}niceforms-default.css" />

</head>
<body>
	<div id="main_container">

		<div class="header">
			<div class="logo">
				<a href="#"><img src="${bgpath}images/logo.gif" alt="" title=""
					border="0" />
				</a>
			</div>

			<div class="right_header">
				欢迎您, ${sessionScope.userInfo}, <a href="#">朝之阳官网</a> | <a href="#"
					class="messages">(3) 消息</a> | <a href="#" class="logout">退出</a>
			</div>
			<div class="jclock"></div>
		</div>

		<div class="main_content">
			<jsp:include page="bghead.jsp" flush="true" />
			<div class="center_content">
				<jsp:include page="bgleft.jsp" flush="true"/>
				<div class="right_content">

					<h2>Products Categories Settings</h2>


					<table id="rounded-corner"
						summary="2007 Major IT Companies' Profit">
						<thead>
							<tr>
								<th scope="col" class="rounded-company"></th>
								<th scope="col" class="rounded">Product</th>
								<th scope="col" class="rounded">Details</th>
								<th scope="col" class="rounded">Price</th>
								<th scope="col" class="rounded">Date</th>
								<th scope="col" class="rounded">Edit</th>
								<th scope="col" class="rounded-q4">Delete</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td colspan="6" class="rounded-foot-left"><em>Lorem
										ipsum dolor sit amet, consectetur adipisicing elit, sed do
										eiusmod tempor incididunt ut.</em>
								</td>
								<td class="rounded-foot-right">&nbsp;</td>

							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td><input type="checkbox" name="" />
								</td>
								<td>Product name</td>
								<td>details</td>
								<td>150$</td>
								<td>12/05/2010</td>

								<td><a href="#"><img
										src="${bgpath}images/user_edit.png" alt="" title="" border="0" />
								</a>
								</td>
								<td><a href="#" class="ask"><img
										src="${bgpath}images/trash.png" alt="" title="" border="0" />
								</a>
								</td>
							</tr>

							<tr>
								<td><input type="checkbox" name="" />
								</td>
								<td>Product name</td>
								<td>details</td>
								<td>150$</td>
								<td>12/05/2010</td>

								<td><a href="#"><img
										src="${bgpath}images/user_edit.png" alt="" title="" border="0" />
								</a>
								</td>
								<td><a href="#" class="ask"><img
										src="${bgpath}images/trash.png" alt="" title="" border="0" />
								</a>
								</td>
							</tr>

							<tr>
								<td><input type="checkbox" name="" />
								</td>
								<td>Product name</td>
								<td>details</td>
								<td>150$</td>
								<td>12/05/2010</td>

								<td><a href="#"><img
										src="${bgpath}images/user_edit.png" alt="" title="" border="0" />
								</a>
								</td>
								<td><a href="#" class="ask"><img
										src="${bgpath}images/trash.png" alt="" title="" border="0" />
								</a>
								</td>
							</tr>

							<tr>
								<td><input type="checkbox" name="" />
								</td>
								<td>Product name</td>
								<td>details</td>
								<td>150$</td>
								<td>12/05/2010</td>

								<td><a href="#"><img
										src="${bgpath}images/user_edit.png" alt="" title="" border="0" />
								</a>
								</td>
								<td><a href="#" class="ask"><img
										src="${bgpath}images/trash.png" alt="" title="" border="0" />
								</a>
								</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="" />
								</td>
								<td>Product name</td>
								<td>details</td>
								<td>150$</td>
								<td>12/05/2010</td>

								<td><a href="#"><img
										src="${bgpath}images/user_edit.png" alt="" title="" border="0" />
								</a>
								</td>
								<td><a href="#" class="ask"><img
										src="${bgpath}images/trash.png" alt="" title="" border="0" />
								</a>
								</td>
							</tr>

							<tr>
								<td><input type="checkbox" name="" />
								</td>
								<td>Product name</td>
								<td>details</td>
								<td>150$</td>
								<td>12/05/2010</td>

								<td><a href="#"><img
										src="${bgpath}images/user_edit.png" alt="" title="" border="0" />
								</a>
								</td>
								<td><a href="#" class="ask"><img
										src="${bgpath}images/trash.png" alt="" title="" border="0" />
								</a>
								</td>
							</tr>

						</tbody>
					</table>

					<a href="#" class="bt_green"><span class="bt_green_lft"></span><strong>添加新记录</strong><span
						class="bt_green_r"></span>
					</a> <a href="#" class="bt_blue"><span class="bt_blue_lft"></span><strong>View
							all items from category</strong><span class="bt_blue_r"></span>
					</a> <a href="#" class="bt_red"><span class="bt_red_lft"></span><strong>删除记录</strong><span
						class="bt_red_r"></span>
					</a>


					<div class="pagination">
						<span class="disabled"><< prev</span><span class="current">1</span><a
							href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a>…<a
							href="">10</a><a href="">11</a><a href="">12</a>...<a href="">100</a><a
							href="">101</a><a href="">next >></a>
					</div>

					<h2>Warning Box examples</h2>

					<div class="warning_box">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.
					</div>
					<div class="valid_box">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.
					</div>
					<div class="error_box">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.
					</div>

					<h2>Nice Form example</h2>

					<div class="form">
						<form action="" method="post" class="niceform">

							<fieldset>
								<dl>
									<dt>
										<label for="email">Email Address:</label>
									</dt>
									<dd>
										<input type="text" name="" id="" size="54" />
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="password">Password:</label>
									</dt>
									<dd>
										<input type="text" name="" id="" size="54" />
									</dd>
								</dl>


								<dl>
									<dt>
										<label for="gender">Select categories:</label>
									</dt>
									<dd>
										<select size="1" name="gender" id="">
											<option value="">Select option 1</option>
											<option value="">Select option 2</option>
											<option value="">Select option 3</option>
											<option value="">Select option 4</option>
											<option value="">Select option 5</option>
										</select>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="interests">Select tags:</label>
									</dt>
									<dd>
										<input type="checkbox" name="interests[]" id="" value="" /><label
											class="check_label">Web design</label> <input type="checkbox"
											name="interests[]" id="" value="" /><label
											class="check_label">Business</label> <input type="checkbox"
											name="interests[]" id="" value="" /><label
											class="check_label">Simple</label> <input type="checkbox"
											name="interests[]" id="" value="" /><label
											class="check_label">Clean</label>
									</dd>
								</dl>

								<dl>
									<dt>
										<label for="color">Select type</label>
									</dt>
									<dd>
										<input type="radio" name="type" id="" value="" /><label
											class="check_label">Basic</label> <input type="radio"
											name="type" id="" value="" /><label class="check_label">Medium</label>
										<input type="radio" name="type" id="" value="" /><label
											class="check_label">Premium</label>
									</dd>
								</dl>



								<dl>
									<dt>
										<label for="upload">Upload a File:</label>
									</dt>
									<dd>
										<input type="file" name="upload" id="upload" />
									</dd>
								</dl>

								<dl>
									<dt>
										<label for="comments">Message:</label>
									</dt>
									<dd>
										<textarea name="comments" id="comments" rows="5" cols="36"></textarea>
									</dd>
								</dl>

								<dl>
									<dt>
										<label></label>
									</dt>
									<dd>
										<input type="checkbox" name="interests[]" id="" value="" /><label
											class="check_label">I agree to the <a href="#">terms
												&amp; conditions</a>
										</label>
									</dd>
								</dl>

								<dl class="submit">
									<input type="submit" name="submit" id="submit" value="Submit" />
								</dl>



							</fieldset>

						</form>
					</div>


				</div>
				<!-- end of right content-->


			</div>
			<!--end of center content -->




			<div class="clear"></div>
		</div>
		<!--end of main content-->
		<div class="footer">
			<div class="left_footer">
				朝之阳后台管理 | Powered by <a href="http://indeziner.com">诚彬工作室</a>
			</div>
			<div class="right_footer">
				<a href="http://indeziner.com"><img
					src="${bgpath}images/indeziner_logo.gif" alt="" title="" border="0" />
				</a>
			</div>
		</div>

	</div>
</body>
</html>