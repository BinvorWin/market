<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>  
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>分类信息列表 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<!-- 按钮 -->
					<div class="row">
						<form class="form-inline" action="getbyparams" method="post">
			                      <span class="row">
			                       <div class="form-group">
								    <label >类名id:</label>
								    <input type="text" class="form-control" id="protypeid" name="protypeid" >
								  </div>
								  <div class="form-group">
								    <label >类别名称:</label>
								    <input type="text" class="form-control" id="typename" name="typename">
								  </div>
								  <button class="btn btn-primary" type="submit">查询</button>
								  <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal">新增</button>
								  </span>
								  
		                    </form>
		                </div>
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					    	<tr>
					        	 <th>类名id</th>
					        	 <th>类别名称</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="type">
					        	<tr>
					                         <th>${type.protypeid}</th>
					                         <th>${type.typename}</th>
					                         <th>
												<a href="${pageContext.request.contextPath }/staff/flatform/type/toupdate?protypeid=${type.protypeid}" class="btn btn-primary btn-xs">修改</a></li>
					                            <a onclick="del(${type.protypeid})"  class= "btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
					                         </th>
					          	</tr>
					       </c:forEach>
	                    </table>
	                  </div>

						<!-- Modal 做完之后再优化 -->
						<form class="form-horizontal form-label-left"  method="post" action="insert" onsubmit="return checkall()">
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel">新增类别</h4>
						      </div>
						      <div class="modal-body">
			                       <div class="item form-group">
			                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >类别id<span >*</span>
			                        </label>
			                        <div class="col-md-6 col-sm-6 col-xs-5">
			                          <input id="protypeid" name="protypeid"  class="form-control col-md-7 col-xs-5"  type="number" ><span id="demo1"  style="color: red;"></span>
			                        </div>
			                      </div>                      
			                      <div class="item form-group">
			                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >商品类型<span >*</span>
			                        </label>
			                        <div class="col-md-6 col-sm-6 col-xs-5">
			                          <input id="typename"  name="typename" class="form-control col-md-7 col-xs-5"  type="text" onblur="check()" ><span id="demo2"  style="color: red;"></span>
			                        </div>
			                      </div> 
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						        <button type="submit" class="btn btn-primary" >添加</button>
						      </div>
						    </div>
						  </div>
						</div>
	                  </div>
	                  </form> 
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
								页,总 ${pageInfo.total } 条记录</div>
							<!-- 分页条信息 -->
							<div class="col-md-6">
								<nav aria-label="Page navigation">
								<ul class="pagination">
									<li><a href="${pageContext.request.contextPath }/staff/flatform/type/getall?pn=1">首页</a></li>
									<c:if test="${pageInfo.hasPreviousPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/type/getall?pn=${pageInfo.pageNum-1}"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
									</c:if>
				
				
									<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
										<c:if test="${page_Num == pageInfo.pageNum }">
											<li class="active"><a href="#">${page_Num }</a></li>
										</c:if>
										<c:if test="${page_Num != pageInfo.pageNum }">
											<li><a href="${pageContext.request.contextPath }/staff/flatform/type/getall?pn=${page_Num }">${page_Num }</a></li>
										</c:if>
				
									</c:forEach>
									<c:if test="${pageInfo.hasNextPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/type/getall?pn=${pageInfo.pageNum+1 }"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</c:if>
									<li><a href="${pageContext.request.contextPath }/staff/flatform/type/getall?pn=${pageInfo.pages}">末页</a></li>
								</ul>
								</nav>
							</div>
						</div>
		
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
			window.location.href="${pageContext.request.contextPath }/staff/flatform/type/delete?protypeid="+id;
			alert("删除成功");
	} else {
		// 取消时做的操作
		alert("删除失败");
	}
}
	/*  校验商品类型名称*/
/* 	function check(){
		var name=$("#typename").;
		alert(name);
	   if(name!=""){
		return true
	}
	else {
		document.getElementById("demo2").innerHTML="请输入商品类型名称！";
		return false;
		}
	} */
	
	/* 校验整个表单 */
	/* function checkall(){
		         var id = check();  
		         
		         
		         if(id){  
					 alert("增添类名成功"); 
		             return true;
		         }else{  
			 			alert("增添失败，请重新填写数据");
		             return false;
		 			
		         }  
	} */
</script>