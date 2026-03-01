<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Mithun Technologies - 3D</title>

<style>
html,body{
  margin:0;
  width:100%;
  height:200vh;   /* make page scrollable */
  overflow:auto;
}
canvas{display:block;}
#caption{
  position:fixed;
  bottom:25px;
  left:25px;
  color:#111;
  background:rgba(255,255,255,0.85);
  padding:12px 16px;
  border-radius:10px;
  font-family:Arial,Helvetica,sans-serif;
}
#caption a{
  text-decoration:none;
  color:#0066ff;
  font-weight:bold;
}
</style>
</head>
<body>

<div id="caption">
  <b>Mithun Technologies</b><br>
  AWS | DevOps | Docker | Kubernetes | Terraform<br>
  Trainer : Bhaskar Reddy<br>
  <a href="<%=request.getContextPath()%>/services/employee/getEmployeeDetails">
    Get Employee Details
  </a>
</div>

<script src="https://unpkg.com/three@0.158.0/build/three.min.js"></script>

<script>
const scene = new THREE.Scene();
scene.background = new THREE.Color(0xf2f2f2);

const camera = new THREE.PerspectiveCamera(
  60,
  window.innerWidth/window.innerHeight,
  0.1,
  100
);
camera.position.set(0,1.5,3);

const renderer = new THREE.WebGLRenderer({antialias:true});
renderer.setSize(window.innerWidth,window.innerHeight);
document.body.appendChild(renderer.domElement);

/* cube */
const geo = new THREE.BoxGeometry(1,1,1);
const mat = new THREE.MeshStandardMaterial({color:0x0077ff});
const cube = new THREE.Mesh(geo,mat);
scene.add(cube);

/* lights */
scene.add(new THREE.AmbientLight(0xffffff,0.6));
const dir = new THREE.DirectionalLight(0xffffff,1);
dir.position.set(3,5,2);
scene.add(dir);
let scrollPercent = 0;

window.addEventListener("scroll", () => {
  const scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
  const scrollHeight = document.documentElement.scrollHeight - window.innerHeight;
  scrollPercent = scrollTop / scrollHeight;
});


function animate(){
  requestAnimationFrame(animate);

  cube.rotation.y += 0.01;
  cube.rotation.x += 0.005;

  /* cinematic camera movement */
  camera.position.z = 3 - scrollPercent * 2;   // move forward
  camera.position.y = 1.5 + scrollPercent * 1; // move slightly up

  camera.lookAt(0,0,0);

  renderer.render(scene,camera);
}
animate();

window.addEventListener('resize',()=>{
  camera.aspect = window.innerWidth/window.innerHeight;
  camera.updateProjectionMatrix();
  renderer.setSize(window.innerWidth,window.innerHeight);
});
</script>

</body>
</html>
