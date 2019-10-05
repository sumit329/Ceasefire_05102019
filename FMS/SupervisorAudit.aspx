<%@ page title="Supervisor Audit" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_SupervisorAudit, App_Web_4xfo1so1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>--%>
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
                        <%--<div class="row">
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
                                </div>--%>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card" id="cardInput" runat="server">
                                    <div class="card-header card-header-info">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                <%--<h4 class="card-title">Supervisor Audit</h4>--%>
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
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label class="">Branch Name<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtBranchName" runat="server" CssClass="form-control text-uppercase disabled" Enabled="false"
                                                                    AutoComplete="off" onfocus="this.select();">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label class="">Employee Name<span class="text-danger">*</span></label>
                                                                <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase disabled" Enabled="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label class="">Date</label>
                                                                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control disabled" Enabled="false"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 pt-2 mt-3">
                                                            <%--<asp:Button ID="btnProcess" runat="server" OnClick="btnProcess_Click" CssClass="btn btn-info" Text="Process"></asp:Button>--%>
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3" visible="false" id="divSave" runat="server">
                                                        <div class="col-md-12" style="padding-left: 1px; padding-right: 1px;">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;">
                                                                <asp:GridView ID="grdTransaction" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="AuditChecklistMasterID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Category">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("Category")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="80px" />
                                                                            <ItemStyle HorizontalAlign="Left" Width="80px" Wrap="true" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Audit Description">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="lblAudit" runat="server" Text='<%#Eval("Audit Description")%>'></asp:Label>
                                                                                <asp:Label ID="lblAuditID" runat="server" Visible="false" Text='<%#Eval("AuditChecklistMasterID")%>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="true" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Yes/No">
                                                                            <ItemTemplate>
                                                                                <asp:DropDownList ID="ddlyes" runat="server" CssClass="form-control text-uppercase">
                                                                                    <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
                                                                                    <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="60px" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" Width="60px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Remarks">
                                                                            <ItemTemplate>
                                                                                <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="180px" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="" Wrap="false" Width="180px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="IsRemarksRequired" runat="server" Text='<%#Eval("IsRemarksRequired")%>' CssClass="h3 text-danger"></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="true" Width="10px" />
                                                                            <ItemStyle HorizontalAlign="Center" CssClass="" Wrap="false" Width="10px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Image Upload">
                                                                            <ItemTemplate>
                                                                                <asp:FileUpload ID="fuImage" runat="server" CssClass="custom-file"></asp:FileUpload>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="150px" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="" Wrap="false" Width="150px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="IsImageRequired" runat="server" Text='<%#Eval("IsImageRequired")%>' CssClass="h3 text-danger"></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="true" Width="10px" />
                                                                            <ItemStyle HorizontalAlign="Center" CssClass="" Wrap="false" Width="10px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Video  Upload">
                                                                            <ItemTemplate>
                                                                                <asp:FileUpload ID="fuVideo" runat="server" CssClass="custom-file"></asp:FileUpload>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="150px" />
                                                                            <ItemStyle HorizontalAlign="Left" CssClass="" Wrap="false" Width="150px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="IsVideoRequired" runat="server" Text='<%#Eval("IsVideoRequired")%>' CssClass="h3 text-danger"></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="true" Width="10px" />
                                                                            <ItemStyle HorizontalAlign="Center" CssClass="" Wrap="false" Width="10px" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="true" />
                                                                    <RowStyle Wrap="true" />
                                                                    <AlternatingRowStyle />
                                                                </asp:GridView>
                                                            </asp:Panel>
                                                        </div>
                                                        <div class="col-md-12 text-center">
                                                            <input type="button" id="htmlSave" runat="server" class="btn btn-info" value="Save" onclick="DisableSaveClick();" />
                                                            <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="d-none" />
                                                            <asp:Button ID="btnCancel" OnClick="btnCancel_Click" runat="server" CssClass="btn btn-default" Text="Cancel"></asp:Button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-12">
                                <div class="card" id="cardList" runat="server">
                                    <div class="card-header card-header-info  pr-0 pl-0">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h4 class="card-title ml-3">Pending Audit List</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Style="height: auto;width:80vw;">
                                                        <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                            AutoGenerateColumns="false"
                                                            Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="SupervisorAuditRequestID"
                                                            AllowSorting="false" EmptyDataText="Record Not Available..."
                                                            CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                            OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                            OnRowCreated="grdMasterView_RowCreated">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                            CommandArgument='<%#Eval("SupervisorAuditRequestID")%>' />
                                                                    </ItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                    <ItemStyle Wrap="false" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <%#Container.DataItemIndex+1 %>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Wrap="false" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Request Date">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblRequestDate" runat="server" Text='<%#Eval("Request Date")%>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="false" />
                                                                    <ItemStyle HorizontalAlign="Left" CssClass="txtuppper" Wrap="false" />
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Branch Name">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblOfficeID" runat="server" Text='<%#Eval("OfficeID")%>' CssClass="d-none"></asp:Label>
                                                                        <asp:Label ID="lblOfficeName" runat="server" Text='<%#Eval("Branch Name")%>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="false" />
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
                        </div>
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    <%-- </ContentTemplate>
    </asp:UpdatePanel>--%>
    <script language="javascript" type="text/javascript">

        function DisableSaveClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }
    </script>
</asp:Content>
