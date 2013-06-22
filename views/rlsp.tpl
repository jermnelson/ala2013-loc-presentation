<div class="row-fluid">
  <div class="span12 hero-unit">
   <h3>Experimenting with Bibframe & Redis</h3>
   <h1 class="slide">{{!slides[0].get('headline')}}</h1>
   <p class="lead">
    {{!slides[0].get('description')}}
   </p>
  </div>
</div>

 <hr>

<div class="row-fluid marketing">
 <div class="span6">
  <h2>Aristotle Library Apps</h2>
  <p class="lead">
   Designed as loosely coupled single-page <a href="/glossary.html#html5">HTML5</a> apps
   targeting mobile and tablet user-interfaces with progessie enhancements for full-desktop
   web browsers and network speeds.
  </p>
  <ul class="icons-ul lead">
   <li><i class="icon-li icon-arrow-right"></i>Based on <a href="/glossary.html#django">Django</a></li>
   <li><i class="icon-li icon-arrow-right"></i>Interfaces with <a href="/glossary.html#redis">Redis datastore</a></li>
   <li><i class="icon-li icon-arrow-right"></i><a href="/glossary.html#solr">Solr</a> text indexer </li>
   <li><i class="icon-li icon-arrow-right"></i><a href="/glossary.html#fedora-commons">Fedora commons</a> digital repository 
   software.</li>
  </ul>
 </div>

 <div class="span6">
  <h2>BIBFRAME Redis Datastore</h2>
  <p class="lead">Collection of redis configuration files and Lua server-side scripts including documentation
     on running Redis as a bibliographic and operational datastore as single instance or as a 
     cluster of Redis instances.
  </p> 
  </div>
</div>

<hr>

<div class="row-fluid marketing">
 <div class="span8">
  <h3>Biframe Key Distribution for Demo Redis Library Services Platform</h3>
  <canvas id="cc-rlsp-pie" width="400" height="400"></canvas> 
 </div>
 <div class="span4">
  <table class="table table-bordered table-striped">
   <thead>
    <tr>
     <th colspan="2">Legend:</th>
    </tr>
    <tr>
   </thead>
   <tbody>
   % for stat in stats:
    <tr>
     <td><strong>{{ stat.get('name') }}</strong></td>
     <td style="background-color: {{ stat.get('color') }}"> {{ stat.get('value') }}</td>
    </tr>
   % end
   </tbody>
  </table>
 </div>
</div>

<hr>

<div class="row-fluid marketing">
 <div class="span6">
  <a href="#rlsp-basic" 
     data-toggle="modal" 
     class="btn btn-large btn-inverse"><h3>Basic Redis Datastore</h3></a>
 </div>
 <div class="span6">
  <a href="#rlsp-cluster" 
     data-toggle="modal" 
     class="btn btn-large btn-success"><h3>Redis Cluster Datastore</h3></a>
 </div>
</div>

<div class="modal hide fade" id="rlsp-basic">
 <div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h2>Basic Redis Datastore</h2>
 </div>
 <div class="modal-body">
  <ul class="lead">
   <li>Uses one Redis Instance for bibliographic and operational data</li>
   <li>Quickest method for launching a working Redis Library Services Platform</li>
   <li>Scales to memory limitations of Redis</li>
 <h4>Examples</h4>
  <dl class="lead">
    <dt>Colorado College Production</dt>
    <dd>
     <a href="http://discovery.coloradocollege.edu/apps/">http://discovery.coloradocollege.edu/apps/</a>
    </dd>
    <dt>Prospector Consortium Demo</dt>
    <dd>
     <a href="http://tuttdemo.coloradocollege.edu/">http://tuttdemo.coloradocollege.edu</a>
    </dd>
  </dl>
 </div>
 <div class="modal-footer">
  <a class="btn btn-primary" data-dismiss="modal">Close</a>
 </div>
</div>

<div class="modal hide fade" id="rlsp-cluster">
 <div class="modal-header">
  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  <h2>Redis Cluster Datastore</h2>
 </div>
 <div class="modal-body">
  <ul class="lead">
   <li>Uses multiple Redis Instances running on one or more machines</li>
   <li>Each Redis Instance has a shard of the total number of Redis keys</li>
   <li>Current implementation uses client-sharding strategy similar to 
       <a href="#">Craigslist</a> with the 
       <a href="#">rediscluser</a> python module</li>
  </ul>
  <h4>Example: Tutt Library TLC1 Clusters</h4>
  <ul class="lead">
    <li>Spare computing cycles of an always on instruction lab with the multi-core
        PC workstations with multiple gig RAM, sit idle most of the time</li>
    <li>Uses Microsoft's port of <a href="#">Redis</a> to run Redis instance on each
        workstation in the background</li>
  </ul>
 </div>
 <div class="modal-footer">
  <a class="btn btn-primary" data-dismiss="modal">Close</a>
 </div>
</div>

<script src="http://twitter.github.io/bootstrap/assets/js/jquery.js"></script>
<script src="/ala2013/assets/js/Chart.min.js" type="text/javascript"></script> 
<script>
 var ctx = $('#cc-rlsp-pie').get(0).getContext('2d');
 var data = [
   % for stat in stats:
   {"value": {{ stat.get('value') }},
    "color": "{{ stat.get('color') }}" },
   % end
   ];
    
 var rlspPieChart = new Chart(ctx).Pie(data);
</script>

%rebase slide previous="/", next="bibframe-redis", page=page, slides=slides
