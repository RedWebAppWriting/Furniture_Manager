<!DOCTYPE html>
<html>
<head>
    <title>Popup Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Modal -->
<div class="modal fade" id="infoModal" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="myForm"  method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="infoModalLabel">Add Furniture</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="Type" class="form-label">Type</label>
                        <input type="text" class="form-control" id="Type" name="Type">
                    </div>

                    <div class="mb-3">
                        <label for="Quantity" class="form-label">Quantity</label>
                        <input type="number" class="form-control" id="Quantity" name="Quantity">
                    </div>

                    <div class="mb-3">
                        <label for="Colors" class="form-label">Colors</label>
                        <input type="text" class="form-control" id="Colors" name="Colors">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" name="btnclose" class="btn btn-secondary" data-bs-dismiss="modal" onclick="window.location.href='/console'">Cancel</button>
                    <button type="submit" name="btnsubmit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS (including Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- jQuery (if not already included) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function () {
        // Automatically show the modal on page load
        var modal = new bootstrap.Modal(document.getElementById('infoModal'));
        modal.show();

        // Handle form submission manually
        $('#myForm').on('submit', function (e) {
            e.preventDefault();

            let Type = $('#Type').val().trim();
            let Quantity = $('#Quantity').val().trim();
            let Colors = $('#Colors').val().trim();



            // Send data using AJAX
            $.ajax({
                url: '/submitFurniture',
                type: 'POST',
                data: {
                    type: Type,
                    quantity: Quantity,
                    colors: Colors
                },
                success: function(response) {
                    if (response.status === "success") {
                        window.location.href = response.redirect;
                    } else {
                        alert("Error: " + response.message);
                    }
                },
                error: function() {
                    alert("An error occurred during submission.");
                }
            });
        });
    });
</script>
</body>
</html>
