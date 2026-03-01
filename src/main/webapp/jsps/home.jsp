<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Mithun Technologies</title>

<style>
html, body{
    margin:0;
    padding:0;
    height:100%;
    font-family: Arial, Helvetica, sans-serif;
}

/* full screen video */
.video-container{
    position:relative;
    height:100vh;
    width:100%;
    overflow:hidden;
}

.video-container video{
    position:absolute;
    top:50%;
    left:50%;
    min-width:100%;
    min-height:100%;
    transform:translate(-50%,-50%);
    object-fit:cover;
}

/* dark overlay */
.overlay{
    position:absolute;
    top:0;
    left:0;
    right:0;
    bottom:0;
    background:rgba(0,0,0,0.45);
}

/* text on reel */
.content{
    position:absolute;
    bottom:60px;
    left:40px;
    color:white;
    z-index:2;
    max-width:600px;
}

.content h1{
    font-size:40px;
    margin:0 0 10px 0;
}

.content p{
    font-size:18px;
    margin:5px 0;
}

.content a{
    color:#00c3ff;
    text-decoration:none;
    font-weight:bold;
}
</style>
</head>

<body>

<div class="video-container">

<video autoplay muted loop playsinline>
    <source src="<%=request.getContextPath()%>/videos/reel.mp4" type="video/mp4">
</video>

    <div class="overlay"></div>

    <div class="content">
        <h1>Mithun Technologies</h1>
        <p>Learn AWS | DevOps | Docker | Kubernetes | Terraform</p>
        <p>Trainer : Bhaskar Reddy Lacchannagari</p>
        <p>Bengaluru</p>

        <p>
            <a href="../services/employee/getEmployeeDetails">
                Get Employee Details (API)
            </a>
        </p>
    </div>

</div>

</body>
</html>
