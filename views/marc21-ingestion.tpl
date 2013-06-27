<div class="hero-unit">
 <h3>Experimenting with Bibframe &amp; Redis</h3>
 <h1 class="slide">{{slides[2].get('headline')}}</h1>
 <p class="lead">
  {{!slides[2].get('description')}}
 </p> 
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span4">
  <div class="btn-group">
   <button class="btn"
     data-bind="click: stepOne">1</button>
   <button class="btn"
     data-bind="click: stepTwo">2</button>
   <button class="btn"
     data-bind="click: stepThree">3</button>
   <button 
     class="btn btn-success"
     data-bind="click: reloadMARCtoBibframeAnimiation"><i class="icon-refresh"></i></button>
   <button 
    class="btn btn-danger"
    data-bind="click: stopMARCtoBibframeAnimiation"><i class="icon-stop"></i></button>
   
  </div>
 </div>
</div>


</div>
<div class="row-fluid marketing">
 <div class="span12 offset2">
  <div id="marc21-bibframe-animiation" style="height: 800px; width=600px">
  <!-- <img class="hide" src="/assets/img/cclogo-gold.jpg" id="cc-icon"> //-->
  </div>
 </div>
</div>

<script src="/ala2013/assets/js/jquery.js"></script>
<script src="/ala2013/assets/js/bootstrap.js"></script>
<script src="/ala2013/assets/js/knockout.js"></script>
<!-- <script src="/assets/js/raphael-min.js"></script> //-->
<script src="/ala2013/assets/js/svg.min.js" type="text/javascript"></script>
<script src="/ala2013/assets/js/svg.import.min.js" type="text/javascript"></script>
<script src="/ala2013/assets/js/default.js" type="text/javascript"></script>
<script type="text/javascript">
ko.applyBindings(new MARC21IngestionModal());
</script>
%rebase slide previous=slides[1].get('name'), next=slides[3].get('name'), page=page, slides=slides
