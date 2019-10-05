<%@ page title="Home" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Home, App_Web_xm1fgizf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6">
            <a href="#" id="lnkExpense" runat="server" onserverclick="lnkExpense_Click">
                <div class="card card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">local_atm</i>
                        </div>
                    </div>
                    <div class="card-body"><h3>Expense Management</h3></div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <a href="#" id="lnkProject" runat="server" onserverclick="lnkProject_Click">
                <div class="card card-stats">
                    <div class="card-header card-header-success  card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">ballot</i>
                        </div>
                    </div>
                    <div class="card-body"><h3>Project Management</h3></div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <a href="#" id="lnkFMS" runat="server" onserverclick="lnkFMS_Click">
                <div class="card card-stats">
                    <div class="card-header card-header-info card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">business</i>
                        </div>
                    </div>
                    <div class="card-body"><h3>FMS Management</h3></div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <a href="#" id="lnkAdmin" runat="server" onserverclick="lnkAdmin_Click">
                <div class="card card-stats">
                    <div class="card-header card-header-danger card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">supervisor_account</i>
                        </div>
                    </div>
                    <div class="card-body">
                        <h3>Admin Management</h3>
                    </div>
                </div>
            </a>
        </div>
    </div>
</asp:Content>
