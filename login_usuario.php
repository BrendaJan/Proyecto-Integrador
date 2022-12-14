<?php
    session_start();
    $connect = mysqli_connect("localhost","root","","alumno");
    
    //conexion a base de datos
    if(isset($_POST["user"]) && isset($_POST["contrasena"])){ 
        $user = mysqli_real_escape_string($connect, $_POST["user"]);
        $password = mysqli_real_escape_string($connect, $_POST["contrasena"]);
        $sql = "SELECT * FROM usuarios WHERE (user='$user') AND contrasena='$password'";
        $result = mysqli_query($connect, $sql);
        $num_row = mysqli_num_rows($result);
    ///estado de admin o user
        if ($num_row == "1"){
            $data = mysqli_fetch_array($result);
                    $_SESSION["user"] = $data["user"];
                    $_SESSION["estado"] = $data["estado"];
                    if ($_SESSION["estado"]=="1"){
                        
                        header("location: administrador/index.php");
                    }
    
                    if ($_SESSION["estado"]=="2"){
                        header("location: usuarios/index.php");
                    }
        }
        
        else{
            echo '  
            <script>
            alert("Error el usuario no exixte");
            window.location = "index.php"; 
            </script>
        ';
        }
    }else{
            echo "error";
        }
    
?>

