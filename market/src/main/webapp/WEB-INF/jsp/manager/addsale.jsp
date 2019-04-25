<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
    <div class="right_col" role="main"> 
	<form class="form-horizontal form-label-left" method="post" action="insert" onsubmit="return checkall()">

                      <span class="section">添加订单</span>
					  <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">订单id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="saleid" name="saleid" class="form-control input-small input-sm "  value="${sale.saleid}"  type="text" onblur="checksaleid()"  ><span id="demo1" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">商品id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="proid"  name="proid" class="form-control input-small input-sm "  value="${sale.proid}"  type="text"  onblur="checkproid()"><span id="demo2" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="pname" name="pname" class="form-control col-md-7 col-xs-5" value="${sale.pname}"  type="text" onblur="checkproname()" readonly><span id="demo3" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >售价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="price" name="price" class="form-control col-md-7 col-xs-5" value="${sale.price}"  type="number" onblur="checkprice()"  readonly><span id="demo4" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >数量<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="num" name="num" class="form-control col-md-7 col-xs-5" value="${sale.num}"  type="number"  onblur="checknum()"><span id="demo5" style="color: red;"></span>
                        </div>  
                        </div> 
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >总价 <span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="total" name="total" class="form-control col-md-7 col-xs-5"  type="number"  readonly>                        
                        </div>
                      	</div>
                      	<div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" width="15">客户id<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="cusid"  name="cusid" class="form-control input-small input-sm "  value="${sale.cusid}"  type="text" onblur="checkcusid()" ><span id="demo6" style="color: red;"></span>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >客户名称<span >*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="cusname" name="cusname" class="form-control col-md-7 col-xs-5" value="${sale.cusname}"  type="text" onblur="checkcusname()" ><span id="demo7" style="color: red;"></span>
                        </div>
                      </div>
                        <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-5" >备注<span ></span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-5">
                          <input id="marks" name="marks" class="form-control col-md-7 col-xs-5" value="${sale.marks}"  type="text"  >
                        </div>
                        </div>
						<a onclick="javascript:history.back(-1);" class=" text-left btn btn-default  " role="button">返回上页</a>

						<button type="submit" class="btn btn-primary text-center  col-md-offset-4 col-lg-offset-4col-xl-offset-4" >增加</button>							                      
                    </form>
	<div class="clearfix"></div>
	</div>
<%@include file="common/footer.jsp"%>
<script type="text/javascript">
	/*判断输入id是不是数字  */
	function checksaleid()
	{
		var num = document.getElementById('saleid').value;
		if( num )
			{
			if( !isNaN( num ) )
				{
					document.getElementById("demo1").innerHTML=" ";
			return true;
			}else{
				document.getElementById("demo1").innerHTML="请输入正确的订单id！";
				document.getElementById('saleid').value="";
				document.getElementById('saleid').focus();
				return false;
				}
			}
	else{
			document.getElementById("demo1").innerHTML="请输入订单id！";
		document.getElementById('saleid').focus();
		return false;
		}
	}
	/* 验证商品id */
	function checkproid()
	{
		var num = document.getElementById('proid').value;
		if( num )
			{
			if( !isNaN( num ) )
				{
					document.getElementById("demo2").innerHTML=" ";
			return true;
			}else{
				document.getElementById("demo2").innerHTML="请输入正确的商品id！";
				document.getElementById('proid').value="";
				document.getElementById('proid').focus();
				return false;
				}
			}
	else{
			document.getElementById("demo2").innerHTML="请输入商品id！";
		document.getElementById('proid').focus();
		return false;
		}
	}
	/*  校验商品名称*/
	function checkproname(){
		var name = document.getElementById('pname').value;
	   if(name==""){
	    /*    alert("请输入商品名称！"); */
		document.getElementById("demo3").innerHTML="请输入商品名称！";
		return false;
	}
	else {
		document.getElementById("demo3").innerHTML=" ";
		return true
		}
	}
/*  验证价格*/
	function checkprice()
	{
		var num = document.getElementById('price').value;
		if( num )
			{
			if( !isNaN( num ) )
				{
					document.getElementById("demo4").innerHTML=" ";
			return true;
			}else{
				document.getElementById("demo4").innerHTML="请输入正确的售价！";
				document.getElementById('price').value="";
				document.getElementById('price').focus();
				return false;
				}
			}
	else{
			document.getElementById("demo4").innerHTML="请输入售价！";
		document.getElementById('price').focus();
		return false;
		}
	}
	/*  验证数量*/
	function checknum()
	{
		var num = document.getElementById('num').value;
		if( num )
			{
			if( !isNaN( num ) )
				{
					document.getElementById("demo5").innerHTML=" ";
			return true;
			}else{
				document.getElementById("demo5").innerHTML="请输入正确的数量！";
				document.getElementById('num').value="";
				document.getElementById('num').focus();
				return false;
				}
			}
	else{
			document.getElementById("demo5").innerHTML="请输入商品数量！";
		document.getElementById('num').focus();
		return false;
		}
	}
	/*  算总价*/
	function total(){
		var num=document.getElementById('num').value;
		var price=document.getElementById('price').value;
		var sum=  parseFloat(num*price);
		document.getElementById('total').value=sum;
		
	}
	/* 验证客户id */
	function checkcusid()
	{
		var num = document.getElementById('cusid').value;
		if( num )
			{
			if( !isNaN( num ) )
				{
					document.getElementById("demo6").innerHTML=" ";
			return true;
			}else{
				document.getElementById("demo6").innerHTML="请输入正确的客户id！";
				document.getElementById('cusid').value="";
				document.getElementById('cusid').focus();
				return false;
				}
			}
	else{
			document.getElementById("demo6").innerHTML="请输入客户id！";
		document.getElementById('cusid').focus();
		return false;
		}
	}
	/*  校验客户名称*/
	function checkcusname(){
		var name = document.getElementById('cusname').value;
	   if(name==""){
		document.getElementById("demo7").innerHTML="请输入客户名称！";
		return false;
	}
	else {
		document.getElementById("demo7").innerHTML=" ";
		return true
		}
	}
	
	/* 验证整个表单 */
	function checkall(){
		var saleid=checksaleid();
		var proid=checkproid();
		var pname=checkproname();
		var price=checkprice();
		var num=checknum();
		var cusid=checkcusid();
		var cusname=checkcusname();
		if(saleid&&proid&&pname&&price&&num&&cusid&&cusname){
			 alert("添加成功"); 
			 return true;
		}else{  
	 			alert("添加失败，请重新填写数据");
			    return false;
			}  
	}
	</script>
	<script src="${pageContext.request.contextPath}/statics/localjs/maddsale.js"></script>
	