<div class="hero-unit">
 <h3>Experimenting with Bibframe &amp; Redis</h3>
 <h1 class="slide">{{slides[2].get('headline')}}</h1>
 <p class="lead">
  {{!slides[2].get('description')}}
 </p> 
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span6">

 </div>

 <div class="span6">
 </div>
</div>
%rebase slide previous=slides[1].get('name'), next=slides[3].get('name'), page=page, slides=slides
