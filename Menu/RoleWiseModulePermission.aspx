<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Menu_RoleWiseModulePermission, App_Web_uhwqznxt" title="Role Wise Module Permission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .modalBg {
            background-color: Aqua;
            filter: alpha(opacity=80);
            opacity: 0.8;
        }
    </style>
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
                                                        <h4 class="card-title">Role Wise Module Permission</h4>
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
                                                                            Role Name
                                                                        </label>
                                                                        <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-control" Font-Bold="true"
                                                                            AutoPostBack="false">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 mt-3 pt-2">
                                                                    <asp:Button ID="btnAddRole" Text="+" runat="server" CssClass="btn btn-success font-bold" OnClick="btnAddRole_Click" />
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
                                                                CellSpacing="1" GridLines="none" CssClass="table table-bordered" BorderWidth="0px">
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
                                                    <div class="col-md-12">
                                                        <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Height="200px">
                                                            <asp:GridView ID="grdMenu" runat="server" AllowPaging="false" AutoGenerateColumns="false"
                                                                Width="100%" AllowSorting="false" EmptyDataText="Record Not Available..." CellPadding="1"
                                                                CellSpacing="1" GridLines="none" CssClass="table table-bordered" BorderWidth="0px" OnRowCreated="grdMenu_RowCreated">
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
                                                        <input class="btn btn-success" id="htmlSave" style="width: 70px; font-weight: bold"
                                                            onclick="DisableClick();" type="button" value="Save" name="htmlSave" runat="server" />
                                                        <asp:Button ID="btnSave" runat="server" CssClass="d-none" Text="" ValidationGroup="save" OnClick="btnSave_Click" />
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

        function DisableClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }

    </script>

    <asp:Button ID="btnhidden" runat="server" CssClass="d-none" Text="HiddenButton"></asp:Button>
    <table style="table-layout: fixed" width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <AjaxTools:ModalPopupExtender ID="MPExtender" runat="server" BackgroundCssClass="modalBg"
                    PopupDragHandleControlID="PanelDetail" CancelControlID="btnhidden" DropShadow="false"
                    PopupControlID="PanelDetail" TargetControlID="btnhidden">
                </AjaxTools:ModalPopupExtender>
                <asp:Panel ID="PanelDetail" runat="server"
                    Height="110px" ScrollBars="None" Width="500px">
                    <asp:UpdatePanel ID="upPanelPopup" runat="server">
                        <ContentTemplate>
                            <div class="wrapper wrapper-content animated fadeInRight">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel">
                                            <div class="panel-heading panel-info">
                                                <h3 class="text-center">ADD NEW ROLE</h3>
                                            </div>
                                            <div class="panel-body">
                                                <table width="100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblMessagePopUp" Height="30px" Font-Bold="true" ForeColor="Red" runat="server"
                                                                Text=""></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <table id="tblAddRole" runat="server" border="0" cellspacing="1"
                                                                cellpadding="2" width="100%">
                                                                <tr>
                                                                    <td align="left" class="lblMediumBold width80 font-bold">Role Name
                                                                    </td>
                                                                    <td align="left" class="lblMediumBold width220">
                                                                        <asp:TextBox ID="txtRoleName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                                            onfocus="this.select();" CssClass="txtboxMedium width220" MaxLength="35"></asp:TextBox>
                                                                    </td>
                                                                    <td align="left" valign="top">
                                                                        <asp:Button ID="btnAddCheck1" runat="server" Enabled="False" CssClass="d-none"
                                                                            BorderStyle="None" />
                                                                        <asp:Button ID="btnSaveRole" runat="server" CssClass="btn btn-success" Text="Save" Style="width: 60px; font-weight: bold"
                                                                            OnClick="btnSaveRole_Click" />
                                                                        <asp:Button ID="btnClosePopup" runat="server" CssClass="btn btn-success" Text="Close" Style="width: 60px; font-weight: bold"
                                                                            OnClick="btnClosePopup_Click" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
