<?php
include("conexion.php");
$con=conectar();

$NoCliente=$_POST['NoCliente'];
$NombreCliente=$_POST['NombreCliente'];
$NoPrestamosCliente=$_POST['NoPrestamosCliente'];
$SaldoCliente=$_POST['SaldoCliente'];
$TelefonoCliente=$_POST['TelefonoCliente'];
$DomicilioCliente=$_POST['DomicilioCliente'];
$CorreoCliente=$_POST['CorreoCliente'];


$sql="INSERT INTO cliente VALUES('$NoCliente','$NombreCliente','$NoPrestamosCliente','$SaldoCliente','$TelefonoCliente','$DomicilioCliente','$CorreoCliente')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location:cliente.php");
    
}else {
}
?>