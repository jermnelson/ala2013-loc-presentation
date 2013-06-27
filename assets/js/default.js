function MARC21IngestionModal() {
 var self = this;
 self.draw = SVG('marc21-bibframe-animiation');

 self.stepOne = function()  {
  
  self.LegacyILSIcon = self.draw.image('/ala2013/assets/img/server.png');
  self.LegacyILSIcon.move(0, 0);
  self.LegacyILSIconText = self.draw.text("Extracts MARC\nrecords from Legacy ILS");
  self.LegacyILSIconText.hide()
  self.LegacyILSIconText.move(self.LegacyILSIcon.x(),
                              self.LegacyILSIcon.y()+100);
  self.MARC21RecordIcon = self.draw.image("/ala2013/assets/img/marc21-icon.gif");
  self.MARC21RecordIcon.animate().move(0, 150);
  self.LegacyILSIconText.show();
  self.stepOneGroup = self.draw.group();
  self.stepOneGroup.add(self.LegacyILSIcon);
  self.stepOneGroup.add(self.MARC21RecordIcon);
  self.stepOneGroup.add(self.LegacyILSIconText);
 }

 self.stepTwo = function() {
  marc21RecordIcon = self.draw.image("/ala2013/assets/img/marc21-icon.gif");
  marc21RecordIcon.move(0,150);   
  marc21RecordIcon.animate().move(150, 150);
  self.stepTwoGroup = self.draw.group();
  self.stepTwoGroup.add(marc21RecordIcon);
  self.stepOneGroup.opacity(0.5);
  // self.PythonIcon = self.draw.image("/ala2013/assets/img/python-powered-h-70x91.png");
  // self.PythonIcon.move(150, 0);
  self.RedisIcon = self.draw.image("/ala2013/assets/img/redis.png");
  self.RedisIcon.move(300, 0);
  
  self.MARCpyIcon = self.draw.image("/ala2013/assets/img/programming_64x64.png");
  self.MARCpyIcon.move(150, 0);
  self.MARCpyIconText = self.draw.text("bibframe/ingesters/MARC.py");
  self.stepTwoGroup.add(self.MARCpyIcon);
  self.stepTwoGroup.add(self.MARCpyIconText);
  self.MARCpyIconText.move(self.MARCpyIcon.x(), self.MARCpyIcon.y()+90);
  self.MovingImageWorkFlow = self.draw.line(self.MARCpyIcon.x() + 80,
                                            self.MARCpyIcon.y() + 30,
                                            10,
                                            60);
  self.MovingImageWorkFlow.stroke({ width: 2, color: '#f00' });
  self.MovingImageWorkFlow.hide();
  self.MovingImageText = self.draw.text('bf:MovingImage:15');
  self.MovingImageText.font({family: 'system', size: 14}).stroke({color: '#f00'});
  self.leaderGroup = self.draw.group();
  self.leaderPostitionText = self.draw.text("LINE 1564: elif leader[6] is 'g'");
  self.leaderGroup.add(self.leaderPostitionText);
  self.leaderGroup.move(150,
                        self.MARC21RecordIcon.y() - 10);
  self.leaderGroup.animate().move(150,
                                  self.leaderGroup.y() - 30);
  // self.MovingImageWorkFlow.show();
  // self.MovingImageWorkFlow.animate().move(60, 50);
  self.WorkGroup = self.draw.group();
  //  self.WorkBorder = self.draw.rect(self.MARCpyIcon.x() + 5,
  //                                80);
  // self.WorkBorder.stroke({width: 1, color: '#f00'}).fill({color: '#fff'});
  // self.WorkGroup.add(self.WorkBorder);
  self.MovingImageIcon = self.draw.image("/ala2013/assets/img/animation_64x64.png");
  self.WorkGroup.add(self.MovingImageIcon);
  self.WorkGroup.add(self.MovingImageText);
  self.WorkGroup.move(self.RedisIcon.x() + 45,
                      self.RedisIcon.y() + 80); 
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
 }

 self.stepThree = function() {
  self.stepTwoGroup.move(self.stepTwoGroup.x() - 60,
                         self.stepTwoGroup.y() + 20);
  self.stepTwoGroup.opacity(0.5);
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


 }

 self.reloadMARCtoBibframeAnimiation = function() {
  self.stepOne();
  self.stepTwo();
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
 }

 self.stopMARCtoBibframeAnimiation = function() {

 }

}
