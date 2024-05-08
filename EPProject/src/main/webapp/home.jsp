<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="style.css" />

    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet' />

    <title>HOME</title>
    <style>
    
.jobs-cards-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.jobs-card {
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
  margin-bottom: 20px;
  overflow: hidden;
  transition: all 0.3s ease-in-out;
  width: calc(33.33% - 10px);
}

.jobs-card img {
  width: 100%;
}

.jobs-card .course-title {
  font-size: 1.2rem;
  font-weight: bold;
  margin: 10px 0;
}

.jobs-card .course-description {
  margin-bottom: 20px;
}

.jobs-card .enroll-button {
  background-color: #007bff;
  border: none;
  color: #fff;
  padding: 10px 20px;
}

.jobs-card:hover {
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);

  }

 button a {
  background-color: green;
  color: white;
  padding: 10px 20px;
  border-radius: 4px;
  text-decoration: none;
  font-weight: bold;
  display: inline-block;

}

button a:hover {
  background-color: darkener;
}
    
    </style>
</head>
<body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen'></i>
            <a href="index.jsp">
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
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact</a></li>
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
    
 <br><br><br><br><br><br>

<div class="jobs-cards-container">
    <div class="jobs-card">
    <img src="infosys.png" alt="Company Logo">
    <h2 class="jobs-title">Data Entry Operator</h2>
    <p class="jobs-description">Location: Mumbai</p>
       <p class="jobs-description">Start date:Immediately</p>
     <p class="jobs-description">salary: 5-6.25 LPA</p>
      <button><a href="seekerlogin.jsp">View details</a></button>
      <button><a href="seekerlogin.jsp">Apply</a></button>
  </div>

  <div class="jobs-card">
     <img src="microsoft.png" alt="Company Logo" width="100",height="108">
    <h2 class="jobs-title">Application Developer: Microsoft .NET Stack</h2>
    <p class="jobs-description">Location: Delhi</p>
       <p class="jobs-description">Start date:Immediately</p>
     <p class="jobs-description">salary: 5-6.50 LPA</p>
      <button><a href="seekerlogin.jsp">View details</a></button>
      <button><a href="seekerlogin.jsp">Apply</a></button>
  </div>
  <div class="jobs-card">
      <img src="ibm.jpg" alt="Company Logo"  width="100" height="100">
    <h2 class="jobs-title">iOS Developer with 1 To 6 years of experience</h2>
    <p class="jobs-description">Location: Mumbai</p>
       <p class="jobs-description">Start date:Immediately</p>
     <p class="jobs-description">salary:5-6.25 LPA</p>
      <button><a href="seekerlogin.jsp">View details</a></button>
      <button><a href="seekerlogin.jsp">Apply</a></button>
  </div>
  <div class="jobs-card">
    <img src="apple.jpg" alt="Company Logo" width="50" height="108">
    <h2 class="jobs-title">Programmer-iPhone/iPad/Andriod</h2>
    <p class="jobs-description">Location: Chennai</p>
       <p class="jobs-description">Start date:Immediately</p>
     <p class="jobs-description">salary: 8 - 9 LPA</p>
      <button><a href="seekerlogin.jsp">View details</a></button>
      <button><a href="seekerlogin.jsp">Apply</a></button>
  </div>
  <div class="jobs-card">
     <img src="microsoft.png" alt="Company Logo" width="100",height="108">
    <h2 class="jobs-title">Application Developer: Microsoft Cloud</h2>
    <p class="jobs-description">Location: Delhi</p>
       <p class="jobs-description">Start date:Immediately</p>
     <p class="jobs-description">salary: 5-6.50 LPA</p>
      <button><a href="seekerlogin.jsp">View details</a></button>
      <button><a href="seekerlogin.jsp">Apply</a></button>
  </div>

  <div class="jobs-card">
    <img src="infosys.png" alt="Company Logo" width="100",height="108">
    <h2 class="jobs-title">Senoir Test Developer</h2>
    <p class="jobs-description">Location: Delhi</p>
       <p class="jobs-description">Start date:Immediately</p>
     <p class="jobs-description">salary: 5-6.50 LPA</p>
       <button><a href="seekerlogin.jsp">View details</a></button>
      <button><a href="seekerlogin.jsp">Apply</a></button>
  </div>

  <div class="jobs-card">
      <img src="ibm.jpg" alt="Company Logo" width="100" height="108">
    <h2 class="jobs-title">Back Office Executive</h2>
    <p class="jobs-description">Location: Vizag</p>
       <p class="jobs-description">Start date:Immediately</p>
     <p class="jobs-description">salary:1.25-2.25 LPA</p>
      <button><a href="seekerlogin.jsp">View details</a></button>
      <button><a href="seekerlogin.jsp">Apply</a></button>
  </div>
</div>
    
</body>
</html>
    