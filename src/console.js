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
            {"data": "title"},
            {"data": "author"},
            {
                "targets": -1,
                "data": null,
                "defaultContent": '<button class="btn-danger btnMyDashboardDelete" type="button" id = "btnMyDashboardDelete" name="btnMyDashboardDelete" ><em title="Delete" class="glyphicon glyphicon-pencil"></em></button>'
            }

        ]
    });