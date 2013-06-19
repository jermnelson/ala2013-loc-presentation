%include masthead category='slide', page=page, slides=slides

<div class="row-fluid marketing">
 <div class="span12">
  <div class="btn-group"> 
   <a class="btn btn-warning" href="{{ previous }}">
    <i class="icon-backward"></i>
   </a>
   <a class="btn btn-success" href="{{ next }}">
    <i class="icon-forward"></i>
   </a>
  </div>
 </div>
</div>

%include

<div class="row-fluid marketing">
 <div class="span12 text-right">
  <div class="btn-group"> 
   <a class="btn btn-warning" href="{{ previous }}">
    <i class="icon-backward"></i>
   </a>
   <a class="btn btn-success" href="{{ next }}">
    <i class="icon-forward"></i>
   </a>
  </div>
 </div>
</div>


%rebase layout
