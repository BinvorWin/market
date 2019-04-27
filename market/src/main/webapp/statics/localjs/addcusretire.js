/**
 * 客户退货
 */
 $("#saleid").change(function(){
		 var saleid=$("#saleid").val();
		$.ajax({
			type:'post',
			data:{"saleid":saleid},
			url:'/chaoshi/staff/flatform/cusretire/getCus?saleid='+saleid,
			dataType:'json',
			success:function(data){
				$("#proid").val(data.proid);
				$("#pname").val(data.pname);
				$("#num").val(data.num);
				var num=$("#num").val();
				if(num>data.num)
					alert("退货失败，当前售货订单数量为："+data.num+",请重新输入退货数量");
			},
			error:function(data){
                alert("该订单id不存在！");
            }
		});
	});
 $("#num").change(function(){
	 var saleid=$("#saleid").val();
	$.ajax({
		type:'post',
		data:{"saleid":saleid},
		url:'/chaoshi/staff/flatform/cusretire/getCus?saleid='+saleid,
		dataType:'json',
		success:function(data){
			var num=$("#num").val();
			if(num>data.num){
				alert("当前售货订单数量为："+data.num+",请重新输入退货数量");
				document.getElementById("submit").disabled=true;}
			else
				document.getElementById("submit").disabled=false;
		},
		error:function(data){
            alert("该订单id不存在！");
        }
	});
});