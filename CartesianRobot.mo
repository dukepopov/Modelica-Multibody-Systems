model CartesianRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-224, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox lowerGroundBar(length = 2.1, width = 0.1, height = 0.1, r = {0, 2, 0}, color = {128, 128, 128}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {-194, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, animation = false) annotation(
    Placement(transformation(origin = {-130, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(f = 0.1, amplitude = 0.5) annotation(
    Placement(transformation(origin = {78, 108}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {106, 98}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(useAxisFlange = true, n = {0, 1, 0}) annotation(
    Placement(transformation(origin = {42, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Cube(height = 0.25, length = 0.25, r = {-0.2, 0, 0}, width = 0.25, color = {0, 128, 0}, lengthDirection = {-1, 0, 0}) annotation(
    Placement(transformation(origin = {74, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox middleBar2m(height = 0.1, length = 2.1, r = {0, 0.1, -0.5}, width = 0.1, color = {255, 0, 0}, lengthDirection = {0, 1, 0}) annotation(
    Placement(transformation(origin = {-62, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox upperGroundBar(height = 0.1, length = 2.1, r = {0.05, -2.05, 1}, width = 0.1, color = {128, 128, 128}, lengthDirection = {1, 0, 0}) annotation(
    Placement(transformation(origin = {-162, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic3(n = {0, 0, 1}, useAxisFlange = true, animation = false, boxHeight = 0.1, boxWidth = 0.1, boxWidthDirection = {0, 0.5, 0}) annotation(
    Placement(transformation(origin = {108, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox ThinBar(height = 1, length = 0.1, r = {1, 0, 0}, width = 0.1, color = {0, 0, 255}) annotation(
    Placement(transformation(origin = {166, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox middleBarLower1m(height = 1, length = 0.1, r = {0, 2, 0}, width = 0.1, color = {255, 0, 0}, lengthDirection = {0, -1, 0}) annotation(
    Placement(transformation(origin = {-30, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox middleBarUpper1m(height = 1, length = 0.1, r = {0, -1, 0.5}, width = 0.1, color = {255, 0, 0}, lengthDirection = {0, -1, 0}) annotation(
    Placement(transformation(origin = {-2, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor MiddleBarRelativeToGround(get_r_rel = true, get_v_rel = true) annotation(
    Placement(transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor CubeRelativeToMiddleBar(get_r_rel = true, get_v_rel = true) annotation(
    Placement(transformation(origin = {46, 90}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor ThinBarRelativeToCube(get_r_rel = true, get_v_rel = true) annotation(
    Placement(transformation(origin = {142, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor(get_r = true, get_v = true) annotation(
    Placement(transformation(origin = {186, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.1) annotation(
    Placement(transformation(origin = {44, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position1(useSupport = false) annotation(
    Placement(transformation(origin = {44, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.CutForce ForceMeasureThinBar annotation(
    Placement(transformation(origin = {142, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.CutForce ForceMeasureMiddleBar annotation(
    Placement(transformation(origin = {-96, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sensors.ForceSensor SourceMeasure annotation(
    Placement(transformation(origin = {116, 56}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Sources.ConstantForce constantForce(f_constant = 100) annotation(
    Placement(transformation(origin = {-130, -32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.ElastoGap StopMotion(c = 1e6, d = 100e3, s_rel0 = -2) annotation(
    Placement(transformation(origin = {-130, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor1(get_v = true, get_a = true, get_r = true) annotation(
    Placement(transformation(origin = {-42, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor2(get_v = true, get_a = true, get_r = true) annotation(
    Placement(transformation(origin = {-30, 62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor3(get_v = true, get_a = true, get_r = true) annotation(
    Placement(transformation(origin = {18, 10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(sine2.y, position2.s_ref) annotation(
    Line(points = {{89, 108}, {89.5, 108}, {89.5, 98}, {94, 98}}, color = {0, 0, 127}));
  connect(prismatic2.frame_b, Cube.frame_a) annotation(
    Line(points = {{52, 34}, {64, 34}}, color = {95, 95, 95}));
  connect(lowerGroundBar.frame_a, world.frame_b) annotation(
    Line(points = {{-204, 34}, {-214, 34}}, color = {95, 95, 95}));
  connect(MiddleBarRelativeToGround.frame_a, world.frame_b) annotation(
    Line(points = {{-100, 90}, {-214, 90}, {-214, 34}}, color = {95, 95, 95}));
  connect(position1.flange, prismatic2.axis) annotation(
    Line(points = {{54, 0}, {54, 40}, {50, 40}}, color = {0, 127, 0}));
  connect(sine1.y, position1.s_ref) annotation(
    Line(points = {{55, -30}, {54.5, -30}, {54.5, 0}, {32, 0}}, color = {0, 0, 127}));
  connect(ForceMeasureThinBar.frame_a, prismatic3.frame_b) annotation(
    Line(points = {{132, 34}, {118, 34}}, color = {95, 95, 95}));
  connect(prismatic.frame_b, ForceMeasureMiddleBar.frame_a) annotation(
    Line(points = {{-120, 34}, {-106, 34}}, color = {95, 95, 95}));
  connect(position2.flange, SourceMeasure.flange_a) annotation(
    Line(points = {{116, 98}, {116, 66}}, color = {0, 127, 0}));
  connect(prismatic.support, StopMotion.flange_b) annotation(
    Line(points = {{-134, 40}, {-144, 40}, {-144, -2}, {-140, -2}}, color = {0, 127, 0}));
  connect(prismatic.axis, StopMotion.flange_a) annotation(
    Line(points = {{-122, 40}, {-114, 40}, {-114, -2}, {-120, -2}}, color = {0, 127, 0}));
  connect(constantForce.flange, StopMotion.flange_a) annotation(
    Line(points = {{-120, -32}, {-114, -32}, {-114, -2}, {-120, -2}}, color = {0, 127, 0}));
  connect(prismatic3.axis, SourceMeasure.flange_b) annotation(
    Line(points = {{116, 40}, {116, 46}}, color = {0, 127, 0}));
  connect(ForceMeasureThinBar.frame_b, ThinBar.frame_a) annotation(
    Line(points = {{152, 34}, {166, 34}, {166, 48}}, color = {95, 95, 95}));
  connect(absoluteSensor.frame_a, ThinBar.frame_a) annotation(
    Line(points = {{176, 34}, {166, 34}, {166, 48}}, color = {95, 95, 95}));
  connect(ThinBarRelativeToCube.frame_b, ThinBar.frame_a) annotation(
    Line(points = {{152, 4}, {166, 4}, {166, 48}}, color = {95, 95, 95}));
  connect(middleBar2m.frame_a, ForceMeasureMiddleBar.frame_b) annotation(
    Line(points = {{-72, 34}, {-86, 34}}, color = {95, 95, 95}));
  connect(lowerGroundBar.frame_b, upperGroundBar.frame_a) annotation(
    Line(points = {{-184, 34}, {-172, 34}}, color = {95, 95, 95}));
  connect(upperGroundBar.frame_b, prismatic.frame_a) annotation(
    Line(points = {{-152, 34}, {-140, 34}}, color = {95, 95, 95}));
  connect(middleBar2m.frame_b, middleBarLower1m.frame_a) annotation(
    Line(points = {{-52, 34}, {-40, 34}}, color = {95, 95, 95}));
  connect(absoluteSensor1.frame_a, middleBar2m.frame_b) annotation(
    Line(points = {{-52, 10}, {-52, 34}}, color = {95, 95, 95}));
  connect(absoluteSensor2.frame_a, middleBarLower1m.frame_b) annotation(
    Line(points = {{-40, 62}, {-40, 46}, {-20, 46}, {-20, 34}}, color = {95, 95, 95}));
  connect(middleBarLower1m.frame_b, middleBarUpper1m.frame_a) annotation(
    Line(points = {{-20, 34}, {-12, 34}}, color = {95, 95, 95}));
  connect(middleBarUpper1m.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{8, 34}, {32, 34}}, color = {95, 95, 95}));
  connect(absoluteSensor3.frame_a, middleBarUpper1m.frame_b) annotation(
    Line(points = {{8, 10}, {8, 34}}, color = {95, 95, 95}));
  connect(Cube.frame_b, prismatic3.frame_a) annotation(
    Line(points = {{84, 34}, {98, 34}}, color = {95, 95, 95}));
  connect(CubeRelativeToMiddleBar.frame_b, Cube.frame_b) annotation(
    Line(points = {{56, 90}, {90, 90}, {90, 34}, {84, 34}}, color = {95, 95, 95}));
  connect(MiddleBarRelativeToGround.frame_b, middleBarUpper1m.frame_b) annotation(
    Line(points = {{-80, 90}, {8, 90}, {8, 34}}, color = {95, 95, 95}));
  connect(CubeRelativeToMiddleBar.frame_a, middleBarUpper1m.frame_b) annotation(
    Line(points = {{36, 90}, {8, 90}, {8, 34}}, color = {95, 95, 95}));
  connect(ThinBarRelativeToCube.frame_a, prismatic3.frame_b) annotation(
    Line(points = {{132, 4}, {126, 4}, {126, 34}, {118, 34}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-240, 120}, {200, -60}})),
    version = "");
end CartesianRobot;
