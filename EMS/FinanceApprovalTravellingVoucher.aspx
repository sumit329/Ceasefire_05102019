<%@ page title="Finance Approval Travelling Voucher" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="EMS_FinanceApprovalTravellingVoucher, App_Web_1zdtagca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="content">
                <div class="container-fluid">
                    <table style="width: 100%;">
                        <tr>
                            <td></td>
                            <td style="width: 80vw;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-left">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 294px; right: 397px; position: fixed; background-position: center; text-align: center;">
                                                    Please Wait....
                                                    <img src="../images/progressbarsmall.gif" alt="Loading" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card vw85" id="cardInput" runat="server">
                                            <div class="card-header card-header-warning">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"
                                                            Text="Travelling Voucher"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div id="divEmployeeName" runat="server" class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label class="">Employee Name</label>
                                                                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();" Enabled="false"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="card mt-1 mb-1">
                                                                        <div class="card-body">
                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto; width: auto;">
                                                                                        <asp:GridView ID="grdTransaction" runat="server" AllowPaging="false"
                                                                                            AutoGenerateColumns="false"
                                                                                            Width="100%" CssClass="table table-bordered table-hover"
                                                                                            AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                            CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                                            OnRowCreated="grdTransaction_RowCreated">
                                                                                            <Columns>
                                                                                                <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Container.DataItemIndex+1 %>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Employee Name">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Eval("Employee Name")%>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Expense Head">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Eval("Expense Head")%>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Start Date">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Eval("Start Date")%>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="End Date">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Eval("End Date")%>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Remarks">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Eval("Remarks")%>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Amount">
                                                                                                    <ItemTemplate>
                                                                                                        <%#Eval("Amount")%>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Reporting Approve Amount">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblReportingApproveAmount" runat="server" Text='<%#Eval("Reporting Approve Amount")%>' ></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Right" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Approve Amount">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:TextBox ID="txtApproveAmount" runat="server" CssClass="form-control" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtApproveAmount" runat="server"
                                                                                                            ValidChars="." FilterMode="ValidChars" FilterType="Numbers,Custom" TargetControlID="txtApproveAmount">
                                                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                                                        <asp:Label ID="lblTravellingVoucherDetailID" runat="server" Text='<%#Eval("TravellingVoucherDetailID")%>' CssClass="d-none"></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                                                </asp:TemplateField>
                                                                                            </Columns>
                                                                                            <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                                            <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                                            <HeaderStyle Wrap="false" />
                                                                                            <RowStyle Wrap="false" />
                                                                                            <AlternatingRowStyle />
                                                                                        </asp:GridView>
                                                                                    </asp:Panel>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12 text-center">
                                                                    <input type="button" id="htmlSave" runat="server" class="btn btn-warning" value="Save" onclick="DisableSaveClick();" />
                                                                    <asp:Button ID="btnSave" runat="server" CssClass="d-none" OnClick="btnSave_Click" />
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-warning  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="lblheader2" runat="server" CssClass="h4 card-title m-4"
                                                            Text="Re-Imbursement Master"></asp:Label>
                                                        <%--<h4 class="card-title">Master</h4>--%>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Employee </label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-primary mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Style="height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="true" DataKeyNames="TravellingVoucherSummaryID"
                                                                    Width="100%" CssClass="table table-bordered table-hover"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Update" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text='<i class="material-icons">update</i>' OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("TravellingVoucherSummaryID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Width="60px" Wrap="false" CssClass="col-md-2" />
                                                                            <ItemStyle Wrap="false" Width="60px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="false" />
                                                                    <RowStyle Wrap="false" />
                                                                    <AlternatingRowStyle />
                                                                </asp:GridView>
                                                            </asp:Panel>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function DisableSaveClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }
    </script>
</asp:Content>
