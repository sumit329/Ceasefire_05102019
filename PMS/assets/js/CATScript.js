/// <reference path="core/jquery.min.js" />
$(document).ready(function () {
    if ($('#ctl00_login_lblMenuName').text() == 'Expense') {
        $('.sidebar').attr('data-color', 'orange');
        //$('table>tbody>tr>th').attr('data-color', 'orange');

    };
    if ($('#ctl00_login_lblMenuName').text() == 'Project') {
        $('.sidebar').attr('data-color', 'green');
        //$('table>tbody>tr>th').attr('data-color', 'green');
    };
    if ($('#ctl00_login_lblMenuName').text() == 'FMS') {
        $('.sidebar').attr('data-color', 'azure');
        //$('table>tbody>tr>th').css("background-color", "#22c3d7");
    };
    if ($('#ctl00_login_lblMenuName').text() == 'Setup') {
        $('.sidebar').attr('data-color', 'danger');
        //$('table>tbody>tr>th').attr('data-color', 'danger');
    };
    /**/
    $(".sidebar").addClass("minimizer");
    $('.sidebar-wrapper').addClass("minimizer");
    $(".main-panel").addClass("maximize");
    $("li>a>p").addClass("d-none");
    $("li>a>p").next().addClass("d-none");
    /**/
    $("#hamburgar").on('click', function (e) {
        $(".sidebar").toggleClass("minimizer");
        $('.sidebar-wrapper').toggleClass("minimizer");
        $(".main-panel").toggleClass("maximize");
        $("li>a>p").toggleClass("d-none");
        $("li>a>p").next().toggleClass("d-none");
    });
    $(".sidebar>.sidebar-wrapper").mouseover(function (e) {
        $(".sidebar").removeClass("minimizer");
        $('.sidebar-wrapper').removeClass("minimizer");
        $(".main-panel").removeClass("maximize");
        $("li>a>p").removeClass("d-none");
        $("li>a>p").next().removeClass("d-none");
    });
    $(".sidebar>.sidebar-wrapper").mouseleave(function (e) {
        $(".sidebar").toggleClass("minimizer");
        $('.sidebar-wrapper').toggleClass("minimizer");
        $(".main-panel").toggleClass("maximize");
        $("li>a>p").toggleClass("d-none");
        $("li>a>p").next().toggleClass("d-none");
        if ($("div").hasClass("show")) {
            $("div").removeClass("show");
        }
    });

    /*Tooltip*/
    $("#ctl00_ContentPlaceHolder1_btnSearch").attr('title', 'Search input Data.');
    $("#ctl00_ContentPlaceHolder1_lnkExport").attr('title', 'Export Grid Data.');
    $("#ctl00_ContentPlaceHolder1_lnkExportSummary").attr('title', 'Export WS Summary Details.');
    /*Tooltip*/
    /*DataTable Search*/
    function TableStyle() {
        if ($("#ctl00_ContentPlaceHolder1_grdMasterView").find()) {
            $("#ctl00_ContentPlaceHolder1_grdMasterView").prepend($("<thead></thead>").append($("#ctl00_ContentPlaceHolder1_grdMasterView").find("tr:first"))).dataTable();
            //$("#ctl00_ContentPlaceHolder1_grdMasterView").append($("<tfoot></tfoot>").prepend($("#ctl00_ContentPlaceHolder1_grdMasterView").find("tr:first").clone())).dataTable();

            // DataTable
            var table = $("#ctl00_ContentPlaceHolder1_grdMasterView").DataTable();

            $("#ctl00_ContentPlaceHolder1_grdMasterView tfoot th").each(function () {
                var title = $(this).text();
                $(this).html('<input type="text" placeholder="Search ' + title + '" />');
            });

            // Apply the search
            table.columns().every(function () {
                var that = $("#ctl00_ContentPlaceHolder1_grdMasterView").DataTable();

                $('input', this.footer()).on('keyup change', function () {
                    if (that.search() !== this.value) {
                        that
                            .search(this.value)
                            .draw();
                    }
                });
            });
            /*DataTable Search*/

            table.destroy();
            $("#ctl00_ContentPlaceHolder1_grdMasterView").DataTable({
                dom: 'Bfltip',
                retrieve: true,
                buttons: ['copy', 'csv', 'excel', 'pdf', 'print']
            });
            $("#ctl00_ContentPlaceHolder1_divDetail").prepend("<div id='tblrow' class='row'>");
            $("#tblrow").append($("#ctl00_ContentPlaceHolder1_grdMasterView_length").addClass("col-md-2"))
                        .append($("#ctl00_ContentPlaceHolder1_grdMasterView_filter").addClass("col-md-2"))
                        .prepend($(".dt-buttons").addClass("col-md-7"));
            $(".buttons-print").addClass("buttons-html5");
            $(".buttons-html5").addClass("h-50");
        }
        return;
    };
});