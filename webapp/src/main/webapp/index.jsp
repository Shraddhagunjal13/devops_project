<!DOCTYPE html>
<html>
<head>
	<title>web Design</title>
<style type="text/css">
	*{
	margin:0px;
	padding:0px;
}
.box{
 height:auto;
 width:100%;
 background-color:red;
 float: left;
 background-image: url(webpage.jpg);
 background-size:100% 100%;
}
.menubar{
	height:100px;
	width:100%;
	float:left;
	background-color:hsla(240,30%,40%,0.3);
}
.menubar_icon{
	height:100%;
	width:25%;
	float: left;
}
.menubar_option{
	height:100%;
	width:50%;
	float:left;
}
.menubar_search{
	height:100%;
	width:25%;
	float:left;
}
.menubar_text{
	font-size:70px;
	color:#ed5300;
	text-align: center;
	font-weight:bold;
	margin-top:10px;
}
.menu{
	height:100%;
	width:100%;
	float: left;
	text-align: center;
}
.menu li{
	list-style-type:none;
	display:inline-block;
	margin-top:30px;
	margin-left:70px;
}
.menu a{
	color: white;
	text-decoration: none;
	font-weight:bold;
	font-size:20px;
}
.search_input{
	margin-top:30px;
	margin-left:30px;
	border:2px solid #ed5300;
	border-radius: 0px 5px 5px 0px;
	height:30px;

}
.search_btn{
	background-color:#ed5300;
	color: yellow;
	border:none;
	border-radius: 0px 5px 5px 0px;
	height:34px;
	width: 120px;
	text-transform: uppercase;
	margin-left:-5px;
}
.content1{
	height:400px;
	width:50%;
	float: left;
	background-color:hsla(240,30%,40%,0.1);

}
.content_padd{
	padding:100px;
}
.text{
	font-size:60px;
	color: white;
	font-weight:bold ;
}
.text span{
	color:#ed5300;
	text-shadow: 2px 2px black;
	font-size:80px;
}
.text2{
	color: white;
	font-size:20px;
	line-height: 1.5;
}
.button{
	background-color:#ed5300;
	color:black;
	border-radius:10px;
	text-align: center;
	padding:10px;
	width:200px;
	font-size: 20px;
	font-weight:bold;
	border:none;
	margin-top:20px;

}
.content2{
	height:auto;
	width:50%;
	float: left;
	background-color:hsla(240,30%,40%,0.1);

}
.content_padd1{
	padding:100px;
}
.login{
	height:400px;
	width:70%;
	background-color:black;
	float: left;
     border-radius:15px;
     margin-top:20px;
     margin-left:20%;
     padding:30px;
     margin-bottom: 50px;
}
.text3{
	background-color: white;
	color:#ed5300;
	font-size: 30px;
	text-align: center;
	border-radius:10px;
	padding:5px;
}
.email{
	color: white;
	background: transparent;
	width: 100%;
	margin-top:20px;
	height:30px;
	border:none;
	border-bottom:2px solid #ed5300;
}
.btn2{
	background:#ed5300;
	color: black;
	text-align: center;
	border-radius: 10px;
	width:100%;
	font-size: 20px;
	font-weight:bold;
	margin-top:20px;
	padding: 10px;
	border: none;

}
.text4{
	color: white;
	text-align: center;
	margin-top: 20px;
}
.text4 a{
	color: #ed5300;
	text-decoration: none;
}
.loginwith{
	text-align: center;
	margin-top:10px;
	color: white;
	font-weight:bold;
}
.icon li{
display:inline-block;
color: white;
font-weight:bold;
font-size:30px;
margin-left: 30px;
margin-top:10px;
}



</style>
	<link rel="stylesheet" type="text/css" href="13.web.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>
<section class="box">
	<div class="menubar">
		<div class="menubar_icon"><h1 class="menubar_text">A2Z</h1></div>
		<div class="menubar_option">
			<ul class="menu">
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Service</a></li>
				<li><a href="#">Design</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	    <div class="menubar_search">
	    	<input type="text" placeholder="Type To Search" class="search_input">
	    	<button class="search_btn">Search</button>
	    </div>
	</div>
	<div class="content1">
		<div class="content_padd">
		<h1 class="text">WEb Design & <br><span>Development</span><br> Course<br></h1>
		<p class="text2">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat.</p>
		<button class="button">Join us</button>
	</div>
	</div>
	<div class="content2">
				<div class="content_padd1">
					<div class="login">
						<h1 class="text3">Login Here</h1>
						<input type="text" name="" placeholder="Enter Email Here" class="email">
						<input type="text" name="" placeholder="Enter Password Here" class="email">
						<button class="btn2">login</button>
						<h3 class="text4">Don't Have An Account ?<br><a href="#">Sign Up</a> Here</h3>
						<h4 class="loginwith">Login with</h4>
						<ul class="icon">
							<li><i class="fab fa-facebook"></i></li>
							<li><i class="fab fa-youtube"></i></li>
							<li><i class="fab fa-twitter"></i></li>
							<li><i class="fab fa-instagram"></i></li>
							<li><i class="fab fa-skype"></i></li>

						</ul>
					</div>

	</div>


</section>
</body>
</html>
