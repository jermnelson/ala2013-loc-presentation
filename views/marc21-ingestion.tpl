<div class="hero-unit">
 <h3>Experimenting with BIBFRAME &amp; Redis</h3>
 <h1 class="slide">{{slides[2].get('headline')}}</h1>
 <p class="lead">
  {{!slides[2].get('description')}}
 </p> 
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span6 offset4">
  <h3>Launch Animation</h3>

  <a class="btn btn-large btn-primary" 
     href="#marc21-animation-modal" 
     data-toggle="modal"><i class="icon-play-circle icon-2x"></i></a>  </div>
</div>


<div class="modal hide fade" id="marc21-animation-modal">
 <div class="modal-header">
 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
  <h2>MARC21 Ingestion Workflow</h2>
  <p class="lead" data-bind="text: stepDescription"></p>
 </div>
 <div class="modal-body">
   <div id="marc21-bibframe-animiation" style="height: 800px; width=600px">
   </div>
 </div>
 <div class="modal-footer">
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
  <a href="#" data-dismiss="modal" class="btn btn-primary">Close</a>
  </div>
</div>

<script src="/ala2013/assets/js/jquery.js"></script>
<script src="/ala2013/assets/js/knockout.js"></script>
<script src="/ala2013/assets/js/bootstrap.min.js"></script>
<script src="/ala2013/assets/js/svg.min.js" type="text/javascript"></script>
<script src="/ala2013/assets/js/default.js" type="text/javascript"></script>
<script type="text/javascript">
ko.applyBindings(new MARC21IngestionModal());
</script>
%rebase slide previous=slides[1].get('name'), next=slides[3].get('name'), page=page, slides=slides
