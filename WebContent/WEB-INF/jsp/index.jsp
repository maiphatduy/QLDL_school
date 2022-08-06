<%@ page pageEncoding="UTF-8" contentType="text/html"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%
	String jsonClass = new Gson().toJson(request.getAttribute("DataClass"));
String jsonLow = new Gson().toJson(request.getAttribute("DataLow"));
String jsonMax_score = new Gson().toJson(request.getAttribute("DataMax"));
String jsonMin_score = new Gson().toJson(request.getAttribute("DataMin"));

%>
<!--//container-fluid-->
<div class="row g-4 mb-4">
	<div class="col-12">
		<div class="app-card app-card-chart h-100 shadow-sm">
			<div class="app-card-header p-3 border-0">
				<h4 class="app-card-title">Management Student</h4>
			</div>
			<!--//app-card-header-->
			<div class="app-card-body p-4">
				<div class="chart-container">
					<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
					<canvas id="myChart" width="400" height="200"></canvas>
					<script>
				
						const ctx = document.getElementById('myChart');
							const data1 = {
									label : 'Number Of Pupils',
									data : <%out.print(jsonLow);%>,
									backgroundColor : ['rgba(255, 99, 132, 0.2)'],
									borderColor : [ 'rgba(255, 99, 132, 1)' ],
									borderWidth : 1
								}
							const data2={
									label : 'Max Point',
									data : <%out.print(jsonMax_score);%>,
									backgroundColor : ['rgba(54, 162, 235, 0.2)' ],
									borderColor : [ 'rgba(255, 206, 86, 1)',],
									borderWidth : 1
								}
							const data3={
									label : 'Min Point',
									data : <%out.print(jsonMin_score);%>,
									backgroundColor : ['rgba(75, 192, 192, 0.2)'],
									borderColor : [ 'rgba(75, 192, 192, 1)' ],
									borderWidth : 1
								}

						const myChart = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : <%out.print(jsonClass);%>,
								datasets : [data1,data2,data3]
							},
							options : {
								scales : {
									y : {
										beginAtZero : true
									}
								}
							}
						});
					</script>
				
				</div>
			</div>
			<!--//app-card-body-->
		</div>
		<!--//app-card-->
	</div>
	<!--//col-->
</div>
<!--//row-->