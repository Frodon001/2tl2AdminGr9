<?php

echo "Hello World <br />";

$servername = "db_db_1";
$username = "user";
$password = "user1234";
$dbname = "db";

// Create connection
//$conn = new mysqli($servername, $username, $password, $dbname);
$conn = mysqli_connect("db", "user", "user1234");

echo "Connected to MySQL<br />";
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, last_name, department, email FROM employees";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["name"]."</td><td>".$row["last_name"]."</td><td>".$row["department"]."</td><td>".$row["email"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();

phpinfo();
?>