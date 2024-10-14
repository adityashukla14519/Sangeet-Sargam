<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Plan.aspx.cs" Inherits="Plan" %>
<%@Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="assets/css/touchTouch.css">
  <link href="assets/css/popup.css" rel="stylesheet" />
 <style>
 #plan
 {
     box-shadow: 1px 5px 20px #bcadad;
    border: 1px solid #e8dada;
    border-radius: 15px;
     }
     #plan h3
     {
             font-size: 18px;
    padding: 20px;
    text-align: center;
    color: #29d4e2;
    font-weight: 500;
     }
     #plan h4
     {
               font-size: 14px;   
    text-align: center;
    color: #101212;
     }
      .lines
     {
             margin: 20px 0 10px 30px;
             border: none;
    height: 3px;
    color: #241f1f;
    background-color: #f2f2f2;
    width: 80%;
     }
     #plan p
     {
         padding: 15px;
    text-align: center;
     }
     .button1
     {
         width: 90%;   
    margin: 15px;
        padding: 15px;
    background: #447f61;
     }
     .container_12 .grid_4 {
    width: 295px;
}
 </style>
     <script type="text/javascript">
        function openPopup() {
            document.getElementById('popupOverlay').style.display = 'block';
            document.getElementById('popupForm').style.display = 'block';
        }

        function closePopup() {
            document.getElementById('popupOverlay').style.display = 'none';
            document.getElementById('popupForm').style.display = 'none';
        }
     </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
<!--=======content================================-->
   
    <!-- Popup form -->
    <div class="popup-overlay" id="popupOverlay"></div>
     <asp:ScriptManager ID="ScriptManager1" 
                               runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1"
                             runat="server">
                <ContentTemplate>
    <div class="popup" id="popupForm">
        <span class="close-btn" onclick="closePopup()">&times;</span>
        <h4>Enquiry Now</h4>     
            <asp:TextBox ID="txtname" runat="server" CssClass="form-input" placeholder="Your Name"></asp:TextBox>
             <asp:RequiredFieldValidator ID="vldname" ControlToValidate="txtname" runat="server"  Display = "Dynamic" ValidationGroup="contact" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder="Your Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldemail" ControlToValidate="txtEmail" runat="server"  Display = "Dynamic" ValidationGroup="contact" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="vldmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic" ErrorMessage = "Invalid email address"/>                          
           <asp:TextBox runat="server" ID="txtphone" CssClass="form-input" placeholder="Your Number"></asp:TextBox>
            <cc2:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" FilterType="Numbers" runat="server" TargetControlID="txtphone"></cc2:FilteredTextBoxExtender>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtphone"  Display = "Dynamic" ValidationGroup="contact" runat="server" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                       
            <asp:TextBox ID="txtprices" runat="server" CssClass="form-input" placeholder="Your Plan Price"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldprices" ControlToValidate="txtprices" runat="server"  Display = "Dynamic" ValidationGroup="contact" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:TextBox ID="txtMessage" runat="server" CssClass="form-input" TextMode="MultiLine" Rows="4" placeholder="Your Message"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtMessage" runat="server"  Display = "Dynamic" ValidationGroup="contact" ErrorMessage=" The text field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="form-button" ValidationGroup="contact" OnClick="Submit_Click" />
        
    </div>
      </ContentTemplate>
            </asp:UpdatePanel>
    <!--end popup code--->
  <section id="content">
    <div class="container_12">
        <div class="grid_12">
            <h2 class="corr_1" style="text-align:center">Choose Your Pricing Plan</h2>
             <ul class="list_4">         
                <li class="grid_4 alpha">
                    <div class="thumbnail" id="plan">
                    <h3>Private Sessions - 60 min</h3>   
                     <h4>Indian National: Rs. 750/-<br /> Foreign National: USD 15/-</h4>  
                     <hr class="lines"/>

                     <p>Three months packages (Two sessions of 60 minutes per week )<br /> Indian National: Rs. 15000/-<br /> Foreign National: USD 300/-</p>
                      <a class="button1" href="javascript:void(0);" onclick="openPopup()">Buy Now</a>
                    </div>
                </li>  
                <li class="grid_4">
                    <div class="thumbnail" id="plan">
                    <h3>Private Sessions - 60 min</h3>   
                     <h4>Indian National: Rs. 750/-<br /> Foreign National: USD 15/-</h4>  
                     <hr class="lines"/>

                     <p>Three months packages (Two sessions of 60 minutes per week )<br /> Indian National: Rs. 15000/-<br /> Foreign National: USD 300/-</p>
                       <a class="button1" href="javascript:void(0);" onclick="openPopup()">Buy Now</a>
                    </div>
                </li>
                <li class="grid_4">
                    <div class="thumbnail" id="plan">
                    <h3>Private Sessions - 60 min</h3>   
                     <h4>Indian National: Rs. 750/-<br /> Foreign National: USD 15/-</h4>  
                     <hr class="lines"/>

                     <p>Three months packages (Two sessions of 60 minutes per week )<br /> Indian National: Rs. 15000/-<br /> Foreign National: USD 300/-</p>
                       <a class="button1" href="javascript:void(0);" onclick="openPopup()">Buy Now</a>
                    </div>
                </li>                  
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>  
</section>
  
</asp:Content>

