/**
 * 增加商品订单js
 */
 $("#proid").change(function(){
		 var proid=$("#proid").val();
		$.ajax({
			type:'post',
			data:{"proid":proid},
			url:'/chaoshi/staff/flatform/product/getproduct?proid='+proid,
			dataType:'json',
			success:function(data){
				$("#pname").val(data.pname);
				$("#price").val(data.price);
			},
			error:function(data){
                alert("商品id不存在！");
            }
		});
	});
 //校验库存
 $("#num").change(function(){
	 var num=$("#num").val();
	 var proid=$("#proid").val();
	 var price=$("#price").val();
	 $.ajax({
		 type:'post',
		 data:{"proid":proid,"num":num},
		 url:'/chaoshi/staff/flatform/kcxx/getkcxx?proid='+proid,
		 dataType:'json',
		 success:function(data){
			 if(Number(num)>Number(data.num)){
				 alert("库存不足，当前库存:"+data.num+",请重新输入数量！");
			 }else{
				 var total=accMul(num,price,2);
				 $("#total").val(total);
			 }
		 }
	 })
 });
 
 /* js小数乘法
 *@parameter arg1：被乘数（接受小数和整数）
 *@parameter arg2：乘数（接受小数和整数）
 *@parameter fix: 乘积保留几位（接受正负整数以及0）
 */
 function accMul(arg1,arg2,fix) { 
     if(!parseInt(fix)==fix)
     {
         return;
     }
      var m=0,s1=arg1.toString(),s2=arg2.toString(); 
      try{m+=s1.split(".")[1].length}catch(e){} 
      try{m+=s2.split(".")[1].length}catch(e){}
      if(m>fix){
         return (Math.round(Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m-fix))/Math.pow(10,fix));
      }else if(m<=fix){
          return (Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m)).toFixed(fix);
      }else{
         return (arg1*arg2).toFixed(fix);
      }
 };
 //随机生成7位数销售订单号
 $(document).ready(function(){ 
	 var Num="";
     for(var i=0;i<7;i++){
         Num+=Math.floor(Math.random()*10);
     }
     document.getElementById("saleid").value=Num;
	 });
