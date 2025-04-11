<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Capture form data
    $name = trim($_POST['name']);
    $phone = trim($_POST['phone']);
    $email = trim($_POST['email']);
    $post = trim($_POST['post']);
    $added_date = date('Y-m-d H:i:s');

  
    if (empty($name) || empty($phone) || empty($email) || empty($post)) {
        echo 'error';
        exit;
    }

    $image_path = '';
    if (isset($_FILES['image_path']) && $_FILES['image_path']['error'] == 0) {
        $image_ext = pathinfo($_FILES['image_path']['name'], PATHINFO_EXTENSION);
        $image_path = 'career_uploads/' . uniqid('career_', true) . '.' . $image_ext;
        move_uploaded_file($_FILES['image_path']['tmp_name'], $image_path);
    }

    include('../db_con.php'); 


    $sql = "INSERT INTO add_job (name, phone, email, post, image_path, added_date) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("sssssi", $name, $phone, $email, $post, $image_path, $added_date);

    if ($stmt->execute()) {
        echo 'success'; 
    } else {
        echo 'error'; 
    }


    $stmt->close();
    $con->close();
}
?>
