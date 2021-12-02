<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id'];

$sql="SELECT * FROM cliente WHERE NoCliente='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Actualizar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
                <div class="container mt-5">
                    <form action="update.php" method="POST">
                    
                                <input type="text" class="form-control mb-3" name="NoCliente" placeholder="ID" value="<?php echo $row['NoCliente']  ?>">
                                <input type="text" class="form-control mb-3" name="NombreCliente" placeholder="Nombre del cliente" value="<?php echo $row['NombreCliente']  ?>">
                                <input type="text" class="form-control mb-3" name="NoPrestamosCliente" placeholder="Numero de prestamos al cliente" value="<?php echo $row['NoPrestamosCliente']  ?>">
                                <input type="text" class="form-control mb-3" name="SaldoCliente" placeholder="Saldo del cliente" value="<?php echo $row['SaldoCliente']  ?>">
                                <input type="text" class="form-control mb-3" name="TelefonoCliente" placeholder="Telefono del cliente" value="<?php echo $row['TelefonoCliente']  ?>">
                                <input type="text" class="form-control mb-3" name="DomicilioCliente" placeholder="" value="<?php echo $row['DomicilioCliente']  ?>">
                                <input type="text" class="form-control mb-3" name="CorreoCliente" placeholder="" value="<?php echo $row['CorreoCliente']  ?>">

                            <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
                    </form>
                    
                </div>
    </body>
</html>