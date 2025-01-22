{include file="head.tpl"}
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="bi bi-list"></i></a>
      </li>
    </ul>

    
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar elevation-4">
    <div class="border-bottom border-light" style="height: 200px; width: 100%; object-fit: cover;">
        <a href="/" class="brand-link" style="height: 200px; width: 100%; object-fit: cover;">
        <img
            src="/assets/images/yassine_clinic_logo.png"
            alt="yassine clinic Logo"
            class=""
            style="height: 100%; width: 100%; object-fit: cover;"
        />
        </a>
    </div>

    <!-- Sidebar -->
    <div class="sidebar">
      

      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item mb-2 p-2 {if $title == 'Dashboard'}active{/if}">
            <a href="/" class="nav-link text-light" >
            <svg class="nav-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" d="M11 4.68v3.88a2.45 2.45 0 0 1-1.509 2.258A2.409 2.409 0 0 1 8.56 11H4.68a2.44 2.44 0 0 1-2.43-2.44V4.69a2.44 2.44 0 0 1 2.43-2.44h3.88A2.44 2.44 0 0 1 11 4.68m10.75.01v3.87a2.41 2.41 0 0 1-.71 1.72a2.378 2.378 0 0 1-1.72.72h-3.88a2.45 2.45 0 0 1-2.256-1.502A2.4 2.4 0 0 1 13 8.56V4.69a2.391 2.391 0 0 1 .72-1.72a2.42 2.42 0 0 1 1.72-.72h3.88a2.44 2.44 0 0 1 2.43 2.44M11 15.45v3.87a2.44 2.44 0 0 1-2.44 2.43H4.68a2.45 2.45 0 0 1-1.72-.71a2.41 2.41 0 0 1-.71-1.72v-3.87a2.41 2.41 0 0 1 .71-1.72A2.47 2.47 0 0 1 4.68 13h3.88A2.46 2.46 0 0 1 11 15.45m10.75 1.93A4.37 4.37 0 1 1 17.37 13a4.4 4.4 0 0 1 4.049 2.707c.22.53.332 1.099.331 1.673"/></svg>
                <p>Dashboard</p>
            </a>
            </li>
            <li class="nav-item mb-2 p-2 {if $title == 'Patients Details'}active{/if}">
            <a href="/patients" class="nav-link text-light">
            <svg class="nav-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
<path fill="currentColor" d="M15.9 13.2c-.1 0-.1-.1-.2-.1C17.2 12 18 10.3 18 8.4v-.7l.3-2.4c.2-1.6-.9-3-2.4-3.3l-.9-.2c-2-.3-4-.3-6 0l-.8.2c-1.6.3-2.7 1.7-2.5 3.3L6 7.7v.7c0 1.8.8 3.6 2.3 4.7c-.1 0-.1.1-.2.1c-3.3 1.4-5.6 4.5-6 8.1c-.1.5.3 1 .9 1.1c.6.1 17.5 0 18 0h.1c.5-.1.9-.6.9-1.1c-.5-3.6-2.8-6.7-6.1-8.1zM12 16.3l-1.7-1.7c1.1-.2 2.2-.2 3.3 0L12 16.3zm0-3.9c-2.2 0-3.9-1.7-4-3.9h8c-.1 2.2-1.8 3.9-4 3.9z"/>
</svg>
                <p>Patients Details</p>
            </a>
            </li>
            <li class="nav-item mb-2 p-2 {if $title == 'Doctors Details'}active{/if}">
            <a href="#" class="nav-link text-light">
            <svg class="nav-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
<path fill="currentColor" d="M14 11.3c-1-1.9-2-1.6-3.1-1.7c.1.3.1.6.1 1c1.6.4 2 2.3 2 3.4v1h-2v-1h1s0-2.5-1.5-2.5S9 13.9 9 14h1v1H8v-1c0-1.1.4-3.1 2-3.4c0-.6-.1-1.1-.2-1.3c-.2-.1-.4-.3-.4-.6c0-.6.8-.4 1.4-1.5c0 0 .9-2.3.6-4.3h-1c0-.2.1-.3.1-.5s0-.3-.1-.5h.8C10.9.9 9.9 0 8 0C6.1 0 5.1.9 4.7 2h.8c0 .2-.1.3-.1.5s0 .3.1.5h-1c-.2 2 .6 4.3.6 4.3c.6 1 1.4.8 1.4 1.5c0 .5-.5.7-1.1.8c-.2.2-.4.6-.4 1.4v1.2c.6.2 1 .8 1 1.4c0 .7-.7 1.4-1.5 1.4S3 14.3 3 13.5c0-.7.4-1.2 1-1.4v-1.2c0-.5.1-.9.2-1.3c-.7.1-1.5.4-2.2 1.7c-.6 1.1-.9 4.7-.9 4.7h13.7c.1 0-.2-3.6-.8-4.7zM6.5 2.5C6.5 1.7 7.2 1 8 1s1.5.7 1.5 1.5S8.8 4 8 4s-1.5-.7-1.5-1.5z"/>
<path fill="currentColor" d="M5 13.5a.5.5 0 1 1-1 0a.5.5 0 0 1 1 0z"/>
</svg>
                <p>Doctors Details</p>
            </a>
            </li>
            <li class="nav-item mb-2 p-2 {if $title == 'Payments Details'}active{/if}">
            <a href="#" class="nav-link text-light">
                <i class="nav-icon bi bi-credit-card"></i>
                <p>Payments Details</p>
            </a>
            </li>
            <li class="nav-item mb-2 p-2 {if $title == 'Echanneling'}active{/if}">
                <a href="#" class="nav-link text-light">
                <i class="nav-icon bi bi-activity"></i>
                <p>Echanneling</p>
            </a>
            </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="text-primary font-weight-bold">Yassine Clinic <br> <span class="text-muted">{$title}</span></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item active">{$title}</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    {block name=content}
    {/block}
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
</div>
<!-- ./wrapper -->


{include file="footer.tpl"}