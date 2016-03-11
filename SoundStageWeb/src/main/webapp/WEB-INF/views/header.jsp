<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#home').click(function(){
				ajaxHeadLoad('Home.view','#app');
			})
			$('#login').click(function(){
				ajaxBodyLoad('Login.do','#body');
			})
			$('#signUp').click(function(){
				ajaxBodyLoad('Register.do','#body');
			})
			$('#aboutUs').click(function(){
				ajaxBodyLoad('AboutUs.view','#body');
			})
			$('#resetPassword').click(function(){
				ajaxBodyLoad('ResetPassword.do','#body');
			})
			$('#guestView').click(function(){
				ajaxBodyLoad('GuestUser.view','#body');
			})
		});
	</script>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#collapse-navbar"
					aria-expanded="false">
					<span class="sr-only">Navigate</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<div class="navbar-brand" id="home">
					<span class=" glyphicon glyphicon-leaf"></span> 
					<label><spring:message code="label.soundStageEntertainment"/></label>
				</div>
			</div>

			<div class="collapse navbar-collapse"
				id="collapse-navbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li id="login"><a href="#">Login</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">New User ?<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li id="signUp"><a href="#">Sign Up</a></li>
							<li id="aboutUs"><a href="#">About US</a></li>
							<li id="resetPassword"><a href="#">Reset Password</a></li>
							<li role="separator" class="divider"></li>
							<li id ="guestView"><a href="#">Sign in as Guest</a></li>
						</ul>
					</li>
				</ul>
			</div>

		</div>
	</nav>
</div>
<div id="body"></div>