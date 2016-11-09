<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>@yield('title')</title>

    <!-- Bootstrap core CSS -->
    <link href="{{URL::to('assets/css/bootstrap.css')}}" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="{{URL::to('assets/css/main.css')}}" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="{{URL::to('assets/js/hover.zoom.js')}}"></script>
    <script src="{{URL::to('assets/js/hover.zoom.conf.js')}}"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <!-- Static navbar -->
    @include('includes.navbar')

    @yield('content')
    
    <!-- +++++ Footer Section +++++ -->
    
    @include('includes.footer')
    

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="{{URL::to('assets/js/bootstrap.min.js')}}"></script>
  </body>
</html>
