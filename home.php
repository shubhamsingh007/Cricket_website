<?php
session_start();
if(!isset($_SESSION['email'])){
    header('location:http://localhost/project/index.html');
}
?>

<!DOCTYPE HTML>
<html>
    <head>

    </head>
    <body>
        <header>
                <h2>hello  <?php echo $_SESSION['email']; ?></h2>
                <h1>hello <?php echo $_SESSION['name']; ?></h1>
                <a href="logout.php">logout</a>
        </header>
        <section>
            <aside>
            </aside>
            
        </section>
        <section>
            <aside>
            </aside>    
        </section>  
        <footer>
        </footer> 
    </body>
    
</html>