function MARC21IngestionModal() {
 var self = this;
 self.stepDescription = ko.observable();
 self.draw = SVG('marc21-bibframe-animiation');

 self.stepOne = function()  {
  self.stepDescription("MARC21 records exported from Legacy ILS");
  self.LegacyILSIcon = self.draw.image('/ala2013/assets/img/server.png');
  self.LegacyILSIcon.move(0, 0);
  self.stepOneGroup = self.draw.group();
  for(var i=0; i < 4; i++) {
    MARC21RecordIcon = self.draw.image("/ala2013/assets/img/marc21-icon.gif");
    MARC21RecordIcon.animate(2000, '<').move(i + i*50, i*15 + 125);
    self.stepOneGroup.add(MARC21RecordIcon);
  }
  self.stepOneGroup.add(self.LegacyILSIcon);
  self.stepOneGroup.add(MARC21RecordIcon);
 }

 self.stepTwo = function() {
  self.stepDescription("MARC record is parsed, values assigned to BIBFRAME " +
                       "properties, starting with Creative Work");

  self.stepOneGroup.opacity(0.5);
  self.MARCpyGroup = self.draw.group();
  MARCpyIcon = self.draw.image("/ala2013/assets/img/programming_64x64.png");
  MARCpyIcon.move(0, 64);
  MARCpyIconText = self.draw.text("bibframe/ingesters/MARC.py");
  MARCpyIconText.font({family: 'Arial, Serif', size: 14, weight: 'bold'});
  MARCpyIconText.move(MARCpyIcon.x(), MARCpyIcon.y()+ 95);
  self.MARCpyGroup.add(MARCpyIconText);
  self.MARCpyGroup.add(MARCpyIcon);
  self.MARCpyGroup.hide();
  self.stepTwoGroup = self.draw.group();
  self.stepTwoGroup.add(self.MARCpyGroup);
  self.RedisIcon = self.draw.image("/ala2013/assets/img/redis.png");
  self.RedisIcon.move(250, 0);
  self.RedisIcon.hide()
  marc21RecordIcon = self.draw.image("/ala2013/assets/img/marc21-icon.gif");
  marc21RecordIcon.move(self.stepOneGroup.x() + 152, self.stepOneGroup.y() + 150);  
  self.stepTwoGroup.add(marc21RecordIcon);
  self.leaderGroup = self.draw.group();
  self.leaderGroup.add( self.draw.text("LINE 1564: elif leader[6] is 'g'"));
  self.leaderGroup.move(0, 175);
  self.stepTwoGroup.add(self.leaderGroup);
  self.titleGroup = self.draw.group();
  self.titleGroup.add(self.draw.text("LINE 1642: title_entity = TitleEntity"));
  self.titleGroup.move(0, 175);
  self.stepTwoGroup.add(self.titleGroup);
  self.MovingImageGroup = self.draw.group();
  MovingImageText = self.draw.text('bf:MovingImage:15');
  MovingImageText.font({family: 'system', size: 14}).stroke({ width: 1, color: '#f00'});
  self.MovingImageGroup.add(MovingImageText);
  self.MovingImageGroup.move(150, 10);
  self.MovingImageGroup.hide();
  self.TitleEntityGroup = self.draw.group();
  TitleEntityText = self.draw.text('bf:TitleEntity:200');
  TitleEntityText.font({family: 'system', size: 14}).stroke({ width: 1, color: '#f00'});
  self.TitleEntityGroup.add(TitleEntityText);
  self.TitleEntityGroup.move(150, 20);
  self.TitleEntityGroup.hide();
  marc21RecordIcon.animate().move(0,  marc21RecordIcon.y()+40).after(function() {
   self.stepOneGroup.hide(); 
   self.MARCpyGroup.show();
   self.leaderGroup.animate().move(0, 5).after(function() {
     leaderIngestPath = self.draw.path('M5,150L250,15');
     leaderIngestPath.attr({width: 5, color: '#f00'});
     self.RedisIcon.show();
     self.MovingImageGroup.show();
     self.MovingImageGroup.animate().move(250, self.RedisIcon.y() + 70).after(function() {
       self.titleGroup.animate().move(0, 25).after(function() {
         self.TitleEntityGroup.show();
         self.TitleEntityGroup.animate().move(250, 100);
       });
     });    
   });
  });
   
  // self.PythonIcon = self.draw.image("/ala2013/assets/img/python-powered-h-70x91.png");
  // self.PythonIcon.move(150, 0);
  ; 
  // self.MovingImageWorkFlow.show();
  // self.MovingImageWorkFlow.animate().move(60, 50);
  //self.WorkGroup = self.draw.group();
  //  self.WorkBorder = self.draw.rect(self.MARCpyIcon.x() + 5,
  //                                80);
  // self.WorkBorder.stroke({width: 1, color: '#f00'}).fill({color: '#fff'});
  // self.WorkGroup.add(self.WorkBorder);
  /*
  self.InstanceGroup = self.draw.group();
  self.InstanceGroup.add(self.draw.image('/ala2013/assets/img/cinema_64x64.png'));
  self.InstanceGroup.add(self.draw.text('bf:Instance:45'));
  self.InstanceGroup.move(self.WorkGroup.x(),
                          self.WorkGroup.y() + 100);
  self.instanceOf = self.draw.group();
  var hget_cmd = self.draw.text("HGET 'instanceOf'");
  hget_cmd.stroke({color: '#f00'});
  self.instanceOf.add(hget_cmd);
  self.instanceOf.hide()
  self.instanceOf.move(self.InstanceGroup.x() + 30,
                       self.InstanceGroup.y() + 30);
  self.instanceOf.show();
  self.instanceOf.animate().move(self.instanceOf.x(),
                                 self.WorkGroup.y() + 30);
  */
 }

 self.stepThree = function() {
  self.stepDescription("BIBFRAME entities are made up of Redis key collections " +
                       "that can now be accessed by Mobile, Tablet, and Web " +
                       "Browser Users as well as by software agents and " +
                       "algorithms.");
  self.stepTwoGroup.opacity(0.5);
  self.WorkGroup = self.draw.group();
  var MovingImageIcon = self.draw.image("/ala2013/assets/img/animation_64x64.png");
  self.WorkGroup.add(MovingImageIcon);
  var MovingImageIconText = self.draw.text("Moving Image Object");
  MovingImageIconText.font({size: 18});
  MovingImageIconText.move(MovingImageIcon.x() - 10,
                           MovingImageIcon.y() + 95)
  self.WorkGroup.add(MovingImageIconText);
  self.WorkGroup.move(200, 100);
  self.WorkGroup.hide();
  self.aristotleGroup = self.draw.group();
  var appImage = self.draw.image('/ala2013/assets/img/mobile_64x64.png');
  self.aristotleGroup.add(appImage);
  var appImageText = self.draw.text("Aristotle Library Apps");
  appImageText.font({size: 18});
  appImageText.move(appImage.x() - 15, appImage.y() + 90);
  self.aristotleGroup.add(appImageText);
  self.aristotleGroup.move(350, 0);
  self.aristotleGroup.hide();
  setInterval(function () {
    self.stepTwoGroup.hide();
    self.RedisIcon.animate().move(0, 0).after(function () {
      self.TitleEntityGroup.animate().move(0, 70).after(function() {
        self.MovingImageGroup.animate().move(0, 90).after(function() {
          self.WorkGroup.show();
          self.aristotleGroup.show();
        });
      });
    });
  },
  1500);

  /*
  self.stepTwoGroup.move(self.stepTwoGroup.x() - 60,
                         self.stepTwoGroup.y());
    self.leaderGroup.hide();
  self.WorkGroup.animate().move(self.WorkGroup.x() + 100,
                                self.WorkGroup.y() - 50);

  // self.PersonIcon.move(600, 0);
  // self.PersonIconText = self.draw.text("Person Authority");
  // self.PersonIconText.move(self.PersonIcon.x() + 20, self.PersonIcon.y() + 100).fill('#000');
  // self.PersonIconText.font({family: 'Courier Sans Serif', size: 18, anchor: 'middle', leading: 1});
  self.OrganizationIcon = self.draw.image("/ala2013/assets/img/architecture_64x64.png");
  self.OrganizationIcon.move(600, 120);
  self.OrganizationIconText = self.draw.text("Library Organization");
  self.OrganizationIconText.move(self.OrganizationIcon.x(),
                                 self.OrganizationIcon.y() + 100).fill("#000");
  self.OrganizationIconText.font({family: 'Courier Sans Serif', size: 18, anchor: 'middle', leading: 1});

  */
 }

 self.reloadMARCtoBibframeAnimiation = function() {
  self.draw.clear();
  /*
  self.PersonIconText = self.draw.text("Person Authority");
  self.PersonIconText.move(self.PersonIcon.x() + 20, self.PersonIcon.y() + 100).fill('#000');
  self.PersonIconText.font({family: 'Courier Sans Serif', size: 18, anchor: 'middle', leading: 1});
  self.OrganizationIcon = self.draw.image("/ala2013/assets/img/architecture_64x64.png");
  self.OrganizationIcon.move(600, 120);
  self.OrganizationIconText = self.draw.text("Library Organization");
  self.OrganizationIconText.move(self.OrganizationIcon.x(),
                                 self.OrganizationIcon.y() + 100).fill("#000");
  self.OrganizationIconText.font({family: 'Courier Sans Serif', size: 18, anchor: 'middle', leading: 1});
  //self.marc21Image = self.draw.image("/assets/img/marc21-icon.gif");
  //self.marc21Image.move(300, 40);
  */
 }

 self.stopMARCtoBibframeAnimiation = function() {

 }

}
