<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ include file="variable.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}</title>
<jsp:include page="reference.jsp" flush="true" />
<script type="text/javascript">
	$(function() {
	});
</script>
</head>
<body>
	<div id="main_container">

		<jsp:include page="bgtop.jsp" flush="true" />

		<div class="main_content">

			<jsp:include page="bghead.jsp" flush="true" />
			<div class="center_content">
				<jsp:include page="bgleft.jsp" flush="true" />
				<div class="right_content">

					<h2>师生风采管理</h2>
					<table>
						<tr>
							<td valign="top">
								<div class="sidebar_box">
									<div class="sidebar_box_top"></div>
									<div class="sidebar_box_content">
										<h4>页面预览</h4>
										<img src="${bgpath}images/notice.png" alt="" title=""
											class="sidebar_icon_right" />
										<p style="line-height: 25px;">
											师生风采页面预览之前必须确保您手动生成了相关页面，请先点击<br/>
											<a href="${path}peo/GeneratePeopleHTMLAction">生成相关页面</a><br/>
										</p>
									</div>
									<div class="sidebar_box_bottom"></div>
								</div>
							</td>
							<td valign="top">
								<div class="sidebar_box">
									<div class="sidebar_box_top"></div>
									<div class="sidebar_box_content">
										<h4>新闻栏展示设置</h4>
										<img src="${bgpath}images/notice.png" alt="" title=""
											class="sidebar_icon_right" />
										<p style="line-height: 25px;">
											预览之前请先确保新闻栏列表的完整和正确，点击进入<br/>
											<a href="${path}news/IndexNewsSetPreAction">新闻栏展示设置</a><br/>
										</p>
									</div>
									<div class="sidebar_box_bottom"></div>
								</div>
							</td>
							<td valign="top">
								<div class="sidebar_box">
									<div class="sidebar_box_top"></div>
									<div class="sidebar_box_content">
										<h3>设置须知</h3>
										<img src="${bgpath}images/info.png" alt="" title=""
											class="sidebar_icon_right" />
										<p style="line-height: 25px;">
											师生风采包括学生风采和教师风采，修改学生信息请点击<br/>
											<a href="${path}peo/StudentMngAction">学生信息设置</a><br/>
											修改教师信息，请点击<br/><a href="${path}peo/TeacherMngAction">教师信息设置</a>
										</p>
									</div>
									<div class="sidebar_box_bottom"></div>
								</div>
							</td>
						</tr>
					</table>


					<s:if test="#request.sucMsg != null">
						<div class="valid_box">${sucMsg}</div>
					</s:if>
					<s:if test="#request.errMsg != null">
						<div class="error_box">${errMsg}</div>
					</s:if>



				</div>
				<!-- end of right content-->
			</div>
			<!--end of center content -->
			<div class="clear"></div>
		</div>
		<!--end of main content-->
		<jsp:include page="bgfoot.jsp" flush="true" />
	</div>
</body>
</html>