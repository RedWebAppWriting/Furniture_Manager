<#import "/spring.ftl" as spring />
<#assign serverResourceDir><@spring.url '/' /></#assign>
<#assign title="Library Console">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Library Console</title>
    <#include "includes_css.ftl">
    <style>
        .dataTables_wrapper .dataTables_info {
            float: none !important;
            clear: none !important;
            text-align: center;
            margin-left: auto;
        }
    </style>

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <script src="js/spin.js"></script>
</head>
<body style="{ font-size: 140%; }">
<!-- Wrap all page content, including top navbar, but not footer, here. Necessary to pin the footer, but allow long content to scroll in the viewport-->
<div id="wrap">
    <#include "top_fixed_navbar.ftl" >
    <div class="container" id="cntTag">
        <div class="row">
            <div class="col-sm-12">
                <br/><br/>
                <br/><br/>

                <div class="row">
                    <!-- <div class="col-sm-12"><b>My Dashboard</b></div> -->
                    <div>
                        <div class="row selectionHeader">
                            <div class="col-sm-12">
                                <table id="workflowListConsole" class="table table-striped table-bordered"
                                       cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>type</th>
                                        <th>quantity</th>
                                        <th>colors</th>
                                        <th>Delete</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>



                    </div>
                    <div class="col-sm-1"></div>
                </div>
                <!-- close row -->
            </div>

        </div>
        <!-- /.container -->
    </div>
    <!-- /.wrap -->
    <#include "template_footerConsole.ftl" >
    <#include "includes_js.ftl" >
    <script src="js/console.js" type="text/javascript"></script>
</body>
</html>