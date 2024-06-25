model PolarRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-88, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder Cylinder(length = 3, diameter = 0.3, r = {0, 0, 1.35}, color = {0, 0, 255}) annotation(
    Placement(transformation(origin = {0, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Plane(length = 3, width = 3, height = 0.1, color = {128, 128, 128}) annotation(
    Placement(transformation(origin = {-58, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT(r = {1.35, 0, 0}, animation = false) annotation(
    Placement(transformation(origin = {-30, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowConnector(length = 0.3, diameter = 0.6, r = {0, 0, 1}, color = {213, 163, 6}, innerDiameter = 0.3) annotation(
    Placement(transformation(origin = {68, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox YellowBar(r = {2, 0, 0}, length = 2, width = 0.3, height = 0.3, color = {213, 163, 6}) annotation(
    Placement(transformation(origin = {134, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT2(r = {0, 0, -0.85}, animation = false) annotation(
    Placement(transformation(origin = {100, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true) annotation(
    Placement(transformation(origin = {28, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(
    Placement(transformation(origin = {28, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.05, amplitude = 1) annotation(
    Placement(transformation(origin = {28, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowRevolute(length = 0.3, diameter = 0.6, r = {0, 0, 1}, color = {213, 163, 6}, innerDiameter = 0.3) annotation(
    Placement(transformation(origin = {190, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT3(animation = false, r = {0.2, 0, -0.15}) annotation(
    Placement(transformation(origin = {162, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT4(animation = false, r = {0, 0, -1.2}) annotation(
    Placement(transformation(origin = {222, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder CylinderConnecting(color = {0, 0, 255}, diameter = 0.3, length = 1, r = {0, 0, 0.50}) annotation(
    Placement(transformation(origin = {254, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder LightBlueRevolute(diameter = 0.6, innerDiameter = 0.3, length = 0.3, r = {0, 0, 1}) annotation(
    Placement(transformation(origin = {312, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox LightBlueBar(height = 0.3, length = 2, r = {2, 0, 0}, width = 0.3) annotation(
    Placement(transformation(origin = {372, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT5(animation = false, r = {0.2, 0, -0.85}) annotation(
    Placement(transformation(origin = {342, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder LightBlueRevolute2( diameter = 0.6, innerDiameter = 0.3, length = 0.3, r = {0, 0, 1}) annotation(
    Placement(transformation(origin = {430, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT6(animation = false, r = {0.2, 0, -0.15}) annotation(
    Placement(transformation(origin = {402, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT7(animation = false, r = {0, 0, -1.65}) annotation(
    Placement(transformation(origin = {460, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GrayWeld(color = {128, 128, 128}, diameter = 0.3, length = 1.5, r = {0, 0, 0.50}) annotation(
    Placement(transformation(origin = {514, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(animation = false, n = {0, 0, 1}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {488, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(amplitude = 0.5, f = 0.5) annotation(
    Placement(transformation(origin = {488, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {488, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(useAxisFlange = true) annotation(
    Placement(transformation(origin = {284, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position11 annotation(
    Placement(transformation(origin = {284, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine11(amplitude = -1, f = 0.05) annotation(
    Placement(transformation(origin = {284, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  connect(world.frame_b, Plane.frame_a) annotation(
    Line(points = {{-78, 2}, {-68, 2}}, color = {95, 95, 95}));
  connect(Plane.frame_b, fixedT.frame_a) annotation(
    Line(points = {{-48, 2}, {-40, 2}}, color = {95, 95, 95}));
  connect(fixedT.frame_b, Cylinder.frame_a) annotation(
    Line(points = {{-20, 2}, {-10, 2}}, color = {95, 95, 95}));
  connect(YellowConnector.frame_b, fixedT2.frame_a) annotation(
    Line(points = {{78, 2}, {90, 2}}, color = {95, 95, 95}));
  connect(fixedT2.frame_b, YellowBar.frame_a) annotation(
    Line(points = {{110, 2}, {124, 2}}, color = {95, 95, 95}));
  connect(revolute.frame_b, YellowConnector.frame_a) annotation(
    Line(points = {{38, 2}, {58, 2}}, color = {95, 95, 95}));
  connect(sine1.y, position1.phi_ref) annotation(
    Line(points = {{17, 68}, {7, 68}, {7, 38}, {16, 38}}, color = {0, 0, 127}));
  connect(position1.flange, revolute.axis) annotation(
    Line(points = {{38, 38}, {38, 12}, {28, 12}}));
  connect(YellowBar.frame_b, fixedT3.frame_a) annotation(
    Line(points = {{144, 2}, {152, 2}}, color = {95, 95, 95}));
  connect(YellowRevolute.frame_b, fixedT4.frame_a) annotation(
    Line(points = {{200, 2}, {212, 2}}, color = {95, 95, 95}));
  connect(fixedT4.frame_b, CylinderConnecting.frame_a) annotation(
    Line(points = {{232, 2}, {244, 2}}, color = {95, 95, 95}));
  connect(LightBlueRevolute.frame_b, fixedT5.frame_a) annotation(
    Line(points = {{322, 2}, {332, 2}}, color = {95, 95, 95}));
  connect(fixedT5.frame_b, LightBlueBar.frame_a) annotation(
    Line(points = {{352, 2}, {362, 2}}, color = {95, 95, 95}));
  connect(fixedT3.frame_b, YellowRevolute.frame_a) annotation(
    Line(points = {{172, 2}, {180, 2}}, color = {95, 95, 95}));
  connect(fixedT6.frame_b, LightBlueRevolute2.frame_a) annotation(
    Line(points = {{412, 2}, {420, 2}}, color = {95, 95, 95}));
  connect(LightBlueBar.frame_b, fixedT6.frame_a) annotation(
    Line(points = {{382, 2}, {392, 2}}, color = {95, 95, 95}));
  connect(LightBlueRevolute2.frame_b, fixedT7.frame_a) annotation(
    Line(points = {{440, 2}, {450, 2}}, color = {95, 95, 95}));
  connect(fixedT7.frame_b, prismatic1.frame_a) annotation(
    Line(points = {{470, 2}, {478, 2}}, color = {95, 95, 95}));
  connect(prismatic1.frame_b, GrayWeld.frame_a) annotation(
    Line(points = {{498, 2}, {504, 2}}, color = {95, 95, 95}));
  connect(position2.flange, prismatic1.axis) annotation(
    Line(points = {{498, 38}, {496, 38}, {496, 8}}, color = {0, 127, 0}));
  connect(position2.s_ref, sine2.y) annotation(
    Line(points = {{476, 38}, {472, 38}, {472, 68}, {478, 68}}, color = {0, 0, 127}));
  connect(position11.flange, revolute2.axis) annotation(
    Line(points = {{294, 38}, {294, 12}, {284, 12}}));
  connect(CylinderConnecting.frame_b, revolute2.frame_a) annotation(
    Line(points = {{264, 2}, {274, 2}}, color = {95, 95, 95}));
  connect(revolute2.frame_b, LightBlueRevolute.frame_a) annotation(
    Line(points = {{294, 2}, {302, 2}}, color = {95, 95, 95}));
  connect(position11.phi_ref, sine11.y) annotation(
    Line(points = {{272, 38}, {266, 38}, {266, 68}, {274, 68}}, color = {0, 0, 127}));
  connect(Cylinder.frame_b, revolute.frame_a) annotation(
    Line(points = {{10, 2}, {18, 2}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-100, 80}, {540, -20}})),
    version = "");
end PolarRobot;
