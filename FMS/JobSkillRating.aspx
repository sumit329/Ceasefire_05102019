<%@ page title="Job Skill Rating" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_JobSkillRating, App_Web_4xfo1so1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <style type="text/css">
        .starempty {
            background-image: url(assets/img/starempty.png);
            width: 24px;
            height: 24px;
        }

        .starfilled {
            background-image: url(assets/img/starfilled.png);
            width: 24px;
            height: 24px;
        }

        .starwaiting {
            background-image: url(stars/starwaiting.png);
            width: 26px;
            height: 26px;
        }
    </style>

    <script type="text/javascript">
        function pageLoad(sender, e) {
            var o = $find("ace_Employee");
            if (o != null) {
                o.add_populating(function () {
                    o.set_contextKey($get("<%=ddlBranchName.ClientID %>").value);
                  }
              );
              }
          }
    </script>
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
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                        <%--<h4 class="card-title">Job Skill Rating</h4>--%>
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
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Branch Name<span class="text-danger">*</span></label>
                                                                        <asp:DropDownList ID="ddlBranchName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">Employee Type</label>
                                                                        <asp:DropDownList ID="ddlEmployeeType" runat="server" CssClass="form-control text-uppercase"
                                                                            OnTextChanged="ddlEmployeeType_TextChanged" AutoPostBack="true">
                                                                            <asp:ListItem Text="Self Employee" Value="SELF EMPLOYEE"></asp:ListItem>
                                                                            <asp:ListItem Text="3PL Employee" Value="3PL EMPLOYEE"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div id="divEmployeeName" runat="server" class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Employee Name<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                        <%--<asp:RequiredFieldValidator ID="rfv_txtEmployeeName" runat="server" ControlToValidate="txtEmployeeName"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Employee can not be blank"
                                                                            ValidationGroup="save" Font-Size="8pt">
                                                                        </asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtEmployeeName" runat="server"
                                                                            PopupPosition="BottomRight" Enabled="True" TargetControlID="rfv_txtEmployeeName">
                                                                        </AjaxTools:ValidatorCalloutExtender>--%>
                                                                        <AjaxTools:AutoCompleteExtender OnClientPopulated="onListPopulated"
                                                                            runat="server" ID="ace_Employee" BehaviorID="ace_Employee" CompletionInterval="10"
                                                                            CompletionListCssClass="autocomplete_completionListElement"
                                                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                                                            CompletionListItemCssClass="autocomplete_listItem"
                                                                            DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                                            MinimumPrefixLength="1" ServiceMethod="GetActivetEmployeeByOfficeHelp" ServicePath="~/WService.asmx"
                                                                            TargetControlID="txtEmployeeName" UseContextKey="true">
                                                                        </AjaxTools:AutoCompleteExtender>
                                                                    </div>
                                                                </div>
                                                                <div id="div3PLEmployeeName" runat="server" class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">3PL Employee Name</label>
                                                                        <asp:TextBox ID="txt3PLEmployeeName" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();" ></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label class="">Skill Type</label>
                                                                        <asp:DropDownList ID="ddlSkillType" runat="server" CssClass="form-control text-uppercase">
                                                                            <asp:ListItem Selected="True" Value="SELECT" Text="SELECT"></asp:ListItem>
                                                                            <asp:ListItem Value="WORK" Text="WORK"></asp:ListItem>
                                                                            <asp:ListItem Value="BEHAVIOUR" Text="BEHAVIOUR"></asp:ListItem>
                                                                        </asp:DropDownList> 
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 pt-2 mt-3">
                                                                    <asp:Button ID="btnProcess" runat="server" OnClick="btnProcess_Click" CssClass="btn btn-info" Text="Process"></asp:Button>
                                                                </div>
                                                            </div>
                                                            <div class="row" visible="false" id="divSave" runat="server">
                                                                <div class="col-md-12" style="padding-left: 1px; padding-right: 1px;">
                                                                    <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="width:80vw;">
                                                                        <asp:GridView ID="grdTransaction" runat="server" AllowPaging="false"
                                                                            AutoGenerateColumns="false"
                                                                            Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="CategoryID"
                                                                            AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                            CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px">
                                                                            <Columns>
                                                                                <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                                    <ItemTemplate>
                                                                                        <%#Container.DataItemIndex+1 %>
                                                                                    </ItemTemplate>
                                                                                    <HeaderStyle Wrap="false" />
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Skill Category">
                                                                                    <ItemTemplate>
                                                                                       
                                                                                        <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("Skill Category")%>'></asp:Label>
                                                                                        <asp:Label ID="lblCategoryID" runat="server" Visible="false" Text='<%#Eval("CategoryID")%>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Skill Description">
                                                                                    <ItemTemplate>
                                                                                        <%#Eval("Skill Description")%>
                                                                                    </ItemTemplate>
                                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="true" />
                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" />
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Impact">
                                                                                    <ItemTemplate>
                                                                                        <%#Eval("Impact")%>
                                                                                    </ItemTemplate>
                                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="80px" />
                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" Width="80px" />
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Rating">
                                                                                    <ItemTemplate>
                                                                                        <AjaxTools:Rating ID="rtRating" runat="server" CurrentRating="0" MaxRating="5"
                                                                                            StarCssClass="starempty" FilledStarCssClass="starfilled" EmptyStarCssClass="starempty" WaitingStarCssClass="starwaiting">
                                                                                        </AjaxTools:Rating>
                                                                                    </ItemTemplate>
                                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="130px" />
                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="text-uppercase" Wrap="false" Width="130px" />
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
                                                                                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control text-capitalize" AutoComplete="off"></asp:TextBox>
                                                                                    </ItemTemplate>
                                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="true" Width="180px" />
                                                                                    <ItemStyle HorizontalAlign="Left" CssClass="" Wrap="false" Width="180px" />
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
                                                                    <input type="button" id="htmlSave" runat="server" class="btn btn-info" value="Save" onclick="DisableClick();" />
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
</asp:Content>
