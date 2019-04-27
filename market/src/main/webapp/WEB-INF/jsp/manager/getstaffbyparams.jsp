<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>  
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>员工信息列表 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<!-- 按钮 -->
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					    	<tr>
					        	 <th>员工id</th>
					        	 <th>员工姓名</th>
					        	 <th>身份证</th>
					        	 <th>员工电话</th>
					        	 <th>性别</th>
					        	 <th>员工类型</th>
					        	 <th>密码</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="staff">
					        	<tr>
					                         <th>${staff.staffid}</th>
					                         <th>${staff.staffname}</th>
					                         <th>${staff.card}</th>
					                         <th>${staff.tel}</th>
					                         <th>${staff.sex}</th>
					                         <th>${staff.stafftype}</th>
					                         <th>${staff.pwd}</th>
					                         <th>
					                            <a href="${pageContext.request.contextPath }/manager/toupdatestaff?staffid=${staff.staffid}" class="btn btn-primary btn-xs">修改</a>
					                            <a onclick="del(${staff.staffid})"  class= "btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
					                         </th>
					          	</tr>
					         </c:forEach>
	                    </table>
	                  </div>

						
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6">总 ${pageInfo.total }条记录</div>
						</div>
				<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
	                </div>
	</div>
</div>
</div>
<%@include file="common/footer.jsp"%>
<script type="text/javascript">
	function del(id) {
		var message=confirm("是否确认要删除?");
		if (message==true) {
			// 确认时做的操作 var 
			window.location.href="${pageContext.request.contextPath }/manager/delete?staffid="+id;
			alert("删除成功");
	} else {
		// 取消时做的操作
		alert("删除失败");
	}
}</script>