<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
$name = "John";
$age = 25;

// Output
echo "Hello, $name! You are $age years old.<br>";

// Conditional Statement
if ($age >= 18) {
    echo "You are an adult.<br>";
} else {
    echo "You are not an adult.<br>";
}

// Loop
echo "Counting from 1 to 5:<br>";
for ($i = 1; $i <= 5; $i++) {
    echo $i . "<br>";
}

// Function
function greet($name) {
    return "Hello, $name!";
}

echo greet("Alice");

    ?>


</body>
</html>