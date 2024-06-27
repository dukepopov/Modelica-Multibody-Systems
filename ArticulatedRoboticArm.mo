model ArticulatedRoboticArm
  inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity, n = {0, 0, -1}) annotation(
    Placement(transformation(origin = {-104, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GroundCylinder(r = {0, 0, 1.51}, length = 1.5, diameter = 3, color = {128, 128, 128}) annotation(
    Placement(transformation(origin = {-72, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowGroundCylinder(diameter = 2.8, length = 0.5, r = {0, 0, 0.7}, color = {255, 255, 0}) annotation(
    Placement(transformation(origin = {-12, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowRevolute(diameter = 0.6, length = 0.3, r = {0, 1, 0}, color = {255, 255, 0}) annotation(
    Placement(transformation(origin = {50, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT2(r = {0, -1.16, 0}, animation = false) annotation(
    Placement(transformation(origin = {82, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder BlueConnector(diameter = 0.3, length = 0.15, r = {0, 1, 0}) annotation(
    Placement(transformation(origin = {146, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT(r = {0, -0.15, 0}, animation = false) annotation(
    Placement(transformation(origin = {20, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox BlueBar(length = 2, width = 0.15, height = 0.15, r = {1.9, 0, 0}) annotation(
    Placement(transformation(origin = {208, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT3(r = {0.1, -0.925, 0}, animation = false) annotation(
    Placement(transformation(origin = {176, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT4(r = {0, -0.075, 0}, animation = false) annotation(
    Placement(transformation(origin = {240, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder BlueConnector2(diameter = 0.3, length = 0.15, r = {0, 0.16, 0}) annotation(
    Placement(transformation(origin = {272, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true) annotation(
    Placement(transformation(origin = {-42, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.ElastoBacklash MotionControl(c = 1e6, d = 1000e3, phi_rel0 = 1.570796326794897) annotation(
    Placement(transformation(origin = {-42, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(n = {0, 1, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {114, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.ElastoBacklash MotionControl2(c = 1e6, d = 1000e3, b = 1.570796326794897) annotation(
    Placement(transformation(origin = {114, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Rotational.Sources.ConstantTorque constantTorque(tau_constant = -100) annotation(
    Placement(transformation(origin = {114, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox GreenBar(color = {112, 130, 56}, height = 0.15, length = 2, r = {1.9, 0, 0}, width = 0.15) annotation(
    Placement(transformation(origin = {402, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT5(animation = false, r = {0.1, -0.925, 0}) annotation(
    Placement(transformation(origin = {368, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT6(animation = false, r = {0, -0.075, 0}) annotation(
    Placement(transformation(origin = {434, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GreenConnector2(color = {112, 130, 56}, diameter = 0.3, length = 0.15, r = {0, 0.15, 0}) annotation(
    Placement(transformation(origin = {464, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(n = {0, 1, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {302, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GreenConnector(color = {112, 130, 56}, diameter = 0.3, length = 0.15, r = {0, 1, 0}) annotation(
    Placement(transformation(origin = {334, 2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(YellowGroundCylinder.frame_b, fixedT.frame_a) annotation(
    Line(points = {{-2, 2}, {10, 2}}, color = {95, 95, 95}));
  connect(BlueConnector.frame_b, fixedT3.frame_a) annotation(
    Line(points = {{156, 2}, {166, 2}}, color = {95, 95, 95}));
  connect(fixedT3.frame_b, BlueBar.frame_a) annotation(
    Line(points = {{186, 2}, {198, 2}}, color = {95, 95, 95}));
  connect(BlueBar.frame_b, fixedT4.frame_a) annotation(
    Line(points = {{218, 2}, {230, 2}}, color = {95, 95, 95}));
  connect(fixedT4.frame_b, BlueConnector2.frame_a) annotation(
    Line(points = {{250, 2}, {262, 2}}, color = {95, 95, 95}));
  connect(GroundCylinder.frame_b, revolute.frame_a) annotation(
    Line(points = {{-62, 2}, {-52, 2}}, color = {95, 95, 95}));
  connect(revolute.frame_b, YellowGroundCylinder.frame_a) annotation(
    Line(points = {{-32, 2}, {-22, 2}}, color = {95, 95, 95}));
  connect(YellowRevolute.frame_b, fixedT2.frame_a) annotation(
    Line(points = {{60, 2}, {72, 2}}, color = {95, 95, 95}));
  connect(fixedT.frame_b, YellowRevolute.frame_a) annotation(
    Line(points = {{30, 2}, {40, 2}}, color = {95, 95, 95}));
  connect(fixedT2.frame_b, revolute2.frame_a) annotation(
    Line(points = {{92, 2}, {104, 2}}, color = {95, 95, 95}));
  connect(revolute2.frame_b, BlueConnector.frame_a) annotation(
    Line(points = {{124, 2}, {136, 2}}, color = {95, 95, 95}));
  connect(revolute.support, MotionControl.flange_a) annotation(
    Line(points = {{-48, 12}, {-56, 12}, {-56, 40}, {-52, 40}}));
  connect(revolute.axis, MotionControl.flange_b) annotation(
    Line(points = {{-42, 12}, {-28, 12}, {-28, 40}, {-32, 40}}));
  connect(MotionControl2.flange_b, revolute2.support) annotation(
    Line(points = {{104, 34}, {102, 34}, {102, 12}, {108, 12}}));
  connect(MotionControl2.flange_a, revolute2.axis) annotation(
    Line(points = {{124, 34}, {124, 12}, {114, 12}}));
  connect(constantTorque.flange, MotionControl2.flange_a) annotation(
    Line(points = {{124, 64}, {124, 34}}));
  connect(GroundCylinder.frame_a, world.frame_b) annotation(
    Line(points = {{-82, 2}, {-94, 2}}, color = {95, 95, 95}));
  connect(fixedT5.frame_b, GreenBar.frame_a) annotation(
    Line(points = {{378, 2}, {392, 2}}, color = {95, 95, 95}));
  connect(GreenBar.frame_b, fixedT6.frame_a) annotation(
    Line(points = {{412, 2}, {424, 2}}, color = {95, 95, 95}));
  connect(fixedT6.frame_b, GreenConnector2.frame_a) annotation(
    Line(points = {{444, 2}, {454, 2}}, color = {95, 95, 95}));
  connect(GreenConnector.frame_b, fixedT5.frame_a) annotation(
    Line(points = {{344, 2}, {358, 2}}, color = {95, 95, 95}));
  connect(revolute3.frame_b, GreenConnector.frame_a) annotation(
    Line(points = {{312, 2}, {324, 2}}, color = {95, 95, 95}));
  connect(BlueConnector2.frame_b, revolute3.frame_a) annotation(
    Line(points = {{282, 2}, {292, 2}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-120, 80}, {480, -20}})),
    version = "");
end ArticulatedRoboticArm;
