<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Sound &amp; Stage Entertainment</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<c:url value="/resources/bootstrap/css/bootstrap.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.js" />"></script>
<style type="text/css">
h2 {
	margin: 0;
	color: #666;
	padding-top: 80px;
	font-size: 52px;
	font-family: "trebuchet ms", sans-serif;
}

.item {
	background: #333;
	text-align: center;
	height: 200px !important;
}

.carousel {
	margin-top: 10px;
}

.bs-example {
	margin: 20px;
}

table {
	border-collapse: separate;
	border-spacing: 10px;
}

li {
	color: black;
	font-weight: bold
}

.warning {
	color: black
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="bs-example" style="margin-top: 100px;">
		<div id="myCarousel" class="carousel slide" data-interval="3000"
			data-ride="carousel">
			<!-- Carousel indicators -->

			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Carousel items -->

			<div class="carousel-inner" style="height: 200px;">
				<div class="active item">
					<a href="FirstMovie.view"><img
						src="<c:url value="/resources/CarouselImages/avengers.jpg" />" /></a>
					<h2>
						<button type="button" class="btn btn-primary">
							<a href="FirstMovie.view">Book Now</a>
						</button>
					</h2>
					<div class="carousel-caption" style="height: 200px;">
						<h2>Avengers</h2>

					</div>
				</div>
				<div class="item">
					<a href="SecondMovie.view"><img
						src="<c:url value="/resources/CarouselImages/annabelle.jpg" />" /></a>
					<h2>Slide 2</h2>
					<div class="carousel-caption" style="height: 200px;">
						<h2>Annabelle</h2>

					</div>
				</div>
				<div class="item">
					<a href="ThirdMovie.view"><img
						src="<c:url value="/resources/CarouselImages/NFSHP3.jpg" />" /></a>
					<h2>Slide 3</h2>
					<div class="carousel-caption" style="height: 200px;">
						<h2>NFS MW</h2>
					</div>
				</div>
			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="carousel-control right" style="color: green;"
				href="#myCarousel" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>


</body>
</html>