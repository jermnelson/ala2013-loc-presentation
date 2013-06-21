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

<script src="/assets/js/jquery.js"></script>
<script src="/assets/js/bootstrap.js"></script>
<script src="/assets/js/knockout.js"></script>
<!-- <script src="/assets/js/raphael-min.js"></script> //-->
<script src="/assets/js/svg.min.js" type="text/javascript"></script>
<script src="/assets/js/svg.import.min.js" type="text/javascript"></script>

<script type="text/javascript">
function MARC21IngestionModal() {
 var self = this;
 self.draw = SVG('marc21-bibframe-animiation');
 
 self.reloadMARCtoBibframeAnimiation = function() {
  self.PersonIcon = self.draw.image("/assets/img/admin_64x64.png");
  self.PersonIcon.move(600, 0);
  self.PersonIconText = self.draw.text("Person Authority");
  self.PersonIconText.move(self.PersonIcon.x() + 20, self.PersonIcon.y() + 100).fill('#000');
  self.PersonIconText.font({family: 'Courier Sans Serif', size: 18, anchor: 'middle', leading: 1});
  self.OrganizationIcon = self.draw.image("/assets/img/architecture_64x64.png");
  self.OrganizationIcon.move(600, 120);
  self.OrganizationIconText = self.draw.text("Organization Authority");
  self.OrganizationIconText.move(self.OrganizationIcon.x() + 20,
                                 self.OrganizationIcon.y() + 100).fill("#000");
  self.PersonIconText.font({family: 'Courier Sans Serif', size: 18, anchor: 'middle', leading: 1});
  self.MARC21RecordIcon = self.draw.image("/assets/img/document_64x64.png");
  self.MARC21RecordIcon.animate().move(220, 40);
  
  //self.marc21Image = self.draw.image("/assets/img/marc21-icon.gif");
  //self.marc21Image.move(300, 40);
 }

 self.stopMARCtoBibframeAnimiation = function() {

 }

}

ko.applyBindings(new MARC21IngestionModal());
</script>
%rebase slide previous=slides[1].get('name'), next=slides[3].get('name'), page=page, slides=slides
