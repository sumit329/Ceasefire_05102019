<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Menu_MenuMaster, App_Web_uhwqznxt" title="Menu Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                        <div class="card">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="card-title">Menu Master</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right"><small>Fields with <span class="text-danger">*</span> mark are mandatory.</small></div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group mt-0">
                                                                        <label class="">
                                                                            Project Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:DropDownList ID="ddlProjectName" runat="server"
                                                                            CssClass="form-control" Font-Bold="true"
                                                                            AutoPostBack="True"
                                                                            OnSelectedIndexChanged="ddlProjectName_SelectedIndexChanged">
                                                                            <asp:ListItem Text="Select" Value="Select" Enabled="true"></asp:ListItem>
                                                                            <asp:ListItem Text="SETUP PROJECT" Value="SETUP PROJECT"></asp:ListItem>
                                                                            <asp:ListItem Text="EXPENSE MANAGEMENT" Value="EXPENSE MANAGEMENT"></asp:ListItem>
                                                                            <asp:ListItem Text="PROJECT MANAGEMENT" Value="PROJECT MANAGEMENT"></asp:ListItem>
                                                                            <asp:ListItem Text="FMS MANAGEMENT" Value="FMS MANAGEMENT"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group mt-0">
                                                                        <label class="">
                                                                            Parent Menu
                                                                        </label>
                                                                        <asp:TextBox ID="txtParentMenu" runat="server"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender ID="ace_Menu" runat="server" BehaviorID="ace_Menu"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetAllActiveMenuHelp"
                                                                            ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtParentMenu" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group mt-0">
                                                                        <label class="">
                                                                            Menu Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtMenuName" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control" MaxLength="100"></asp:TextBox>
                                                                        <%--<asp:RequiredFieldValidator ID="rfv_txtMenuName" runat="server" ControlToValidate="txtMenuName"
                                                                SetFocusOnError="true" Display="None" ErrorMessage="Menu Name can not be blank !"
                                                                ValidationGroup="save" Font-Size="8pt">
                                                            </asp:RequiredFieldValidator>
                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtMenuName" runat="server" PopupPosition="BottomRight"
                                                                Enabled="True" TargetControlID="rfv_txtMenuName">
                                                            </AjaxTools:ValidatorCalloutExtender>--%>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group mt-0">
                                                                        <label class="">
                                                                            URL
                                                                        </label>
                                                                        <asp:TextBox ID="txtURL" runat="server" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control" MaxLength="500"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group mt-0">
                                                                        <label class="">
                                                                            Description
                                                                        </label>
                                                                        <asp:TextBox ID="txtDescription" runat="server" Style="text-transform: uppercase;"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control"
                                                                            MaxLength="500"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group mt-0">
                                                                        <label class="">
                                                                            Display Order<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtDisplayOrder" runat="server"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control text-uppercase"
                                                                            MaxLength="3"></asp:TextBox>
                                                                        <%-- <asp:RequiredFieldValidator ID="rfv_txtDisplayOrder" runat="server" ControlToValidate="txtDisplayOrder"
                                                                SetFocusOnError="true" Display="None" ErrorMessage="Display Order can not be blank !"
                                                                ValidationGroup="none" Font-Size="8pt">
                                                            </asp:RequiredFieldValidator>
                                                            <AjaxTools:ValidatorCalloutExtender ID="vce_txtDisplayOrder" runat="server" PopupPosition="BottomRight"
                                                                Enabled="True" TargetControlID="rfv_txtDisplayOrder">
                                                            </AjaxTools:ValidatorCalloutExtender>--%>
                                                                        <AjaxTools:FilteredTextBoxExtender ID="fte_txtDisplayOrder" runat="server" FilterMode="ValidChars"
                                                                            FilterType="Numbers" TargetControlID="txtDisplayOrder">
                                                                        </AjaxTools:FilteredTextBoxExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4 mt-4 pt-2">
                                                                    <label class="">
                                                                        Active
                                                                    </label>
                                                                    <asp:CheckBox ID="chkIsActive" Checked="true" runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 text-center">

                                                            <input class="btn btn-success" id="htmlSave" onclick="DisableClick();"
                                                                type="button" value="Save" name="htmlSave" runat="server" />
                                                            <asp:Button ID="btnSave" runat="server" CssClass="d-none" ValidationGroup="save" OnClick="btnSave_Click" />
                                                            <input class="btn btn-success" id="htmlUpdate" onclick="DisableClickUpdate();"
                                                                type="button" value="Update" name="htmlUpdate" runat="server" />
                                                            <asp:Button ID="btnUpdate" runat="server" CssClass="d-none"
                                                                ValidationGroup="save" OnClick="btnUpdate_Click" />
                                                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel"
                                                                OnClick="btnCancel_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-3 text-right">
                                                        <label class="white">Search by Menu Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-success mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                    <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-info mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="width:80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered" DataKeyNames="MenuID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-success d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("MenuID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="View" CommandArgument='<%#Eval("MenuID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("MenuID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
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
