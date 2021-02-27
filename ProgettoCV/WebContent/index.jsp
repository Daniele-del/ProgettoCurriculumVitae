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
#DivProfile {
  width: 100%;
  padding: 20px 0;
  text-align: center;
  margin-top: 20px;

}

#DivCV{
  width: 100%;
  padding: 20px 0;
  text-align: center;
  margin-top: 20px;
	display:none;
}
.fst-italic {
    font-style: italic!important;
    font-size: 1.5rem;
}
.pb-4 {
    padding-bottom: .5rem!important;
}
.mb-4 {
    margin-bottom: .5rem!important;
}
.border-bottom {
    border-bottom: 1px solid #dee2e6!important;
}

.titolo-paragrafo{
		text-align: left;
		 margin-bottom: .25rem;
   		 font-size: 1.5rem;
}
.paragrafo{
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
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
									width="200">
							</div>
						</div>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary" onclick="showProfile()">Presentazione</button>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary"onclick="showCV()">Curriculum Vitae</button>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary"onclick="location.href='games.html'">Java Mini Games</button>
					</div>
					<div class="card mt-3">
						<button class="btn btn-outline-primary">Curriculum Vitae
							PDF</button>
					</div>
					<div class="card mt-3">
						<ul class="list-group list-group-flush">
							<li
								class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
								<h6 class="mb-0">
									<svg width="24" height="24" viewBox="0 0 500 500"
										xmlns="http://www.w3.org/2000/svg"stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round">
										<path fill="#000000"
											d="M150.65,100.682c0,27.992-22.508,50.683-50.273,50.683c-27.765,0-50.273-22.691-50.273-50.683
      						  C50.104,72.691,72.612,50,100.377,50C128.143,50,150.65,72.691,150.65,100.682z M143.294,187.333H58.277V462h85.017V187.333z
    						    M279.195,187.333h-81.541V462h81.541c0,0,0-101.877,0-144.181c0-38.624,17.779-61.615,51.807-61.615
      							  c31.268,0,46.289,22.071,46.289,61.615c0,39.545,0,144.181,0,144.181h84.605c0,0,0-100.344,0-173.915
     							   s-41.689-109.131-99.934-109.131s-82.768,45.369-82.768,45.369V187.333z" /></svg>
									Linkedin
								</h6> <span class="text-secondary">Linkedin/Daniele</span>
							</li>

							<li
								class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
								<h6 class="mb-0">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round"
										class="feather feather-github mr-2 icon-inline">
										<path
											d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github
								</h6> <span class="text-secondary"> <a href="https://github.com/Daniele-del?tab=repositories">github.com/Daniele-del</a></span>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Nome</h6>
								</div>
								<div class="col-sm-9 text-secondary">Daniele Casazza</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									daniele.casazza1@gmail.com</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Telefono</h6>
								</div>
								<div class="col-sm-9 text-secondary">3497887502</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Indirizzo</h6>
								</div>
								<div class="col-sm-9 text-secondary">Via Puccini 30TER,
									Moncalieri</div>
							</div>
						</div>
					</div>

						<div id="DivProfile" class="cv-block">
							<div class="paragrafo">
							<h2 class="pb-4 mb-4 fst-italic border-bottom">Introduzione</h2>
							<p>sxodfkujghsdofujghosdkpiujfhgnlopkjsdfhngpkobjsnhdfpjughnbsdpfuj
							adklfjuhglouakjdhrfgolujadhrfgioadhroflgujahdrolpfughna
							adofiujghoaldurjfhgloadijrhfgbnladrjhfgbna </p>
							<br>
								<h2 class="pb-4 mb-4 fst-italic border-bottom">Hobby</h2>
								<p>sxodfkujghsdofujghosdkpiujfhgnlopkjsdfhngpkobjsnhdfpjughnbsdpfuj
							adklfjuhglouakjdhrfgolujadhrfgioadhroflgujahdrolpfughna
							adofiujghoaldurjfhgloadijrhfgbnladrjhfgbna </p>
								<br>
									<h2 class="pb-4 mb-4 fst-italic border-bottom">Curiosita</h2>
									<p>sxodfkujghsdofujghosdkpiujfhgnlopkjsdfhngpkobjsnhdfpjughnbsdpfuj
							adklfjuhglouakjdhrfgolujadhrfgioadhroflgujahdrolpfughna
							adofiujghoaldurjfhgloadijrhfgbnladrjhfgbna </p>
									<br>
							</div>
						</div>
					<div id="DivCV" class="cv-block">
						<div class="paragrafo">
							<h2 class="pb-4 mb-4 fst-italic border-bottom">Formazione</h2>
							<p>sxodfkujghsdofujghosdkpiujfhgnlopkjsdfhngpkobjsnhdfpjughnbsdpfuj
							adklfjuhglouakjdhrfgolujadhrfgioadhroflgujahdrolpfughna
							adofiujghoaldurjfhgloadijrhfgbnladrjhfgbna </p>
							<br>
								<h2 class="pb-4 mb-4 fst-italic border-bottom">Esperienze</h2>
								<p>sxodfkujghsdofujghosdkpiujfhgnlopkjsdfhngpkobjsnhdfpjughnbsdpfuj
							adklfjuhglouakjdhrfgolujadhrfgioadhroflgujahdrolpfughna
							adofiujghoaldurjfhgloadijrhfgbnladrjhfgbna </p>
								<br>
									<h2 class="pb-4 mb-4 fst-italic border-bottom">Skill</h2>
									<p>sxodfkujghsdofujghosdkpiujfhgnlopkjsdfhngpkobjsnhdfpjughnbsdpfuj
							adklfjuhglouakjdhrfgolujadhrfgioadhroflgujahdrolpfughna
							adofiujghoaldurjfhgloadijrhfgbnladrjhfgbna </p>
									<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
		
</script>
<script>
function showProfile() {
	  var x = document.getElementById("DivProfile");
	  var y = document.getElementById("DivCV");
		y.style.display = "none";
		x.style.display = "block";
		
	}
</script>
<script>
function showCV() {
	  var x = document.getElementById("DivCV");
	  var y = document.getElementById("DivProfile");
	    y.style.display = "none";
	    x.style.display = "block";
	}
</script>

</body>
</html>