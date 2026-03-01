<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Mithun Technologies – 3D UI</title>

<style>
html,body{
    margin:0;
    height:100%;
    background:#0b0b0b;
    font-family:Arial,Helvetica,sans-serif;
    overflow:hidden;
}

/* 3D stage */
.scene{
    width:100vw;
    height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
    perspective:1000px;
}

/* 3D card */
.card{
    width:520px;
    height:320px;
    background:linear-gradient(135deg,#111,#1f1f1f);
    border-radius:18px;
    box-shadow:0 40px 80px rgba(0,0,0,.6);
    transform-style:preserve-3d;
    transition:transform 0.1s linear;
    padding:35px;
    box-sizing:border-box;
}

/* depth layers */
.card h1{
    color:#fff;
    transform:translateZ(40px);
    margin:0 0 10px 0;
}

.card p{
    color:#ccc;
    transform:translateZ(30px);
    margin:6px 0;
}

.card a{
    color:#00d4ff;
    font-weight:bold;
    text-decoration:none;
    transform:translateZ(50px);
    display:inline-block;
    margin-top:10px;
}
</style>
</head>

<body>

<div class="scene">
    <div class="card" id="card">

        <h1>Mithun Technologies</h1>
        <p>AWS | DevOps | Docker | Kubernetes | Terraform</p>
        <p>Trainer : Bhaskar Reddy Lacchannagari</p>
        <p>Bengaluru</p>

        <a href="<%=request.getContextPath()%>/services/employee/getEmployeeDetails">
            Get Employee Details (API)
        </a>

    </div>
</div>

<script>
const card = document.getElementById("card");
const scene = document.querySelector(".scene");

scene.addEventListener("mousemove", (e) => {

    const rect = scene.getBoundingClientRect();

    const x = e.clientX - rect.left;
    const y = e.clientY - rect.top;

    const centerX = rect.width / 2;
    const centerY = rect.height / 2;

    const rotateX = -(y - centerY) / 20;
    const rotateY = (x - centerX) / 20;

    card.style.transform =
        `rotateX(${rotateX}deg) rotateY(${rotateY}deg)`;
});

scene.addEventListener("mouseleave", () => {
    card.style.transform = "rotateX(0deg) rotateY(0deg)";
});
</script>

</body>
</html>
