<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>  
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>供应商信息列表 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<!-- 按钮 -->
					<div class="row">
						<div class="mid_center">
			                  <div class="col-xs-12 col-md-offset-10 ">
			                    <div class="input-group">
			                      <input type="text" class="form-control" placeholder="Search for...">
			                      <span class="input-group-btn">
			                      	<a href="#" class="btn btn-primary " role="button">查询 </a>
									<a href="${pageContext.request.contextPath }/staff/flatform/supply/toadd" class="btn btn-primary " role="button">新增</a>
			                      </span>
			                    </div>
			                  </div>
		                </div>
					</div>
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					    	<tr>
					        	 <th>供应商id</th>
					        	 <th>供应商姓名</th>
					        	 <th>供应商电话</th>
					        	 <th>负责人</th>
					        	 <th>地址</th>
					        	 <th>邮箱</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="supply">
					        	<tr>
					                         <th>${supply.supid}</th>
					                         <th>${supply.suppname}</th>
					                         <th>${supply.tel}</th>
					                         <th>${supply.person}</th>
					                         <th>${supply.address}</th>
					                         <th>${supply.emali}</th>
					                         <th>
					                            <div class="btn-group">
												  <button type="button" class="btn btn-xs btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												    编辑 <span class="caret"></span>
												  </button>
												  <ul class="dropdown-menu">
												    <li><a href="${pageContext.request.contextPath }/staff/flatform/supply/getbyid?supid=${supply.supid}" >查看</a></li>
												    <li><a href="${pageContext.request.contextPath }/staff/flatform/supply/toupdate?supid=${supply.supid}">修改</a></li>
												  </ul>
												</div>
					                            <a href="${pageContext.request.contextPath }/staff/flatform/supply/delete?supid=${supply.supid}"  class="btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
					                         </th>
					          	</tr>
					         </c:forEach>
	                    </table>
	                  </div>

						<!-- Modal 做完之后再优化 -->
<%-- 						<form class="form-horizontal form-label-left" id="getbyid" name="getbyid" method="post" action="update">
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel">修改类别</h4>
						      </div>
						      <div class="modal-body">
								<div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">类别id<span >*</span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-5">
		                          <input id="protypeid" name="protypeid" class="form-control input-small input-sm "  value="${type.protypeid}"  type="text" >
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >类别名称<span >*</span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-5">
		                          <input id="typename" name="typename" class="form-control col-md-7 col-xs-5"  value="${type.typename}" type="text" >
		                        </div>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        <button type="submit" class="btn btn-primary" >Save changes</button>
						      </div>
						    </div>
						  </div>
						</div>
	                  </div>
	                  </form> --%>
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
								页,总 ${pageInfo.total } 条记录</div>
							<!-- 分页条信息 -->
							<div class="col-md-6">
								<nav aria-label="Page navigation">
								<ul class="pagination">
									<li><a href="${pageContext.request.contextPath }/staff/flatform/supply/getall?pn=1">首页</a></li>
									<c:if test="${pageInfo.hasPreviousPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/supply/getall?pn=${pageInfo.pageNum-1}"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
									</c:if>
				
				
									<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
										<c:if test="${page_Num == pageInfo.pageNum }">
											<li class="active"><a href="#">${page_Num }</a></li>
										</c:if>
										<c:if test="${page_Num != pageInfo.pageNum }">
											<li><a href="${pageContext.request.contextPath }/staff/flatform/supply/getall?pn=${page_Num }">${page_Num }</a></li>
										</c:if>
				
									</c:forEach>
									<c:if test="${pageInfo.hasNextPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/supply/getall?pn=${pageInfo.pageNum+1 }"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</c:if>
									<li><a href="${pageContext.request.contextPath }/staff/flatform/supply/getall?pn=${pageInfo.pages}">末页</a></li>
								</ul>
								</nav>
							</div>
						</div>
		
	                </div>
	</div>
</div>
</div>
<!-- <script type="text/javascript">
/* 	function gettype(protypeid){
		alert(1);
  	$.ajax({
  		type:'post',
  		url:'${pageContext.request.contextPath }/staff/flatform/getbyid?protypeid'=protypeid,
  		success : function(result) {
  			var typedata=result.extend.type;
			$("#protypeid").attr("value",typedata.protypeid);
			$("#typename").attr("value",typedata.typename);
			}
  		});
	} */	
	
	function get(){
		alert(1);
  	
	}	
</script>    -->
<%@include file="common/footer.jsp"%>