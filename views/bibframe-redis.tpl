<div class="hero-unit">
 <h3>Experimenting with Bibframe &amp; Redis</h3>
 <h1 class="slide">Bibframe Entities in Redis</h1>  
  <p class="lead">
   {{ description }}
  </p>
  </a>
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span8">
<div>
   <h4>Creative Work Entity <strong>bf:MovingImage:1</strong></h4>
   <p>Example of a Moving Image Creative Work, in this case the
      199x movie version of <em>Pride and Prejudice</em>
   </p>
   <code>
     redis_datastore.hgetall('{{ creative_wrk_key }}')
   </code>
  </div>
  <div>
   <h4>Instance Entity <strong>{{ instance_key }}</strong> </h4>
   <code>
    redis_datastore.hgetall('{{ instance_key }}') 
   </code>
  </div>
  <div>
   <h4>Cover Art Entity <strong>{{ cover_art_key }}</strong></h4>
   <code>
     redis_datastore.hgetall('{{ cover_art_key }}')
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
    using namespaces to distinguish different vocabularies
   </p>
  </div>
 </div>
</div>

%rebase slide previous="/redis-library-services-platform", next="/marc21-ingestion"
