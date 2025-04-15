<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get form values
    $name   = $_POST['name'] ?? '';
    $phone  = $_POST['phone'] ?? '';
    $email  = $_POST['email'] ?? '';
    $post   = $_POST['post'] ?? '';
    $editor = $_POST['editor'] ?? '';
    $date   = date('Y-m-d H:i:s');

    // Check required fields
    if (!$name || !$phone || !$email || !$post || !$editor) {
        echo 'error';
        exit;
    }

    // File upload
    $file_path = '';
    if (!empty($_FILES['image_path']['name'])) {
        $ext = strtolower(pathinfo($_FILES['image_path']['name'], PATHINFO_EXTENSION));
        $allowed = ['jpg', 'jpeg', 'png', 'gif', 'pdf', 'doc', 'docx'];

        if (in_array($ext, $allowed)) {
            $file_path = 'career_uploads/' . uniqid('file_', true) . '.' . $ext;
            move_uploaded_file($_FILES['image_path']['tmp_name'], $file_path);
        } else {
            echo 'invalid_file';
            exit;
        }
    }

    // DB Insert
    include('../db_con.php');
    $stmt = $con->prepare("INSERT INTO add_job (name, phone, email, post, image_path, editor, added_date) VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssss", $name, $phone, $email, $post, $file_path, $editor, $date);

    echo $stmt->execute() ? 'success' : 'error';

    $stmt->close();
    $con->close();
}
?>
