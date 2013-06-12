<div class="masthead">
 <ul class="nav nav-pills pull-right">
  <li 
   % if category == 'home':
   class="active"
   % end
   ><a href="/">Home</a></li>
  <li
   % if category == 'slide':
    class="dropdown active"
   % else:
    class="dropdown"
   % end
   >
    <a class="dropdown-toggle"
       data-toggle="dropdown" 
       href="#">Slides
       <i class="caret"></i>
    </a>
    <ul class="dropdown-menu" role="menu">
     <li><a href="/redis-library-services-platform">Redis Library Services Platform</a></li>
     <li><a href="/bibframe-redis">Bibframe Entities in Redis</a></li>
     <li><a href="/marc21-ingestion">Ingesting MARC21 records into RLSP</a></li>
     <li><a href="/mods-ingestion">Ingesting MODS records into RLSP</a></li>
     <li><a href="/future">Future Directions</a></li>
    </ul>
  </li>
  <li
   % if category == 'misc':
   class="dropdown active"
   % else:
   class="dropdown"
   % end
   >
    <a href="/resources"
       class="dropdown-toggle"
       data-toggle="dropdown"
       href="#">Addendum
    <i class="caret"></i>
    </a>
    <ul class="dropdown-menu" role="menu">
      <li><a href="/resources">Resources</a></li>
      <li><a href="/glossary">Glossary</a></li>
      <li><a href="/contact">Contact Information</a></li> 
    </ul>
    </a>
  </li>
 </ul>
 <h3 class="muted">ALA 2013 - Bibframe Forum</h3>
</div>
