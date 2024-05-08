<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.Seeker" %>
    <%
    String username = (String)session.getAttribute("username");
    if(username == null)
    {
    	response.sendRedirect("asessionexpiry.html");
    }
    %>
    
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="login.css" />

    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet' />

    <title>ADMIN HOME</title>
</head>
<body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen'></i>
            <a href="#">
                <span class="logo navLogo">
                    <img src="logo.jpg" alt="Logo" />
                </span>
            </a>

            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a href="#">CodingLab</a></span>
                    <i class='bx bx-x siderbarClose'></i>
                </div>

                <ul class="nav-links">
                    <li><a href="adminhome.jsp">Home</a></li>
                     <li><a href="viewallseekers.jsp">View all Job-Seekers</a></li>
                     <li><a href="viewallrecruiters.jsp">View all Job-Recruiters</a></li>
                    
                </ul>
            </div>

            <div class="darkLight-searchBox">
                <div class="dark-light">
                    <i class='bx bx-moon moon'></i>
                    <i class='bx bx-sun sun'></i>
                </div>

                <div class="searchBox">
                    <div class="searchToggle">
                        <i class='bx bx-x cancel'></i>
                        <i class='bx bx-search search'></i>
                    </div>

                    <div class="search-field">
                        <input type="text" placeholder="Search..." />
                        <i class='bx bx-search'></i>
                    </div>
                </div>
			
					<ul class="nav-links">
                      <li><a href="adminlogout.jsp">logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <br>
    </br>
    <br></br>
    <center>
    <h3>WELCOME TO ADMIN HOME </h3>
    <br />
     <img src="index.jpg" width="600" height="400">
     <br></br>
     <h2>To View all details of job Seeker and Recruiters use above buttons </h2>
     </center>
    </body>
    </html>