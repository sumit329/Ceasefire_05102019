<%@ page title="EMS API Update" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="API_EMS_APIUpdate, App_Web_dbefz5bi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server" UpdateMode="Conditional">
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
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server"
                                                            Text="EMS API Update" CssClass="h4 card-title"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">

                                                    <div class="row">
                                                        <div class="col-md-12 text-center">
                                                            <input type="button" id="htmlReimbursentMaster" runat="server" class="btn btn-danger" value="Reimbursent Master" onclick="DisableReimbursentHeadClick();" />
                                                            <asp:Button ID="btnReimbursentMaster" runat="server" CssClass="d-none" OnClick="btnReimbursentMaster_Click" />

                                                            <input type="button" id="htmlEmpWiseReimbursentHead" runat="server" class="btn btn-danger" value="Employee Wise Reimbursent Head" onclick="DisableEmpWiseReimbursentHeadClick();" />
                                                            <asp:Button ID="btnEmpWiseReimbursentHead" runat="server" CssClass="d-none" OnClick="btnEmpWiseReimbursentHead_Click" />

                                                            <%--<input type="button" id="htmlBranchMaster" runat="server" class="btn btn-danger" value="Branch Master" onclick="DisableBranchMasterClick();" />
                                                            <asp:Button ID="btnBranchMaster" runat="server" CssClass="d-none" OnClick="btnBranchMaster_Click" />

                                                            <input type="button" id="htmlVendorMaster" runat="server" class="btn btn-danger" value="Vendor Master" onclick="DisableVendorMasterClick();" />
                                                            <asp:Button ID="btnVendorMaster" runat="server" CssClass="d-none" OnClick="btnVendorMaster_Click" />

                                                            <input type="button" id="htmlItemMaster" runat="server" class="btn btn-danger" value="Item Master" onclick="DisableItemMasterClick();" />
                                                            <asp:Button ID="btnItemMaster" runat="server" CssClass="d-none" OnClick="btnItemMaster_Click" />--%>

                                                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                                                        </div>
                                                        <div class="col-md-12 mt-2">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="width: 80vw; height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover display"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
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
                                                        <div class="col-md-12 text-center">
                                                            <input type="button" id="htmlSaveReimbursentMaster" runat="server" class="btn btn-danger"
                                                                data-toggle="tooltip" title="Process Reimbursent Master" value="Process" onclick="DisableSaveReimbursentHeadClick();" />
                                                            <asp:Button ID="btnSaveReimbursentMaster" runat="server" CssClass="d-none" OnClick="btnSaveReimbursentMaster_Click" />

                                                            <input type="button" id="htmlSaveEmpWiseReimbursentHead" runat="server" class="btn btn-danger"
                                                                data-toggle="tooltip" title="Process Employee Wise Reimbursent Head" value="Process" onclick="DisableSaveEmpWiseReimbursentHeadClick();" />
                                                            <asp:Button ID="btnSaveEmpWiseReimbursentHead" runat="server" CssClass="d-none" OnClick="btnSaveEmpWiseReimbursentHead_Click" />

                                                           <%-- <input type="button" id="htmlBranchMasterSave" runat="server" class="btn btn-danger"
                                                                data-toggle="tooltip" title="Process Branch Master" value="Process" onclick="DisableSaveBranchMasterClick();" />
                                                            <asp:Button ID="btnSaveBranchMaster" runat="server" CssClass="d-none" OnClick="btnSaveBranchMaster_Click" />

                                                            <input type="button" id="htmlVendorMasterSave" runat="server" class="btn btn-danger"
                                                                data-toggle="tooltip" title="Process Vendor Master" value="Process" onclick="DisableSaveVendorMasterClick();" />
                                                            <asp:Button ID="btnSaveVendorMaster" runat="server" CssClass="d-none" OnClick="btnSaveVendorMaster_Click" />

                                                            <input type="button" id="htmlItemMasterSave" runat="server" class="btn btn-danger"
                                                                data-toggle="tooltip" title="Process Item Master" value="Process" onclick="DisableSaveItemMasterClick();" />
                                                            <asp:Button ID="btnSaveItemMaster" runat="server" CssClass="d-none" OnClick="btnSaveItemMaster_Click" />--%>

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
        <Triggers>
            <asp:PostBackTrigger ControlID="btnReimbursentMaster" />
            <asp:PostBackTrigger ControlID="btnSaveReimbursentMaster" />
            <asp:PostBackTrigger ControlID="btnEmpWiseReimbursentHead" />
            <asp:PostBackTrigger ControlID="btnSaveEmpWiseReimbursentHead" />
            <%--<asp:PostBackTrigger ControlID="btnBranchMaster" />
            <asp:PostBackTrigger ControlID="btnVendorMaster" />
            <asp:PostBackTrigger ControlID="btnItemMaster" />
            <asp:PostBackTrigger ControlID="btnSaveBranchMaster" />
            <asp:PostBackTrigger ControlID="btnSaveBranchMaster" />
            <asp:PostBackTrigger ControlID="btnSaveVendorMaster" />
            <asp:PostBackTrigger ControlID="btnSaveItemMaster" />--%>
        </Triggers>
    </asp:UpdatePanel>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card" id="Div1" runat="server">
                        <div class="card-header card-header-danger">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    Auto refresh in
                                        <asp:TextBox ID="txtTime" runat="server" CssClass="" Style="width:40px;font-size: 20px;" OnTextChanged="txtTime_TextChanged"></asp:TextBox>
                                        <asp:Label ID="lblTime" runat="server" Text="" Style="font-size: 20px;"></asp:Label>
                                    minutes.
                                        <asp:Timer ID="tm" runat="server" Interval="60000" OnTick="tm_Tick"></asp:Timer>
                                    <asp:Button ID="btnStopTimer" runat="server" Text="Stop Timer" CssClass="btn btn-primary" OnClick="btnStopTimer_Click" />
                                    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="btn btn-default" OnClick="btnRefresh_Click" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="tm" EventName="Tick" />
                                    <asp:AsyncPostBackTrigger ControlID="btnStopTimer" EventName="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="btnRefresh" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function DisableReimbursentHeadClick() {
            document.getElementById("<%=htmlReimbursentMaster.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlReimbursentMaster.ClientID %>").value = msg;
            document.getElementById("<%=btnReimbursentMaster.ClientID %>").click();
        };
        function DisableSaveReimbursentHeadClick() {
            document.getElementById("<%=htmlSaveReimbursentMaster.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSaveReimbursentMaster.ClientID %>").value = msg;
            document.getElementById("<%=btnSaveReimbursentMaster.ClientID %>").click();
        };
        function DisableEmpWiseReimbursentHeadClick() {
            document.getElementById("<%=htmlEmpWiseReimbursentHead.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlEmpWiseReimbursentHead.ClientID %>").value = msg;
            document.getElementById("<%=btnEmpWiseReimbursentHead.ClientID %>").click();
        };
        function DisableSaveEmpWiseReimbursentHeadClick() {
            document.getElementById("<%=htmlSaveEmpWiseReimbursentHead.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSaveEmpWiseReimbursentHead.ClientID %>").value = msg;
            document.getElementById("<%=btnSaveEmpWiseReimbursentHead.ClientID %>").click();
        };
        <%--function DisableBranchMasterClick() {
            document.getElementById("<%=htmlBranchMaster.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlBranchMaster.ClientID %>").value = msg;
                document.getElementById("<%=btnBranchMaster.ClientID %>").click();
        };
        function DisableVendorMasterClick() {
            document.getElementById("<%=htmlVendorMaster.ClientID %>").disabled = true;
                msg = 'Wait..!';
                document.getElementById("<%=htmlVendorMaster.ClientID %>").value = msg;
            document.getElementById("<%=btnVendorMaster.ClientID %>").click();
            };
            function DisableItemMasterClick() {
                document.getElementById("<%=htmlItemMaster.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlItemMaster.ClientID %>").value = msg;
            document.getElementById("<%=btnItemMaster.ClientID %>").click();
        };
        function DisableSaveBranchMasterClick() {
            document.getElementById("<%=htmlBranchMasterSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlBranchMasterSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSaveBranchMaster.ClientID %>").click();
        };
        function DisableSaveVendorMasterClick() {
            document.getElementById("<%=htmlVendorMasterSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlVendorMasterSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSaveVendorMaster.ClientID %>").click();
        };
        function DisableSaveItemMasterClick() {
            document.getElementById("<%=htmlItemMasterSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlItemMasterSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSaveItemMaster.ClientID %>").click();
        };--%>
    </script>
</asp:Content>

