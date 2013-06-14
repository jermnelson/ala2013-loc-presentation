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
   <li><i class="icon-li icon-arrow-right"></i><a href="/glossary.html#fedora">Fedora commons</a> digital repository 
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
    <tr>
     <td><strong>bf:Works</strong></td>
     <td style="background-color: #F38630">33,906</td>
    </tr>
    <tr>
     <td><strong>bf:Instances</strong></td>
     <td style="background-color: #E0E4CC">33,906</td>
    </tr>  
    <tr>
     <td><strong>bf:Persons</strong></td>
     <td style="background-color: #69D2E7">41,402</td>

    </tr> 
   </tbody>
  </table>
 </div>
</div>

<script src="http://twitter.github.io/bootstrap/assets/js/jquery.js"></script>
<script src="https://raw.github.com/nnnick/Chart.js/master/Chart.min.js" type="text/javascript"></script> 
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
