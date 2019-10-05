<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Transaction_PurchaseIndent, App_Web_qk1mwl5b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function btnAdd_Click() {
            document.getElementById("<%=btnADDSupplier.ClientID%>").click();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-info">
                            <h4 class="card-title">Purchase Indent</h4>
                        </div>
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Item Code & Name</label>
                                            <asp:TextBox ID="txtItem" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">PI Number</label>
                                            <asp:TextBox ID="txtPINumber" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Quantity</label>
                                            <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">PI Date</label>
                                            <asp:TextBox ID="txtPIDate" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Balance Quantity</label>
                                            <asp:TextBox ID="txtBalanceQuantity" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Expected Delivery Date</label>
                                            <asp:TextBox ID="txtExpectedDeliveryDate" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row bg-info pt-3">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Supplier Name</label>
                                            <asp:TextBox ID="txtSupplierName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Brand Name</label>
                                            <asp:TextBox ID="txtBrandName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Rate</label>
                                            <asp:TextBox ID="txtRate" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Remarks</label>
                                            <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <button id="btnAdd" class="btn btn-danger" onclick="btnAdd_Click()" ><i class="material-icons">add</i></button>
                                        <asp:Button ID="btnADDSupplier" runat="server" CssClass="d-none" OnClick="btnADDSupplier_Click" />
                                    </div>
                                </div>
                                <div class="row">
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <button id="btnSave" runat="server" class="btn btn-info">Save & Continue</button>
                    <button id="btnGeneratePI" runat="server" class="btn btn-success">Generate PI</button>
                    <button id="btnPrintPI" runat="server" class="btn btn-default">Print PI</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

