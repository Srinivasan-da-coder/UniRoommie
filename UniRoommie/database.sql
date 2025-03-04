CREATE DATABASE UniRoomie;

USE UniRoomie;

CREATE TABLE Preferences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sleep_schedule VARCHAR(50),
    bed_time TIME,
    wake_time TIME,
    sleep_hours INT,
    study_preference VARCHAR(50),
    music_tolerance INT,
    conversation_tolerance INT,
    games_tolerance INT,
    share_belongings VARCHAR(50),
    gaming_comfort VARCHAR(50),
    cleanliness INT,
    lifestyle_description TEXT,
    privacy VARCHAR(50),
    space_preference VARCHAR(50),
    guests_comfort VARCHAR(50),
    food_mind VARCHAR(50),
    bring_food VARCHAR(50),
    diet VARCHAR(50),
    diet_other TEXT
);




<?php
// Database connection
$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = ""; // Replace with your MySQL password
$dbname = "UniRoomie";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$sleep_schedule = $_POST['sleepSchedule'];
$bed_time = $_POST['bedTime'];
$wake_time = $_POST['wakeTime'];
$sleep_hours = $_POST['sleepHours'];
$study_preference = $_POST['studyPreference'];
$music_tolerance = $_POST['musicTolerance'];
$conversation_tolerance = $_POST['conversationTolerance'];
$games_tolerance = $_POST['gamesTolerance'];
$share_belongings = $_POST['shareBelongings'];
$gaming_comfort = $_POST['gamingComfort'];
$cleanliness = $_POST['cleanliness'];
$lifestyle_description = $_POST['lifestyleDescription'];
$privacy = $_POST['privacy'];
$space_preference = $_POST['spacePreference'];
$guests_comfort = $_POST['guestsComfort'];
$food_mind = $_POST['foodMind'];
$bring_food = $_POST['bringFood'];
$diet = $_POST['diet'];
$diet_other = $_POST['dietOtherText'];

// Insert data into the database
$sql = "INSERT INTO Preferences (
    sleep_schedule, bed_time, wake_time, sleep_hours, study_preference, 
    music_tolerance, conversation_tolerance, games_tolerance, share_belongings, 
    gaming_comfort, cleanliness, lifestyle_description, privacy, space_preference, 
    guests_comfort, food_mind, bring_food, diet, diet_other
) VALUES (
    '$sleep_schedule', '$bed_time', '$wake_time', '$sleep_hours', '$study_preference', 
    '$music_tolerance', '$conversation_tolerance', '$games_tolerance', '$share_belongings', 
    '$gaming_comfort', '$cleanliness', '$lifestyle_description', '$privacy', '$space_preference', 
    '$guests_comfort', '$food_mind', '$bring_food', '$diet', '$diet_other'
)";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
