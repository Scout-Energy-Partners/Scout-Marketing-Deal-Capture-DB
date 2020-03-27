<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DealCapture_Web_DEV.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>NGL View</title>
    <!-- Content needed for bootstrap -->
  <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
  <script src="Scripts/jquery-3.4.1.min.js"></script>
  <script src="Scripts/bootstrap.min.js"></script>
  <script src="Scripts/popper.min.js"></script>
</head>
<style>
    #frmHome{
        background-color: #CBA052;
    }
    .navbar{
        background-color:#98A4AE;
    }
    .navbar a{
        color:#CBA052;
    }
</style>
<body>
    <form id="frmHome" runat="server">

        <!-- Navigation Bar -->
        <div class="container-fluid">
                <nav class="navbar  navbar-expand-lg" >
                    <a href="#" class="navbar-brand">Scout
                        <img src="Content/Images/android-icon-192x192.png" alt="Scout Logo" />
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-label="Toogle Navigation">
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="Home.aspx" class="nav-link">Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="Upload.aspx" class="nav-link">Price Upload</a>
                            </li>
                            <li class="nav-item">
                                <a href="Ngl.aspx" class="nav-link">NGL View</a>
                            </li>
                            <li class="nav-item">
                                <a href="Oil.aspx" class="nav-link">Oil View</a>
                            </li>
                            <li class="nav-item">
                                <a href="Gas.aspx" class="nav-link">Gas View</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        <!-- Navigation Bar -->

        <div class="container-fluid" style="background-color:#CBA052">
            <div class="row">
                <div class="col-sm-12">

                </div>
            </div>

        </div>
        </form>
</body>
</html>
