<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Mithun Technologies</title>

<link href="../images/mithunlogo.jpg" rel="icon">

<style>

body{
    margin:0;
    font-family: Arial, Helvetica, sans-serif;
    background:#ffffff;
}

/* ---------------- HERO SECTION ---------------- */

.hero{
    height:80vh;
    background: linear-gradient(rgba(0,0,0,.5),rgba(0,0,0,.5)),
                url("../images/mithunlogo.jpg");
    background-size:cover;
    background-position:center;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
    color:white;
}

.hero h1{
    font-size:48px;
    margin-bottom:10px;
}

.hero p{
    font-size:20px;
    max-width:700px;
}

/* ---------------- SECTION TITLE ---------------- */

.section-title{
    text-align:center;
    margin:50px 0 20px 0;
    font-size:32px;
    letter-spacing:2px;
}

/* ---------------- CARDS ---------------- */

.cards{
    display:flex;
    justify-content:center;
    gap:40px;
    padding:20px 40px 60px 40px;
}

.card{
    width:280px;
    text-align:center;
    border-radius:12px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,0.15);
    transition:transform .3s;
    background:white;
}

.card:hover{
    transform:translateY(-8px);
}

.card img{
    width:100%;
    height:280px;
    object-fit:cover;
}

.card h3{
    padding:15px;
    margin:0;
}

/* ---------------- FOOTER ---------------- */

.footer{
    background:#111;
    color:white;
    text-align:center;
    padding:25px;
    font-size:14px;
}

.footer a{
    color:#4da3ff;
    text-decoration:none;
}

.service-link{
    text-align:center;
    margin-bottom:30px;
    font-size:18px;
}

</style>

</head>

<body>

<!-- ================= HERO ================= -->

<div class="hero">
    <div>
        <h1>Mithun Technologies</h1>
        <p>
            Learn AWS, DevOps, Jenkins, Docker, Kubernetes, Terraform and Cloud
            from real industry experts.
        </p>
        <p>
            Trainer : Bhaskar Reddy Lacchannagari – Bengaluru
        </p>
    </div>
</div>

<!-- ================= TITLE ================= -->

<div class="section-title">OUR ROLES</div>

<!-- ================= CARDS ================= -->

<div class="cards">

    <div class="card">
        <img src="../images/mithunlogo.jpg">
        <h3>THE TRAINER</h3>
    </div>

    <div class="card">
        <img src="../images/mithunlogo.jpg">
        <h3>THE DEVOPS ENGINEER</h3>
    </div>

</div>

<!-- ================= SERVICE LINK ================= -->

<div class="service-link">
    Service :
    <a href="../services/employee/getEmployeeDetails">
        Get Employee Details (API)
    </a>
</div>

<!-- ================= FOOTER ================= -->

<div class="footer">
    Mithun Technologies – Marathahalli, Bengaluru <br>
    Phone : +91 9980923216 <br>
    Email : Devopstrainingblr@gmail.com <br><br>

    <a href="mailto:Devopstrainingblr@gmail.com">Mail to Mithun Technologies</a>
    <br><br>
    © 2025 Mithun Technologies
</div>

</body>
</html>
