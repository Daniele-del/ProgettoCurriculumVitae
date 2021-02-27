<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:svg="http://www.w3.org/2000/svg">

<head>
<meta charset="utf-8">
<title>Curriculum Vitae</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
div.relative {
	position: relative;
	float: right;
}

td {
	border: 2px solid #333;
	height: 100px;
	width: 100px;
	text-align: center;
	vertical-align: middle;
	font-size: 70px;
	cursor: pointer;
}

table {
	position: relative;
	margin-left: 25%;
	color: blue;
}

table tr:first-child td {
	border-top: 0;
}

table tr:last-child td {
	border-bottom: 0;
}

table tr td:first-child {
	border-left: 0;
}

table tr td:last-child {
	border-right: 0;
}

.endgame {
	display: none;
	width: 200px;
	top: 100px;
	background-color: #99ccff;
	position: absolute;
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left:15px;
	padding-right:15px;
	text-align: center;
	border-radius: 5px;
	color: black;
	font-size: 2em;
	left: 33%;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.divplayer {
	display: none;

}

body {
	margin-top: 5px;
	color: #1a202c;
	text-align: left;
	background-color: #e2e8f0;
}

.main-body {
	padding: 10px;
}

.card {
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.card-body {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 1rem;
}

.gutters-sm {
	margin-right: -8px;
	margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
	padding-right: 8px;
	padding-left: 8px;
}

.mb-3, .my-3 {
	margin-bottom: 1rem !important;
}

.bg-gray-300 {
	background-color: #e2e8f0;
}

.h-100 {
	height: 200% !important;
}

.shadow-none {
	box-shadow: none !important;
}

#DivTris {
	float: right;
	width: 100%;
	padding: 20px 0;
	text-align: center;
	margin-top: 20px;
}

#DivSudoku {
	float: right;
	width: 100%;
	padding: 20px 0;
	text-align: center;
	margin-top: 20px;
	display: none;
}

.fst-italic {
	font-style: italic !important;
	font-size: 1.5rem;
}

.pb-4 {
	padding-bottom: .5rem !important;
}

.mb-4 {
	margin-bottom: .5rem !important;
}

.border-bottom {
	border-bottom: 1px solid #dee2e6 !important;
}

.titolo-paragrafo {
	text-align: left;
	margin-bottom: .25rem;
	font-size: 1.5rem;
}

div.absolute {
	position: absolute;
	right: 200;
	bottom: 200;
}

.paragrafo {
	text-align: left;
	padding: 1rem;
}

.cv-block {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}
</style>
</head>
<body>
	<div class="container">
		<div class="main-body">
			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">
					<div class="card mt-3">
						<button class="btn btn-outline-primary"
							onclick="location.href='index.jsp'">Torna al CV</button>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary" onclick="showTris()">Tic
							Tac Toe</button>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary" onclick="showSudoku()">Sudoku</button>
					</div>
					<div id="prova"></div>
				</div>
				<div class="col-md-8">
					<div id="DivTris" class="cv-block">
						<div class="paragrafo">
							<table id="tabletris">
								<tr>
									<td onclick="javaTris(this.id)" class="celle" id="cella0"></td>
									<td onclick="javaTris(this.id)" class="celle" id="cella1"></td>
									<td onclick="javaTris(this.id)" class="celle" id="cella2"></td>
								</tr>
								<tr>
									<td onclick="javaTris(this.id)" class="celle" id="cella3"></td>
									<td onclick="javaTris(this.id)" class="celle" id="cella4"></td>
									<td onclick="javaTris(this.id)" class="celle" id="cella5"></td>
								</tr>
								<tr>
									<td onclick="javaTris(this.id)" class="celle" id="cella6"></td>
									<td onclick="javaTris(this.id)" class="celle" id="cella7"></td>
									<td onclick="javaTris(this.id)" class="celle" id="cella8"></td>
								</tr>
							</table>
							<div class="endgame" id="win"></div>
							<div class="relative">
								<button class="btn btn-outline-primary" id="b_tris_gioca"
									onClick="rigioca()">Rigioca</button>
							</div>
							<div class="divplayer" id="player">Giocatore 1</div>
						</div>
					</div>
					<div id="DivSudoku" class="cv-block">
						<div class="paragrafo">
							<p>sudoku</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>


	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
	<script>
		function showTris() {
			var x = document.getElementById("DivTris");
			var y = document.getElementById("DivSudoku");
			y.style.display = "none";
			x.style.display = "block";
		}
	</script>
	<script>
		function showSudoku() {
			var x = document.getElementById("DivSudoku");
			var y = document.getElementById("DivTris");
			y.style.display = "none";
			x.style.display = "block";
		}
	</script>
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript"></script>
	<script>
		function javaTris(clicked_id) {
			var giocatore = document.getElementById("player").innerHTML;
			var cella = clicked_id;
			if (giocatore === "Giocatore 1") {
				document.getElementById(clicked_id).innerHTML = "X";
				document.getElementById(clicked_id).disabled = true;
				document.getElementById("player").innerHTML = "Giocatore 2";
			} else {
				document.getElementById(clicked_id).innerHTML = "O";
				document.getElementById(clicked_id).disabled = true;
				document.getElementById("player").innerHTML = "Giocatore 1";
			}

			$.post('GamesController', {
				nomeGioco : "tris",
				nomeCella : cella,
				giocatore : giocatore
			}).done(function(data) {

				var vincitore = data;

				if (vincitore === "Giocatore 1" || vincitore === "Giocatore 2") {
					var x = document.getElementsByClassName("celle");
					var i;
					for (i = 0; i < x.length; i++) {
						x[i].disabled = true;
					}
					document.getElementById("win").innerHTML = "VINCE IL " + vincitore;
					document.getElementById("win").style.display = "block";
				}else if(vincitore === "PAREGGIO"){
					var x = document.getElementsByClassName("celle");
					var i;
					for (i = 0; i < x.length; i++) {
						x[i].disabled = true;
					}
					document.getElementById("win").innerHTML = vincitore;
					document.getElementById("win").style.display = "block";
				}

			})

		};
	</script>
	<script>
		function rigioca() {
			document.getElementById("win").innerHTML = "";
			document.getElementById("win").style.display = "none";
			var x = document.getElementsByClassName("celle");
			var i;
			document.getElementById("player").innerHTML = "Giocatore 1";
			for (i = 0; i < x.length; i++) {
				x[i].innerHTML = "";
				x[i].disabled = false;
			}
			$.post('GamesController', {
				nomeGioco : "tris",
				giocatore : "reset"
			}, function(data, status) {

			});
		}
	</script>
</body>
</html>