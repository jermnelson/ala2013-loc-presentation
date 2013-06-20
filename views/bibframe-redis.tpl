<div class="hero-unit">
 <h3>Experimenting with Bibframe &amp; Redis</h3>
 <h1 class="slide">{{slides[1].get('headline') }}</h1>  
  <p class="lead">
   {{!slides[1].get('description')}}
  </p>
  </a>
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span8">
  <div>
   <h4>Creative Work Entity - <em>bf:MovingImage:1</em></h4>
   <p>Example of a Moving Image Creative Work, in this case the
      199x movie version of <em>Pride and Prejudice</em>
   </p>
   <code style="font-size: 1.3em">
     redis_datastore.hgetall('{{ creative_wrk_key }}')
   </code>
    <a href="#rlsp-result" 
       data-bind="click: runHGETALL.bind($data, 
                                         '{{ creative_wrk_key }}')"
       class="btn btn-danger">Run</a>
  </div>
  <div>
   <h4>Instance Entity - <em>{{ instance_key }}</em></h4>
   <code>
    redis_datastore.hgetall('{{ instance_key }}') 
   </code>
  </div>
  <div>
   <h4>Cover Art Entity - <strong>{{ cover_art_key }}</strong></h4>
   <code>
     redis_datastore.hgetall('{{ cover_art_key }}')
   </code>
  </div>
  <div>
   <h4>Person - <strong>{{ person_key }}</strong></h4>
   <code>
     redis_datastore.hgetall('{{ person_key }}')
   </code>
  </div>
  <div>
   <h4>Library Holding - <strong>{{ holding_key }}</strong></h4>
   <code>
     redis_datastore.hgetall('{{ holding_key }}')
   </code>
  </div>

 </div>

 <div class="span4">
  <div class="well well-small">
   <h2>Using Multiple Vocabularies</h2>
   <p class="lead">
    The approach we are taking with the Redis Library Services Platforms
    allows for easy association of other metadata vocabularies and schemas
    to Bibframe entities. In the current iteration of the platform, 
    <a href="/glossary.html#rda">RDA</a> and 
    <a href="/glossary.html#schema">schema.org</a> 
    metadata is linked to Bibframe entities using Redis key 
    structures and follows the practice of 
    Compact IRIs uses a prefix, most often the most common expressed 
    namespaces to distinguish different vocabularies and schemas.
   </p>
  </div>
 </div>
</div>

<div class="modal hide fade" id="redis-result">
 <div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
   <h2>Result of <span id="redis-command"
                       data-bind="text: redisCommand"></h2>
 </div>
 <div class="modal-body">
  <code style="font-size: 1.3em" 
        data-bind="text: redisResult"></code>
 </div>
 <div class="modal-footer">
  <a href="#" class="btn btn-primary" data-dismiss="modal">Close</a>
 </div>
</div>

<script src="http://twitter.github.io/bootstrap/assets/js/jquery.js"></script>
<script src="/assets/js/knockout.js"></script>
<script type="text/javascript">
 function BibframeRedisViewModal() {
  var self = this;
  var redisCommand = "";
  var redisResult = "";

  // AJAX call sends hash Redis Key to RSLP and display
  // result in modal  
  runHGETALL: function(data, redis_key) {
    self.redisCommand = "redis_datastore.hgetall('" + redis_key + "')";  
    $.ajax({
      data: "command=hgetall&key=" + redis_key,
      url: "/redis",
      success: function(result) {
       self.redisResult = result;
       $('#redis-result').modal('show');
    
      }
  }
 }

 ko.applyBindings(new BibframeRedisViewModal());

</script>

%rebase slide previous="/redis-library-services-platform", next="/marc21-ingestion", page=page, slides=slides
