jQuery(document).ready(function () {


    var table;
    table = $('#workflowListConsole').DataTable({
        "ajax": {
            "url": "/furnitures/allFurnitures",
            "dataSrc": "",
            "type": "GET"
        },
        "searching": false,
        paging: false,
        "columns": [
             {"data": "id"},
                        {"data": "type"},
                        {"data": "quantity"},
                        {"data": "colors"},
            {
                "targets": -1,
                "data": null,
                "defaultContent": '<button class="btn-danger btnMyDashboardReject" type="button" id = "btnMyDashboardReject" name="btnMyDashboardReject" ><em title="Delete" class="glyphicon glyphicon-pencil"></em></button>'
            }

        ]
    });


    $('#workflowListConsole tbody').on('click', '.btnMyDashboardReject', function (e) {
        var tableData = table.row($(this).parents('tr')).data();


        if (confirm("Are you sure you want to delete?")) {

            jQuery.ajax({
                url: '/deleteFurniture',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({
                    id: tableData.id
                }),
                success: function (response) {
                    if (response.status === "success") {
                        window.location.href = response.redirect;
                    } else {
                        alert("Error: " + response.message);
                    }
                },
                error: function (xhr, status, error) {
                    alert("An error occurred: " + error);
                }
            });


        } else {
            // Cancel deletion
            return false;
        }


    });


    $("#btnAddFurniture").click(function () {
        uRLStr = "/addFurniture";
        window.open(uRLStr, 'submit', 'resizable=yes, toolbar=yes, menubar=yes, scrollbars=yes, location=yes, status=yes');

    });


});




