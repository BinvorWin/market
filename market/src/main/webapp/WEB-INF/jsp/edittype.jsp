<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="update" name="form" onsubmit="return checkall()">

                      <span class="section">修改类别信息</span>

                       <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >类别id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="protypeid" name="protypeid"  class="form-control col-md-7 col-xs-5" value="${type.protypeid}"  type="text" readonly="readonly">
                        </div>
                      </div>                      
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5"  >商品类型<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="typename"  name="typename" class="form-control col-md-7 col-xs-5"  value="${type.typename}" onblur="check()" type="text" ><span id="demo1"  style="color: red;"></span>
                        </div>
                      </div>                      
						<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>
						<button type="submit" class="btn btn-primary text-center  col-md-offset-4 col-lg-offset-4 col-xl-offset-4" >修改	</button>							                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>
<script>
/*  校验商品类型名称*/
function check(){
	var name=document.getElementById('typename').value;
   if(name){
	if(isNaN(name)){
		document.getElementById("demo1").innerHTML=" ";
		return true
	}else {
		document.getElementById("demo1").innerHTML="请输入商品类型名称！";
		return false;
		}

}
else {
	document.getElementById("demo1").innerHTML="请输入商品类型名称！";
	return false;
	}
}
/* 校验整个表单 */
function checkall(){
	         var name = check();  
	         
	         
	         if(name){  
				 alert("修改类名成功"); 
	             return true;
	         }else{  
		 			alert("修改失败，请重新填写数据");
	             return false;
	 			
	         }  
}
</script>