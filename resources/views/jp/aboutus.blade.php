@extends('layouts.fontend_master')

@section('content')


<!-- Breadcrumbs-->
<?php 
$base_url = Session::get('base_url');
?>
<section class="breadcrumbs-custom bg-image" style="background-image: url({{$base_url}}/fontend/images/bg-image-4.jpg)">
    <div class="shell">
      <h2 class="breadcrumbs-custom__title">会社概要</h2>
      <ul class="breadcrumbs-custom__path">
        <li><a href="index.html">ホーム</a></li>
        <li class="active">会社概要</li>
      </ul>
    </div>
  </section>

  <!-- Experience since 1999-->
  <section class="section section-md bg-white">
    <div class="shell">
      <div class="range range-70 range-sm-center range-lg-justify">
        <div class="cell-sm-10 cell-md-6 cell-lg-5">
          <h4>1991年以来の経験</h4>
          <p>
            ウッディーは1991年12月に資本金30,000,000円で設立しました。それ以来、会社は成長しています。  
          </p>
          <p>
            私たちはフォークリフトや掘削機械、土木建築機械の買取、販売、輸出入を行っています。
          </p>
          <h4>Our Mission</h4>
          <p>何年間もにわたって、ウッディーは世界中のお客様のお手伝いをし、信頼の上で成り立ったよいビジネスを構築しています</p>
        </div>


        <div class="cell-sm-10 cell-md-6">
          <div class="row grid-2">
            <div class="col-xs-6">
              <img src="{{ asset('fontend') }}/images/amphibious_excavator.jpg" alt="" style="width: 273px;height: 214px;"/>
              <img src="{{ asset('fontend') }}/images/manathee.jpg" alt="" style="width: 273px;height: 214px;"/>
            </div>
            <div class="col-xs-6">
              <img src="{{ asset('fontend') }}/images/container_house.jpg" alt="" style="width: 273px;height: 214px;"/>
              <img src="{{ asset('fontend') }}/images/pontoon_boat.jpg" alt="" style="width: 273px;height: 214px;"/>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </section>

  

  @endsection
