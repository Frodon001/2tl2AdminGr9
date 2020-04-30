<?php

$conn = new mysqli("172.16.99.3", "user", "user1234", "db");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, categ, stock FROM produits";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table style=\"border: 1px solid\"> <tr> <th>Nom</th> <th>Categorie</th> <th>Stock</th> </tr>";
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