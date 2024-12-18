<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: monospace;
}

body {
	padding-top: 10%;
	background-color: #CCD5AE;
	background: linear-gradient(to right, #FAEDCE, #CCD5AE);
	display: flex;
	align-items: center;
	justify-content: cneter;
	flex-direction: column;
	height: 100vh;
}

.container{
	background-color: white;
	border-radius: 30px;
	box-shadow: 0 5px 15px rgba(0,0,0,0.35);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
}

.container p{
	font-size: 14px;
	line-height: 20px;
	letter-spacing: 0.3px;
	margin: 20px 0;
}

.container span{
	font-size: 12px;
}

.container a{
	color: gray;
	font-size: 13px;
	text-decoration: none;
	margin:15px 0 10px;
}

.container button{
	background-color: #CCD5AE;
	color: gray;
	font-size: 12px;
	padding: 10px 45px;
	border: 1px solid transparent;
	border-radius: 8px;
	font-weight: 600;
	letter-spacing: 0.5px;
	text-transform: uppercase;
	margin-top: 10px;
	cursor: pointer;
}

.container button.hidden {
	background-color: white;
	border-color: white;
}

.container form{
	background-color: white;
	display: flex;
	align-items: cetner;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	height: 100%;
}

.container input{
	background-color: #CCD5AE;
	color: gray;
	border: none;
	margin: 8px 0;
	padding: 10px 15px;
	font-size: 13px;
	border-radius: 8px;
	width: 100%;
	outline: none;
}

.form-container{
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in{
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.active .sign-in{
	transform: translateX(100%);
}

.sign-up{
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.container.active .sign-up {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
	animation: move 0.6s;
}

@keyframes move{
	0%,49.99%{
	opacity: 0;
	z-index: 1;
	}
	50%, 100% {
	opacity: 1;
	z-index: 5;
	}
}

.social-icons{
	margin: 20px 0;
}

.social-icons a{
	border: 1px solid white;
	border-radius: 20%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 3px;
	width: 40px;
	height: 40px;	
}

.toggle-container{
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: all 0.6s ease-in-out;
	border-radius: 150px 0 0 100px;
	z-index: 1000;
}

.container.active .toggle-container{
	transform: translateX(-100%);
	border-radius: 0 150px 100px 0;
}

.toggle{
	background-color: #CCD5AE;
	height: 100%;
	background: #CCD5AE;
	color: gray;
	position: relative;
	left:-100%;
	height: 100%;
	width: 200%;
	transform: translateX(0);
	transition: all 0.6s ease-in-out;
}

.container.active .toggle{
	transform: translateX(50%);
}

.toggle-panel{
	position: absolute;
	width: 50%;
	height: 100%;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 30px;
	text-align: center;
	top:0;
	transform: translateX(0);
	transition: all 0.6s ease-in-out;
}

.toggle-left{
	padding-top: 25%;
	transform: translateX(-200%);
}

.container.active .toggle-left{
	transform: translateX(0);
}

.toggle-right{
	padding-top: 25%;
	right: 0;
	transform: translateX(0);
}


.container.active .toggle-right{
	transform: translateX(200%);
}

</style>
</head>
<body>

<div class="container" id="container">
	<div class="form-container sign-up">
		<form>
			<h1>Create Account</h1>
			<div class="social-icons">
				<a href="#" class="icon">
				<i class="fa-brands fa-google"></i>
				</a>
				<a href="#" class="icon">
				<i class="fa-brands fa-facebook"></i>
				</a>
				<a href="#" class="icon">
				<i class="fa-brands fa-github"></i>
				</a>
				<a href="#" class="icon">
				<i class="fa-brands fa-linkedin-in"></i>
				</a>
			</div>
			<span>or use your email for registration</span>
			<input type="text" placeholder="Name">
			<input type="text" placeholder="Email">
			<input type="password" placeholder="Password">
			<button type="submit" ><b>Sign Up</b></button>
		</form>
	</div>
	<div class="form-container sign-in">
		<form method="post">
			<h1>Sign In</h1>
			<div class="social-icons">
				<a href="#" class="icon">
				<i class="fa-brands fa-google"></i>
				</a>
				<a href="#" class="icon">
				<i class="fa-brands fa-facebook"></i>
				</a>
				<a href="#" class="icon">
				<i class="fa-brands fa-github"></i>
				</a>
				<a href="#" class="icon">
				<i class="fa-brands fa-linkedin-in"></i>
				</a>
			</div>
			<span>or use your email password</span>
			
			<input type="text" placeholder="Email" name="CUSTOMER_ID">
			<input type="password" placeholder="Password" name="CUSTOMER_PASSWORD">
			<a href="#">Forgot Your Password?</a>
			<button type="submit" ><b>Sign In</b></button>
		</form>
	</div>
	<div class="toggle-container">
		<div class="toggle">
			<div class="toggle-panel toggle-left">
				<h1>Welcome Back!</h1>
				<p>Enter your personal details to use all of our site features</p>
				<button class="hidden" id="login"><b>Sign In</b></button>
			</div>
			<div class="toggle-panel toggle-right">
				<h1>Hello, ${cname}</h1>
				<p>Enter your personal details to use all of our site features</p>
				<button class="hidden" id="register"><b>Sign Up</b></button>
			</div>
		</div>
	</div>
</div>

<script>


const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');


registerBtn.addEventListener('click', () => {
	container.classList.add("active");
} )
loginBtn.addEventListener('click', () => {
	container.classList.remove("active");
})
</script>
</body>
</html>