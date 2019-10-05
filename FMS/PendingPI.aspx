<%@ page title="Indent Status" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_PendingPI, App_Web_4xfo1so1" %>

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
                                <div class="row" runat="server" id="divPendingPI">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <h4 class="card-title">Indent Status</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="pnlDetail" runat="server" ScrollBars="Auto" Style="max-height: 500px;">
                                                                <asp:GridView ID="grdTransaction" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="PISummaryID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Update" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="+" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("PISummaryID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Width="60px" Wrap="false" CssClass="col-md-2" />
                                                                            <ItemStyle Wrap="false" Width="60px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" Width="40px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Office Name">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Office Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="PI Number">
                                                                            <ItemTemplate>
                                                                                <%#Eval("PI Number")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="PI Date">
                                                                            <ItemTemplate>
                                                                                <%#Eval("PI Date")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Total Item">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Total Item")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Status">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Status")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="false" CssClass="header" />
                                                                    <RowStyle Wrap="false" />
                                                                    <AlternatingRowStyle />
                                                                </asp:GridView>
                                                            </asp:Panel>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" runat="server" id="divPendingDetail" visible="false">
                                    <div class="col-md-12">
                                        <div class="content">
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="card">
                                                            <div class="card-header card-header-info">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                                        <%--<h4 class="card-title">Purchase Indent Approval</h4>--%>
                                                                    </div>
                                                                    <div class="col-md-6 text-right">
                                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card-body">
                                                                <div class="container-fluid">
                                                                    <div class="row">
                                                                        <div class="col-md-3">
                                                                            <div class="form-group">
                                                                                <label class="">PI Number</label>
                                                                                <asp:TextBox ID="txtPINumber" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label class="">PI Date</label>
                                                                                <asp:TextBox ID="txtPIDate" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label class="">Branch Name<span class="text-danger">*</span></label>
                                                                                <asp:TextBox ID="txtBranchName" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mt-2">
                                                                        <div class="col-md-12">
                                                                            <asp:Panel ID="Panel2" runat="server" ScrollBars="Auto" Style="height: auto;width:80vw;">
                                                                                <asp:GridView ID="grdPIDetail" runat="server" AllowPaging="true"
                                                                                    AutoGenerateColumns="false"
                                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="PISummaryID"
                                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                    CellPadding="2" CellSpacing="2" GridLines="Both" BorderWidth="1px" OnRowDataBound="grdPIDetail_RowDataBound" >
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="SL#" ItemStyle-HorizontalAlign="Center">
                                                                                            <ItemTemplate>
                                                                                                <%#Container.DataItemIndex+1 %>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle Wrap="false" Width="30px" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Approved" ItemStyle-HorizontalAlign="Center">
                                                                                            <ItemTemplate>
                                                                                                <asp:CheckBox ID="chkIsApproved" OnCheckedChanged="chkIsApproved_CheckedChanged" runat="server" AutoPostBack="true"  Text="" Checked='<%#Eval("Approved")%>' />
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                                            <ItemStyle Wrap="false" Width="60px" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Reject" ItemStyle-HorizontalAlign="Center">
                                                                                            <ItemTemplate>
                                                                                                <asp:CheckBox ID="chkIsReject" OnCheckedChanged="chkIsReject_CheckedChanged" AutoPostBack="true" runat="server" Text="" Checked='<%#Eval("Reject")%>' />
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                                            <ItemStyle Wrap="false" Width="60px" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Item Name">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Item Name")%>
                                                                                                <asp:Label ID="lblItemID" runat="server" Visible="false" Text='<%#Eval("ItemID")%>'></asp:Label>
                                                                                                 <asp:Label ID="lblPIDetailID" runat="server" Visible="false" Text='<%#Eval("PIDetailID")%>'></asp:Label>
                                                                                                 <asp:Label ID="lblPISummaryID" runat="server" Visible="false" Text='<%#Eval("PISummaryID")%>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Bal Qty">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Bal Qty")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Quantity">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Quantity")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>

                                                                                        <asp:TemplateField HeaderText="Supplier Name">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Supplier Name")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Brand Name">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Brand Name")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>

                                                                                        <asp:TemplateField HeaderText="Rate">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Rate")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Amount">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Amount")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Right" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Right" CssClass="text-uppercase" Wrap="false" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Remarks">
                                                                                            <ItemTemplate>
                                                                                                <%#Eval("Remarks")%>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
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
                                                                    <div class="row">
                                                                        <div class="col-md-12 text-center">
                                                                         <input type="button" id="htmlUpdatePI" runat="server" class="btn btn-info" value="Update" onclick="DisableUpdateClick();" />
                                                                    <asp:Button ID="btnUpdatePI" runat="server" CssClass="d-none" OnClick="btnUpdatePI_Click" />
                                                                            <asp:Button ID="btnClosePI" runat="server" CssClass="btn btn-default" Text="Close" OnClick="btnClosePI_Click" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
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
     <script language="javascript" type="text/javascript">

         function DisableUpdateClick() {
             document.getElementById("<%=htmlUpdatePI.ClientID %>").disabled = true;
             msg = 'Wait..!';
             document.getElementById("<%=htmlUpdatePI.ClientID %>").value = msg;
             document.getElementById("<%=btnUpdatePI.ClientID %>").click();
         }

    </script>
</asp:Content>