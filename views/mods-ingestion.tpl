<div class="hero-unit">
 <h3>Experimenting with BIBFRAME &amp; Redis</h3>
 <h1 class="slide">{{slides[3].get('headline')}}</h1>
 <p class="lead">
  {{!slides[3].get('description')}}
 </p>
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span6">
  <h3>XPath-to-BIBFRAME</h3>
  <p>
   While not as well-developed as the MARC21-to-BIBFRAME, the 
   Redis Library Services Platform does have a minimal MODS-to-BIBFRAME
   ingestion workflow using XPath.
  </p>
 </div>

 <div class="span6">
  <h3>Digital Archives of Colorado College</h3>
  <p>
   Colorado College uses a hosted Islandora/Fedora Commons digital archive with 
   each digital object described in MODS XML. 
  </p>
  <p>
   <a href="/apps/discovery/NonmusicalAudio/224"
      class="btn btn-info btn-large">Example of Helen Hunt Oral History </a>
  </p>
 </div>
</div>

<div class="row-fluid marketing">
 <div class="span12">
  <h2>Live DACC site</h2>
  <iframe src="http://dacc.coalliance.org/" 
          style="width: 680px; height: 600px;"></iframe>

 </div>
</div>


%include js_files

%rebase slide previous=slides[2].get('name'), next=slides[4].get('name'), page=page, slides=slides
