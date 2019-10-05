<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Menu_RoleMaster, App_Web_uhwqznxt" title="Role Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="content">
                <div class="container-fluid">
                    <table style="width: 100%;">
                        <tr>
                            <td></td>
                            <td style="width: 900px;">
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
                                                <h4 class="card-title">Role Master</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Role Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtRoleName" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control text-uppercase" MaxLength="35"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtRoleName" runat="server" ControlToValidate="txtRoleName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Role Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtRoleName" runat="server" PopupPosition="BottomRight"
                                                                            Enabled="True" TargetControlID="rfv_txtRoleName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Description 
                                                                        </label>
                                                                        <asp:TextBox ID="txtDescription" runat="server"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control text-uppercase"
                                                                            MaxLength="35">  </asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 mt-3 pt-2">
                                                                    <label>
                                                                        Default Role
                                                                    </label>
                                                                    <asp:CheckBox ID="chkIsDefaultRole" Checked="false" runat="server" />
                                                                </div>
                                                                <div class="col-md-3 mt-3 pt-2">
                                                                    <label>
                                                                        Active
                                                                    </label>
                                                                    <asp:CheckBox ID="chkIsActive" Checked="true" runat="server" />
                                                                </div>
                                                                <div class="col-md-3 mt-3 pt-2">
                                                                    <label>
                                                                        By Pass I.P Security
                                                                    </label>
                                                                    <asp:CheckBox ID="chkByPassIP" Checked="false" runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 text-center">
                                                        <asp:Button ID="btnAddCheck" runat="server" Enabled="False" CssClass="d-none" />
                                                        <input class="btn btn-success" id="htmlSave" onclick="DisableClick();" type="button"
                                                             value="Save" name="htmlSave" runat="server" />
                                                        <asp:Button ID="btnSave" runat="server" CssClass="d-none" Text="" ValidationGroup="save" OnClick="btnSave_Click" />
                                                        <input class="btn btn-success" id="htmlUpdate" onclick="DisableClickUpdate();" type="button"
                                                             value="Update" name="htmlUpdate" runat="server" />
                                                        <asp:Button ID="btnUpdate" runat="server" CssClass="d-none" Text="" ValidationGroup="save" OnClick="btnUpdate_Click" />
                                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-success" OnClick="btnCancel_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-danger  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Role Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-success"
                                                            OnClick="btnSearch_Click" />
                                                        <asp:ImageButton ID="lnkExport" runat="server" OnClick="lnkExport_Click" CssClass="Exporticon" ImageUrl="~/images/export.png" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="RoleID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-success d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("RoleID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="View" CommandArgument='<%#Eval("RoleID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-success d-none" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("RoleID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                        runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                        TargetControlID="btnDelete">
                                                                                    </AjaxTools:ConfirmButtonExtender>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" CssClass="width90" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="pagerstyle" HorizontalAlign="Left" />
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
        <Triggers>
            <asp:PostBackTrigger ControlID="lnkExport" />
        </Triggers>
    </asp:UpdatePanel>

    <script language="javascript" type="text/javascript">

        function DisableClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }

        function DisableClickUpdate() {
            document.getElementById("<%=htmlUpdate.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlUpdate.ClientID %>").value = msg;
            document.getElementById("<%=btnUpdate.ClientID %>").click();
        }

    </script>

</asp:Content>
