<!doctype html>
<html class="no-js">
  <head>
    <meta charset="utf-8">
    <title>FashionMonkee-Admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="fm_admin/styles/main.css">
    <link rel="stylesheet" type="text/css" href="fm_admin/styles/normalize.css" />
    <link rel="stylesheet" type="text/css" href="fm_admin/styles/cs-select.css" />
    <link rel="stylesheet" type="text/css" href="fm_admin/styles/cs-skin-elastic.css" />
    <link rel="stylesheet" type="text/css" href="fm_admin/styles/cs-skin-slide.css" />
    <link rel="stylesheet" type="text/css" href="fm_admin/scripts/select2/select2.css"/>
    <link rel="stylesheet" type="text/css" href="fm_admin/styles/bootstrap-dp.css"/>

    
    <!-- endbuild -->
  </head>
  <body ng-app="yapp">
    <!--[if lt IE 7]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Add your site or application content here -->
    <div class="">
      <div ui-view></div>
    </div>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID -->
     <script> /*
       (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
       (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
       m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
       })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

       ga('create', 'UA-XXXXX-X');
       ga('send', 'pageview'); */
    </script>

    <!-- build:js scripts/oldieshim.js -->
    <!--[if lt IE 9]>
    <script src="../bower_components/es5-shim/es5-shim.js"></script>
    <script src="../bower_components/json3/lib/json3.js"></script>
    <![endif]-->
    <!-- endbuild -->

    <!-- build:js scripts/vendor.js -->
    <!-- bower:js -->
    <script src="fm_admin/scripts/jquery.js"></script> 
    <script src="fm_admin/scripts/angular/angular.js"></script>
    <script src="fm_admin/scripts/angular/mocks.js"></script>
    <script src="fm_admin/scripts/angular/animate.js"></script>
    <script src="fm_admin/scripts/angular/ui-router.js"></script>
    <script src="fm_admin/scripts/angular/file-upload.js"></script>
    <script src="fm_admin/scripts/bootstrap.js"></script> 
    <script src="fm_admin/scripts/classie.js"></script>
    <script src="fm_admin/scripts/selectFx.js"></script>
    <script src="fm_admin/scripts/ui-bootstrap.tpl.js"></script>
    <script src="fm_admin/scripts/select2/select2.js"></script>
    <script src="fm_admin/scripts/ui-select2.js"></script>
    <script src="fm_admin/scripts/magicselection.js"></script>
    <script src="fm_admin/scripts/bootstrap-dp.js"></script>
    <script src="fm_admin/scripts/satellizer.js"></script>
    <!-- endbower -->
    <!-- endbuild -->

    <!-- build:js({.tmp,app}) scripts/scripts.js -->
    <script src="fm_admin/src/app.js"></script>

    <script src="fm_admin/src/controllers/list.js"></script>
     <script src="fm_admin/src/controllers/detail.js"></script>
    <script src="fm_admin/src/controllers/login.js"></script>
    <script src="fm_admin/src/controllers/dashboard.js"></script>
    <script src="fm_admin/src/controllers/categories.js"></script>

    <script src="fm_admin/src/directives/file-upload-directive.js"></script>


    <script src="fm_admin/src/services/api.js"></script>
    <script src="fm_admin/src/services/getData.js"></script>

    <!-- endbuild -->
  </body>


</html>
