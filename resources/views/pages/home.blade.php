@extends('templates.master')

@section('title')
Home - Portofolio
@endsection

@section('content')

<!-- +++++ Welcome Section +++++ -->
<div id="ww">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 centered">
                <img src="assets/img/user.png" alt="Stanley">
                <h1>Hi, I am Stanley!</h1>
                <p>Hello everybody. I'm Stanley, a free handsome bootstrap theme coded by BlackTie.co. A really simple theme for those wanting to showcase their work with a cute & clean style.</p>
                <p>Please, consider to register to <a href="http://eepurl.com/IcgkX">our newsletter</a> to be updated with our latest themes and freebies. Like always, you can use this theme in any project freely. Share it with your friends.</p>
            
            </div><!-- /col-lg-8 -->
        </div><!-- /row -->
    </div> <!-- /container -->
</div><!-- /ww -->


<!-- +++++ Projects Section +++++ -->

<div class="container pt">
    <div class="row mt centered">   
        <div class="col-lg-4">
            <a class="zoom green" href="{{route('select.work')}}"><img class="img-responsive" src="assets/img/portfolio/port01.jpg" alt="" /></a>
            <p>APE</p>
        </div>
        <div class="col-lg-4">
            <a class="zoom green" href="{{route('select.work')}}"><img class="img-responsive" src="assets/img/portfolio/port02.jpg" alt="" /></a>
            <p>RAIDERS</p>
        </div>
        <div class="col-lg-4">
            <a class="zoom green" href="{{route('select.work')}}"><img class="img-responsive" src="assets/img/portfolio/port03.jpg" alt="" /></a>
            <p>VIKINGS</p>
        </div>
    </div><!-- /row -->
    <div class="row mt centered">   
        <div class="col-lg-4">
            <a class="zoom green" href="{{route('select.work')}}"><img class="img-responsive" src="assets/img/portfolio/port04.jpg" alt="" /></a>
            <p>YODA</p>
        </div>
        <div class="col-lg-4">
            <a class="zoom green" href="{{route('select.work')}}"><img class="img-responsive" src="assets/img/portfolio/port05.jpg" alt="" /></a>
            <p>EMPERORS</p>
        </div>
        <div class="col-lg-4">
            <a class="zoom green" href="{{route('select.work')}}"><img class="img-responsive" src="assets/img/portfolio/port06.jpg" alt="" /></a>
            <p>CHIEFS</p>
        </div>
    </div><!-- /row -->
</div><!-- /container -->

@endsection