
<?php
include 'check_session.php';
$user_id = $_GET['user_id'];
include '../db_con.php';

$que = "SELECT * FROM add_job WHERE id = $user_id";
$res = mysqli_query($con, $que);
$row = mysqli_fetch_array($res);

if (isset($_POST['submit'])) {

    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $post = $_POST['post'];
    $editor = $_POST['editor'];
   
   

    $image_path = '';
    if (isset($_FILES['image_path']) && $_FILES['image_path']['error'] == 0) {
        $image_ext = pathinfo($_FILES['image_path']['name'], PATHINFO_EXTENSION);
        $image_path = 'career_uploads/' . uniqid('career_', true) . '.' . $image_ext;
        move_uploaded_file($_FILES['image_path']['tmp_name'], $image_path);
    }

    $sql = "UPDATE add_job SET name = '$name', phone = '$phone',email = '$email', post = '$post', image_path = '$image_path', editor='$editor'";
    

    $sql .= " WHERE id = $user_id";

    if ($con->query($sql) === TRUE) {
        header('Location: job_list.php');
    } else {
        echo "Error: " . $con->error;
    }
}
?>
<?php include 'header.php' ?>


<?php include 'side_menu.php' ?>

<div class="content-body">
    <div class="container-fluid">
        <!-- row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Update Job Details</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-validation">
                            <form class="needs-validation" method="POST" action="" novalidate
                                enctype="multipart/form-data">
                                <div class="row">
                            
                                        <input type="hidden" name="donation_id" value="<?php echo $row['id']; ?>">
                                        <div class="form-group col-xl-6">
                                            <div class="mb-3 row">
                                                <label class="col-form-label" for="validationCustom03">Name
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-12">
                                                    <input type="text" name="name" class="form-control"
                                                        id="validationCustom03" placeholder="Enter Name"
                                                        value="<?php echo htmlspecialchars($row['name']); ?>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-xl-6">
                                            <div class="mb-3 row">
                                                <label class="col-form-label" for="validationCustom01">Phone
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-12">
                                                    <input type="number" name="phone" class="form-control"
                                                        id="validationCustom01" placeholder="Enter Phone Number"
                                                        value="<?php echo htmlspecialchars($row['phone']); ?>">
                                                </div>
                                            </div>
                                        </div>
                                   

                                    <div class="col-xl-4">
                                        <div class="mb-3 row">
                                            <label class="col-form-label" for="validationCustom03">Email
                                                <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-12">
                                                <input type="email" name="email" class="form-control"
                                                    id="validationCustom03" placeholder="Enter Email"
                                                    value="<?php echo htmlspecialchars($row['email']); ?>">
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-xl-4">
                                        <div class="mb-3 row">
                                            <label class="col-form-label" for="validationCustom03">Post Name
                                                <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-12">
                                                <input type="post" name="post" class="form-control"
                                                    id="validationCustom03" placeholder="Enter Job Name"
                                                    value="<?php echo htmlspecialchars($row['post']); ?>">
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-xl-4">
                                        <div class="mb-3 row">
                                            <label class="col-form-label" for="validationCustom03">Image
                                                <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-12">
                                                <input type="file" name="image_path" class="form-control"
                                                    id="validationCustom03" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3 row mt-4">
                                            <label class="col-lg-4 col-form-label mb-2" for="details">Type your Message<span
                                                    class="text-danger">*</span></label>
                                            <div class="col-lg-12">
                                                <textarea class="form-control" name="editor" id="editor"
                                                    placeholder="Type your Message..."
                                                    required><?php echo htmlspecialchars($row['editor']); ?></textarea>
                                                <div class="invalid-feedback">Type your Message</div>
                                            </div>
                                        </div>
                                    <div class="col-xl-6">
                                        <div class="mb-3 row">
                                            <div class="form-group col-lg-12 ms-auto mt-4">
                                                <button type="submit" name="submit"
                                                    class="btn btn-primary mt-2 ml-5">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<?php include 'footer.php' ?>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.js"></script>

<!-- Include Bootstrap and Summernote CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-bs4.min.css" rel="stylesheet">
<style>
    .note-editor h1 {
        color: #000000 !important; /* Set your preferred color */
        font-weight: bold !important;
    }
    .note-editor h2 {
        color: #000000 !important;
        font-weight: bold !important;
    }
    .note-editor h3 {
        color: #000000 !important;
        font-weight: bold !important;
    }
    .note-editor h4 {
        color: #000000 !important;
        font-weight: bold !important;
    }
    .note-editor h5 {
        color: #000000 !important;
        font-weight: bold !important;
    }
    .note-editor h6 {
        color: #000000 !important;
        font-weight: bold !important;
    }
    .note-editor p {
        color: #000000 !important; /* Set your preferred color */
        font-weight: normal !important; /* Optional: Change the font-weight as needed */
    }
    li {
    list-style: black;
}
.note-editor ol {
    list-style-type: disc !important;
    color:black;
}
::marker{
    margin-left:10px;
}
.note-editable {
        line-height: 1.8;  /* Customize the value as needed */
    }
</style>

<!-- Initialize Summernote -->
<script>
    $(document).ready(function() {
        $('#editor').summernote({
            height: 300,
            toolbar: [
                ['style', ['style', 'paragraph']],
                ['font', ['bold', 'italic', 'underline', 'clear']],
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],  // Bullet and numbered list
                ['table', ['table']],
                ['insert', ['link', 'picture', 'video']],
                ['view', ['fullscreen', 'codeview', 'help']]
            ],
            callbacks: {
                onInit: function() {
                    // Set the line-height on editor's editable area
                    $('.note-editable').css('line-height', '1.8');  // Customize as needed
                    console.log("Summernote editor initialized with custom line-height!");
                }
            }
        });
    });
</script>

<script>
  $(document).ready(function() {
    // Close modal when the close button is clicked
    $('.close').on('click', function() {
      $(this).closest('.modal').modal('hide');
    });
  });
</script>