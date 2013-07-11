%include masthead category='home', page='home', slides=slides

<div class="jumbotron">
 <h1>Experimenting with BIBFRAME &amp; Redis</h1>
  <p class="lead">
   Jeremy Nelson<br>
   <a href="#metadata-webcomic" data-toggle="modal"
      >Metadata</a> and Systems Librarian<br>
   <a href="http://www.coloradocollege.edu/"><img alt="Colorado College Logo" src="/ala2013/assets/img/cclogo-gold.jpg"></a>
  </p>
  <a class="btn btn-large btn-success" href="/ala2013/redis-library-services-platform">
    <i class="icon-play icon-2x"></i>
  </a>
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span6">
   % for slide in slides[0:3]:
   <h4>{{!slide.get('headline')}} <a href="/ala2013/{{slide.get('name')}}"><i class="icon-fullscreen"></i></a></h4>
   <p>
    {{!slide.get('description')}}
   </p>
   % end
 </div>

 <div class="span6">
   % for slide in slides[3:]:
   <h4>{{!slide.get('headline')}} <a href="/ala2013/{{slide.get('name')}}"><i class="icon-fullscreen"></i></a></h4>
   <p>
    {{!slide.get('description')}}
   </p>
   % end

   <h4>Addendum</a></h4>
   <a href="/resources">Resources</a> used in this presentation. A <a href="/glossary.html">Glossary</a> of
   terminology.
   <h5>Contact</h5>
   <p>
    <a href="mailto:jeremy.nelson@coloradocollege.edu">jeremy.nelson@coloradocollege.edu</a> or 
   </p>
   <p> 
    <a href="https://twitter.com/jermnelson"><i class="icon-twitter-sign icon-large"></i> @jermnelson</a> 
   </p>
 </div>
</div>

<div class="modal hide fade" id="metadata-webcomic">
 <div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
 </div>
 <div class-"modal-body">
  <img src='/ala2013/assets/img/a-softer-world-metadata.jpg'
       alt='A Softer World Webcomic'> 
  <p class="lead">From the webcomic <em>A Softer World</em> 
  <a href='http://www.asofterworld.com/index.php?id=987'>http://www.asofterworld.com/index.php?id=987</a>
  </p>
 </div>
 <div class="modal-footer">
  <a class="btn btn-primary" data-dismiss="modal">Close</a>
 </div>
</div>

%include js_files
<script>
</script>
%rebase layout
