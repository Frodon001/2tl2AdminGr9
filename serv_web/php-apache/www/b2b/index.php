<h1>Hello Cloudreach!</h1>
<h4>Attempting MySQL connection from php...</h4>
<!--?php
$host = '127.0.0.1:3306';
$user = 'root';
$pass = 'user1234';
$conn = new mysqli($host, $user, $pass);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected to MySQL successfully!";
?-->