<?php

include("conexion.php");
$con=conectar();

$NoCliente=$_GET['id'];

$sql="DELETE FROM cliente  WHERE NoCliente='$NoCliente'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location:cliente.php");
    }
?>