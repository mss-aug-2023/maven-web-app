<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Mithun Technologies</title>

<style>
html,body{
    margin:0;
    height:100%;
    font-family: Arial, Helvetica, sans-serif;
}

/* main reel style screen */
.screen{
    height:100vh;
    width:100vw;
    background:#0f0f0f;
    display:flex;
    align-items:flex-end;
}

/* text block like reel caption */
.caption{
    padding:40px;
    color:white;
    max-width:600px;
}

.caption h1{
    font-size:42px;
    margin:0 0 12px 0;
}

.caption p{
    margin:6px 0;
    font-size:18px;
    line-height:1.4;
}

.caption a{
    color:#00d4ff;
    text-decoration:none;
    font-weight:bold;
}
</style>

</head>
<body>

<div class="screen">

    <div class="caption">
        <h1>Mithun Technologies</h1>

        <p>Learn AWS | DevOps | Docker | Kubernetes | Terraform</p>
        <p>Trainer : Bhaskar Reddy Lacchannagari</p>
        <p>Bengaluru</p>

        <p>
            <a href="<%=request.getContextPath()%>/services/employee/getEmployeeDetails">
                Get Employee Details (API)
            </a>
        </p>
    </div>

</div>

</body>
</html>
