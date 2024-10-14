<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
      <link rel="stylesheet" href="assets/css/form.css">    
     <script src="assets/js/TMForm.js"></script>
     <script>
         jQuery(function () {
             $().UItoTop({ easingType: 'easeOutQuart' });
         });
     </script>
   
    <style id='yp'>
        .rd-navbar-main #rd-navbar-nav-wrap-1 > ul > li.rd-nav-item > a.active { color:#c19b76;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--=======content================================-->

<section id="content">
    <div class="container_12">
        <div class="grid_5 marg_3">
            <h2>Address</h2>
    <figure class="figure">
    <a href="https://www.google.com/maps/place/Aranya+Vihar,+Kandoli,+Saundhon+wali,+Chironwali,+Dehradun,+Uttarakhand+248001/@30.3428182,78.0694074,15z/data=!3m1!4b1!4m6!3m5!1s0x3909282937d087ef:0xc51426a08a973854!8m2!3d30.3428182!4d78.0694074!16s%2Fg%2F11b6zrrkw_?entry=ttu" target="_blank" rel="noopener noreferrer">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3443.2860910519985!2d78.06940741022804!3d30.342818204268664!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3909282937d087ef%3A0xc51426a08a973854!2sAranya%20Vihar%2C%20Kandoli%2C%20Saundhon%20wali%2C%20Chironwali%2C%20Dehradun%2C%20Uttarakhand%20248001!5e0!3m2!1sen!2sin!4v1724130063721!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </a>
</figure>
            



            <p class="cont_info" style="color:black">
                <span class="title">722/1 Aranya Vihar, Dharampur, <br/>
                Dehradun, Uttarakhand (248001).</span>
                 <span class="">Telephone:</span> <a href="tel:+917393940477">+91 7393940477</a><br/>
               <%-- <span class="width1">FAX:</span> +1 504 889 9898<br/>--%>
                <span class="width2">E-mail:</span> <a href="mailto:anjalijosh82@gmail.com" class="link_3 animate it" style="color:darkslateblue">anjalijosh82@gmail.com</a>
            </p>
        </div>
        <div class="grid_7 marg_3">
            <h2><span>Contact</span> Form</h2>
         <div class="rd-form rd-mailform">
             <asp:ScriptManager runat="server" ID="ScriptManager1" />
                    <asp:UpdatePanel  runat="server">
                    <ContentTemplate>
                    <div class="row row-10">
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                              <label class="form-label-outside" for="contact-last-name" style="color:black">First Name</label>
                          <asp:TextBox runat="server" ID="txtname" CssClass="form-control"  MaxLength="20" oninput="validateTextInput(this)"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="txtname" ErrorMessage="Enter First Name" style="color: Red;" ValidationGroup="contact" CssClass="contactValidator">
                                </asp:RequiredFieldValidator>
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-last-name" style="color:black" >Last Name</label>
                          <asp:TextBox runat="server" ID="txtlname" CssClass="form-control" MaxLength="20" oninput="validateTextInput(this)"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter Last Name" style="color: Red;" ValidationGroup="contact" CssClass="contactValidator">
                         </asp:RequiredFieldValidator>
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-email" style="color:black">E-mail</label>
                          <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" ErrorMessage="Email must end with @gmail.com." ValidationExpression="^[a-zA-Z0-9._%+-]+@gmail\.com$" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email" style="color: Red;" ValidationGroup="contact" CssClass="contactValidator">
  </asp:RequiredFieldValidator></div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-phone" style="color:black">Phone</label>
                          <asp:TextBox runat="server" ID="txtphone" CssClass="form-control"  MaxLength="10" oninput="validatePhoneNumber(this)"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Mobile No." style="color: Red;" ValidationGroup="contact" CssClass="contactValidator">
                    </asp:RequiredFieldValidator>
                            </div>
                      </div>
                      <div class="col-12 wow-outer p-3">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-message" style="color:black">Your Message</label>
                          <asp:TextBox runat="server" ID="txtmsg" Rows="4" CssClass="form-control" maxlenth="150"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmsg" ErrorMessage="Enter your message" style="color: Red;" ValidationGroup="contact" CssClass="contactValidator">
                       </asp:RequiredFieldValidator>
                        </div>
                      </div>
                      
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                         <asp:label id="lblStopSpam" runat="server" style="font-size:20px; color:black;padding: 4px 20px;text-align:center" CssClass="form-control"></asp:label> 
                
                         </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                         <asp:TextBox runat="server" id="txtStopSpam" CssClass="form-control" MaxLength="7" placeholder="Enter Captcha" TextMode="Number"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtStopSpam" ErrorMessage="Enter valid captch" style="color: Red;" ValidationGroup="contact" CssClass="contactValidator">
</asp:RequiredFieldValidator>
                         <asp:Label ID="lblsum" runat="server" Visible="false"></asp:Label>
                        </div>
                      </div>
                    </div><br />
                    <div class="group group-middle">
                         <asp:Label ID="lblErrorMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label> 
                      <div class="wow-outer">
                       <asp:Button runat="server" Text="Send Message" ID="btnsend" OnClick="btn_SendMsg" ValidationGroup="contact" CssClass="button button-primary button-winona wow slideInRight" style="background-color:#ffcccc; border-radius:3px;"/>
           
                      </div>
                    </div>
                    </ContentTemplate>
                       </asp:UpdatePanel>
                    </div>
     </div>
    </asp:Panel>
        
        </div>
        <div class="clearfix"></div>
    </div>
  
</section>
    <script src="assets/js/formvalidation.js"></script>

 
</asp:Content>

