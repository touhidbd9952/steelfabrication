@extends('layouts.admin_master')

@section('content')

<!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Project</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Fabricator Project Edit Form</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            
            <div class="card">
                <div class="card-header">
                    Fabricator Project Edit Form
                    <a href="{{route('project.view')}}"  style="float: right;">View Project</a>
                </div>

                <div class="card-body">
                    
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show">
                            <strong>Success!</strong> {{ session('success') }}
                            <button type="button" class="close" data-dismiss="alert" style="float:right;">&times;</button>
                        </div>
                    @endif
                    
                    <form action="{{route('project.update',[$ourproducts->id])}}" method="post" enctype="multipart/form-data">
                        
                        @csrf

                        
                        <input type="hidden" name="old_img" value="{{$ourproducts->thumbnail_image}}">

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Project Title</label>
                            <div class="col-sm-6">
                                <input type="text"  name="title" value="{{$ourproducts->title}}" autocomplete="off" class="form-control @error('title') is-invalid @enderror"
                                    placeholder="Project Title">
                                @error('title')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Project Title (JP)</label>
                            <div class="col-sm-6">
                                <input type="text"  name="title_jp" value="{{$ourproducts->title_jp}}" autocomplete="off" class="form-control @error('title_jp') is-invalid @enderror">
                                @error('title')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Short Description</label>
                            <div class="col-sm-6">
                                <textarea  name="short_des" autocomplete="off" class="form-control @error('short_des') is-invalid @enderror"
                                    placeholder="Project Short Description">{{$ourproducts->short_des}}</textarea>
                                @error('short_des')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Short Description (JP)</label>
                            <div class="col-sm-6">
                                <textarea  name="short_des_jp" autocomplete="off" class="form-control @error('short_des_jp') is-invalid @enderror"
                                    >{{$ourproducts->short_des}}</textarea>
                                @error('short_des_jp')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Details Description</label>
                            <div class="col-sm-6">
                                <textarea  name="detail_des" autocomplete="off" class="form-control @error('detail_des') is-invalid @enderror"
                                    placeholder="Project Details Description" style="min-height: 120px">{{$ourproducts->detail_des}}</textarea>
                                @error('short_des')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Details Description (JP)</label>
                            <div class="col-sm-6">
                                <textarea  name="detail_des_jp" autocomplete="off" class="form-control @error('detail_des_jp') is-invalid @enderror"
                                     style="min-height: 120px">{{$ourproducts->detail_des_jp}}</textarea>
                                @error('detail_des_jp')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Project Thumbnail Image</label>
                            <div class="col-sm-6">
                                <input type="file"  name="thumbnail_image" id="imgInp"  class="form-control @error('productimage') is-invalid @enderror" 
                                onchange="loadFile(event)">
                                    <img src="{{asset($ourproducts->thumbnail_image)}}" id="output" style="width: 300px;height:auto;margin-top:10px;">
                            </div>
                        </div>

                        

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Publish status</label>
                            <div class="col-sm-6">
                                <select name="publish_status" class="form-control @error('publish_status') is-invalid @enderror">
                                    <option value="publish" {{$ourproducts->publish_status == "publish"?'selected':''}}>Publish</option>
                                    <option value="unpublish" {{$ourproducts->publish_status == "unpublish"?'selected':''}}>Unpublish</option>
                                </select>
                                @error('publish_status')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        

                        

                        

                        <div class="form-group row mb-0">
                            <div class="col-md-9 offset-md-3">
                                <button type="submit" class="btn btn-primary" style="float: right">
                                    Update
                                </button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>


<script>
    var loadFile = function(event) {
      var output = document.getElementById('output');
      output.src = URL.createObjectURL(event.target.files[0]);
      output.onload = function() {
        URL.revokeObjectURL(output.src) // free memory
      }
    };
  </script>



@endsection


