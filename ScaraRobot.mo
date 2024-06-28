model ScaraRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-84, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder Cylinder(length = 3, diameter = 0.3, r = {0, 0, 1.35}, color = {0, 0, 255}) annotation(
    Placement(transformation(origin = {-22, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Plane(length = 3, width = 3, height = 0.1, color = {128, 128, 128}, r = {1.35, 0, 0}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {-54, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowConnector(length = 0.3, diameter = 0.6, r = {0.2, 0, 0.15}, color = {213, 163, 6}, innerDiameter = 0.3, lengthDirection = {0, 0, 1}) annotation(
    Placement(transformation(origin = {38, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox YellowBar(r = {2.2, 0, -0.15}, length = 2, width = 0.3, height = 0.3, color = {213, 163, 6}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {68, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true) annotation(
    Placement(transformation(origin = {8, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(transformation(origin = {8, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.05, amplitude = 1) annotation(
    Placement(transformation(origin = {8, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowRevolute(length = 0.3, diameter = 0.6, r = {0, 0, -0.2}, color = {213, 163, 6}, innerDiameter = 0.3, lengthDirection = {0, 0, 1}) annotation(
    Placement(transformation(origin = {98, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder CylinderConnecting(color = {0, 0, 255}, diameter = 0.3, length = 1, r = {0, 0, 0.50}) annotation(
    Placement(transformation(origin = {130, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder LightBlueRevolute(diameter = 0.6, innerDiameter = 0.3, length = 0.3, r = {0.2, 0, 0.15}, lengthDirection = {0, 0, 1}) annotation(
    Placement(transformation(origin = {188, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox LightBlueBar(height = 0.3, length = 2, r = {2.2, 0, -0.15}, width = 0.3, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {218, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder LightBlueRevolute2( diameter = 0.6, innerDiameter = 0.3, length = 0.3, r = {0, 0, -0.65}, lengthDirection = {0, 0, 1}) annotation(
    Placement(transformation(origin = {248, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GrayWeld(color = {128, 128, 128}, diameter = 0.3, length = 1.5, r = {0, 0, 0.50}) annotation(
    Placement(transformation(origin = {306, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(animation = false, n = {0, 0, 1}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {276, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(amplitude = 0.5, f = 0.5) annotation(
    Placement(transformation(origin = {276, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {276, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(useAxisFlange = true) annotation(
    Placement(transformation(origin = {160, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position11 annotation(
    Placement(transformation(origin = {160, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine11(amplitude = -1, f = 0.05) annotation(
    Placement(transformation(origin = {160, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  connect(world.frame_b, Plane.frame_a) annotation(
    Line(points = {{-74, 0}, {-64, 0}}, color = {95, 95, 95}));
  connect(revolute.frame_b, YellowConnector.frame_a) annotation(
    Line(points = {{18, 0}, {28, 0}}, color = {95, 95, 95}));
  connect(sine1.y, position1.phi_ref) annotation(
    Line(points = {{-3, 66}, {-13, 66}, {-13, 36}, {-4, 36}}, color = {0, 0, 127}));
  connect(position1.flange, revolute.axis) annotation(
    Line(points = {{18, 36}, {18, 10}, {8, 10}}));
  connect(prismatic1.frame_b, GrayWeld.frame_a) annotation(
    Line(points = {{286, 0}, {296, 0}}, color = {95, 95, 95}));
  connect(position2.flange, prismatic1.axis) annotation(
    Line(points = {{286, 36}, {284, 36}, {284, 6}}, color = {0, 127, 0}));
  connect(position2.s_ref, sine2.y) annotation(
    Line(points = {{264, 36}, {260, 36}, {260, 66}, {266, 66}}, color = {0, 0, 127}));
  connect(position11.flange, revolute2.axis) annotation(
    Line(points = {{170, 36}, {170, 10}, {160, 10}}));
  connect(CylinderConnecting.frame_b, revolute2.frame_a) annotation(
    Line(points = {{140, 0}, {150, 0}}, color = {95, 95, 95}));
  connect(revolute2.frame_b, LightBlueRevolute.frame_a) annotation(
    Line(points = {{170, 0}, {178, 0}}, color = {95, 95, 95}));
  connect(position11.phi_ref, sine11.y) annotation(
    Line(points = {{148, 36}, {142, 36}, {142, 66}, {150, 66}}, color = {0, 0, 127}));
  connect(Cylinder.frame_b, revolute.frame_a) annotation(
    Line(points = {{-12, 0}, {-2, 0}}, color = {95, 95, 95}));
  connect(Plane.frame_b, Cylinder.frame_a) annotation(
    Line(points = {{-44, 0}, {-32, 0}}, color = {95, 95, 95}));
  connect(YellowConnector.frame_b, YellowBar.frame_a) annotation(
    Line(points = {{48, 0}, {58, 0}}, color = {95, 95, 95}));
  connect(YellowBar.frame_b, YellowRevolute.frame_a) annotation(
    Line(points = {{78, 0}, {88, 0}}, color = {95, 95, 95}));
  connect(YellowRevolute.frame_b, CylinderConnecting.frame_a) annotation(
    Line(points = {{108, 0}, {120, 0}}, color = {95, 95, 95}));
  connect(LightBlueRevolute.frame_b, LightBlueBar.frame_a) annotation(
    Line(points = {{198, 0}, {208, 0}}, color = {95, 95, 95}));
  connect(LightBlueBar.frame_b, LightBlueRevolute2.frame_a) annotation(
    Line(points = {{228, 0}, {238, 0}}, color = {95, 95, 95}));
  connect(LightBlueRevolute2.frame_b, prismatic1.frame_a) annotation(
    Line(points = {{258, 0}, {266, 0}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-100, 80}, {320, -20}})),
    version = "");
end ScaraRobot;
