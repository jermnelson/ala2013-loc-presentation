%include masthead category='misc', page='glossary', slides=slides

<div class="hero-unit">
 <h2>Addendum</h2>
 <h1 class="slide">Glossary</h1>
 <p class="lead">
  Glossary of terms, concepts, and acronyms used in this presentation.
 </p> 
</div>
<div class="row-fluid marketing">
 <div class="span5 well">
  <h3>A through M</h3>
  <dl>
   <dt><a name="Annotation"></a>Annotation</dt>
   <dd>
    A core <a href="#BIBFRAME">BIBFRAME</a> class that through its subclasses, associates
    data with other resources. 
   </dd>
   <dt><a name="aristotle-library-apps"></a>Aristotle Library Apps</dt>
   <dd>
    A <a href="#django">Django</a>-based open-source project that uses Twitter's Bootstrap to
    create public and staff <a href="#HTML5">HTML5</a> apps that interacts with a bibliographic  
    <a href="#BIBFRAME-Datastore">Redis datastore</a>.
   </dd>
   <dt><a name="authority"></a>Authority</dt>
   <dd>
     In the <a href="#BIBFRAME">BIBFRAME</a> bibliographic model, an authority is a core class
     that established a relationship between a <a href="#CreativeWork">Creative Work</a> or 
     <a href="#Instance">Instance</a> to a <a href="#Person">People</a>, <a href="#Place">Places</a>,
     <a href="#Organization">Organizations</a>, or <a href="#Topic">Topics</a>
   </dd>
   <dt><a name="BIBFRAME"></a>BIBFRAME</dt>
   <dd>
     BIBFRAME is the modeling effort by the Library of Congress Bibliographic Framework Initiative that follows
    a <a href="#LinkedData">LinkedData</a> approach using concepts from <a href="#FRBR">FRBR</a> and 
    <a href="#RDA">RDA</a>. BIBFRAME is made up of four classes; 
    <a href="#CreativeWork">Creative Work</a>, <a href="#Instance">Instance</a>, 
    <a href="#Authority">Authority</a>, and <a href="#Annotation">Annotation</a></a>.
   </dd>
   </dd>
   <dt><a name="BIBFRAME-Datastore"></a>BIBFRAME Datastore</dt>
   <dd>
    An open-source project, not affiliated with the Library of Congress, that has configuration,
    documentation, and custom scripting for a native BIBFRAME datastore implemented in Redis.
    Source code is available at 
    <a href="https://github.com/jermnelson/BIBFRAME-Datastore">https://github.com/jermnelson/BIBFRAME-Datastore</a>.
   </dd>  
   <dt><a name="CreativeWork"></a>Creative Work</dt>
   <dd>
     A core class of the <a href=#BIBFRAME">BIBFRAME</a> model.
   </dd>
     <a href="#instance">Instance</a> to a <a href="#people">People</a>, <a href="#places">Places</a>,

   <dt><a name="DevOps"></a>DevOps</a></dt>
   <dd>
    A new buzzword in information technology, DevOps (short of development and operations),
	uses philosophy, management and technologies from multiple sources include AGILE development 
	and Lean Start-ups, to deliver better service, with quicker turnaround time for technology 
	in an organization by combining the systems operational groups with the development of 
	custom software.
   </dd>
   <dt><a name="Django"></a>Django</dt>
   <dd>
    <a href="https://www.djangoproject.com/">Django</a> is an a <a href="#Python">Python</a>-based web framework that is used
    in the <a href="#">Aristotle Library Apps</a> project.
   </dd>
   <dt><a name="FRBR"></a>FRBR</dt>
   <dd> 
    An acronym for <a href="http://www.ifla.org/publications/functional-requirements-for-bibliographic-records">Functional Requirements for Bibliographic Records</a> is an Entity-Relationship model for bibliographic records that was first released in 1998 by an 
    IFLA study group. FRBR is composed of four main entities; Work, Expression, Manifestation, and Item also
    known as <a href="#WEMI">WEMI</a> along with various other entities to support creator, publisher, and subject authority
    relationships with the core WEMI entities. 
   <dt><a name="HTML5"></a>HTML5</dt>
   <dd>
    HTML5 is the latest HTML specification from W3C and offers a lot features and advantages over older HTML
    specifications including better support for video, local storage, and micro-data.
   </dd>
   <dt><a name="Instance"></a>Instance</dt>
   <dd>A core class of the <a href="#BIBFRAME">BIBFRAME</a> model with the draft specification available 
    at <a href="http://bibframe.org/vocab/Instance.html">http://bibframe.org/vocab/Instance.html</a>.
   </dd>
   <dt><a name="LinkedData"></a>Linked Data</dt>
   <dd>
    Linked Data is an international effort by multiple user communities to build a semantic web for representing relationships
    between entities and objects on the Internet.
   </dd>
   <dt><a name="MARC21"></a>MARC21</a></dt>
   <dd>
    An acronym for <b>Ma</b>chine <b>R</b>eadable <b>C</b>ataloging record, MARC21 is the most 
    widely used data-carrier format and specification 
    used by libraries today. 
   </dd>
  </dl>
 </div>
 <div class="span5 well">
  <h3>N through Z</h3>
  <dl>
   <dt><a name="NoSQL"></a>NoSQL</dt>
   <dd>
    A general term for the class of newer data storage technologies that differ
    from traditional databases that use SQL.
   </dd>
   <dt><a name="Organization"></a>Organization</dt>
   <dd>
    A  <a href="#BIBFRAME">BIBFRAME</a> class that represents a human organization including corporations,
    government entities, non-profit, religious, or any other structured group. An Organization class
    defines an authority relationship with 
    with a <a href="#CreativeWork">Creative Work</a> or <a href="#Instance">Instance</a>
   </dd>
   <dt><a name="Person"></a>Person</dt> 
   <dd>A <a href="#BIBFRAME">BIBFRAME</a> class that represents a human being. A Person entity
      defines a type of authority relationship with a <a href="#CreativeWork">Creative Work</a> or
      <a href="#Instance">Instance</a></dd>
   <dt><a name="Place"></a>Place</dt>
   <dd>
     A <a href="#BIBFRAME">BIBFRAME</a> class that represents a geographic location. A Place entity
     defines a geographic authority relationship with a <a href="#CreativeWork">Creative Work</a> or
     <a href="#Instance">Instance</a>
   </dd>
   <dt><a name="Python"></a>Python</dt>
   <dd>
    <a href="http://www.python.org/">Python</a> is a popular open-source programming language that used in 
    the <a href="#">Aristotle Library Apps</a> and
    <a href="#BIBFRAME-Datastore">BIBFRAME Datastore</a> project. 
   </dd>
   <dt><a name="RDA"></a>RDA</a></dt>
   <dd>
    An acronym for Resource Discovery and Access, RDA is joint effort between <a href="#ALA">ALA</a> and the 
    Australian Committee on Cataloging, the British Library, the Library of Congress, Canadian Library Association,
	and <a href="#CILIP">CILIP</a>. RDA is a new cataloging standard to replace <a href="#AACR2">AACR2</a>, using
	concepts from <a href="#LinkedData">Linked Data</a>, and the <a href="#FRBR">FRBR</a> family of bibliographic
	specifications including <a href="#FRAD">FRAD</a>.
   </dd>
   <dt><a name="Redis"></a>Redis</dt>
   <dd>
    <a href="http://redis.io">Redis</a> is an in-memory advanced key-value datastore that is considered
    a <a href="#NoSQL">NoSQL</a> technology. Redis is used extensively by large commercial websites and
    is the primary storage technology used in <a href="#RLSP">RLSP</a>.
   </dd>
   <dt><a name="RLSP"></a>RLSP</dt>
   <dd>
    An acronym for the Redis Library Services Platform, an open source project made up of two open source
    projects, <a href="#BIBFRAME-Datastore">BIBFRAME-Datastore</a> and 
    <a href="#aristotle-library-apps">Aristotle Library Apps</a>.
   </dd>
   <dt><a name="schema"></a>Schema.org</dt>
   <dd>
    A joint effort by Google, Microsfot, Bandu, and Yan.., a schema 
   </dd>
   <dt><a name="Topic"></a>Topic</dt>
   <dd>
    A <a href="#BIBFRAME">BIBFRAME</a> class representing a specific topic that has
    an authority relationship with either a <a href="#CreativeWork">Creative Work</a> or
     <a href="#Instance">Instance</a>
   </dd>
   <dt><a name="WEMI"></a>WEMI</dt>
   <dd>
    An acronym for <a href="#FRBR">FRBR</a>'s Work, Expression, Manifestation, and Item entities.
   </dd>
  </dl>

 </div>
</div>
%rebase layout
