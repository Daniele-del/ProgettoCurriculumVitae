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

td.sudokutdnum {
	border: 2px solid #333;
	height: 40px;
	width: 40px;
	text-align: center;
	vertical-align: middle;
	font-size: 25px;
	cursor: pointer;
}

td.sudokutd {

	border: 2px solid #333;
	height: 40px;
	width: 40px;
	text-align: center;
	vertical-align: middle;
	font-size: 25px;
	cursor: pointer;
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

td.sudokutd:focus {
	background: #b366ff;
}

table.sudokutable {
	pointer-events: none;
	position: relative;
	margin-left: 15%;
	margin-bottom: 5%;
	color: blue;
}

table {
	position: relative;
	margin-left: 25%;
	margin-bottom: 5%;
	color: blue;
}

table.sudokutable tr:first-child td {
	border-top: solid;
}

table.sudokutable tr:last-child td {
	border-bottom: solid;
}

table.sudokutable tr td:first-child {
	border-left: solid;
}

table.sudokutable tr td:last-child {
	border-right: solid;
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

.startgame {
	cursor: pointer;
	display: block;
	width: 196px;
	top: 145px;
	background-color: #99ccff;
	position: absolute;
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left: 15px;
	padding-right: 15px;
	text-align: center;
	border-radius: 5px;
	color: black;
	font-size: 2em;
	left: 25.5%;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}

.endgame {
	display: none;
	width: 200px;
	top: 100px;
	background-color: #99ccff;
	position: absolute;
	padding-top: 50px;
	padding-bottom: 50px;
	padding-left: 15px;
	padding-right: 15px;
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

.colonna {
	float: left;
	height: 200px;
	width: 100px;
}

.paragrafo {
	text-align: left;
	padding: 1rem;
}

.paragrafosudoku {
	float: left;
	text-align: left;
	padding: 1rem;
	height: 500px;
	width: 600px;
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

.iconamenu {
	display: inline-block;
	cursor: pointer;
}

.bar1, .bar2, .bar3 {
	width: 35px;
	height: 5px;
	background-color: #333;
	margin: 6px 0;
	transition: 0.4s;
}

.change .bar1 {
	-webkit-transform: rotate(-45deg) translate(-9px, 6px);
	transform: rotate(-45deg) translate(-9px, 6px);
}

.change .bar2 {
	opacity: 0;
}

.change .bar3 {
	-webkit-transform: rotate(45deg) translate(-8px, -8px);
	transform: rotate(45deg) translate(-8px, -8px);
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	background-color: #f1f1f1;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	background-color: #ddd;
}

.show {
	display: block;
}
#msg {
	color: #fff; 
	font-style: italic;  
	font-size: 20px;  
	font-weight: bold; 
	text-align: center;
	padding-top: 10px;
	height: 75px;
  }
 #wave-container{
 	height : 200px;
 	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 2px solid blue;
	border-radius: .25rem;
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
 }
  @import url(//fonts.googleapis.com/css?family=Lato:300:400);

body {
  margin:0;
}

.header {
  position:relative;
  text-align:center;
  background: linear-gradient(60deg, rgba(84,58,183,1) 0%, rgba(0,172,193,1) 100%);
  color:white;
}
.inner-header {
  width:100%;
  margin: 0;
  padding: 0;
}

.flex {
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.waves {
  position:relative;
  width: 100%;
  min-height:80px;
  max-height:120px;
}

.parallax > use {
  animation: move-forever 25s cubic-bezier(.55,.5,.45,.5)     infinite;
}
.parallax > use:nth-child(1) {
  animation-delay: -2s;
  animation-duration: 7s;
}
.parallax > use:nth-child(2) {
  animation-delay: -3s;
  animation-duration: 10s;
}
.parallax > use:nth-child(3) {
  animation-delay: -4s;
  animation-duration: 13s;
}
.parallax > use:nth-child(4) {
  animation-delay: -5s;
  animation-duration: 20s;
}
@keyframes move-forever {
  0% {
   transform: translate3d(-90px,0,0);
  }
  100% { 
    transform: translate3d(85px,0,0);
  }
}
</style>
</head>
<body>
	<div class="container">
		<div class="main-body">
			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">
					<div class="card mt-3">
						<button class="btn btn-outline-primary" onclick="redirect()">Torna
							al CV</button>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary" onclick="showTris()">Tic
							Tac Toe</button>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary" onclick="showSudoku()">Sudoku</button>
					</div>
					<br><br>
<div id="wave-container">				
<div class="header">
<div class="inner-header flex">
<div id="msg"></div>
</div>
<div>
<svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
<defs>
<path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
</defs>
<g class="parallax">
<use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
<use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
<use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
<use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
</g>
</svg>
</div>
</div>
</div>
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
						<div class="paragrafosudoku">
							<table class="sudokutable" id="tablesudoku">
								<tr>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku0"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku1"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku2"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku3"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku4"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku5"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku6"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku7"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku8"></td>
								</tr>
								<tr>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku9"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku10"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku11"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku12"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku13"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku14"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku15"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku16"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku17"></td>
								</tr>
								<tr>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku18"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku19"></td>
									<td tabindex="-1"
										style="border-bottom: solid; border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku20"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku21"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku22"></td>
									<td tabindex="-1"
										style="border-bottom: solid; border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku23"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku24"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku25"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku26"></td>
								</tr>
								<tr>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku27"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku28"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku29"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku30"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku31"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku32"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku33"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku34"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku35"></td>
								</tr>
								<tr>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku36"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku37"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku38"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku39"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku40"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku41"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku42"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku43"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku44"></td>
								</tr>
								<tr>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku45"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku46"></td>
									<td tabindex="-1"
										style="border-bottom: solid; border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku47"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku48"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku49"></td>
									<td tabindex="-1"
										style="border-bottom: solid; border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku50"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku51"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku52"></td>
									<td tabindex="-1" style="border-bottom: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku53"></td>
								</tr>
								<tr>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku54"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku55"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku56"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku57"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku58"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku59"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku60"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku61"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku62"></td>
								</tr>
								<tr>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku63"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku64"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku65"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku66"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku67"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku68"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku69"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku70"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku71"></td>
								</tr>
								<tr>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku72"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku73"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku74"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku75"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku76"></td>
									<td tabindex="-1" style="border-right: solid"
										onclick="putid(this.id)" class="sudokutd" id="sudoku77"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku78"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku79"></td>
									<td tabindex="-1" onclick="putid(this.id)" class="sudokutd"
										id="sudoku80"></td>
								</tr>
							</table>
							<table style="margin-left: 15%">
								<tr>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero1">1</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero2">2</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero3">3</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero4">4</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero5">5</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero6">6</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero7">7</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero8">8</td>
									<td style="border: solid" onclick="putnumber(this.id)"
										class="sudokutdnum" id="numero9">9</td>
									<td
										style="border-top: white; border-bottom: white; cursor: default;"
										class="sudokutdnum" id="blank"></td>
									<td style="border: solid" onclick="delnumber()"
										class="sudokutdnum" id="cancel">X</td>
								</tr>
							</table>
							<div class="endgame" id="win"></div>
							<div class="divplayer" id="putnum"></div>
							<div onclick="startsudoku()" class="startgame" id="giocasudoku">GIOCA</div>
						</div>
						<div class="colonna">
							<div class="dropdown">
								<br>
								<div class="iconamenu" onclick="menu(this)">
									<div class="bar1"></div>
									<div class="bar2"></div>
									<div class="bar3"></div>
								</div>
								<div style="cursor: pointer; pointer-events: none;"
									id="MenuDropdown" class="dropdown-content">
									<a onclick="sudokureset(false)">Rigioca</a> <a
										onclick="sudokusoluzione()">Soluzione</a> <a
										onclick="sudokureset(true)">Resetta</a>
								</div>
							</div>
							<br> <br>
							<button style="cursor: pointer; pointer-events: none;"
								class="btn btn-outline-primary" id="b_sudoku_gioca"
								onClick="sudokusubmit()">Submit</button>
								<br><br><br>
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
		function startsudoku() {
			document.getElementById("giocasudoku").style.display = "none";
			document.getElementById("tablesudoku").style.pointerEvents = "auto";
			document.getElementById("MenuDropdown").style.pointerEvents = "auto";
			document.getElementById("b_sudoku_gioca").style.pointerEvents = "auto";
			var x = document.getElementsByClassName("sudokutd");
			var i = 0;
			for (i = 0; i < x.length; i++) {				
					x[i].style.pointerEvents = "auto";					
			}

			$.post('GamesController', {
				nomeGioco : "startSudoku"
			}, function(data, status) {
				var json = JSON.parse(data);
				var x;
				for (x in json) {
					document.getElementById(x).innerHTML = json[x];
					document.getElementById(x).style.background = "#9fbedf";
					document.getElementById(x).style.pointerEvents = "none";
				}

			});

		}
	</script>
	<script>
		function sudokusubmit() {
			var x = document.getElementsByClassName("sudokutd");
			var i = 0;
			var listanumeri = new Array();

			$('#tablesudoku tr').each(function() {
				$(this).find('td').each(function() {

					listanumeri.push($(this).text());

				})
			})
			var numToString = listanumeri.toString();
			$.post('GamesController', {
				nomeGioco : "sudoku",
				matrix : numToString
			}, function(data, status) {
				document.getElementById("msg").innerHTML = data;

			});
		}
	</script>
	<script>
		function sudokureset(resetVal) {
			document.getElementById("msg").innerHTML = "";
			document.getElementById("b_sudoku_gioca").disabled = false;
			document.getElementById("putnum").innerHTML = "";
			var x = document.getElementsByClassName("sudokutd");
			var i;
			for (i = 0; i < x.length; i++) {
				x[i].innerHTML = "";
				x[i].style.background = "";
				if(resetVal === true || resetVal === false){
					x[i].style.pointerEvents = "auto";
				} else {
					x[i].style.pointerEvents = "none";
				}			
			}
			$.post('GamesController', {
				nomeGioco : "startSudoku",
				reset : resetVal
			}, function(data, status) {
				if (resetVal === "all") {
					return;
				}
				var json = JSON.parse(data);
				var x;
				for (x in json) {
					document.getElementById(x).innerHTML = json[x];
					document.getElementById(x).style.background = "#9fbedf";
					document.getElementById(x).style.pointerEvents = "none";
				}

			});
		}
	</script>
	<script>
		function putid(clicked_id) {
			document.getElementById("putnum").innerHTML = clicked_id;
		}
	</script>
	<script>
		function putnumber(clicked_id) {
			var numero = document.getElementById(clicked_id).innerHTML;
			var idputnum = document.getElementById("putnum").innerHTML;
			document
					.getElementById(document.getElementById("putnum").innerHTML).innerHTML = numero;
		}
	</script>
	<script>
		function delnumber() {
			document
					.getElementById(document.getElementById("putnum").innerHTML).innerHTML = "";
		}
	</script>
	<script>
		function menu(x) {
			x.classList.toggle("change");
			document.getElementById("MenuDropdown").classList.toggle("show");
		}
	</script>
	<script>
		function showTris() {
			resetAll();
			var x = document.getElementById("DivTris");
			var y = document.getElementById("DivSudoku");
			y.style.display = "none";
			x.style.display = "block";
		}
	</script>
	<script>
		function showSudoku() {			
			resetAll();
			var x = document.getElementById("DivSudoku");
			var y = document.getElementById("DivTris");
			y.style.display = "none";
			x.style.display = "block";
		}
	</script>

	<script>
		function javaTris(clicked_id) {
			var giocatore = document.getElementById("player").innerHTML;
			var cella = clicked_id;
			if (giocatore === "Giocatore 1") {
				document.getElementById(clicked_id).innerHTML = "X";
				document.getElementById(clicked_id).style.pointerEvents = "none";
				document.getElementById("player").innerHTML = "Giocatore 2";
			} else {
				document.getElementById(clicked_id).innerHTML = "O";
				document.getElementById(clicked_id).style.pointerEvents = "none";
				document.getElementById("player").innerHTML = "Giocatore 1";
			}
			$
					.post('GamesController', {
						nomeGioco : "tris",
						nomeCella : cella,
						giocatore : giocatore
					})
					.done(
							function(data) {

								var vincitore = data;

								if (vincitore === "Giocatore 1"
										|| vincitore === "Giocatore 2") {
									var x = document
											.getElementsByClassName("celle");
									var i;
									for (i = 0; i < x.length; i++) {
										x[i].style.pointerEvents = "none";
									}
									document.getElementById("win").innerHTML = "VINCE IL "
											+ vincitore;
									document.getElementById("win").style.display = "block";
								} else if (vincitore === "PAREGGIO") {
									var x = document
											.getElementsByClassName("celle");
									var i;
									for (i = 0; i < x.length; i++) {
										x[i].style.pointerEvents = "none";
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
				x[i].style.pointerEvents = "auto";
			}
			$.post('GamesController', {
				nomeGioco : "tris",
				giocatore : "reset"
			}, function(data, status) {

			});
		}
	</script>
	<script>
		function redirect() {
			resetAll();
			location.href = 'index.jsp';
		}
	</script>
	<script>
		function resetAll() {
			rigioca();
			sudokureset("all");
			document.getElementById("giocasudoku").style.display = "block";
			document.getElementById("MenuDropdown").style.pointerEvents = "none";
			document.getElementById("b_sudoku_gioca").style.pointerEvents = "none";

		}
	</script>
	<script>
		function sudokusoluzione() {
			document.getElementById("b_sudoku_gioca").disabled = true;
			$.post('GamesController', {
				nomeGioco : "sudoku",
				reset : "soluzione"
			}, function(data, status) {

				var json = JSON.parse(data);
				var sol = JSON.parse(json.soluzione);				
				sol.forEach(ciclo);
			});
		}
		function ciclo(value,index,array){
			var tds = document.getElementsByClassName("sudokutd");
				tds[index].innerHTML = value;
			}
			
	</script>
</body>
</html>