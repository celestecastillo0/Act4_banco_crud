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

$sql="UPDATE cliente SET  NombreCliente='$NombreCliente',NoPrestamosCliente='$NoPrestamosCliente',SaldoCliente='$SaldoCliente',TelefonoCliente='$TelefonoCliente', DomicilioCliente='$DomicilioCliente', CorreoCliente='$CorreoCliente' WHERE NoCliente='$NoCliente'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location:cliente.php");
    }
?>