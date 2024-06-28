model CylindricalRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-88, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder Cylinder( length = 3, diameter = 0.3, r = {0, 0, 1.35}, color = {0, 0, 255})  annotation(
    Placement(transformation(origin = {-22, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Plane( length = 3, width = 3, height = 0.1, color = {128, 128, 128}, r = {1.5, 0, 0}, lengthDirection = {1, 0, 0})  annotation(
    Placement(transformation(origin = {-54, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GreenConnector(length = 0.3, diameter = 0.6, r = {0, 0, 0.15}, color = {0, 128, 0}, lengthDirection = {0, 0, 1})  annotation(
    Placement(transformation(origin = {80, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox GreenBar(r = {1.75, -0.75, 0}, length = 2, width = 0.3, height = 0.3, color = {0, 128, 0}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {108, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, n = {0, 0, 1}, animation = false)  annotation(
    Placement(transformation(origin = {10, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine(f = 0.1, amplitude = 1.25)  annotation(
    Placement(transformation(origin = {16, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position annotation(
    Placement(transformation(origin = {16, 52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true)  annotation(
    Placement(transformation(origin = {50, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(transformation(origin = {50, 52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.1, amplitude = 3.14) annotation(
    Placement(transformation(origin = {50, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(animation = false, n = {0, 1, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {138, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox RedBar(height = 0.25, length = 1.5, r = {0, 1, 0}, width = 0.25, color = {255, 0, 0}) annotation(
    Placement(transformation(origin = {170, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(f = 0.1, amplitude = 0.75) annotation(
    Placement(transformation(origin = {142, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {142, 50}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, Plane.frame_a) annotation(
    Line(points = {{-78, 2}, {-64, 2}}, color = {95, 95, 95}));
  connect(prismatic.frame_a, Cylinder.frame_b) annotation(
    Line(points = {{0, 2}, {-12, 2}}, color = {95, 95, 95}));
  connect(sine.y, position.s_ref) annotation(
    Line(points = {{5, 76}, {0, 76}, {0, 52}, {4, 52}}, color = {0, 0, 127}));
  connect(prismatic.frame_b, revolute.frame_a) annotation(
    Line(points = {{20, 2}, {40, 2}}, color = {95, 95, 95}));
  connect(revolute.frame_b, GreenConnector.frame_a) annotation(
    Line(points = {{60, 2}, {70, 2}}, color = {95, 95, 95}));
  connect(prismatic2.frame_b, RedBar.frame_a) annotation(
    Line(points = {{148, 2}, {160, 2}}, color = {95, 95, 95}));
  connect(sine2.y, position2.s_ref) annotation(
    Line(points = {{131, 76}, {121, 76}, {121, 50}, {129, 50}}, color = {0, 0, 127}));
  connect(sine1.y, position1.phi_ref) annotation(
    Line(points = {{39, 76}, {33, 76}, {33, 52}, {37, 52}}, color = {0, 0, 127}));
  connect(position2.flange, prismatic2.axis) annotation(
    Line(points = {{152, 50}, {156, 50}, {156, 8}, {146, 8}}, color = {0, 127, 0}));
  connect(position.flange, prismatic.axis) annotation(
    Line(points = {{26, 52}, {30, 52}, {30, 8}, {18, 8}}, color = {0, 127, 0}));
  connect(position1.flange, revolute.axis) annotation(
    Line(points = {{60, 52}, {62, 52}, {62, 12}, {50, 12}}));
  connect(Plane.frame_b, Cylinder.frame_a) annotation(
    Line(points = {{-44, 2}, {-32, 2}}, color = {95, 95, 95}));
  connect(GreenBar.frame_a, GreenConnector.frame_b) annotation(
    Line(points = {{98, 2}, {90, 2}}, color = {95, 95, 95}));
  connect(GreenBar.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{118, 2}, {128, 2}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-100, 100}, {180, -20}})),
  version = "");
end CylindricalRobot;
