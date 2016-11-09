@extends('templates.master')

@section('title')
Contact - Portofolio
@endsection

@section('content')
<!-- +++++ Contact Section +++++ -->
	
<div class="container pt">
	<div class="row mt">
		<div class="col-lg-6 col-lg-offset-3 centered">
			<h3>CONTACT ME</h3>
			<hr>
			<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
		</div>
	</div>
@include('includes.success')
@include('includes.error')
	<div class="row mt">	
		<div class="col-lg-8 col-lg-offset-2">
			<form role="form" action="{{route('sendmail')}}" method="post">
			{{csrf_field()}}
			  <div class="form-group">
			    <input type="name" name="name" class="form-control" value="{{Request::old('name')}}" placeholder="Your Name">
			    <br>
			  </div>
			  <div class="form-group">
			    <input type="email" name="email" class="form-control" value="{{Request::old('email')}}" placeholder="Enter email">
			    <br>
			  </div>
			  <div class="form-group">
			    <input type="text" name="subject" class="form-control" value="{{Request::old('subject')}}" placeholder="Subject">
			    <br>
			  </div>
			  <textarea name="message" class="form-control" rows="6" placeholder="Enter your text here">{{Request::old('message')}}</textarea>
			    <br>
			  <button type="submit" class="btn btn-success">SUBMIT</button>
			</form>    			
		</div>
	</div><!-- /row -->
</div><!-- /container -->
@endsection