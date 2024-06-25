model CylindricalRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-88, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder Cylinder( length = 3, diameter = 0.3, r = {0, 0, 1.35}, color = {0, 0, 255})  annotation(
    Placement(transformation(origin = {0, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Plane( length = 3, width = 3, height = 0.1, color = {128, 128, 128})  annotation(
    Placement(transformation(origin = {-58, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT(r = {1.35, 0, 0}, animation = false)  annotation(
    Placement(transformation(origin = {-30, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GreenConnector(length = 0.3, diameter = 0.6, r = {0, 0, 1}, color = {0, 128, 0})  annotation(
    Placement(transformation(origin = {110, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox GreenBar(r = {1.75, 0, 0}, length = 2, width = 0.3, height = 0.3, color = {0, 128, 0}) annotation(
    Placement(transformation(origin = {176, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT2(r = {0, 0, -0.85}, animation = false) annotation(
    Placement(transformation(origin = {142, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, n = {0, 0, 1}, animation = false)  annotation(
    Placement(transformation(origin = {30, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine(f = 0.1, amplitude = 1.25)  annotation(
    Placement(transformation(origin = {36, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position annotation(
    Placement(transformation(origin = {36, 52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true)  annotation(
    Placement(transformation(origin = {70, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(transformation(origin = {70, 52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.1, amplitude = 3.14) annotation(
    Placement(transformation(origin = {70, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(animation = false, n = {0, 1, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {238, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox RedBar(height = 0.25, length = 1.5, r = {0, 1, 0}, width = 0.25, color = {255, 0, 0}) annotation(
    Placement(transformation(origin = {270, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(f = 0.1, amplitude = 0.75) annotation(
    Placement(transformation(origin = {242, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {242, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT3(r = {0, -0.75, 0}, animation = false)  annotation(
    Placement(transformation(origin = {206, 2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, Plane.frame_a) annotation(
    Line(points = {{-78, 2}, {-68, 2}}, color = {95, 95, 95}));
  connect(Plane.frame_b, fixedT.frame_a) annotation(
    Line(points = {{-48, 2}, {-40, 2}}, color = {95, 95, 95}));
  connect(fixedT.frame_b, Cylinder.frame_a) annotation(
    Line(points = {{-20, 2}, {-10, 2}}, color = {95, 95, 95}));
  connect(GreenConnector.frame_b, fixedT2.frame_a) annotation(
    Line(points = {{120, 2}, {132, 2}}, color = {95, 95, 95}));
  connect(fixedT2.frame_b, GreenBar.frame_a) annotation(
    Line(points = {{152, 2}, {166, 2}}, color = {95, 95, 95}));
  connect(prismatic.frame_a, Cylinder.frame_b) annotation(
    Line(points = {{20, 2}, {10, 2}}, color = {95, 95, 95}));
  connect(sine.y, position.s_ref) annotation(
    Line(points = {{25, 76}, {20, 76}, {20, 52}, {24, 52}}, color = {0, 0, 127}));
  connect(prismatic.frame_b, revolute.frame_a) annotation(
    Line(points = {{40, 2}, {60, 2}}, color = {95, 95, 95}));
  connect(revolute.frame_b, GreenConnector.frame_a) annotation(
    Line(points = {{80, 2}, {100, 2}}, color = {95, 95, 95}));
  connect(prismatic2.frame_b, RedBar.frame_a) annotation(
    Line(points = {{248, 2}, {260, 2}}, color = {95, 95, 95}));
  connect(GreenBar.frame_b, fixedT3.frame_a) annotation(
    Line(points = {{186, 2}, {196, 2}}, color = {95, 95, 95}));
  connect(fixedT3.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{216, 2}, {228, 2}}, color = {95, 95, 95}));
  connect(sine2.y, position2.s_ref) annotation(
    Line(points = {{232, 76}, {222, 76}, {222, 50}, {230, 50}}, color = {0, 0, 127}));
  connect(sine1.y, position1.phi_ref) annotation(
    Line(points = {{60, 76}, {54, 76}, {54, 52}, {58, 52}}, color = {0, 0, 127}));
  connect(position2.flange, prismatic2.axis) annotation(
    Line(points = {{252, 50}, {256, 50}, {256, 8}, {246, 8}}, color = {0, 127, 0}));
  connect(position.flange, prismatic.axis) annotation(
    Line(points = {{46, 52}, {50, 52}, {50, 8}, {38, 8}}, color = {0, 127, 0}));
  connect(position1.flange, revolute.axis) annotation(
    Line(points = {{80, 52}, {82, 52}, {82, 12}, {70, 12}}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-100, 100}, {280, -20}})),
  version = "");
end CylindricalRobot;
