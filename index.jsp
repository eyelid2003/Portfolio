<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <%@include file="all_component/allCSS.jsp" %>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
      }

      .bg-color {
        background-image: url("images/bg8.jpeg");
        background-repeat: no-repeat;
        height: 100%;
        background-attachment: fixed;
        background-position: center;
        background-size: cover;
      }

      nav {
        display: flex;
        height: 80px;
        width: 100%;
        align-items: center;
        justify-content: space-between;
        padding: 0 50px 0 100px;
        flex-wrap: wrap;
      }

      nav .logo {
       
        font-size: 35px;
        font-weight: 600;
      }

      nav ul {
        display: flex;
        flex-wrap: wrap;
        list-style: none;
      }

      nav ul li {
        margin: 0 5px;
      }

      nav ul li a {
        text-decoration: none;
        font-size: 18px;
        font-weight: 500;
        padding: 8px 15px;
        border-radius: 5px;
        letter-spacing: 1px;
        transition: all 0.3s ease;
      }

      nav ul li a.active,
      nav ul li a:hover {
        color: #111;
        background: #fff;
      }

      nav .menu-btn i {
        font-size: 22px;
        cursor: pointer;
        display: none;
      }

      input[type="checkbox"] {
        display: none;
      }

      @media (max-width: 1000px) {
        nav {
          padding: 0 40px 0 50px;
        }
      }

      @media (max-width: 920px) {
        nav .menu-btn i {
          display: block;
        }

        #click:checked~.menu-btn i:before {
          content: "\f00d";
        }

        nav ul {
          position: fixed;
          top: 80px;
          left: -100%;
          background: rgb(196, 189, 228);
          height: 100vh;
          width: 100%;
          text-align: center;
          display: block;
          transition: all 0.3s ease;
        }

        #click:checked~ul {
          left: 0;
        }

        nav ul li {
          width: 100%;
          margin: 40px 0;
        }

        nav ul li a {
          width: 100%;
          margin-left: -100%;
          display: block;
          font-size: 20px;
          transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        #click:checked~ul li a {
          margin-left: 0px;
        }

        nav ul li a.active,
        nav ul li a:hover {
          background: none;
          color :white;
        }
      }

      .content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        z-index: -1;
        width: 100%;
        padding: 0 30px;
        color: #1b1b1b;
      }

      .content div {
        font-size: 40px;
        font-weight: 700;
      }

      a {
        text-decoration: none;
        color: black;
      }

      a:hover {
        text-decoration: none;
        color: black;
      }

      .crd-ho:hover {
        background-color: #fdf8f8;
      }

      footer {
        background-color: rgb(196, 189, 228);
      }
    </style>
</head>

<body class="bg-color">
  <nav class="fixed-top bg-info">
    <div class="logo text-dark">Portfolio.</div>
    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
      <i class="fas fa-bars"></i>
    </label>
    <ul>
      <li><a href="#home" class="text-dark"><i class="fa-solid fa-house"></i> Home</a></li>
      <li><a href="#about" class="text-dark"><i class="fa-sharp fa-regular fa-address-card"></i> About</a></li>
      <li><a href="#project" class="text-dark"><i class="fa-regular fa-diagram-project"></i> Project</a></li>
      <li><a href="#contact" class="text-dark"><i class="fa-regular fa-address-book"></i> Contact</a></li>
    </ul>
  </nav>

  <section id="home" class="py-5">

    <div class="container py-5">
      <div class="row" style="margin-top:60px;">
        <%@include file="msg.jsp" %>
          <div class="col-md-6 fact-item py-3" style="text-align: center;">
            <img src="images/logo9.jpg" class="rounded-circle " width="300px" height="370px">
          </div>
          <div class="col-md-6 fact-item py-4">
            <p class="text-muted mb-1">Namaste I'm</p>
            <h1 class="text-dark text-uppercase fs-1 fw-bold">Software Engr.</h1>
            <h2 class="fs-4">Palak Dixit</h2>
            <p class=" mt-4 text-muted">I am a person who is positive about every aspect of life.
              To obtain an entry level position in the field of Computer Science.I complete my diploma with good
              mark's<br>
              My hobby is reading book's and playing Guitar in my free time i also want to make Drawing.<br>
            <h3>Why Should you hire me?</h3>

            </p>
            <a href="PalakDixit_InternshalaResume.pdf" class="btn btn-outline-success">My CV</a>
          </div>
      </div>
    </div>
  </section>
  <section id="about" class="py-5">
    <div class="container py-5">
      <div>
        <h1 class="fw-bold" style="text-align:center;">About me</h1>
      </div>
      <div class="row">
        <div class="col-md-6 fact-item py-5">
          <h3 class="fs-4">This is the page to describe myself and my Skills</h3>
          <p class="mt-4 text-muted ">I want to become Full Stack developer. I am fresher programmer with good knowledge
            of
            Front-End and Back-End techniques.
            i am a final year student studying at Govt. Poly Technic College Nowgong.
            i am a hard working student.I got Rs25000 from the Government due to 12th percent.

          </p>
          <div class="row text-center text-uppercase my-3">
            <div class="col-sm-6">
              <div class="fact-item">
                <h3 class="fs-2 fw-bold">3</h3>
                <p class="mt-2 text-muted ">Project</p>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="fact-item">
                <h3 class="fs-2 fw-bold">0</h3>
                <p class="mt-2 text-muted ">Internship</p>
              </div>
            </div>
          </div>
          <a href="PalakDixit_InternshalaResume.pdf"><button class="btn btn-outline-success">Download CV</button></a>
        </div>
        <div class="col-md-6 fact-item py-5">
          HTML
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar bg-warning text-dark" role="progressbar" style="width: 70%" aria-valuenow="10"
              aria-valuemin="0" aria-valuemax="100">70%</div>
          </div><br>
          MySQL
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar bg-warning text-dark" role="progressbar" style="width: 60%" aria-valuenow="100"
              aria-valuemin="0" aria-valuemax="100">60%</div>
          </div><br>
          Java, JSP, JDBC
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar bg-warning text-dark" role="progressbar" style="width: 50%" aria-valuenow="100"
              aria-valuemin="0" aria-valuemax="100">50%</div>
          </div><br>
          CSS
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar  bg-warning text-dark" role="progressbar" style="width: 50%" aria-valuenow="50"
              aria-valuemin="0" aria-valuemax="100">50%</div>
          </div><br>
          PHP, JDBC
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar bg-warning text-dark" role="progressbar" style="width: 50%" aria-valuenow="100"
              aria-valuemin="0" aria-valuemax="100">50%</div>
          </div><br>
          JS, AJAX
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar bg-warning text-dark" role="progressbar" style="width: 40%" aria-valuenow="75"
              aria-valuemin="0" aria-valuemax="100">40%</div>
          </div><br>
          

          Bootstrap
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar bg-warning text-dark" role="progressbar" style="width: 40%" aria-valuenow="100"
              aria-valuemin="0" aria-valuemax="100">40%</div>
          </div><br>
          C, Python, Linux
          <div class="progress bg-success" style="height:10px;">
            <div class="progress-bar bg-warning text-dark" role="progressbar" style="width: 35%" aria-valuenow="100"
              aria-valuemin="0" aria-valuemax="100">35%</div>
          </div><br>
        </div>
      </div>
    </div>
  </section>
  <section id="project" class="py-5">
    <div class="container py-5">
      <div>
        <h1 class="fw-bold" style="text-align:center;"> My Projects</h1>
      </div>
      <div class="row" style="text-align: center;">
        <div class="col-md-3 fact-item p-3">
          <div class="card p-3 m-2 crd-ho">
            <div class="card-body text-center">
              <i class="fa-brands fa-quinscape fa-3x text-danger"></i>
              <h4>Quiz Game Website</h4>
              ...............
            </div>
          </div>
          <a href="../secound/" class="btn btn-outline-success">View project</a><br>
        </div>
        <div class="col-md-3 fact-item p-3">
          <div class="card p-3 m-2 crd-ho">
            <div class="card-body text-center">
              <i class="fas fa-book fa-3x text-danger"></i>
              <h4>E-Book Website</h4>
              ...............
            </div>
          </div>
          <a href="../first/" class="btn btn-outline-success">View project</a><br>
        </div>
        <div class="col-md-3 fact-item p-3">
          <div class="card p-3 m-2 crd-ho">
            <div class="card-body text-center">
              <i class="fa-solid fa-utensils fa-3x text-danger"></i>
              <h4>PetPooja Website</h4>
              ...............
            </div>
          </div>
          <a href="../petpooja/" class="btn btn-outline-success">View project</a><br>
        </div>
        <div class="col-md-3 fact-item p-3">
          <div class="card p-3 m-2 crd-ho">
            <div class="card-body text-center">
              <i class="fa-solid fa-square-poll-horizontal fa-3x text-danger"></i>
              <h4>Result Cal SW</h4>
              ...............
            </div>
          </div>
          <a href="" class="btn btn-outline-success">View project</a><br>
        </div>
      </div>
      <div class="container bg-secondary p-3 mt-5 rounded-5" style="text-align: center;">
        <p class="text-light">Do You have any project?</p>
        <h2 class="text-light">I am Available For Internship Projects.</h2>
        <a href="#contact" class="btn btn-success">Hire Me</a>
      </div>
    </div>
  </section>
  <section id="contact" class="py-5">
    <div class="container py-5">
      <div>
        <h1 class="fw-bold" style="text-align:center;"> Contact Me</h1>
      </div>
      <div class="row">
        <div class="col-md-5 fact-item py-5"><br>
          <div class="contact-item d-flex mb-3">
            <div class="icon fs-4 text-primary">
              <i class="fas fa-phone"></i>
            </div>
            <div class="text ms-4">
              <h3 class="fs-5">Phone</h3>
              <p class="text-muted">+9176920 *****</p>
            </div>
          </div>
          <div class="contact-item d-flex mb-3">
            <div class="icon fs-4 text-primary">
              <i class="fas fa-envelope"></i>
            </div>
            <div class="text ms-4">
              <h3 class="fs-5">Email</h3>
              <a href="mailto:d.eyelid2003@gmail.com" class="text-muted">d.eyelid2003@gmail.com</a>

            </div>
          </div>

        </div>
        <div class="col-md-7 fact-item py-5">
          <div class="contect-form">
            <form action="Portfolio" method="post">
              <div class="row">
                <div class="col-lg-6 mb-4">
                  <input type="text" name="name" placeholder="Your Name" class="form-control form-lg fs-6 shadow-sm"
                    required>
                </div>
                <div class="col-lg-6 mb-4">
                  <input type="email" name="email" placeholder="Your Email" class="form-control form-lg fs-6 shadow-sm"
                    required>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12 mb-4">
                  <textarea rows="5" name="review" placeholder="Your review for My Project"
                    class="form-control form-lg fs-6 shadow-sm" required></textarea>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12 mb-4">
                  <button class="btn btn-success px-3">Send Message</button>

                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
  </section>
  <footer class="footer">
    <div class="container p-3 border-top">
      <div class="row">
        <div class="co-lg-12">
          <p class="m-1 text-center text-dark">@d.eyelid2003
            <a href="https://www.youtube.com/@d.eyelid" class="m-1 text-center text-danger">
              <i class="fa-brands fa-youtube fa-2x"></i></a>
            <a href="https://instagram.com/d.eyelid?igshid=ZGUzMzM3NWJiOQ==" class="m-1 text-center text-danger">
              <i class="fa-brands fa-instagram fa-2x"></i></a>
            <a href="https://www.facebook.com/profile.php?id=100071225642580" class="m-1 text-center text-primary">
              <i class="fa-brands fa-facebook fa-2x"></i></a>
            <a href="https://www.linkedin.com/in/palak-dixit-3bb91b24b" class="m-1 text-center text-primary">
              <i class="fa-brands fa-linkedin fa-2x"></i></a>
            <a href="https://github.com/eyelid2003" class="m-1 text-center text-dark">
              <i class="fa-brands fa-github fa-2x"></i></a>
          </p>
        </div>
      </div>
    </div>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="bootstrap.bundle.min.js"></script>
</body>

</html>