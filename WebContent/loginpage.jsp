<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/loginpage.css">
    <title>로그인 페이지</title>
</head>

<body>
    <div class="login-wrap">
        <div class="login-html">
            <div style="clear: both;"></div>
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign
                In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
            <div class="login-form">
                <div class="sign-in-htm">
                <!-- form -->
                   <form action="/auth/login.do" method="post">
                    <div class="group">
                        <label for="user" class="label">User_ID</label> 
                        <input id="user" name="id" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" name="password" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign In">
                    </div>
                    </form>
                 
                    <div>
                        <a href="index.jsp">
                            <img src="images/logo.png" style="height: 150px; position: absolute; left: 38%; top: 120%;">
                        </a>
                    </div>
                    <div style="clear: both;"></div>
                </div>
                
                   
                <div class="sign-up-htm"> 
                 <form action="/member/add.do" method="post">
                    <div class="group">
                        <label for="user" class="label">User_ID</label>
                        <input id="user" name="id" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" name="password" type="password" class="input" data-type="password">
                    </div>
                  
                    <div class="group">
                        <label for="pass" class="label">name</label>
                        <input id="pass" name="name" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Email Address</label>
                        <input id="pass" name="email" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Phone Number</label>
                        <input id="pass" name="phone" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Company Name</label>
                        <input id="pass" name="company" type="text" class="input">
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign Up">
                    </div>
                    
                    </form>
                    <div class="foot-lnk">
                        <a><label for="tab-1">Already Member?</label></a>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</body>

</html>