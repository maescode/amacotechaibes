
        <div id="page-container" class="sidebar-o sidebar-dark enable-page-overlay side-scroll page-header-fixed page-header-dark main-content-narrow">
            

           
            <nav id="sidebar" aria-label="Main Navigation">
                <!-- Side Header -->
                <div class="content-header bg-white-5">
                    <!-- Logo -->
                    <a class="font-w600 text-dual" href="">
                        <span class="smini-visible">
                            <i class="fa fa-circle-notch text-primary"></i>
                        </span>
                        <span class="smini-hide font-size-h5 tracking-wider">
                            Hi, ADMIN!
                        </span>
                    </a>
                    <!-- END Logo -->

                    <!-- Extra -->
                    <div>
                       

                        <!-- Close Sidebar, Visible only on mobile screens -->
                        <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                        <a class="d-lg-none btn btn-sm btn-dual ml-1" data-toggle="layout" data-action="sidebar_close" href="javascript:void(0)">
                            <i class="fa fa-fw fa-times"></i>
                        </a>
                        <!-- END Close Sidebar -->
                    </div>
                    <!-- END Extra -->
                </div>
                <!-- END Side Header -->

                <!-- Sidebar Scrolling -->
                <div class="js-sidebar-scroll">
                    <!-- Side Navigation -->
                    <div class="content-side">
                        <ul class="nav-main">

                            <li class="nav-main-item">
                                <a class="nav-main-link <?php if(basename($_SERVER['PHP_SELF'])=='blogs.php'){ echo "active";}?>" href="blogs.php">
                                    <i class="nav-main-link-icon si si-note"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">News</font></b></span>
                                </a>
                            </li>

                            <hr>

                            <li class="nav-main-item">
                                <a class="nav-main-link <?php if(basename($_SERVER['PHP_SELF'])=='article.php'){ echo "active";}?>" href="article.php">
                                    <i class="nav-main-link-icon si si-note"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">Articles</font></b></span>
                                </a>
                            </li>

                            <hr>

                            <li class="nav-main-item">
                                <a class="nav-main-link <?php if(basename($_SERVER['PHP_SELF'])=='notice.php'){ echo "active";}?>" href="notice.php">
                                    <i class="nav-main-link-icon si si-grid"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">NOTICE</font></b></span>
                                </a>
                            </li>

                            <hr>

                            

                            <li class="nav-main-item">
                                <a class="nav-main-link <?php if(basename($_SERVER['PHP_SELF'])=='newsletter.php' || basename($_SERVER['PHP_SELF'])=='send-newsletter.php'){ echo "active";}?>" href="newsletter.php">
                                    <i class="nav-main-link-icon si si-badge"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">NEWSLETTER</font></b></span>
                                </a>
                            </li>

                            <hr>

                            <li class="nav-main-item">
                                <a class="nav-main-link <?php if(basename($_SERVER['PHP_SELF'])=='video.php'){ echo "active";}?>" href="video.php">
                                    <i class="nav-main-link-icon si si-puzzle"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">VIDEO</font></b></span>
                                </a>
                            </li>

                            <hr>

                            <li class="nav-main-item">
                                <a class="nav-main-link <?php if(basename($_SERVER['PHP_SELF'])=='gallery.php'){ echo "active";}?>" href="gallery.php">
                                    <i class="nav-main-link-icon si si-picture"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">GALLERY</font></b></span>
                                </a>
                            </li>

                            <hr>

                            <li class="nav-main-item">
                                <a class="nav-main-link <?php if(basename($_SERVER['PHP_SELF'])=='admin.php'){ echo "active";}?>" href="admin.php">
                                    <i class="nav-main-link-icon si si-user"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">ADMIN</font></b></span>
                                </a>
                            </li>

                            <hr>

                            
                            <li class="nav-main-item">
                                <a class="nav-main-link" href="./includes/logout.php">
                                    <i class="nav-main-link-icon si si-lock"></i>
                                    <span class="nav-main-link-name"><b><font face="candara">LOGOUT</font></b></span>
                                </a>
                            </li>

                             

                            
                        </ul>
                    </div>
                    <!-- END Side Navigation -->
                </div>
                <!-- END Sidebar Scrolling -->
            </nav>
            <!-- END Sidebar -->

            <!-- Header -->
            <header id="page-header">
                <!-- Header Content -->
                <div class="content-header">
                    <!-- Left Section -->
                    <div class="d-flex align-items-center">
                       
                    </div>
                    <!-- END Left Section -->

                     <!-- Right Section -->
                    <div class="d-flex align-items-center">
                        <button type="button" class="btn btn-sm btn-dual mr-2 d-lg-none" data-toggle="layout" data-action="sidebar_toggle">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>
                    </div>
                </div>
                <!-- END Header Content -->
            </header>
            <!-- END Header -->