<?php
session_start();
if(!isset($_SESSION['email'])){
    header('location:http://localhost/project/index.html');
}


?>

<?php include('inc/header.php'); ?>
<!DOCTYPE HTML>
<html>
    <head>

    </head>
    <body>
        <header>
                <h2>hello admin <?php echo $_SESSION['email']; ?></h2>
                <h1>hello admin <?php echo $_SESSION['name']; ?></h1>

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