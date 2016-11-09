@extends('templates.master')

@section('title')
Work - Portofolio
@endsection

@section('content')
<!-- +++++ Projects Section +++++ -->
	
<div class="container pt">
	<div class="row mt">
		<div class="col-lg-6 col-lg-offset-3 centered">
			<h3>MY WORK</h3>
			<hr>
			<p>Show your work here. Dribbble shots from the awesome designer <a href="http://dribbble.com/wanderingbert">David Creighton-Pester</a>.</p>
		</div>
	</div>
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