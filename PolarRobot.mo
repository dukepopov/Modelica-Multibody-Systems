model PolarRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-84, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder Cylinder(length = 3, diameter = 0.3, r = {0, 0, 1.35}, color = {0, 0, 255}) annotation(
    Placement(transformation(origin = {-26, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Plane(length = 3, width = 3, height = 0.1, color = {128, 128, 128}, r = {1.5, 0, 0}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {-54, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowConnector(length = 0.3, diameter = 0.6, r = {0, 0, 0.15}, color = {213, 163, 6}, innerDiameter = 0.3, lengthDirection = {0, 0, 1}) annotation(
    Placement(transformation(origin = {76, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox YellowBar(r = {2, -0.2, 0}, length = 2, width = 0.3, height = 0.3, color = {213, 163, 6}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {108, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, n = {0, 0, 1}, animation = false) annotation(
    Placement(transformation(origin = {4, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine(f = 0.01, amplitude = 1.25) annotation(
    Placement(transformation(origin = {4, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position annotation(
    Placement(transformation(origin = {4, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true) annotation(
    Placement(transformation(origin = {44, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(transformation(origin = {44, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.01, amplitude = 3.14) annotation(
    Placement(transformation(origin = {44, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowRevolute(length = 0.4, diameter = 0.6, r = {-0.5, 0.55, 0}, color = {213, 163, 6}, lengthDirection = {0, 1, 0}) annotation(
    Placement(transformation(origin = {168, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox SkyBlueBar(color = {135, 206, 235}, height = 0.3, length = 2.5, r = {1.5, 0, 0}, width = 0.3, innerWidth = 0.2, innerHeight = 0.2, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {198, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox GreenBar(height = 0.2, length = 2.25, r = {1, 0, 0}, width = 0.2, color = {124, 252, 0}, animation = true) annotation(
    Placement(transformation(origin = {258, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(useAxisFlange = true, n = {0, 1, 0}, animation = false) annotation(
    Placement(transformation(origin = {138, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position11 annotation(
    Placement(transformation(origin = {138, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine11(amplitude = -1, f = 0.1) annotation(
    Placement(transformation(origin = {138, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(animation = false, n = {1, 0, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {228, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(amplitude = 1, f = 0.1) annotation(
    Placement(transformation(origin = {226, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {226, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor(get_r = true, get_v = true) annotation(
    Placement(transformation(origin = {288, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, Plane.frame_a) annotation(
    Line(points = {{-74, 0}, {-64, 0}}, color = {95, 95, 95}));
  connect(prismatic.frame_a, Cylinder.frame_b) annotation(
    Line(points = {{-6, 0}, {-16, 0}}, color = {95, 95, 95}));
  connect(sine.y, position.s_ref) annotation(
    Line(points = {{-7, 66}, {-8, 66}, {-8, 36}}, color = {0, 0, 127}));
  connect(prismatic.frame_b, revolute.frame_a) annotation(
    Line(points = {{14, 0}, {34, 0}}, color = {95, 95, 95}));
  connect(revolute.frame_b, YellowConnector.frame_a) annotation(
    Line(points = {{54, 0}, {66, 0}}, color = {95, 95, 95}));
  connect(sine1.y, position1.phi_ref) annotation(
    Line(points = {{33, 66}, {23, 66}, {23, 36}, {32, 36}}, color = {0, 0, 127}));
  connect(position.flange, prismatic.axis) annotation(
    Line(points = {{14, 36}, {24, 36}, {24, 6}, {12, 6}}, color = {0, 127, 0}));
  connect(position1.flange, revolute.axis) annotation(
    Line(points = {{54, 36}, {54, 10}, {44, 10}}));
  connect(sine11.y, position11.phi_ref) annotation(
    Line(points = {{127, 66}, {120, 66}, {120, 38}, {126, 38}}, color = {0, 0, 127}));
  connect(revolute2.axis, position11.flange) annotation(
    Line(points = {{138, 10}, {152, 10}, {152, 38}, {148, 38}}));
  connect(revolute2.frame_b, YellowRevolute.frame_a) annotation(
    Line(points = {{148, 0}, {158, 0}}, color = {95, 95, 95}));
  connect(position2.flange, prismatic2.axis) annotation(
    Line(points = {{236, 38}, {240, 38}, {240, 6}, {236, 6}}, color = {0, 127, 0}));
  connect(sine2.y, position2.s_ref) annotation(
    Line(points = {{215, 66}, {208, 66}, {208, 38}, {214, 38}}, color = {0, 0, 127}));
  connect(prismatic2.frame_b, GreenBar.frame_a) annotation(
    Line(points = {{238, 0}, {248, 0}}, color = {95, 95, 95}));
  connect(GreenBar.frame_b, absoluteSensor.frame_a) annotation(
    Line(points = {{268, 0}, {278, 0}}, color = {95, 95, 95}));
  connect(Cylinder.frame_a, Plane.frame_b) annotation(
    Line(points = {{-36, 0}, {-44, 0}}, color = {95, 95, 95}));
  connect(YellowBar.frame_a, YellowConnector.frame_b) annotation(
    Line(points = {{98, 0}, {86, 0}}, color = {95, 95, 95}));
  connect(YellowBar.frame_b, revolute2.frame_a) annotation(
    Line(points = {{118, 0}, {128, 0}}, color = {95, 95, 95}));
  connect(YellowRevolute.frame_b, SkyBlueBar.frame_a) annotation(
    Line(points = {{178, 0}, {188, 0}}, color = {95, 95, 95}));
  connect(SkyBlueBar.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{208, 0}, {218, 0}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-100, 80}, {320, -20}})),
    version = "");
end PolarRobot;
