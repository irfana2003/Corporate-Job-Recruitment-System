<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en" xmlns:bxi="http://boxicons.com/ns/bxi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="seekerreg.css" />

    <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet" />
    
    <style>
    

.container{
  max-width: 700px;
  width: 100%;
  margin-top: 250px;
  background: #b0e0e6;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: #2691d9;
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: rgb(243, 240, 223);
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: black;
   border-color: rgb(242, 243, 221);
 }
 form input[type="radio"]{
   display: none;
 }
 
 form .button input:hover{
  /* transform: scale(0.99); */
  background: #2691d9;
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
    
    </style>

    <title>Responsive Navigation Menu Bar</title>
</head>
    <body>
    <nav>
        <div class="nav-bar">
            <bxi:i class='bxi bxi-menu sidebarOpen'></bxi:i>
            <a href="index.jsp">
                <span class="logo navLogo">
                    <img src="logo.jpg" alt="Logo" />
                </span>
            </a>

            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a href="#">CodingLab</a></span>
                    <bxi:i class='bxi bxi-x siderbarClose'></bxi:i>
                </div>

                <ul class="nav-links">
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                   
                    <li><a href="#">Services</a></li>
                   <li><a href="contactus.jsp">Contact</a></li>
                </ul>
            </div>

            <div class="darkLight-searchBox">
                <div class="dark-light">
                    <bxi:i class='bxi bxi-moon moon'></bxi:i>
                    <bxi:i class='bxi bxi-sun sun'></bxi:i>
                </div>

                <div class="searchBox">
                    <div class="searchToggle">
                        <bxi:i class='bxi bxi-x cancel'></bxi:i>
                        <bxi:i class='bxi bxi-search search'></bxi:i>
                    </div>

                    <div class="search-field">
                        <input type="text" placeholder="Search..." />
                        <bxi:i class='bxi bxi-search'></bxi:i>
                    </div>
                </div>

                <div class="dropdown">
                    <button class="btn">Sign In</button>
                    <div class="dropdown-content">
                    <a href="adminlogin.jsp">Admin Login</a>
                        <a href="seekerlogin.jsp">Job-Seeker Login</a>
                        <a href="recruiterlogin.jsp">Job-Recruiter Login</a>
                    </div>
                </div>

                <div class="dropdown">
                    <button class="btn">Sign Up</button>
                    <div class="dropdown-content">
                        <a href="seekerregistration.jsp">Job-Seeker Signup</a>
                        <a href="recruiterregistration.jsp">Job-Recruiter Signup</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
   <br />
   <br />
    <br />
   <br />
     <div class="container">
            <div class="title">Registration</div>
            <div class="content">
                <form method="post" action="addseeker.jsp">
                    <div class="user-details">
                    
                        <div class="input-box">
                            <span class="details" name="sfname">First Name</span>
                            <input type="text" name="sfname" placeholder="Enter your firstname" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="slname">Last Name</span>
                            <input type="text" name="slname" placeholder="Enter your lastname" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="sname">Username</span>
                            <input type="text" name="sname" placeholder="Enter your username" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="semail">Email</span>
                            <input type="email" name="semail" placeholder="Enter your email" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="sphoneno">Phone Number</span>
                            <input type="text" name="sphoneno" placeholder="Enter your number" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="sage">Age</span>
                            <input type="text" name="sage" placeholder="Enter your age" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="spassword">Password</span>
                            <input type="password" name="spassword" placeholder="Enter your password" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details">Confirm Password</span>
                            <input type="password" placeholder="Confirm your password" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="saddress">Address </span>
                            <input type="text" name="saddress" placeholder="Enter your address" required="required" />
                        </div>
    
     					<div class="input-box">
           					 <span class="details" name="scity">City</span>
            				 <input type="text" name="scity" placeholder="Enter your city" required="required" />
        				</div>
   		 				<div class="input-box">
            				<span class="details" name="spostalcode">Postal code</span>
            				<input type="text" name="spostalcode" placeholder="Enter your postalcode" required="required" />
    					</div>
     					<div class="input-box">
           					 <span class="details" name="scountry">Country</span>
            				<input type="text" name="scountry" placeholder="Enter your country" required="required" />
        				</div>
             <div class="button">
                 <input type="submit" value="Register" required="required"/>
              </div>
               </div>
           </form>
       </div>
        </div>
        <script>
			 const searchToggle = document.querySelector('.searchToggle');
    const searchBox = document.querySelector('.searchBox');

    searchToggle.addEventListener('click', () => {
        searchBox.classList.toggle('active');
    });

    // Function to handle night mode button click
    const darkLight = document.querySelector('.dark-light');
    const body = document.body;

    darkLight.addEventListener('click', () => {
        body.classList.toggle('dark-mode');
    });

		</script>
</body>
</html>
