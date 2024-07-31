model Translational
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-66, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true)  annotation(
    Placement(transformation(origin = {-28, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(n = {0, 1, 0}, useAxisFlange = true)  annotation(
    Placement(transformation(origin = {12, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(useAxisFlange = true, n = {0, 0, 1})  annotation(
    Placement(transformation(origin = {48, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position annotation(
    Placement(transformation(origin = {-28, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position1 annotation(
    Placement(transformation(origin = {14, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {58, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine(f = 0.1)  annotation(
    Placement(transformation(origin = {36, 44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.1)  annotation(
    Placement(transformation(origin = {-62, 44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(f = 0.1)  annotation(
    Placement(transformation(origin = {-12, 44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.Body body(m = 1)  annotation(
    Placement(transformation(origin = {86, -30}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(world.frame_b, prismatic.frame_a) annotation(
    Line(points = {{-56, -30}, {-38, -30}}, color = {95, 95, 95}));
  connect(prismatic.frame_b, prismatic1.frame_a) annotation(
    Line(points = {{-18, -30}, {2, -30}}, color = {95, 95, 95}));
  connect(prismatic1.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{22, -30}, {38, -30}}, color = {95, 95, 95}));
  connect(prismatic2.frame_b, body.frame_a) annotation(
    Line(points = {{58, -30}, {76, -30}}, color = {95, 95, 95}));
  connect(sine.y, position2.s_ref) annotation(
    Line(points = {{48, 44}, {46, 44}, {46, 10}}, color = {0, 0, 127}));
  connect(position2.flange, prismatic2.axis) annotation(
    Line(points = {{68, 10}, {68, -24}, {56, -24}}, color = {0, 127, 0}));
  connect(position1.flange, prismatic1.axis) annotation(
    Line(points = {{24, 10}, {26, 10}, {26, -24}, {20, -24}}, color = {0, 127, 0}));
  connect(sine2.y, position1.s_ref) annotation(
    Line(points = {{0, 44}, {2, 44}, {2, 10}}, color = {0, 0, 127}));
  connect(sine1.y, position.s_ref) annotation(
    Line(points = {{-51, 44}, {-40, 44}, {-40, 10}}, color = {0, 0, 127}));
  connect(position.flange, prismatic.axis) annotation(
    Line(points = {{-18, 10}, {-16, 10}, {-16, -24}, {-20, -24}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Translational;
