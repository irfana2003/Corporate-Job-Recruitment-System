<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<?xml version="1.0" encoding="UTF-8"?>
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
  margin-top: 250px;
  width: 100%;
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
 form .button {
  height: 45px;
  margin: 35px auto; /* Set left and right margins to auto */
}

form .button input {
  height: 100%;
  width: 100%;
  border-radius: 5px;
  border: none;
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  letter-spacing: 1px;
  cursor: pointer;
  transition: all 0.3s ease;
  background: #2691d9;
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
   <br /><br /><br />
   <br /><br /><br />
     <div class="container">
            <div class="title">Registration</div>
            <div class="content">
                <form method="post" action="addrecruiter.jsp">
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details" name="rfname">Full Name</span>
                            <input type="text" name="rfname" placeholder="Enter your fullname" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="rcname">Company Name</span>
                            <input type="text" name="rcname" placeholder="Enter your companyname" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="rname">Username</span>
                            <input type="text" name="rname" placeholder="Enter your username" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="remail">Email</span>
                            <input type="email" name="remail" placeholder="Enter your email" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="rphoneno">Phone Number</span>
                            <input type="text" name="rphoneno" placeholder="Enter your number" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="rage">Age</span>
                            <input type="text" name="rage" placeholder="Enter your age" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details" name="rpassword">Password</span>
                            <input type="password" name="rpassword" placeholder="Enter your password" required="required" />
                        </div>
                        <div class="input-box">
                            <span class="details">Confirm Password</span>
                            <input type="password" placeholder="Confirm your password" required="required" />
                        </div>
                         <div class="title">Company Location</div>
                         <br/>
                          <div class="input-box">
                            
                        </div>
                         
                        <div class="input-box">
                            <span class="details" name="raddress">Address </span>
                            <input type="text" name="raddress" placeholder="Enter your address" required="required" />
                        </div>
    
     					<div class="input-box">
           					 <span class="details" name="rcity">City</span>
            				 <input type="text" name="rcity" placeholder="Enter your city" required="required" />
        				</div>
   		 				<div class="input-box">
            				<span class="details" name="rpostalcode">Postal code</span>
            				<input type="text" name="rpostalcode" placeholder="Enter your postalcode" required="required" />
    					</div>
     					<div class="input-box">
           					 <span class="details" name="rcountry">Country</span>
            				<input type="text" name="rcountry" placeholder="Enter your country" required="required" />
        				</div>
        				
             <div class="button">
                 <input type="submit" value="Register" />
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
    