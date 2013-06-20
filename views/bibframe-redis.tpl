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
   <h4>Creative Work Entity - <em>{{ creative_wrk_key }}</em></h4>
   <p>Example of a Moving Image Creative Work, in this case the
      199x movie version of <em>Pride and Prejudice</em>
   </p>
   <p>
   <code 
         data-bind="click: runHGETALL.bind($data, '{{ creative_wrk_key }}')">
     redis_datastore.hgetall('{{ creative_wrk_key }}')
   </code>
   </p>
   <h4>Set of RDA creator redis keys - 
      <em>{{ creative_wrk_key }}:rda:isCreatedBy')</em></h4> 
   <p>
   <code  
        data-bind="click: runSMEMBERS.bind($data, '{{ creative_wrk_key }}:rda:isCreatedBy')">
     redis_datastore.smembers('{{ creative_wrk_key }}:rda:isCreatedBy')
   </code>
   </p>
   <h4>Person Entity - <em>{{ person_key }}</em>
   <p>
   <code 
         data-bind="click: runHGETALL.bind($data, '{{ person_key }}')">
     redis_datastore.hgetall('{{ person_key }}')
   </code>
   </p>
  </div>
  <div>
   <h4>Instance Entity - <em>{{ instance_key }}</em></h4>
   <code data-bind="click: runHGETALL.bind($data, '{{ instance_key }}')">
    redis_datastore.hgetall('{{ instance_key }}') 
   </code>
       
  </div>
  <div>
   <h4>Cover Art Entity - <strong>{{ cover_art_key }}</strong></h4>
   <code data-bind="click: runHGETALL.bind($data, '{{ cover_art_key }}')">
     redis_datastore.hgetall('{{ cover_art_key }}')
   </code>
  </div>
  <div>
   <h4>Library Holding - <strong>{{ holding_key }}</strong></h4>
   <code data-bind="click: runHGETALL.bind($data, '{{ holding_key }}')">
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
   <h2>Result of Redis Command</h2>
   </div>
 <div class="modal-body">
  <h3 style="color: red"
      data-bind="text: redisCommand"></h3>

  <pre class="pre-scollable" style="font-size: 1.3em" 

        data-bind="html: redisResult"></pre>
 </div>
 <div class="modal-footer">
  <a href="#" class="btn btn-primary" data-dismiss="modal">Close</a>
 </div>
</div>

<script src="/assets/js/jquery.js"></script>
<script src="/assets/js/bootstrap.js"></script>
<script src="/assets/js/knockout.js"></script>
<script type="text/javascript">
 $('.modal').css({
  width: 'auto',
  'margin-left': function () {
     return -($(this).width() / .75);
  },
  'margin-right': function() {
     return ($(this).width() /2 );
 }
 });

 function BibframeRedisViewModal() {
  var self = this;
  self.redisCommand = ko.observable();
  self.redisResult =  ko.observable();

  // AJAX call sends hash Redis Key to RSLP and display
  // result in modal  
  self.runHGETALL = function(redis_key) {
    var command = "redis_datastore.hgetall('" + redis_key + "')";  
    self.redisCommand(command);  
    $.ajax({
      data: "command=hgetall&key=" + redis_key,
      url: "/redis",
      success: function(result) {
       self.redisResult(result);
       $("#redis-result").modal('show');
      }
    });
  }

  self.runSMEMBERS = function(redis_key) {
    var command = "redis_datastore.smembers('" + redis_key + "')";
    self.redisCommand(command);
    $.ajax({
      data: "command=smembers&key=" + redis_key,
      url: "/redis",
      success: function(result) {
       self.redisResult(result);
       $("#redis-result").modal('show');
      }
    });
  }
 }

 ko.applyBindings(new BibframeRedisViewModal());

</script>

%rebase slide previous="/redis-library-services-platform", next="/marc21-ingestion", page=page, slides=slides
