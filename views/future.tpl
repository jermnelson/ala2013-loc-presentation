<div class="hero-unit">
 <h3>Experimenting with BIBFRAME &amp; Redis</h3>
 <h1 class="slide">{{slides[5].get('headline')}}</h1>

</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span12 alert alert-block">
 <button type="button" class="close" data-dismiss="alert">&times;</button>
  <h2 align="center" class="slide">E - Engage</h2>
  <p class="lead">Increase <strong>engagement</strong> with Users</p>
  <p style="font-size: 1.1em">
   Current status of the Redis Service Platform is very much of a 
   <a href="/ala2013/glossary.html#minimal-viable-product">minimal 
   viable product</a> to demonstrate the possibilities of a 
   <a href="/ala2013/glossary.html#linkedData">LinkedData-based</a>
    bibliographic datastore running on Redis.
  </p>
  <p style="font-size: 1.1em">
   Improving the end-user Bibliographic and Operational Apps through
   A/B Testing of different audiences will use available Django applications
   for the front-end using Redis to track all of these metrics in the 
   backend. 
  </p>
 </div>
</div>
<div class="row-fluid marketing">
 <div class="span12 alert alert-block alert-info">
 <button type="button" class="close" data-dismiss="alert">&times;</button>
 <h2 align="center" class="slide">E - Enhance</h2>
 <p class="lead">Planned <strong>enhancements</strong> to 
 the Redis Library Services Platform including further semantic 
 harvesting of usable Linked Data from Library of Congress, Wikipedia, 
 OCLC, and Open Library.
 </p>
 <p style="font-size: 1.1em">
  Building from the current Redis Library Services Platform's
  <a href="/ala2013/glossary.html#minimal-viable-record">minimal viable record</a>,
  our plan is to increase the variety and amount of MARC21 data that is ingested into 
  the Redis datastore. This enhancement also extends to the MODS and RDF ingestion 
  processes demonstrated in this presentation.
 </p>
 </div>

</div>
<div class="row-fluid marketing">
 <div class="span12 alert alert-block alert-success">
 <button type="button" class="close" data-dismiss="alert">&times;</button>
 <h2 align="center" class="slide">E - Embrace</h2>
 <p class="lead"><strong>Embracing</strong> existing vocabularies and ontologies as driven
  by actionable metrics and desires of the platform's users. This includes closely tracking
  the <a href="/ala2013/glossary.html#bibframe">BIBFRAME</a> vocabulary as it improves and changes
  are made.
 </p> 
 <p style="font-size: 1.1em">
  Other vocabularies that are partially implemented in 
  <a href="/ala2013/glossary.html#rlsp">RLSP</a>
 include <a href="/ala2013/glossary.html#schema">schema.org</a>, 
 <a href="/ala2013/glossary.html#provenance">open provenance</a>, and 
 <a href="/ala2013/glossary.html#open-annotation">open annotation</a>.
 </p>
 </div>
</div>
<div class="row-fluid marketing">
 <div class="span12 alert alert-block alert-error">
 <button type="button" class="close" data-dismiss="alert">&times;</button>
 <h2 align="center" class="slide">E - Extend</h2>
 <p class="lead">The Redis Library Services Platform is designed to be easily
 <strong>extended</strong>. In the coming months and driven by the desires of the user
 community, the Redis Services Platform is looking at ways the  
 <a href="/glossary.html#blacklight">Blacklight</a> and 
 <a href="/glossary.html#kuali">Kuali</a> projects can use Redis BIBFRAME datastore.
 </p>
 <p style="font-size: 1.1em">
  The first stable <a href="/ala2013/glossary.html#rlsp">Redis Library Services Platform</a> 
  is targeted for the 4th Quarter of 2013 with standalone <a href="http://www.microsoft.com/">Microsoft</a>
  Windows, <a href="http://www.apple.com/">Macintosh</a> installers and improving the current,
  somewhat baroque, method of installing the platform on Linux. 
 </p>
 </div>
</div>
<h1 align="center">&amp;</h1>
<div class="row-fluid marketing">
 <div class="span12 alert alert-block">
 <h2 align="center">+1 E - Experiment!</h2>
 <button type="button" class="close" data-dismiss="alert">&times;</button>
 <p class="lead">
  The <a href="/ala2013/glossary.html#rlsp">Redis Library Services
  Platform</a> is promising technological approach to imagining the future
  of bibliographic information and the tools we'll need for transitioning
  form MARC21 to the new BIBFRAME and other models. 
 </p>
 <p style="font-size: 1.1em">
  These experiments wouldn't have 
  been possible without the support of my library directory, Ivan Gaetz,
  and the librarians and staff at Colorado College's Tutt Library, and 
  George Machovec, the Executive Director of the Colorado Alliance of 
  Research Libraries.
  I also want to thank the Library of Congress for their leadership and work 
  being done for the library and linked data communities with their 
  BIBFRAME vocabulary.
 </p>
 </div>
</div>

%include js_files

%rebase slide previous="/ala2013/pg-rdf-ingestion", next="/ala2013/contact", page=page, slides=slides
