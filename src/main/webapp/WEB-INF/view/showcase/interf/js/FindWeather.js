$("#http").click(function(e){
	$.ajax({
		type : "POST",
		url : contextPath + "/showcase/interf/weather/http/",
		data : {
			cityName : $("#cityName").val()
		},
		async : false,
		success : function(obj) {
			if(obj.status == '200'){
				var days = obj.datas.days;
				var sk = obj.datas.sk;
				var today = obj.datas.today;
				var html;
				for(var i=0;i<days.length;i++){
					html += '<tr>' + 
							"<td>" + days[i].date + "</td>" +
							"<td>" + days[i].week + "</td>" + 
							"<td>" + days[i].weather + "</td>" +
							"<td>" + days[i].temperature + "</td>" +
							"<td>" + days[i].wind + "</td></tr>";
				}
				$("#temp").html(sk.temp);
				$("#wind_direction").html(sk.wind_direction);
				$("#wind_strength").html(sk.wind_strength);
				$("#humidity").html(sk.humidity);
				$("#time").html(sk.time);
				
				$("#city").html(today.city);
				$("#date_y").html(today.date_y);
				$("#week").html(today.week);
				$("#temperature").html(today.temperature);
				$("#weather").html(today.weather);
				$("#wind").html(today.wind);
				$("#dressing_index").html(today.dressing_index);
				$("#dressing_advice").html(today.dressing_advice);
				$("#uv_index").html(today.uv_index);
				$("#comfort_index").html(today.comfort_index);
				$("#wash_index").html(today.wash_index);
				$("#travel_index").html(today.travel_index);
				$("#exercise_index").html(today.exercise_index);
				$("#drying_index").html(today.drying_index);
				
				$("#weatherDay").html(html);
			}
			if (obj.status != '200') {
				bootbox.alert(obj.statusText);
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			bootbox.alert(textStatus + errorThrown);
		}
	});
});

$("#webService").click(function(e){
	$.ajax({
		type : "POST",
		url :  contextPath + "/showcase/interf/weather/webService/" + $("#cityName").val(),
		async : false,
		success : function(obj) {
			if (obj.status != '200') {
				bootbox.alert(obj.statusText);
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			bootbox.alert(textStatus + errorThrown);
		}
	});
});