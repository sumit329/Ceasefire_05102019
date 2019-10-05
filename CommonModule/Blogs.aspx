<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="CommonModule_Blogs, App_Web_e2av5fen" title="Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="col-md-4 col-sm-12 col-xs-12" style="padding-top: 16px;">
                            Fields with <span style="color: Red">*</span> mark are mandatory.
                        </div>
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <h3 class="headerhelpclasss">Intelligence/Blogs</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1%; text-align: left;">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1%; text-align: left;">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 294px; right: 397px; position: fixed; background-position: center; text-align: center;">
                                                    Please Wait....
                                                    <img src="../images/progressbarsmall.gif" alt="Loading" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                    <div class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Blogs Category
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:DropDownList ID="ddlBlogCategory" runat="server" CssClass="form-control"
                                                        Font-Bold="true" AutoPostBack="false">
                                                        <asp:ListItem Text="MARKET INTELLIGENCE" Value="MARKET INTELLIGENCE" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="ROUTINE COMMUNICATION" Value="ROUTINE COMMUNICATION"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    &nbsp;<span style="color: Red">*</span>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Subject
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtSubject" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                        onfocus="this.select();" CssClass="form-control">
                                                    </asp:TextBox>
                                                    &nbsp;<span style="color: Red">*</span>
                                                    <asp:RequiredFieldValidator ID="rfv_txtSubject" runat="server" ControlToValidate="txtSubject"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="Subject can not be blank !"
                                                        ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtSubject" runat="server" Enabled="True"
                                                        TargetControlID="rfv_txtSubject">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12" for="first-name">
                                                    Blogs For
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:DropDownList ID="ddlBlogsFor" runat="server" CssClass="form-control"
                                                        Font-Bold="true" AutoPostBack="True" OnSelectedIndexChanged="ddlBlogsFor_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    &nbsp;<font style="color: Red">*</font>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="lblBlogs" Text="Company/User Name" runat="server" CssClass="control-label col-md-4 col-sm-4 col-xs-12"></asp:Label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtBlogsFor" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                        onfocus="this.select();" CssClass="txtboxMedium width250"></asp:TextBox>
                                                    <AjaxTools:AutoCompleteExtender ID="ace_txtBlogsFor" runat="server" BehaviorID="ace_txtBlogsFor"
                                                        CompletionInterval="10" CompletionListCssClass="autocomplete_completionListElement"
                                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                        DelimiterCharacters="" EnableCaching="False" Enabled="True" FirstRowSelected="True"
                                                        MinimumPrefixLength="1" ServiceMethod="GetOfficeHelp" ServicePath="~/WService.asmx"
                                                        TargetControlID="txtBlogsFor" UseContextKey="false">
                                                    </AjaxTools:AutoCompleteExtender>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Blogs
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtBlogs" runat="server" Style="height: 100px;" AutoComplete="off"
                                                        TextMode="MultiLine" onfocus="this.select();" CssClass="form-control">
                                                    </asp:TextBox>
                                                    <span style="color: Red">*</span>
                                                    <asp:RequiredFieldValidator ID="rvf_txtBlogs" runat="server" ControlToValidate="txtBlogs"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="Blogs can not be blank !"
                                                        ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vce_txtBlogs" runat="server" Enabled="True"
                                                        TargetControlID="rvf_txtBlogs">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                </div>
                                            </div>
                                        </div>



                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:Button ID="btnAddCheck" runat="server" CssClass="btn btn-success" Enabled="False" Height="0px" Width="0px"
                                                        BorderStyle="None" />
                                                    <input class="btn btn-success" id="htmlSave"
                                                        onclick="DisableClick();" type="button" value="Save" name="htmlSave" runat="server" />
                                                    <asp:Button ID="btnSave" runat="server" Style="display: none" BackColor="#0E6794"
                                                        ForeColor="White" Height="0px" Width="0px" Text="" ValidationGroup="save" OnClick="btnSave_Click" />
                                                    <input class="btn btn-success" id="htmlUpdate"
                                                        onclick="DisableClickUpdate();" type="button" value="Update" name="htmlUpdate"
                                                        runat="server" />
                                                    <asp:Button ID="btnUpdate" runat="server" Style="display: none" BackColor="#0E6794"
                                                        ForeColor="White" Height="0px" Width="0px" Text="" ValidationGroup="save" OnClick="btnUpdate_Click" />
                                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-success"
                                                        OnClick="btnCancel_Click" />

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12" id="tblGrdAndButton" runat="server">
                            <div class="x_panel">

                                <div class="x_content">
                                    <div class="table-responsive">
                                        <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                            Width="100%" CssClass="grid-view" HeaderStyle-CssClass="header" RowStyle-CssClass="normal"
                                            AlternatingRowStyle-CssClass="alternate" DataKeyNames="BlogsID"
                                            AllowSorting="false" EmptyDataText="Record Not Available..."
                                            CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                            OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                            OnRowDeleting="grdMasterView_RowDeleting" OnRowEditing="grdMasterView_RowEditing"
                                            OnRowCreated="grdMasterView_RowCreated">
                                            <Columns>
                                                <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkView" runat="server" Text="View" CommandName="View" CommandArgument='<%#Eval("BlogsID")%>' />
                                                        &nbsp;|
                                                                        <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("BlogsID")%>' />
                                                        &nbsp;|
                                                                        <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="Delete"
                                                                            CommandArgument='<%#Eval("BlogsID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                TargetControlID="btnDelete">
                                                                            </AjaxTools:ConfirmButtonExtender>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" Wrap="false" CssClass="width90" />
                                                    <ItemStyle Wrap="false" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="SL#">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1 %>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="false" CssClass="width30" HorizontalAlign="Center" />
                                                    <ItemStyle CssClass="width30" HorizontalAlign="Center" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Blogs Category">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBlogsCategory" runat="server" Text='<%#Eval("Blogs Category")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="width120" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="width120" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Subject">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSubject" runat="server" Text='<%#Eval("Subject")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="width120" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="width120" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Blogs For">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBlogsFor" runat="server" Text='<%#Eval("Blogs For")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="width80" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="width80" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Company/User Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBlogsForName" runat="server" Text='<%#Eval("Company/User Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="width120" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="width120" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Blogs">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBlogs" runat="server" Text='<%#Eval("Blogs")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" CssClass="" VerticalAlign="Top" />
                                                    <ItemStyle HorizontalAlign="Left" CssClass="" />
                                                </asp:TemplateField>
                                            </Columns>
                                            <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                            <PagerStyle CssClass="pagerstyle" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="false" CssClass="header" />
                                            <RowStyle Wrap="false" CssClass="normal"/>
                                            <AlternatingRowStyle CssClass="alternate" />
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

        function DisableClickUpdate() {
            document.getElementById("<%=htmlUpdate.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlUpdate.ClientID %>").value = msg;
            document.getElementById("<%=btnUpdate.ClientID %>").click();
        }

    </script>

</asp:Content>

