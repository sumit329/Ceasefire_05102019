<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Transaction_PendingPI, App_Web_qk1mwl5b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-danger">
                            <h4 class="card-title">Pending PI</h4>

                        </div>
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="d-lg-table table">
                                        <div class="d-lg-table-row">
                                            <div class="d-lg-table-cell font-weight-bold">Office Name</div>
                                            <div class="d-lg-table-cell">PI No.</div>
                                            <div class="d-lg-table-cell">PI Date</div>
                                            <div class="d-lg-table-cell">PI Value</div>
                                            <div class="d-lg-table-cell">Expected Date</div>
                                            <div class="d-lg-table-cell">Update</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

