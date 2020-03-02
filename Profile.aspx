<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 428px;
            height: 199px;
        }
        .auto-style8 {
            width: 457px;
            height: 199px;
        }
        .auto-style9 {
            width: 457px;
            height: 201px;
        }
        .auto-style10 {
            width: 428px;
            height: 201px;
        }
        .auto-style13 {
            width: 360px;
            height: 151px;
        }
        .auto-style16 {
            width: 381px;
            height: 166px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style17 {
            width: 365px;
            height: 179px;
        }
        .auto-style18 {
            width: 457px;
            height: 193px;
        }
        .auto-style19 {
            width: 428px;
            height: 193px;
        }
        .auto-style20 {
            width: 457px;
            height: 213px;
        }
        .auto-style21 {
            width: 428px;
            height: 213px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        <div style="height:150px;text-align:center;color:azure;background-color:peachpuff;">
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="CURRENT DATE AND TIME:" ForeColor="#009933"></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="serverdateandtimelbl" runat="server" Text="Label" ForeColor="#009933"></asp:Label>
            <br />
              <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton6" runat="server" Font-Underline="False" ForeColor="#666633" OnClick="LinkButton6_Click1" >Go To Dashboard</asp:LinkButton>
              <br />

            <asp:Label ID="usernamelbl" runat="server" Text="Label" style="text-align:center;text-transform:uppercase;" ForeColor="#0033CC"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            </div>
    <div style="text-align:center; background-color:lightcoral;">
            <table style="height: 745px">
                <tr>
                    <td class="auto-style9">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" OnClick="LinkButton1_Click" ForeColor="#666633">PERSONAL INFORMATION</asp:LinkButton>
                    </td>
                    <td class="auto-style10">
                        <img alt="Personal Information" class="auto-style13" src="Images/download.jpg" style="border-radius:50%"/></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Underline="False" ForeColor="#666633">CHANGE PASSWORD</asp:LinkButton>
                    </td>
                    <td class="auto-style19">
                        <img src="Images/change-your-password-EJ9KGJ.jpg" style="height: 164px; width: 388px; margin-top: 0px;border-radius:50%; margin-left: 21px;" /></td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" OnClick="LinkButton5_Click" ForeColor="#666633">GET SALARY REPORT</asp:LinkButton>
                    </td>
                    <td class="auto-style21">
                        <img alt="Salary" class="auto-style16" src="Images/salary.jpg" style="border-radius:50%"/></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" OnClick="LinkButton4_Click" ForeColor="#666633">UPDATE RESUME</asp:LinkButton>
                    </td>
                    <td class="auto-style7">
                        <img alt="File Upload" class="auto-style17" src="Images/file-upload-icon.jpg" style="border-radius:50%"/></td>
                </tr>
            </table>
        </div>
        </asp:Content>


