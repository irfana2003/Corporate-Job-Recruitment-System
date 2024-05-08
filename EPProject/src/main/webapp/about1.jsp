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
        <link rel="stylesheet" href="about.css" />
    <link rel="stylesheet" href="socialmediaicons.css" />
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
    </nav>
    
<h1></h1>
<h1></h1>
    <br><br>
<h3 align="center" style="font-size: 50px;">ABOUT OUR WEBSITE</h3>

<div class="container" style="margin-top: 50px;">
    <p class="text-center" style="font-size: 20px;color: slategray;">
        Flexi-timings and work from home arrangements enable us to balance our professional and personal priorities. We rarely miss an opportunity to celebrate festivals and birthdays, enjoy the company of li’l ones on our kids' day, go for team outings, and play pranks. Our day-outings and offsites are a blast and everyone eagerly looks forward to being part of the Annual Conference. When we’re not doing all of this, we connect with clients and candidates and work as well.  
    </p>

    <p class="text-center" style="font-size: 20px;color: rgb(124, 154, 184);">
        " At the end of the day, if we’re able to keep clients, candidates, and employees happy and delighted, it’s worth all the effort put in. If you are target-oriented, hungry for success and want to carve out a niche for yourself, your search ends here. We invite you to be part of our roller coaster ride, where the journey is tough, but the thrill is awesome.
        Building Careers. Building Organisations. That’s what we do best. We are jsc."
    </p>
</div>

<h3>For more details visit our website and follow us</h3>
<div class="icons" align="center">
    <a href="#" class="fb"><i class="fab fa-facebook-f" style="font-size:20px"></i></a>
    <a href="#" class="twitter"><i class="fab fa-twitter" style="font-size:20px"></i></a>
    <a href="https://www.linkedin.com/in/mukesh-prakash-482910226/" class="linkedin"><i class="fab fa-linkedin" style="font-size:20px"></i></a>
    <a href="https://github.com/Mukesh-217" class="git"><i class="fab fa-github" style="font-size:20px"></i></a>
    <a href="#" class="yt"><i class="fab fa-youtube" style="font-size:20px"></i></a>
    <br />
</div>

<script >
    // JavaScript code here (if needed)
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
   