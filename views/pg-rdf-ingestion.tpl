<div class="hero-unit">
 <h3>Experimenting with Bibframe &amp; Redis</h3>
 <h1 class="slide">{{slides[4].get('headline')}}</h1>
 <p class="lead">
  {{!slides[4].get('description')}}
 </p>
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span7">
  <div class="well well-small">
    <h3>Ingests 44,xxx Project Gutenberg RDF files</h3>
    <p class="lead">For first stable release,  libraries will
        have the option to seed their local RLSP datastore with these records 
        during installation.
    </p>
  </div>
 </div>
 <div class="span3">
   <a href="http://www.gutenberg.org">
   <img src="http://www.gutenberg.org/pics/pg-logo-002.png" 
        alt="Project Gutenberg Logo"
        class="img-polaroid"></a>
 </div>
</div>
%rebase slide previous=slides[3].get('name'), next=slides[5].get('name'), page=page, slides=slides
