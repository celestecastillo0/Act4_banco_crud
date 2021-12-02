<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM cliente";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> Cliente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
            <div class="container mt-5">
                    <div class="row"> 
                        
                        <div class="col-md-3">
                            <h1>Ingrese datos</h1>
                                <form action="insertar.php" method="POST">

                                    <input type="text" class="form-control mb-3" name="NoCliente" placeholder="Numero de cliente">
                                    <input type="text" class="form-control mb-3" name="NombreCliente" placeholder="Nombre de cliente">
                                    <input type="text" class="form-control mb-3" name="NoPrestamosCliente" placeholder="Numero de prestamos del cliente">
                                    <input type="text" class="form-control mb-3" name="SaldoCliente" placeholder="Saldo del cliente">
                                    <input type="text" class="form-control mb-3" name="TelefonoCliente" placeholder="Telefono del cliente">
                                    <input type="text" class="form-control mb-3" name="DomicilioCliente" placeholder="DomicilioCliente">
                                    <input type="text" class="form-control mb-3" name="CorreoCliente" placeholder="CorreoCliente">
                                                                       
                                    <input type="submit" class="btn btn-primary">
                                </form>
                        </div>

                        <div class="col-md-8">
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
                                        <th>Numero de cliente</th>
                                        <th>Nombre cliente</th>
                                        <th>Numero de prestamos</th>
                                        <th>Saldo de cliente</th>
                                        <th>Telefono cliente</th>
                                        <th>Domicilio cliente</th>
                                        <th>Correo Cliente</th>

                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <?php
                                            while($row=mysqli_fetch_array($query)){
                                        ?>
                                            <tr>
                                                <th><?php  echo $row['NoCliente']?></th>
                                                <th><?php  echo $row['NombreCliente']?></th>
                                                <th><?php  echo $row['NoPrestamosCliente']?></th>
                                                <th><?php  echo $row['SaldoCliente']?></th> 
                                                <th><?php  echo $row['TelefonoCliente']?></th> 
                                                <th><?php  echo $row['DomicilioCliente']?></th> 
                                                <th><?php  echo $row['CorreoCliente']?></th> 
                                                <th><a href="actualizar.php?id=<?php echo $row['NoCliente'] ?>" class="btn btn-info">Editar</a></th>
                                                <th><a href="delete.php?id=<?php echo $row['NoCliente'] ?>" class="btn btn-danger">Eliminar</a></th>                                        
                                            </tr>
                                        <?php 
                                            }
                                        ?>
                                </tbody>
                            </table>
                        </div>
                    </div>  
            </div>
    </body>
</html>