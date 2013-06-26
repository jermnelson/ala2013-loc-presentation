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
  //self.stepOneGroup.add(self.MARC21RecordIcon);
  self.stepOneGroup.add(self.LegacyILSIconText);
 }

 self.stepTwo = function() {
  self.MARC21RecordIcon.animate().move(150, 150);
  self.stepOneGroup.opacity(0.5);
  self.PythonIcon = self.draw.image("/ala2013/assets/img/python-powered-h-70x91.png");
  self.PythonIcon.move(150, 0);
  self.RedisIcon = self.draw.image("/ala2013/assets/img/redis.png");
  self.RedisIcon.move(300, 0);
  self.MARCpyIcon = self.draw.image("/ala2013/assets/img/document_64x64.png");
  self.MARCpyIcon.move(self.PythonIcon.x(), self.PythonIcon.y()+100);
  self.MARCpyIconText = self.draw.text("bibframe/ingesters/MARC.py");
  self.MARCpyIconText.move(self.MARCpyIcon.x()-10, self.MARCpyIcon.y()+40);
  self.MovingImageWorkFlow = self.draw.line(self.MARCpyIcon.x() + 80,
                                            self.MARCpyIcon.y() + 30,
                                            380,
                                            50);
  self.MovingImageWorkFlow.animate().stroke({ width: 2, color: '#f00' });
  self.MovingImage
 }
 
 self.reloadMARCtoBibframeAnimiation = function() {
  self.stepOne();
  self.stepTwo();
      self.PersonIcon = self.draw.image("/ala2013/assets/img/admin_64x64.png");
  self.PersonIcon.move(600, 0);
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
