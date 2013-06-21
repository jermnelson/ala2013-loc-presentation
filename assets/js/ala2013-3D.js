 window.requestAnimFrame = (function(){
  return  window.requestAnimationFrame       ||
          window.webkitRequestAnimationFrame ||
          window.mozRequestAnimationFrame    ||
          function( callback ){
            window.setTimeout(callback, 1000 / 60);
          };
 })();

 function MARC21AnimationModal() {
  var self = this;
  //self.paper = Raphael("canvas", 640, 480);
  self.WIDTH = 640;
  self.HEIGHT = 480;
  self.VIEW_ANGLE = 45;
  self.ASPECT = self.WIDTH / self.HEIGHT;
  self.NEAR = 0.1;
  self.FAR = 10000;
  self.$container = $('#marc21-bibframe-3D');
  self.renderer = new THREE.WebGLRenderer();
  self.camera = new THREE.PerspectiveCamera(self.VIEW_ANGLE,
                                            self.ASPECT,
                                            self.NEAR,
                                            self.FAR);
  self.scene = new THREE.Scene();
  self.scene.add(self.camera);
  self.camera.position.z = 300;
  self.renderer.setSize(self.WIDTH, self.HEIGHT);
  self.container.append(self.renderer.domElement);
  self.ColoradoCollegeImage = $("#cc-icon");
  self.marc21Image = $('#marc21-icon');
  self.sphereMaterial = new THREE.MeshBasicMaterial({color: 0xCC0000, wireframe: true});
  self.sphere = new THREE.Mesh(
    new THREE.PlaneGeometry(100, 100, 4, 4),
    self.sphereMaterial);
  self.scene.add(self.sphere);
  self.lineMaterial = new THREE.LineBasicMaterial({ color: 0x0000ff });
  self.lineGeometry = new THREE.Geometry();
  self.lineGeometry.vertices.push(new THREE.Vector3(-10, 0, 0));
  self.lineGeometry.vertices.push(new THREE.Vector3(0, 10, 0));
  self.lineGeometry.vertices.push(new THREE.Vector3(10, 0, 0));
  self.line = new THREE.Line(self.lineGeometry, self.lineMaterial);
  self.scene.add(self.line)
  self.pointLight = new THREE.PointLight(0xFFFFFF);
  self.pointLight.position.x = 10;
  self.pointLight.position.y = 50;
  self.pointLight.position.z = 130;
  self.scene.add(self.pointLight);

  self.animate = function() {
    requestAnimationFrame(self.animate);
    self.render();
  }
  
  self.render = function() {
    self.sphere.rotation.y += 0.01;
    self.renderer.render(self.scene, self.camera);
  }

  self.stopMARCtoBibframeAnimiation = function() {
   $('#marc21-bibframe-3D').empty();
 //   self.paper.clear();
  }
  self.reloadMARCtoBibframeAnimiation = function() {
    self.animate();
   // self.paper.image(self.marc21Image.attr('src'), 0, 0, 106, 108);
   // self.paper.image(self.ColoradoCollegeImage.attr('src'), 150, 0, 372 , 33);

    //self.paper.rect(0, 0, 640, 480, 10).attr({ fill: "#fff", stroke: "#000"});
  }
  self.reloadAnimation =  ko.observable();
 }

