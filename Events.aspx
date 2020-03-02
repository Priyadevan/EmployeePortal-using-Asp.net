<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 198px;
            height: 307px;
        }
        .auto-style18 {
            width: 174px;
            height: 307px;
        }
        .auto-style19 {
            height: 86px;
        }
        .auto-style20 {
            width: 211px;
            height: 307px;
        }
        .auto-style21 {
            width: 210px;
            height: 307px;
        }
        .auto-style22 {
            width: 178px;
            height: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        <div style="height:130px;text-align:center;  background-color:aquamarine;">
            <br />
            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="CURRENT DATE AND TIME:" ForeColor="#009933"></asp:Label>
&nbsp;<asp:Label ID="serverdateandtimelbl" runat="server" Text="Label" ForeColor="#009933"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" OnClick="LinkButton1_Click" ForeColor="#666633">Dashboard</asp:LinkButton>
            <br />
              <br />
              <br />
              
            <asp:Label ID="Label1" runat="server" Text="EVENTS" text-align="center" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
            <br />
        </div>
        <div>
            
            <table>
                <tr style= "text-align:center;background-color:burlywood">
                    <td class="auto-style19" colspan="3" >PAST EVENTS</td>
                    <td class="auto-style19" colspan="2">UPCOMING EVENTS</td>
                </tr>
                <tr style= "text-align:center;background-color:blanchedalmond">
                    <td class="auto-style20" style= "text-align:center;background-color:blanchedalmond">JAMstack<br />
                        <br />
                        DEVELOPER BOOTCAMP<br />
                        Full-Day JAMstack workshop<br />
                        <br />
                        Join us for this hands-on full day intermediate level workshop covering JAMstack architechture. Be sure to also check out our Spotlight JAMstack event 
                        <br />
                        <br />
                        On Thursday i.e. Jan 30th 2020.</td>
                    <td class="auto-style14">FITC Toronto 2020<br />
                        <br />
                        The Technology &amp; Creativity Conference<br />
                        FITC Toronto is a three day professional celebration of the best the world has to offer in design,web development,media and innovation in creative technologies.<br />
                        <br />
                        On Feb 12th 2020.</td>
                    <td class="auto-style22">About GOTO Amsterdem<br />
                        <br />
                        This year&#39;s theme:Good&nbsp; Old Plain Programming...<br />
                        <br />
                        GOTO Amsterdam 2020 will gather the pioneers and game-changing coders who shape our industry and radically improve the way we look at software.<br />
                        <br />
                        On March 1st 2020.</td>
                    <td class="auto-style21">Lead Dev San Francisco is a two day conference packed full of inspirational and practical sessions from the world&#39;s top technical leaders,focussed around three core themes:<br />
                        <br />
                        Teams<br />
                        Technology<br />
                        Tools<br />
                        <br />
                        On March 24th 2020.</td>
                    <td class="auto-style18">WEI International Academic Conference On Business,Economics,Management and Finance(Harvard Faculty Club,Boston,USA)<br />
                        provide a platform for academics,researchers, and administrators to put forward ideas!!!<br />
                        <br />
                        On July 27-30,2020.</td>
                </tr>
            </table>
            
    </div>
        </asp:Content>


