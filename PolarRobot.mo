model PolarRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-88, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder Cylinder(length = 3, diameter = 0.3, r = {0, 0, 1.35}, color = {0, 0, 255}) annotation(
    Placement(transformation(origin = {0, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Plane(length = 3, width = 3, height = 0.1, color = {128, 128, 128}) annotation(
    Placement(transformation(origin = {-58, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT(r = {1.35, 0, 0}, animation = false) annotation(
    Placement(transformation(origin = {-30, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowConnector(length = 0.3, diameter = 0.6, r = {0, 0, 1}, color = {213, 163, 6}, innerDiameter = 0.4) annotation(
    Placement(transformation(origin = {110, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox YellowBar(r = {2, 0, 0}, length = 2, width = 0.3, height = 0.3, color = {213, 163, 6}) annotation(
    Placement(transformation(origin = {176, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT2(r = {0, 0, -0.85}, animation = false) annotation(
    Placement(transformation(origin = {142, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, n = {0, 0, 1}, animation = false) annotation(
    Placement(transformation(origin = {30, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine(f = 0.01, amplitude = 1.25) annotation(
    Placement(transformation(origin = {30, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position annotation(
    Placement(transformation(origin = {30, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true) annotation(
    Placement(transformation(origin = {70, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(transformation(origin = {70, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.01, amplitude = 3.14) annotation(
    Placement(transformation(origin = {70, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowRevolute(length = 0.4, diameter = 0.6, r = {0, 1, 0}, color = {213, 163, 6}) annotation(
    Placement(transformation(origin = {276, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT3(animation = false, r = {0, -0.2, 0}) annotation(
    Placement(transformation(origin = {204, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox SkyBlueBar(color = {135, 206, 235}, height = 0.3, length = 2.5, r = {2.5, 0, 0}, width = 0.3, innerWidth = 0.2, innerHeight = 0.2) annotation(
    Placement(transformation(origin = {336, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT4(animation = false, r = {-0.5, -0.45, 0}) annotation(
    Placement(transformation(origin = {306, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT5(animation = false, r = {-1, 0, 0}) annotation(
    Placement(transformation(origin = {364, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox GreenBar(height = 0.2, length = 2.25, r = {1, 0, 0}, width = 0.2, color = {124, 252, 0}, animation = false) annotation(
    Placement(transformation(origin = {422, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(useAxisFlange = true, n = {0, 1, 0}, animation = false) annotation(
    Placement(transformation(origin = {236, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position11 annotation(
    Placement(transformation(origin = {236, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine11(amplitude = -1, f = 0.1) annotation(
    Placement(transformation(origin = {236, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(animation = false, n = {1, 0, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {392, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(amplitude = 1, f = 0.1) annotation(
    Placement(transformation(origin = {390, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {390, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor(get_r = true, get_v = true) annotation(
    Placement(transformation(origin = {452, 2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, Plane.frame_a) annotation(
    Line(points = {{-78, 2}, {-68, 2}}, color = {95, 95, 95}));
  connect(Plane.frame_b, fixedT.frame_a) annotation(
    Line(points = {{-48, 2}, {-40, 2}}, color = {95, 95, 95}));
  connect(fixedT.frame_b, Cylinder.frame_a) annotation(
    Line(points = {{-20, 2}, {-10, 2}}, color = {95, 95, 95}));
  connect(YellowConnector.frame_b, fixedT2.frame_a) annotation(
    Line(points = {{120, 2}, {132, 2}}, color = {95, 95, 95}));
  connect(fixedT2.frame_b, YellowBar.frame_a) annotation(
    Line(points = {{152, 2}, {166, 2}}, color = {95, 95, 95}));
  connect(prismatic.frame_a, Cylinder.frame_b) annotation(
    Line(points = {{20, 2}, {10, 2}}, color = {95, 95, 95}));
  connect(sine.y, position.s_ref) annotation(
    Line(points = {{19, 68}, {18, 68}, {18, 38}}, color = {0, 0, 127}));
  connect(prismatic.frame_b, revolute.frame_a) annotation(
    Line(points = {{40, 2}, {60, 2}}, color = {95, 95, 95}));
  connect(revolute.frame_b, YellowConnector.frame_a) annotation(
    Line(points = {{76, 0}, {102, 0}, {102, 2}, {100, 2}}, color = {95, 95, 95}));
  connect(sine1.y, position1.phi_ref) annotation(
    Line(points = {{59, 68}, {49, 68}, {49, 38}, {58, 38}}, color = {0, 0, 127}));
  connect(position.flange, prismatic.axis) annotation(
    Line(points = {{40, 38}, {50, 38}, {50, 8}, {38, 8}}, color = {0, 127, 0}));
  connect(position1.flange, revolute.axis) annotation(
    Line(points = {{80, 38}, {80, 12}, {70, 12}}));
  connect(YellowBar.frame_b, fixedT3.frame_a) annotation(
    Line(points = {{186, 2}, {194, 2}}, color = {95, 95, 95}));
  connect(YellowRevolute.frame_b, fixedT4.frame_a) annotation(
    Line(points = {{286, 2}, {296, 2}}, color = {95, 95, 95}));
  connect(fixedT4.frame_b, SkyBlueBar.frame_a) annotation(
    Line(points = {{316, 2}, {326, 2}}, color = {95, 95, 95}));
  connect(fixedT5.frame_a, SkyBlueBar.frame_b) annotation(
    Line(points = {{354, 2}, {346, 2}}, color = {95, 95, 95}));
  connect(sine11.y, position11.phi_ref) annotation(
    Line(points = {{225, 68}, {218, 68}, {218, 40}, {224, 40}}, color = {0, 0, 127}));
  connect(revolute2.axis, position11.flange) annotation(
    Line(points = {{236, 12}, {250, 12}, {250, 40}, {246, 40}}));
  connect(revolute2.frame_b, YellowRevolute.frame_a) annotation(
    Line(points = {{246, 2}, {266, 2}}, color = {95, 95, 95}));
  connect(fixedT3.frame_b, revolute2.frame_a) annotation(
    Line(points = {{214, 2}, {226, 2}}, color = {95, 95, 95}));
  connect(position2.flange, prismatic2.axis) annotation(
    Line(points = {{400, 40}, {404, 40}, {404, 8}, {400, 8}}, color = {0, 127, 0}));
  connect(sine2.y, position2.s_ref) annotation(
    Line(points = {{379, 68}, {372, 68}, {372, 40}, {378, 40}}, color = {0, 0, 127}));
  connect(fixedT5.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{374, 2}, {382, 2}}, color = {95, 95, 95}));
  connect(prismatic2.frame_b, GreenBar.frame_a) annotation(
    Line(points = {{402, 2}, {412, 2}}, color = {95, 95, 95}));
  connect(GreenBar.frame_b, absoluteSensor.frame_a) annotation(
    Line(points = {{432, 2}, {442, 2}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-100, 80}, {480, -20}})),
    version = "");
end PolarRobot;
