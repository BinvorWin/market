<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>商品信息</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/layui/css/layui.css">
  <!-- Bootstrap -->
  <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
  <!-- NProgress -->
  <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">
  <!-- Animate.css -->
  <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">
  <!-- Custom Theme Style -->
  <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
</head>
<%@include file="common/head.jsp"%>
<div class="row">
  <div class="col-xs-12 col-md-8">商品信息</div>
</div>
<div class="row">
   <div class="col-md-4 col-md-offset-8">
 		<button type="button" class="btn btn-primary ">新增</button>
	 	<button type="button" class="btn btn-danger ">删除</button>   
   </div>
</div>

<div class="row">
  <div class="col-xs-12 col-md-12">
  	<table class="table table-hover nth-child">
  		<thead>
       	 	<tr>
        	 <th>商品id</th>
        	 <th>名称</th>
         	 <th>售价</th>
         	 <th>进价</th>
        	 <th>生产日期</th>
        	 <th>过期时间</th>
        	 <th>供应商名称</th>
        	 <th>商品类型</th>
        	 <th>计件方式</th>
        	 <th>备注</th>
        	 <th>操作</th>
        	</tr>
       </thead>
         <tbody>
           <c:forEach items="${pageInfo.list}" var="product">
                      <tr>
                         <td>${product.proid}</td>
                         <td>${product.pname}</td>
                         <td>${product.price}</td>
                         <td>${product.inprice}</td>
                         <td>${product.prodate}</td>
                         <td>${product.reledate}</td>
                         <td>${product.supname}</td>
                         <td>${product.prodate}</td>
                         <td>${product.unit}</td>
                         <td>${product.marks}</td>      
                         <td>
                            <button class="btn btn-primary btn-xs">
                                  编辑<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </button>
                            <button class="btn btn-primary btn-xs" aria-label="Left Align">
                                删除<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                            </button>
                         </td>
                    </tr>
          </c:forEach>
          </tbody>
	</table>
  </div>
</div>

<!-- 提示分页信息行 -->
        <div class="row">
                <!-- 分页文字信息 ：拿到控制器处理请求时封装在pageInfo里面的分页信息-->
                <div class="col-md-6">
                    当前${pageInfo.pageNum}页,共${pageInfo.pages }页,总${pageInfo.total }条记录
                </div>
                <!-- 分页码 -->
                <div class="col-md-6">
                    <nav aria-label="Page navigation">
                      <ul class="pagination">
                      <!-- 
                        1.pageContext.request.contextPath表示当前项目路径，采用的是绝对路径表达方式。一般为http:localhost:8080/项目名 。
                        2.首页，末页的逻辑：pn=1访问第一次，pn=${pageInfo.pages}访问最后一页
                      -->
                       <li>
                            <a href="${pageContext.request.contextPath}/getlist?pn=1">首页</a>
                       </li>
                       <!-- 如果还有前页就访问当前页码-1的页面， -->
                       <c:if test="${pageInfo.hasPreviousPage}">
                         <li>
                          <a href="${pageContext.request.contextPath}/getlist?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                          </a>
                        </li>
                       </c:if>
                        <li>
                        <!--遍历所有导航页码，如果遍历的页码页当前页码相等就高亮显示，如果相等就普通显示  -->
                          <c:forEach items="${pageInfo.navigatepageNums }" var="page_Nums">
                            <c:if test="${page_Nums==pageInfo.pageNum }">
                             <li class="active"><a href="#">${page_Nums}</a></li>
                            </c:if>
                            <c:if test="${page_Nums!=pageInfo.pageNum }">
                             <li ><a href="${pageContext.request.contextPath}/getlist?pn=${page_Nums}">${page_Nums}</a></li>
                            </c:if>
                          </c:forEach>
                        </li>
                         <!-- 如果还有后页就访问当前页码+1的页面， -->
                        <c:if test="${pageInfo.hasNextPage}">
                            <li>
                              <a href="${pageContext.request.contextPath}/getlist?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                        </c:if>
                         <li><a href="${pageContext.request.contextPath}/getlist?pn=${pageInfo.pages}">末页</a></li>
                      </ul>
                    </nav>
                </div>
        </div>
<%@include file="common/footer.jsp"%>
</body>
</html>