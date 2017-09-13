<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width" name="viewport">
<title>会员反馈记录</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<link rel="stylesheet" href="${APP_PATH}/css/mem_visit.css" />
<link rel="stylesheet"
	href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="${APP_PATH}/static/js/jquery.min.js"></script>
<script
	src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="${APP_PATH}/static/icheck-1.x/skins/square/blue.css" />
<script src="${APP_PATH}/static/icheck-1.x/icheck.js"></script>
<script>
	$('.dropdown-toggle').dropdown();
</script>
</head>
<body>
	<div id="mem_visit_content" class="row">
		<div style="height: 15%; width: 100%;"></div>
		<div class="col-md-12" style="background: #fff; border-radius: 5px;">
			<div class="col-md-12" style="padding: 10px;">

				<div class="col-md-2">
					<span style="color: #3ca0ec; font-size: 20px; margin-left: -15px;">会员反馈记录表</span>
				</div>

				<div class="col-md-2 ">
					<select class="form-control">
						<option>会员昵称</option>
						<option>姓名</option>
						<option>状态</option>
					</select>

				</div>


				<div class="col-md-2 ">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="搜索">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">搜索</button>
						</span>
					</div>
				</div>


				<div class="col-md-1  ">
					<button type="button" class="btn btn-info">导出数据</button>
				</div>

				<div class="col-md-1  ">
					<button type="button" class="btn btn-primary">统一回复</button>
				</div>


				<div class="col-md-4">
					<div class="col-md-4 col-md-offset-1">
						<p class="text-primary" style="font-size: 15px; padding-top: 5px;">每页显示</p>
					</div>
					<div class="col-md-4 col-md-pull-1">
						<select class="form-control">
							<option>5条</option>
							<option>10条</option>
							<option>15条</option>
							<option>20条</option>
						</select>
					</div>

					<div class="col-md-2 col-md-pull-1">
						<button type="button" class="btn btn-primary">应用</button>
					</div>


				</div>


			</div>

			<table class="table table-bordered">
				<thead>

					<tr style="background: #EFEDED;">
						<th><input type="checkbox" id="vi_seall"></th>
						<th>会员昵称</th>
						<th>姓名</th>
						<th>手机号</th>
						<th>邮箱</th>
						<th>反馈内容</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>


					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>


					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>


					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>

					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>


					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>


					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>


					<tr>
						<td><input type="checkbox" name="vi_sebar"></td>
						<td>和九条狗玩呢</td>
						<td>林统东</td>
						<td>13005666711</td>
						<td>2505728250@qq.com</td>
						<td style="width: 500px;">卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地
							卡德罗夫圆顶革凡登圣打瞌睡了附近的快速了解反倒是反弹开始了粉红色的费德勒考试辅导上地</td>
						<td style="width: 120px;"><select class="form-control">
								<option>已处理</option>
								<option>未处理</option>
						</select></td>
						<td><a href="javascript:reply_mem();">回复</a></td>

					</tr>






				</tbody>


			</table>

			<div class="col-md-12">
				<div class="col-md-4">
					<span style="float: left;">当前第1页，有210页，共有1047条记录</span>
				</div>
				<div class="col-md-8">
					<nav aria-label="Page navigation"
						style="float:right;margin-top: -3%;">
					<ul class="pagination">
						<li><a href="#"> <span>首页</span>
						</a></li>
						<li><a href="#"> <span>&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"> <span>&raquo;</span>
						</a></li>
						<li><a href="#"> <span>尾页</span>
						</a></li>
					</ul>
					</nav>
				</div>

			</div>
		</div>


		<div class="col-md-12">
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br>
		</div>

	</div>


	<script type="text/javascript" src="${APP_PATH}/js/mem_visit.js"></script>




	<!-- 回复客户模态框 -->
	<div id="reply_mem_modal" class="modal fade" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">回复客户模态框</h4>
				</div>

				<div class="modal-body">
					<p>内容&hellip;</p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>

			</div>
		</div>
	</div>





</body>
</html>
