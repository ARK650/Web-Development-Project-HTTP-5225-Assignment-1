<?php
$servername = "localhost";
$username = "root"; // default username for XAMPP/WAMP
$password = "root"; // set this to your MySQL root password, if you have one
$dbname = "books"; // replace this with the name of your database

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$conn->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table,
        th,
        td {
            border: 1px solid #ddd;
        }

        th,
        td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .footer {
            text-align: center;
            color: #777;
            margin-top: 20px;
        }
    </style>
</head>

<body>

    <div class="container">
        <h2>Book List</h2>

        <table>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Publication Date</th>
                <th>Price</th>
            </tr>

            <?php
            $servername = "localhost";
            $username = "root"; // default username for MAMP
            $password = "root"; // default password for MAMP
            $dbname = "books"; // replace this with the name of your database
            
            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT Title, Author, Genre, PublicationDate, Price FROM Books";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["Title"] . "</td>";
                    echo "<td>" . $row["Author"] . "</td>";
                    echo "<td>" . $row["Genre"] . "</td>";
                    echo "<td>" . $row["PublicationDate"] . "</td>";
                    echo "<td>$" . $row["Price"] . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='5'>0 results</td></tr>";
            }
            $conn->close();
            ?>
        </table>

        <div class="footer">
            <p>&copy; <?php echo date("Y"); ?> Bookstore. All rights reserved.</p>
        </div>
    </div>

</body>

</html>