<html>
<head>
<meta charset="ISO-8859-1">
<title>Tris</title>
<style type="text/css">
td{
	border: 2px solid #333;
	height: 100px;
	width: 100px;
	test-align: center;
	vertical-align: middle;
	font-size: 70px;
	cursor: pointer;
}
table{
	border-collapse: collapse;
	position: absolute;
	left: 50%;
	margin-left: -155px;
	top: 50px;
}
table tr:first-child td{
	border-top: 0;
}
table tr:last-child td{
	border-bottom: 0;
}
table tr td:first-child{
	border-left: 0;
}
table tr td:last-child{
	border-right: 0;
}
.endgame {
	display: none;
	width: 200px;
	top: 120px;
	background-color: rgba(205,133,63,0.8);
	position: absolute;
	left: 50%;
	margin-left: -100px;
	padding-top: 50px;
	padding-bottom: 50px;
	text-align: center;
	border-radius: 5px;
	color:black;
	font-size:2em;	
}
</style>
</head>
<body>
<!-- <form action="/CurriculumVitae.java" method="POST"> -->
<table>	
	<tr>
		<td onclick="javaTris()" class="celle" id="cella0"></td>
		<td onclick="javaTris()" class="celle" id="cella1"></td>
		<td onclick="javaTris()" class="celle" id="cella2"></td>
	</tr>
	<tr>
		<td onclick="javaTris()" class="celle" id="cella3"></td>
		<td onclick="javaTris()" class="celle" id="cella4"></td>
		<td onclick="javaTris()" class="celle" id="cella5"></td>
	</tr>
		<tr>
		<td onclick="javaTris()" class="celle" id="cella6"></td>
		<td onclick="javaTris()" class="celle" id="cella7"></td>
		<td onclick="javaTris()" class="celle" id="cella8"></td>
	</tr>
</table>
<!-- </form>  -->
<div class="vincitore">
	<div class="nomeVincitore"></div>
</div>
<button class="btn btn-outline-primary" id="b_tris_gioca" onClick="Gioca()">Rigioca</button>
<button class="btn btn-outline-primary" onclick="location.href='index.jsp'">Torna al CV</button>
<script>
function javaTris() {
	alert("javatris");
	 $.post("/TrisController",
			    {
			      name: "Donald Duck",
			      city: "Duckburg"
			    },
			    function(data,status){
			      alert("Data: " + data + "\nStatus: " + status);
			    });
	}
</script>
</body>
</html>