<div class="hero-unit">
 <h3>Experimenting with BIBFRAME &amp; Redis</h3>
 <h1 class="slide">{{slides[4].get('headline')}}</h1>
 <p class="lead">
  {{!slides[4].get('description')}}
 </p>
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span7">
  <div class="well well-small">
    <h3>Ingests 42,379 Project Gutenberg RDF files</h3>
    <p class="lead">Planned for the first stable release at the end of the
    year, users and libraries will have the option to seed their local RLSP 
    datastore with these records during installation.
   </p>
  </div>
 </div>
 <div class="span3">
   <a href="http://www.gutenberg.org">
   <img src="http://www.gutenberg.org/pics/pg-logo-002.png" 
        alt="Project Gutenberg Logo"
        class="img-polaroid"></a>
   
   <p>
    <a href="/apps/discovery/SoftwareOrMultimedia/19723"
       class="btn btn-large btn-warning">Robert Louis Stevenson's
       <em>Treasure Island</emd></a>
   </p>
 </div>
</div>
%rebase slide previous=slides[3].get('name'), next=slides[5].get('name'), page=page, slides=slides
