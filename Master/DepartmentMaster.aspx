<%@ page title="Department Master" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_DepartmentMaster, App_Web_nbyko0ky" %>

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
                            <td style="width: 1000px;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-left">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 100px; right: 397px; position: fixed; background-position: center; text-align: center;">
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
                                                        <h4 class="card-title">Department Master</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small>Fields with <span class="text-danger">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Department Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtDepartmentName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvtxtDepartmentName" runat="server" ControlToValidate="txtDepartmentName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Department name can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtDepartmentName" runat="server" Enabled="True"
                                                                            TargetControlID="rfvtxtDepartmentName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Short Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtShortName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvtxtShortName" runat="server" ControlToValidate="txtShortName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Short name can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vcetxtShortName" runat="server" Enabled="True"
                                                                            TargetControlID="rfvtxtShortName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Department Head
                                                                        </label>
                                                                        <asp:TextBox ID="txtDepartmentHead" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onchange="DepartmentChange();" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            ID="ace_Employee" runat="server" BehaviorID="ace_Employee"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetEmployeeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtDepartmentHead" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Department Head Email
                                                                        </label>
                                                                        <asp:TextBox ID="txtDepartmentHeadEMail" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="rev_txtDepartmentHeadEMail" runat="server" ValidationGroup="save"
                                                                            ControlToValidate="txtDepartmentHeadEMail" Display="None" ErrorMessage="Enter valid EmailId !"
                                                                            SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtDepartmentHeadEMail" PopupPosition="BottomRight"
                                                                            runat="server" TargetControlID="rev_txtDepartmentHeadEMail">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mt-4 pt-2" id="tdActive" runat="server" visible="false">
                                                                    <label>
                                                                        Active
                                                                    </label>
                                                                    <asp:CheckBox ID="chkIsActive" runat="server" />
                                                                </div>
                                                                <div class="col-md-12 text-center">
                                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save"
                                                                        OnClick="btnSave_Click" ValidationGroup="save" />
                                                                    <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success" Visible="False" Text="Update"
                                                                        OnClick="btnUpdate_Click" CausesValidation="true" ValidationGroup="save" />
                                                                    <asp:Button ID="btnCancel" OnClick="btnCancel_Click" runat="server" CssClass="btn btn-success" Text="Cancel" />
                                                                    <input id="btnDepartment" runat="server" name="btnDepartment" onserverclick="btnDepartment_Click" class="d-none"
                                                                         type="button" />

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
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-4 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Department Name</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-3 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="GO" CssClass="btn btn-success mt-0 mb-0" />
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-info mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered" DataKeyNames="DepartmentID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-success d-none" Text="View" CommandName="View" CommandArgument='<%#Eval("DepartmentID")%>' />
                                                                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" CommandName="View" CommandArgument='<%#Eval("DepartmentID")%>' />
                                                                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-success d-none" Text="Delete" CommandName="Delete"
                                                                                    CommandArgument='<%#Eval("DepartmentID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
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
    <script type="text/javascript">
        function DepartmentChange() {
            document.getElementById('<%=btnDepartment.ClientID %>').click();
        }
    </script>
</asp:Content>

