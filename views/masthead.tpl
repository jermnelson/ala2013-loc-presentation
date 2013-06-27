<div class="masthead">
 <ul class="nav nav-pills pull-right">
  <li 
   % if category == 'home':
   class="active"
   % end
   ><a href="/ala2013/">Home</a></li>
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
     % for slide in slides:
     <li
       % if page == slide.get('name'):
       class="active"
       % end
     ><a href="{{!slide.get('name')}}">{{!slide.get('headline')}}</a></li>
     % end
    </ul>
  </li>
  <li
   % if category == 'misc':
   class="dropdown active"
   % else:
   class="dropdown"
   % end
   >
    <a href="#"
       class="dropdown-toggle"
       data-toggle="dropdown"
       >Addendum <i class="caret"></i>
    </a>
    <ul class="dropdown-menu" role="menu">
      <li
      % if page == 'resources':
      class="active"
      % end
      ><a href="/ala2013/resources">Resources</a></li>
      <li
      % if page == 'glossary':
      class="active"
      % end
      ><a href="/ala2013/glossary.html">Glossary</a></li>
      <li
      % if page == 'contact':
      class="active"
      % end
      ><a href="/ala2013/contact">Contact Information</a></li> 
    </ul>
    </a>
  </li>
 </ul>
 <h3 class="muted">ALA 2013 - Bibframe Forum</h3>
</div>
