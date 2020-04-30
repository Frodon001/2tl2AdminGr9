<html>
<head>
    <title>Site b2b</title>
    <style>
        table, th {
            border-collapse: collapse;
            border: 1px solid;
        }
        td {
            border: 1px dashed;
        }
    </style>
</head>

<body>

<div id = "main">
    <form action = "" method = "post">
        <label>Ajouter un produit :</label>
        <input type = "text" name = "name" id = "name" />
        <input type = "text" name = "categ" id = "categ" />
        <input type = "number" name = "stock" id = "stock" />
        <input type = "submit" value ="Submit" name = "submit"/>
    </form>
</div>

<?php

$conn = new mysqli("172.16.99.3", "user", "user1234", "db");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST["submit"])){
    $sql = "INSERT INTO produits (name, categ, stock) VALUES ('".$_POST["name"]."', '".$_POST["categ"]."', ".$_POST["stock"].");";
}

$sql = "SELECT name, categ, stock FROM produits";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table> <tr> <th>Nom</th> <th>Categorie</th> <th>Stock</th> </tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["name"]."</td><td>".$row["categ"]."</td><td>".$row["stock"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>

<?php

$conn = new mysqli("172.16.99.3", "user", "user1234", "db");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST["submit"])){
    $sql = "INSERT INTO produits (name, categ, stock) VALUES ('".$_POST["name"].",".$_POST["categ"].",".$_POST["stock"]."')";
}



$conn->close();
?>

</body>
</html>
