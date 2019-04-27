/**
 * 增加商品退货订单js
 */
 $("#inid").change(function(){
		 var inid=$("#inid").val();
		$.ajax({
			type:'post',
			data:{"inid":inid},
			url:'/chaoshi/manager/flatform/ckretire/getckret?inid='+inid,
			dataType:'json',
			success:function(data){
				$("#proid").val(data.proid);
				$("#pname").val(data.pname);
				$("#num").val(data.num);
				var num=$("#num").val();
				if(num>data.num)
					alert("退货失败，当前进货订单数量为："+data.num+",请重新输入退货数量");
			},
			error:function(data){
                alert("该订单id不存在！");
            }
		});
	});