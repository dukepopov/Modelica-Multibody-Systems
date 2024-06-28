model ArticulatedRoboticArm
  inner Modelica.Mechanics.MultiBody.World world(gravityType = Modelica.Mechanics.MultiBody.Types.GravityTypes.NoGravity, n = {0, 0, -1}) annotation(
    Placement(transformation(origin = {-104, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GroundCylinder(r = {0, 0, 1.51}, length = 1.5, diameter = 3, color = {128, 128, 128}) annotation(
    Placement(transformation(origin = {-72, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowGroundCylinder(diameter = 2.8, length = 0.5, r = {0, -0.15, 0.7}, color = {255, 255, 0}, lengthDirection = {0, 0, 1}) annotation(
    Placement(transformation(origin = {-12, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder YellowRevolute(diameter = 0.6, length = 0.3, r = {0, -0.16, 0}, color = {255, 255, 0}, lengthDirection = {0, 1, 0}) annotation(
    Placement(transformation(origin = {20, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder BlueConnector(diameter = 0.3, length = 0.15, r = {0.1, 0.075, 0}, lengthDirection = {0, 1, 0}) annotation(
    Placement(transformation(origin = {80, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox BlueBar(length = 2, width = 0.15, height = 0.15, r = {1.9, -0.075, 0}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {112, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder BlueConnector2(diameter = 0.3, length = 0.15, r = {0, 0.16, 0}) annotation(
    Placement(transformation(origin = {144, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange = true) annotation(
    Placement(transformation(origin = {-42, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.ElastoBacklash MotionControl(c = 1e6, d = 1000e3, phi_rel0 = 1.570796326794897) annotation(
    Placement(transformation(origin = {-42, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2(n = {0, 1, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {48, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.ElastoBacklash MotionControl2(c = 1e6, d = 1000e3, b = 1.570796326794897) annotation(
    Placement(transformation(origin = {48, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Rotational.Sources.ConstantTorque constantTorque(tau_constant = -100) annotation(
    Placement(transformation(origin = {48, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute3(n = {0, 1, 0}, useAxisFlange = true) annotation(
    Placement(transformation(origin = {174, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GreenConnector(diameter = 0.3, length = 0.15, lengthDirection = {0, 1, 0}, r = {0.1, 0.075, 0}, color = {0, 100, 0}) annotation(
    Placement(transformation(origin = {206, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox GreenBar(height = 0.15, length = 2, lengthDirection = {1, 0, 0}, r = {1.9, -0.075, 0}, width = 0.15, color = {0, 100, 0}) annotation(
    Placement(transformation(origin = {238, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder GreenConnector2(diameter = 0.3, length = 0.15, r = {0, 0.16, 0}, color = {0, 100, 0}) annotation(
    Placement(transformation(origin = {270, 2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(GroundCylinder.frame_b, revolute.frame_a) annotation(
    Line(points = {{-62, 2}, {-52, 2}}, color = {95, 95, 95}));
  connect(revolute.frame_b, YellowGroundCylinder.frame_a) annotation(
    Line(points = {{-32, 2}, {-22, 2}}, color = {95, 95, 95}));
  connect(revolute2.frame_b, BlueConnector.frame_a) annotation(
    Line(points = {{58, 2}, {70, 2}}, color = {95, 95, 95}));
  connect(revolute.support, MotionControl.flange_a) annotation(
    Line(points = {{-48, 12}, {-56, 12}, {-56, 40}, {-52, 40}}));
  connect(revolute.axis, MotionControl.flange_b) annotation(
    Line(points = {{-42, 12}, {-28, 12}, {-28, 40}, {-32, 40}}));
  connect(MotionControl2.flange_b, revolute2.support) annotation(
    Line(points = {{38, 34}, {36, 34}, {36, 12}, {42, 12}}));
  connect(MotionControl2.flange_a, revolute2.axis) annotation(
    Line(points = {{58, 34}, {58, 12}, {48, 12}}));
  connect(constantTorque.flange, MotionControl2.flange_a) annotation(
    Line(points = {{58, 64}, {58, 34}}));
  connect(GroundCylinder.frame_a, world.frame_b) annotation(
    Line(points = {{-82, 2}, {-94, 2}}, color = {95, 95, 95}));
  connect(BlueConnector2.frame_b, revolute3.frame_a) annotation(
    Line(points = {{154, 2}, {164, 2}}, color = {95, 95, 95}));
  connect(YellowGroundCylinder.frame_b, YellowRevolute.frame_a) annotation(
    Line(points = {{-2, 2}, {10, 2}}, color = {95, 95, 95}));
  connect(YellowRevolute.frame_b, revolute2.frame_a) annotation(
    Line(points = {{30, 2}, {38, 2}}, color = {95, 95, 95}));
  connect(BlueConnector.frame_b, BlueBar.frame_a) annotation(
    Line(points = {{90, 2}, {102, 2}}, color = {95, 95, 95}));
  connect(BlueBar.frame_b, BlueConnector2.frame_a) annotation(
    Line(points = {{122, 2}, {134, 2}}, color = {95, 95, 95}));
  connect(GreenConnector.frame_b, GreenBar.frame_a) annotation(
    Line(points = {{216, 2}, {228, 2}}, color = {95, 95, 95}));
  connect(GreenBar.frame_b, GreenConnector2.frame_a) annotation(
    Line(points = {{248, 2}, {260, 2}}, color = {95, 95, 95}));
  connect(revolute3.frame_b, GreenConnector.frame_a) annotation(
    Line(points = {{184, 2}, {196, 2}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-120, 80}, {300, -20}})),
    version = "");
end ArticulatedRoboticArm;
