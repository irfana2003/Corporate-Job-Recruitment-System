<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
<title>Job-Seeker Home</title>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css"  rel="stylesheet"  href="style.css"/>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<style>
          hr.solid {
            border-top: 1px solid #636161;
          }
          h10{
            color: #636161;
          }
          .profile-pic {
            position: absolute;
            top: 0;
            right: 0;
            margin: 10px;
          }

          .profile-pic img {
            width: 60px; /* Adjust the size as needed */
            height: 60px; /* Adjust the size as needed */
            border-radius: 50%;
          }
          button[type="apply"] {
            background-color: #2691d9;
            color: white;
            width: 50%;
            height: 35px;
            border: 1px solid;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
          }

          button[type="apply"]:hover {
            background-color: #45a049;
          }
          .card{
            background-color: rgb(202, 236, 247);
            border-radius: 20px;
            width: 350px;
          }
          
        </style>
</head>
<body>
<nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen'></i>
            <a href="seekerindex.jsp">
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
                    <li><a href="home1.jsp">Home</a></li>
                    <li><a href="about1.jsp">About</a></li>
                   
                    
                    <li><a href="seekercontact.jsp">Contact</a></li>
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
                      <li><a href="seekerlogout.jsp">logout</a></li>
                    </ul>
             
            </div>
        </div>
    </nav>
    </body>
    </html>
   