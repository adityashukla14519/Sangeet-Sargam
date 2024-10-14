<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Offering.aspx.cs" Inherits="Offering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
<div class="container">
    <div class="row justify-content-center align-items-center full-height">
        <div class="col-md-4"></div>
        
        <div class="col-md-4"></div>
    </div>
</div>
    <section id="content">
    <div class="container_12">
        <div class="grid_12">
    <div class="text-center button-containers">
    <a href="#" class="cta-buttons"><br /><br />
        <h2 class="cta-text" >Offerings</h2>
    </a>
</div>
  <div class="text-center button-container">
    <a href="Plan.aspx" class="cta-button">
        <h4 class="cta-text" style="color:white">Buy a Plan</h4>
    </a>
    <a href="Contact.aspx" class="cta-button">
        <h4 class="cta-text" style="color:white">Request a Demo</h4>
    </a>
</div><br /><br />
            <ul class="list_4">
               <div class="image-gallery">
        <asp:Repeater ID="gvSongs" runat="server">
            <ItemTemplate>
                <li class="gallery-item">
                    <div class="image-container">
                        <a href='<%# Eval("Title") %>'>
                            <img alt="Gallery Image" src='<%# ResolveUrl("~/Upload/GalleryImage/" + Eval("Album")) %>' 
            class="basic-shadows"/>
                        </a>
                        <div class="play-icon" data-musicpath='<%# Eval("MusicPath") %>'>
                            <i><img src="assets/images/Playbgremove.png" style="height:70px;width:70px"/></i>
                        </div>
                        <div class="caption-container">
                            <h4><b><a href="#" class="caption-title"><%# Eval("Title") %></a></b></h4>
                            <span class="caption-subtitle"><b><a href="#" class="link_1 caption-subtitle"><%# Eval("SubTitle") %></a></b></span>
                        </div>
                    </div>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </div>
        </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</section>

<!-- Modal Structure -->
<div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true" style="margin-top:80px;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="videoModalLabel">Music Player</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <iframe id="videoFrame" width="460" height="315" src="" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Attach click event listener to all play icons
        document.querySelectorAll('.play-icon').forEach(function (playIcon) {
            playIcon.addEventListener('click', function () {
                // Get the music path from the data attribute
                var musicPath = this.getAttribute('data-musicpath');
                var iframeSrc;

                try {
                    // Handle different URL formats for YouTube
                    if (musicPath.includes("youtu.be")) {
                        // Convert youtu.be URL to embed URL
                        var videoId = musicPath.split('/').pop().split('?')[0];
                        iframeSrc = 'https://www.youtube.com/embed/' + videoId;
                    } else if (musicPath.includes("youtube.com")) {
                        // Extract video ID from full YouTube URL
                        var url = new URL(musicPath);
                        var videoId = url.searchParams.get('v');
                        iframeSrc = 'https://www.youtube.com/embed/' + videoId;
                    } else {
                        // Assume it's a direct link to a media file
                        iframeSrc = musicPath;
                    }

                    // Update the iframe src and show the modal
                    document.getElementById('videoFrame').src = iframeSrc;
                    $('#videoModal').modal('show');
                } catch (e) {
                    console.error('Error processing URL: ', e);
                    alert('An error occurred while processing the video. Please try again.');
                }
            });
        });

        // Optional: Clear the iframe src when the modal is hidden
        $('#videoModal').on('hidden.bs.modal', function () {
            document.getElementById('videoFrame').src = '';
        });
    });
</script>





    <link href="assets/css/offeringview.css" rel="stylesheet" />
</asp:Content>

