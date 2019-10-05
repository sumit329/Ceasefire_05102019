<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Transaction_PurchaseIndentApproval, App_Web_qk1mwl5b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-info">
                            <h4 class="card-title">Purchase Indent Approval</h4>
                        </div>
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">PI Number</label>
                                            <asp:TextBox ID="txtPINumber" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Supplier Name</label>
                                            <asp:TextBox ID="txtSupplierName" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">PI Date</label>
                                            <asp:TextBox ID="txtItemCategory" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Supplier Address</label>
                                            <asp:TextBox ID="txtSupplierAddress" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Expected Delivery Date</label>
                                            <asp:TextBox ID="txtExpectedDeliveryDate" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Supplier Phone</label>
                                            <asp:TextBox ID="txtSupplierPhone" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Remarks</label>
                                            <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row bg-info">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Item Code & Name</label>
                                            <asp:TextBox ID="txtItemCodeName" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Qty</label>
                                            <asp:TextBox ID="txtQty" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Bal. Qty</label>
                                            <asp:TextBox ID="txtBalQty" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Rate</label>
                                            <asp:TextBox ID="txtRate" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="bmd-label-floating text-white">Total Amt</label>
                                            <asp:TextBox ID="txtTotalAmt" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-10"></div>
                                    <div class="col-md-2 mt-2">
                                        <label class="label-on-left">Total :</label>
                                        <asp:TextBox ID="txtTotal" runat="server" CssClass="disabled" Enabled="false"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">HO Remarks</label>
                                            <asp:TextBox ID="txtHORemarks" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <button id="btnSave" runat="server" class="btn btn-info">Approved</button>
                    <button id="btnCancel" runat="server" class="btn btn-default">Reject</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

