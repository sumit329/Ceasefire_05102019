<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Menu_EmployeeWiseModulePermission, App_Web_uhwqznxt" title="Employee Wise Module Permission" %>

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
                                        <div class="card mb-0" id="cardInput" runat="server">
                                            <div class="card-header card-header-danger">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="card-title">Employee Wise Module Permission</h4>
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
                                                                            Office Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtOfficeName" runat="server"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control text-uppercase"
                                                                            AutoPostBack="false"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtOfficeName" runat="server" ControlToValidate="txtOfficeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Office Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtOfficeName" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtOfficeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender ID="ace_OfficeName" runat="server" BehaviorID="ace_OfficeName"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtOfficeName" UseContextKey="false">
                                                                        </AjaxTools:AutoCompleteExtender>

                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>
                                                                            Employee Name<span class="text-danger">*</span>
                                                                        </label>
                                                                        <asp:TextBox ID="txtEmployeeName" runat="server" Style="text-transform: uppercase"
                                                                            AutoComplete="off" onfocus="this.select();" CssClass="form-control"
                                                                            AutoPostBack="false"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtEmployeeName" runat="server" ControlToValidate="txtEmployeeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Employee Name can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtEmployeeName" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtEmployeeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                        <AjaxTools:AutoCompleteExtender ID="ace_Employee" runat="server" BehaviorID="ace_Employee"
                                                                            CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetEmployeeByOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtEmployeeName" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 text-center">
                                                        <asp:Button ID="btnProcessRole" Text="Process" runat="server" CssClass="btn btn-success" OnClick="btnProcessRole_Click" />
                                                        <asp:Button ID="btnCancel" Text="Cancel" runat="server" CssClass="btn btn-success" OnClick="btnCancel_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card m-0">
                                            <div id="tblProjectName" runat="server">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                                            <asp:GridView ID="grdProject" runat="server" AutoGenerateColumns="false" Width="100%"
                                                                AllowSorting="false" EmptyDataText="Record Not Available..." CellPadding="1"
                                                                CellSpacing="1" GridLines="none" CssClass="table table-bordered">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <%#Container.DataItemIndex+1 %>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle Wrap="false" />
                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="CheckAll" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                                                        <HeaderTemplate>
                                                                            <asp:CheckBox ID="chkSelectAllProject" runat="server" AutoPostBack="true" CssClass=""
                                                                                Text="Select All" OnCheckedChanged="chkSelectAllProject_CheckedChanged" />
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox ID="chkSelectProject" AutoPostBack="false" runat="server" TextAlign="Left" />
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                        <ItemStyle HorizontalAlign="Center" Width="80px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Project Name">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblProjectName" runat="server" Text='<%#Eval("Project Name") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                        <ItemStyle HorizontalAlign="Left" Width="160px" />
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
                                                    <div class="col-md-12 text-center">
                                                        <asp:Button ID="btnProcessProject" Text="Process" runat="server" CssClass="btn btn-success" OnClick="btnProcessProject_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card m-0">
                                            <div id="tblMenu" runat="server">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Height="200px">
                                                            <asp:GridView ID="grdMenu" runat="server" AllowPaging="false" AutoGenerateColumns="false"
                                                                Width="100%" AllowSorting="false" EmptyDataText="Record Not Available..." CellPadding="1"
                                                                CellSpacing="1" GridLines="none" CssClass="table table-bordered" OnRowCreated="grdMenu_RowCreated">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <%#Container.DataItemIndex+1 %>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle Wrap="false" />
                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                                                        <HeaderTemplate>
                                                                            <asp:CheckBox ID="chkSelectAllMenu" runat="server" AutoPostBack="true" CssClass=""
                                                                                Text="Select All" OnCheckedChanged="chkSelectAllMenu_CheckedChanged" />
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox ID="chkSelectMenu" AutoPostBack="false" Checked='<%# Eval("[Map]")%>'
                                                                                runat="server" TextAlign="Left" />
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" Wrap="false" />
                                                                        <ItemStyle HorizontalAlign="Center" Width="80px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="MenuID">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblMenuID" runat="server" Text='<%#Eval("MenuID") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                        <ItemStyle HorizontalAlign="Left" Width="160px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Project Name">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblProjectName" runat="server" Text='<%#Eval("Project Name") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                        <ItemStyle HorizontalAlign="Left" Width="160px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Parent Menu">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblParentMenu" runat="server" Text='<%#Eval("Parent Menu") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                        <ItemStyle HorizontalAlign="Left" Width="160px" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Menu Name">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblMenuName" runat="server" Text='<%#Eval("Menu Name") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                        <ItemStyle HorizontalAlign="Left" Width="160px" />
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
                                                    <div class="col-md-12 text-center">
                                                        <asp:Button ID="btnAddCheck" runat="server" CssClass="btn btn-success d-none" Enabled="False"/>
                                                        <input class="btn btn-success" id="htmlSave" onclick="DisableClick();" type="button" 
                                                            value="Save" name="htmlSave" runat="server" />
                                                        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success d-none"
                                                            Text="" ValidationGroup="save" OnClick="btnSave_Click" />
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
        function pageLoad(sender, e) {
            var o = $find("ace_Employee");
            if (o != null) {
                o.add_populating(function () {

                    o.set_contextKey($get("<%=txtOfficeName.ClientID %>").value);
                }
            );
            }
        }
    </script>
    <script language="javascript" type="text/javascript">

        function DisableClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }

    </script>

</asp:Content>
