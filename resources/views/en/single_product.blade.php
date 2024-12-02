@extends('layouts.fontend_master')

@section('content')


<style>
  .slick-slider-vertical .slick-thumb > img {
    position: absolute;
    top: -1px;
    display: block;
    width: 101%;
    height: 101%;
}
.layout-horizontal__main p{margin: 0px !important;}
</style>
<!-- Breadcrumbs-->
<?php 
  $base_url = Session::get('base_url');
?>
<section class="breadcrumbs-custom bg-image" style="background-image: url({{$base_url}}/fontend/images/bg-image-1.jpg);">
    <div class="shell">
      <h2 class="breadcrumbs-custom__title">Production</h2>
      <ul class="breadcrumbs-custom__path">
        <li><a href="index.html">Home</a></li>
        <li class="active">Production</li>
      </ul>
    </div>
  </section>

  <!-- Our production-->
  <section class="section section-md bg-white">
    <div class="shell">
      <div class="tabs-custom tabs-custom-init tabs-inline" id="tabs-production">
        <!-- Section Header-->
        <div class="section__header">
          <h4>Our production</h4>
          <div class="section__header-element">
            <!-- Nav tabs-->
            <div class="navigation-custom">
              <button class="button navigation-custom__toggle" data-custom-toggle=".navigation-custom__content" data-custom-toggle-hide-on-blur="true">Filter</button>
              <div class="navigation-custom__content">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#tabs-production-1" data-toggle="tab"> </a></li>
                  
                </ul>
              </div>
            </div>
          </div>
        </div>

        
        <!-- Tab panes -->
        <div class="tab-content">
          <div class="tab-pane fade in active" id="tabs-production-1">
            <div class="layout-horizontal layout-horizontal_md-reverse">
              <div class="layout-horizontal__main" style="text-align: justify;">
                @foreach($products as $p)
                <h4>{{$p->title}}</h4>
                <p><?php echo $p->detail_des ?></p>
                
                <a class="button button-primary" href="{{route('fabrication',[$p->cat_id])}}">View similar fabrication</a>
                @endforeach
              </div>


              <div class="layout-horizontal__aside">
                <div class="slick-slider-vertical">
                  <div class="slick-slider carousel-parent" id="parent-carousel-1" data-loop="true" data-dots="false" data-swipe="true" data-items="1" data-child="#child-carousel-1" data-for="#child-carousel-1">
                    
                    <!---========= Product Thumbnail Image ===============----> 
                    @foreach($products as $p)
                      <div class="item">
                        <div class="slick-image">
                          <img src="{{ asset($p->thumbnail_image) }}" alt="" width="565" height="401"/>
                        </div>
                      </div>
                    @endforeach
                     <!---========= Product Multiple Image ===============----> 
                    @foreach($product_multiple_images as $pimages)
                      <div class="item">
                        <div class="slick-image">
                          <img src="{{ asset($pimages->image) }}" alt="" width="565" height="401"/>
                        </div>
                      </div>
                    @endforeach

                    

                    @foreach($product_multiple_videos as $pvideo)
                      <div class="item">
                        <div class="slick-image">
                          <video width="565" height="401" controls>
                            <source src="{{ asset($pvideo->video) }}" type="video/mp4">
                          </video>
                        </div>
                      </div>
                    @endforeach

                  </div>



                  <div class="slick-slider carousel-child" id="child-carousel-1" data-for="#parent-carousel-1" data-arrows="true" data-loop="true" data-dots="false" data-swipe="true" data-items="3" data-xs-items="3" data-sm-items="3" data-md-items="3" data-lg-items="3" data-slide-to-scroll="1" data-vertical="false" data-xs-vertical="false" data-sm-vertical="true" data-md-vertical="true" data-lg-vertical="true" data-center-mode="true">
                    
                    <!---========= Product Thumbnail Image show ===============----> 
                    <?php 
                    $productname="";
                    ?>
                    @foreach($products as $p)
                    <?php 
                      $productname = $p->title;
                    ?>
                    <div class="item">
                      <div class="slick-slider__inner">
                        <div class="slick-thumb">
                          <img src="{{ asset($p->thumbnail_image) }}" alt="" width="565" height="401"/>
                        </div>
                      </div>
                    </div>
                    
                    @endforeach

                    <!---========= Product Multiple Image show ===============----> 
                    @foreach($product_multiple_images as $pimages)
                    <div class="item">
                      <div class="slick-slider__inner">
                        <div class="slick-thumb">
                          <img src="{{ asset($pimages->image) }}" alt="" width="565" height="401"/>
                        </div>
                      </div>
                    </div>
                    
                    @endforeach

                    <!---========= Product Multiple Video show ===============----> 
                    @foreach($product_multiple_videos as $pvideo)
                    <div class="item">
                      <div class="slick-slider__inner" style="height: 87.7px !important;">
                        <div class="slick-thumb">
                          <video width="93" height="83" controls>
                            <source src="{{ asset($pvideo->video) }}" type="video/mp4">
                          </video>
                        </div>
                      </div>
                    </div>
                    
                    @endforeach

                  </div>

                </div>
              </div>
            </div>


            <!---======= Customer Contact ==================-->

            <!-- Get in Touch-->
         
  <section class="section section-lg bg-white">
    <div class="shell">
      <div class="layout-bordered">
        <div class="layout-bordered__main text-center">
          <div class="layout-bordered__main-inner">
            <h3>Get in Touch</h3>
            <p>Please leave your enquiry here, we will reply as soon as possible.</p>
            <!-- RD Mailform-->
            <form  action="{{route('contactmail')}}" method="post" onsubmit="return checkform()">

              @csrf

              <input type="hidden" name="product_id" value="{{$product_id}}">

              <div class="range range-sm-bottom">  
                
                <div class="form-group cell-sm-6">   
                  <label style="width: 100%;text-align: left;">Name <span id="ename" style="color: red"></span></label>
                  <input type="text" name="name" id="name" value="{{old('name')}}" class="form-control form-control-lg" autocomplete="off"     placeholder="Enter name" style="height: 54px;">
                </div>

                <div class="form-group cell-sm-6"> 
                  <label style="width: 100%;text-align: left;">Company Name <span id="ecompany_name" style="color: red"></span></label>
                  <input type="text" name="company_name" id="company_name" value="{{old('company_name')}}" class="form-control form-control-lg" autocomplete="off"     placeholder="Enter company name" style="height: 54px;">
                </div>
                
                <div class="form-group cell-sm-6">
                  <label style="width: 100%;text-align: left;">Email address <span id="eemail" style="color: red"></span></label>
                  <input type="email" name="email" id="email" value="{{old('email')}}" class="form-control form-control-lg"    placeholder="Enter email" style="height: 54px;" autocomplete="off">
                </div>

                <div class="form-group cell-sm-6">
                  <label style="width: 100%;text-align: left;">Phone <span id="ephone" style="color: red"></span></label>
                  <input type="text" name="phone" id="phone" value="{{old('phone')}}" class="form-control form-control-lg"  placeholder="Enter phone" style="height: 54px;" autocomplete="off">
                </div>

                <div class="form-group cell-sm-12">
                  <label style="width: 100%;text-align: left;">Product Interested <span id="eproduct_interested" style="color: red"></span></label>
                  <input type="text" name="product_interested" id="product_interested" value="{{old('product_interested')}}" class="form-control form-control-lg"  placeholder="Product Interested" style="height: 54px;" autocomplete="off">
                </div>

                

                <div class="form-group cell-xs-12">
                  <label style="width: 100%;text-align: left;">Your Message <span id="emessage" style="color: red"></span></label>
                  <textarea   name="message" id="message"  class="form-control form-control-lg"    placeholder="Enter message" style="min-height: 100px;" autocomplete="off">{{old('message')}}</textarea>
                </div>

                

                <div class="form-group cell-sm-6"> 
                  <label style="width: 100%;text-align: left;">Capcha <span id="ecaptcha" style="color: red"></span></label>
                  <?php 
                    $a = rand(1,9);
                    $b = rand(1,9);
                    $c = $a+$b;
                  ?>
                  <input type="hidden"  name="captcha_result" id="captcha_result" value="<?php echo $c;?>">
                  <div style="height: 54px;line-height: 54px;background:#f4f3f3">
                  <div style="float: left;width:30;font-size: 18px;">&nbsp;<?php echo $a;?>&nbsp;</div>
                  <div style="float: left;width:30;font-size: 18px;">&nbsp;+&nbsp;</div>
                  <div style="float: left;width:30;font-size: 18px;">&nbsp;<?php echo $b;?>&nbsp;</div>
                  <div style="float: left;width:30;font-size: 18px;">&nbsp;=&nbsp;</div>
                  <div style="float: left;width:30;font-size: 18px;">&nbsp;
                    <select  name="captcha" id="captcha" style="width: 80px;" autocomplete="off"> 
                      <option value="0">???</option>
                      <?php
                      for($i=1;$i<100;$i++)
                      { 
                      ?>
                      <option value="<?php echo $i;?>"><?php echo $i;?></option>
                      <?php 
                      }
                      ?>
                    </select>  
                  </div>
                  </div>
                </div>

                

                <div class="form-group cell-sm-6">
                  @if($successmessage =="")
                  <button class="button button-block button-primary" type="submit">Send Message</button>
                  @endif
                </div>
              </div>
            </form>
          </div>
        </div>

        


        <div class="layout-bordered__aside">
          <div class="layout-bordered__aside-item">
            <p class="heading-8">Get social </p>
            <ul class="list-inline-xs">
              <li><a class="icon icon-sm icon-default fa fa-facebook" href="#"></a></li>
              <li><a class="icon icon-sm icon-default fa fa-twitter" href="#"></a></li>
              <li><a class="icon icon-sm icon-default fa fa-google" href="#"></a></li>
              <li><a class="icon icon-sm icon-default fa fa-youtube" href="#"></a></li>
            </ul>
          </div>
          <div class="layout-bordered__aside-item">
            <p class="heading-8">Phone</p>
            <div class="unit unit-horizontal unit-spacing-xxs">
              <div class="unit__left"><span class="icon icon-sm icon-primary material-icons-local_phone"></span></div>
              <div class="unit__body"><a href="callto:#">+81-(0)3-5700-4622</a></div>
            </div>
          </div>
          <div class="layout-bordered__aside-item">
            <p class="heading-8">E-mail</p>
            <div class="unit unit-horizontal unit-spacing-xxs">
              <div class="unit__left"><span class="icon icon-sm icon-primary mdi mdi-email-outline"></span></div>
              <div class="unit__body"><a href="mailto:#">info@woodyltd.com</a></div>
            </div>
          </div>
          <div class="layout-bordered__aside-item">
            <p class="heading-8">Address</p>
            <div class="unit unit-horizontal unit-spacing-xxs">
              <div class="unit__left"><span class="icon icon-sm icon-primary material-icons-location_on"></span></div>
              <div class="unit__body">
                <a href="#">Tokyo Office: 1-4-4 Higashi Yaguchi Ota-Ku Tokyo, Japan 146-0094</a> <br><br>
                <a href="#">Narita Factory: 40 Tokura <br> Tomisato-Shi, Chiba 286-0212</a>
              </div>
            </div>
          </div>
        </div>


      </div>
    </div>
  </section>
  
           

          </div>
          
        </div>
      </div>
    </div>
  </section>

  
  <script>
    function checkform()
    {
      var name = document.getElementById('name').value;
      var company_name = document.getElementById('company_name').value;
      var phone = document.getElementById('phone').value; 
      var message = document.getElementById('message').value; 
      var email = document.getElementById('email').value; 
      var product_interested = document.getElementById('product_interested').value; 
      var captcha = document.getElementById('captcha').value;   
      var captcha_result = document.getElementById('captcha_result').value;  
      
      //name company_name email phone product_interested message
      document.getElementById('ename').innerHTML ="";
      document.getElementById('ecompany_name').innerHTML ="";
      document.getElementById('ephone').innerHTML ="";
      document.getElementById('emessage').innerHTML ="";
      document.getElementById('eemail').innerHTML ="";
      document.getElementById('ecaptcha').innerHTML ="";
      //alert(name);
      var err=0;
      
      if(name == "")
      {
        err++;
        document.getElementById('ename').innerHTML ="required";
      }
      else if(name.length > 255)
      {
        err++;
        document.getElementById('ename').innerHTML ="length exceed";
      }
      
      //companyname
      if(company_name == "")
      {
        err++;
        document.getElementById('ecompany_name').innerHTML ="required";
      }
      else if(company_name.length > 255)
      {
        err++;
        document.getElementById('ecompany_name').innerHTML ="length exceed";
      }

      //phone
      if(phone == "")
      {
        err++;
        document.getElementById('ephone').innerHTML ="required";
      }
      else if(phone.length > 255)
      {
        err++;
        document.getElementById('ephone').innerHTML ="length exceed";
      }
      //message
      if(message == "")
      {
        err++;
        document.getElementById('emessage').innerHTML ="required";
      }
      
      //email
      if(email == "")
      {
        err++;
        document.getElementById('eemail').innerHTML ="required";
      }
      else if(email.length > 255)
      {
        err++;
        document.getElementById('eemail').innerHTML ="length exceed";
      }

      //captcha 
      if(captcha == "" || captcha == "0")
      {
        err++;
        document.getElementById('ecaptcha').innerHTML ="required";
      }
      else if(captcha != captcha_result)
      {
        err++;
        document.getElementById('ecaptcha').innerHTML ="invalid";
      }
    
    
      if(err==0)
      {
        return true;
      }
      return false;
    }
    </script> 
  


  @endsection
