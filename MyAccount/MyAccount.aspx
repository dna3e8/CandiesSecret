<%@ Page Title="My Account" Language="C#" MasterPageFile="~/2colSSL.master" AutoEventWireup="true"
    CodeFile="MyAccount.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="Server">
    <div>
        <h1>
            Account Information</h1>
        <p>
            Enter the informatoin in the feilds. Requireed feilds are marked with *
        </p>
    </div>
    <div>
        <!-- Validtion Summary control here -->
    </div>
    <div>
        <asp:Panel ID="ContactPNL" runat="server" GroupingText="Contact Information: *">
            <ol>
                <li class="formleft">
                    <asp:Label ID="FNameLBL" runat="server"><span style="text-decoration:underline;">F</span>irst Name:</asp:Label>
                    <asp:TextBox ID="FNameTXT" SkinID="required" AccessKey="F" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FNameRQV" runat="server" ControlToValidate="FNameTXT"
                        ErrorMessage="First Name is required" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="FNameRegV" runat="server" ControlToValidate="FNameTXT"
                        ErrorMessage="Not valid first name" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"
                        Display="Dynamic">*</asp:RegularExpressionValidator>
                </li>
                <li class="formright">
                    <asp:Label ID="LNameLBL" runat="server"><span style="text-decoration:underline;">L</span>ast Name:</asp:Label>
                    <asp:TextBox ID="LNameTXT" SkinID="required" AccessKey="L" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LNameRQV" ControlToValidate="LNameTXT" runat="server"
                        ErrorMessage="Last Name is Required" Display="Dynamic">*</asp:RequiredFieldValidator>
                </li>
                <li class="formleft">
                    <asp:Label ID="StreetAddrLBL" runat="server" Text="Street Addr:"></asp:Label>
                    <asp:TextBox ID="StreetAddr" SkinID="required" runat="server"></asp:TextBox>
                </li>
                <li class="formright">
                    <asp:Label ID="PhoneLBL" runat="server" Text="Phone:"></asp:Label>
                    <asp:TextBox ID="PhoneTXT" runat="server"></asp:TextBox>
                </li>
                <li class="formleft">
                    <asp:Label ID="CityLBL" runat="server" Text="City:"></asp:Label>
                    <asp:TextBox ID="CityTXT" SkinID="required" runat="server"></asp:TextBox>
                </li>
                <li class="formright">
                    <asp:Label ID="StateLBL" runat="server" Text="State:"></asp:Label>
                    <!-- Add DropDownList for States here -->
                    <asp:DropDownList ID="StateDDL" runat="server" DataSourceID="XmlDataSource1" DataTextField="name"
                        DataValueField="value">
                    </asp:DropDownList>
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Code/SexualPref.xml"
                        XPath="States/State"></asp:XmlDataSource>
                </li>
            </ol>
        </asp:Panel>
        <br />
        <asp:Panel ID="AddtlInfo" runat="server" GroupingText="Additional Infromation">
            <ol>
                <li class="formleft">
                    <asp:Label ID="FavoriteColorLBL" runat="server">Fav. Color:</asp:Label>
                    <asp:TextBox ID="FavoriteColorTXT" runat="server"></asp:TextBox>
                </li>
                <li class="formright">
                    <asp:Label ID="BirthdayLBL" runat="server">Birthday:</asp:Label>
                    <asp:TextBox ID="BirthdayTXT" runat="server"></asp:TextBox>
                </li>
                <li class="formleft">
                    <asp:Label ID="AnniversaryLBL" runat="server" Text="Anniversary:"></asp:Label>
                    <asp:TextBox ID="AnniversaryTXT" runat="server"></asp:TextBox>
                </li>
                <li class="formright">
                    <asp:Label ID="AgLBL" runat="server" Text="Age:"></asp:Label>
                    <asp:TextBox ID="AgeTXT" runat="server"></asp:TextBox>
                </li>
                <li class="formleft">
                    <asp:Label ID="IncomeLBL" runat="server" Text="Income:"></asp:Label>
                    <asp:DropDownList ID="IncomeDDL" runat="server">
                        <asp:ListItem Selected="True">None</asp:ListItem>
                        <asp:ListItem><20K</asp:ListItem>
                        <asp:ListItem>20K-30K</asp:ListItem>
                        <asp:ListItem>30K-50K</asp:ListItem>
                        <asp:ListItem>30K-90K</asp:ListItem>
                        <asp:ListItem>30K-90K</asp:ListItem>
                        <asp:ListItem>>90K</asp:ListItem>
                    </asp:DropDownList>
                </li>
                <li class="formright">
                    <asp:Label ID="SexualPrefLBL" runat="server" Text="Sexual Pref:"></asp:Label>
                    <asp:DropDownList ID="SexalPrefDDL" runat="server">
                        <asp:ListItem>Gay Lesbian</asp:ListItem>
                        <asp:ListItem>Straight</asp:ListItem>
                        <asp:ListItem>Bisexual</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </li>
                <li class="formsm">
                    <asp:Label ID="GenderLBL" runat="server" Text="Gender:"></asp:Label>
                </li>
                <li class="formlg">
                    <asp:RadioButtonList ID="GenderRBL" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Transgender</asp:ListItem>
                    </asp:RadioButtonList>
                </li>
                <li class="formsm">
                    <asp:Label ID="RelationshipLBL" runat="server" Text="Relationship:"></asp:Label>
                </li>
                <li class="formlg">
                    <asp:RadioButtonList ID="RelationshipRDB" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Married</asp:ListItem>
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Divorced</asp:ListItem>
                    </asp:RadioButtonList>
                </li>
                <li class="formsm">
                    <asp:Label ID="RentingOwnLBL" runat="server" Text="Renting/Own:"></asp:Label>
                </li>
                <li class="formlg">
                    <asp:RadioButtonList ID="RentOwnRBL" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Renting</asp:ListItem>
                        <asp:ListItem>Own</asp:ListItem>
                    </asp:RadioButtonList>
                </li>
                <li class="formsm">
                    <asp:Label ID="EducationLBL" runat="server" Text="Education:"></asp:Label>
                </li>
                <li class="formlg">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Hihg School</asp:ListItem>
                        <asp:ListItem>Collage</asp:ListItem>
                        <asp:ListItem>Post Collage</asp:ListItem>
                    </asp:RadioButtonList>
                </li>
                <li class="formsm">
                    <asp:Label ID="ChildrenLBL" runat="server" Text="Children's Ages:"></asp:Label>
                </li>
                <li class="formlg">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>0-5yrs</asp:ListItem>
                        <asp:ListItem>5-10yrs</asp:ListItem>
                        <asp:ListItem>11-19yrs</asp:ListItem>
                        <asp:ListItem>20-40yrs</asp:ListItem>
                    </asp:CheckBoxList>
                </li>
                <li class="formleft">
                    <asp:Label ID="CommentLBL" runat="server" Text="Comment:"></asp:Label>
                </li>
                <li class="formright">
                    <asp:Panel ID="CommentPNL" runat="server">
                        <asp:TextBox ID="CommentTXT" SkinID="Comment" runat="server" TextMode="MultiLine"
                            Rows="3">
                        </asp:TextBox>
                    </asp:Panel>
                </li>
            </ol>
        </asp:Panel>
        <div class="formleft">
            <asp:Button ID="SubmitBTN" runat="server" Text="Submit"  />
        </div>
        <div class="formright">
            <asp:Button ID="CancelBTN" runat="server" Text="Cancel" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RightContent" runat="Server">
</asp:Content>
