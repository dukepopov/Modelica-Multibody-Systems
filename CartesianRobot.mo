model CartesianRobot
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(transformation(origin = {-224, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox lowerGroundBar(length = 2.1, width = 0.1, height = 0.1, r = {2, 0, 0}, color = {128, 128, 128}) annotation(
    Placement(transformation(origin = {-194, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, animation = false) annotation(
    Placement(transformation(origin = {-130, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine2(f = 0.1, amplitude = 0.5) annotation(
    Placement(transformation(origin = {144, 120}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position2 annotation(
    Placement(transformation(origin = {176, 120}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(useAxisFlange = true, n = {0, 1, 0}) annotation(
    Placement(transformation(origin = {86, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox Cube(height = 0.2, length = 0.2, r = {-1, 0, 0}, width = 0.2, color = {0, 128, 0}) annotation(
    Placement(transformation(origin = {118, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox middleBar2m(height = 0.1, length = 2.1, r = {0, 1, 0}, width = 0.1, color = {255, 0, 0}) annotation(
    Placement(transformation(origin = {-40, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT(animation = false, r = {-2, 2, 0}) annotation(
    Placement(transformation(origin = {-194, 58}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox upperGroundBar(height = 0.1, length = 2.1, r = {2, 0, 0}, width = 0.1, color = {128, 128, 128}) annotation(
    Placement(transformation(origin = {-162, 58}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic3(n = {0, 0, 1}, useAxisFlange = true, animation = false, boxHeight = 0.1, boxWidth = 0.1, boxWidthDirection = {0, 0.5, 0}) annotation(
    Placement(transformation(origin = {178, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox ThinBar(height = 1, length = 0.1, r = {1, 0, 0}, width = 0.1, color = {0, 0, 255}) annotation(
    Placement(transformation(origin = {254, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox middleBarLower1m(height = 1, length = 0.1, r = {0, -1, 0}, width = 0.1, color = {255, 0, 0}) annotation(
    Placement(transformation(origin = {8, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT3(animation = false, r = {0, -0.90, -0.5}) annotation(
    Placement(transformation(origin = {-20, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT4(animation = false, r = {0, 3, 0}) annotation(
    Placement(transformation(origin = {8, 52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox middleBarUpper1m(height = 1, length = 0.1, r = {0, -1, 0}, width = 0.1, color = {255, 0, 0}) annotation(
    Placement(transformation(origin = {32, 52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT2(animation = false, r = {-1.95, -2, 1}) annotation(
    Placement(transformation(origin = {-162, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT5(animation = false, r = {0, 0, 0.5}) annotation(
    Placement(transformation(origin = {56, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor MiddleBarRelativeToGround(get_r_rel = true, get_v_rel = true) annotation(
    Placement(transformation(origin = {-90, 90}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor CubeRelativeToMiddleBar(get_r_rel = true, get_v_rel = true) annotation(
    Placement(transformation(origin = {110, 90}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor ThinBarRelativeToCube(get_r_rel = true, get_v_rel = true) annotation(
    Placement(transformation(origin = {202, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor(get_r = true, get_v = true) annotation(
    Placement(transformation(origin = {280, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine sine1(f = 0.1) annotation(
    Placement(transformation(origin = {62, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sources.Position position1(useSupport = false) annotation(
    Placement(transformation(origin = {92, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.CutForce ForceMeasureThinBar annotation(
    Placement(transformation(origin = {224, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Sensors.CutForce ForceMeasureMiddleBar annotation(
    Placement(transformation(origin = {-96, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sensors.ForceSensor SourceMeasure annotation(
    Placement(transformation(origin = {186, 78}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Sources.ConstantForce constantForce(f_constant = 100)  annotation(
    Placement(transformation(origin = {-130, -48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.ElastoGap StopMotion(c = 1e6, d = 100e3, s_rel0 = -2)  annotation(
    Placement(transformation(origin = {-130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT6(r = {0.8, 0, 0}, animation = false)  annotation(
    Placement(transformation(origin = {144, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedT7(r = {0, -0.05, 0}, animation = false)  annotation(
    Placement(transformation(origin = {-68, 34}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(sine2.y, position2.s_ref) annotation(
    Line(points = {{155, 120}, {164, 120}}, color = {0, 0, 127}));
  connect(fixedT.frame_b, upperGroundBar.frame_a) annotation(
    Line(points = {{-184, 58}, {-172, 58}}, color = {95, 95, 95}));
  connect(prismatic2.frame_b, Cube.frame_a) annotation(
    Line(points = {{96, 34}, {108, 34}}, color = {95, 95, 95}));
  connect(fixedT3.frame_b, middleBarLower1m.frame_a) annotation(
    Line(points = {{-10, 16}, {-2, 16}}, color = {95, 95, 95}));
  connect(lowerGroundBar.frame_a, world.frame_b) annotation(
    Line(points = {{-204, 34}, {-214, 34}}, color = {95, 95, 95}));
  connect(fixedT2.frame_b, prismatic.frame_a) annotation(
    Line(points = {{-152, 34}, {-140, 34}}, color = {95, 95, 95}));
  connect(fixedT5.frame_b, prismatic2.frame_a) annotation(
    Line(points = {{66, 34}, {76, 34}}, color = {95, 95, 95}));
  connect(fixedT4.frame_b, middleBarUpper1m.frame_a) annotation(
    Line(points = {{18, 52}, {22, 52}}, color = {95, 95, 95}));
  connect(MiddleBarRelativeToGround.frame_a, world.frame_b) annotation(
    Line(points = {{-100, 90}, {-214, 90}, {-214, 34}}, color = {95, 95, 95}));
  connect(position1.flange, prismatic2.axis) annotation(
    Line(points = {{102, -40}, {102, 40}, {94, 40}}, color = {0, 127, 0}));
  connect(sine1.y, position1.s_ref) annotation(
    Line(points = {{73, -40}, {80, -40}}, color = {0, 0, 127}));
  connect(ForceMeasureThinBar.frame_a, prismatic3.frame_b) annotation(
    Line(points = {{214, 34}, {188, 34}}, color = {95, 95, 95}));
  connect(prismatic.frame_b, ForceMeasureMiddleBar.frame_a) annotation(
    Line(points = {{-120, 34}, {-106, 34}}, color = {95, 95, 95}));
  connect(position2.flange, SourceMeasure.flange_a) annotation(
    Line(points = {{186, 120}, {186, 88}}, color = {0, 127, 0}));
  connect(upperGroundBar.frame_b, fixedT2.frame_a) annotation(
    Line(points = {{-152, 58}, {-150, 58}, {-150, 46}, {-174, 46}, {-174, 34}, {-172, 34}}, color = {95, 95, 95}));
  connect(lowerGroundBar.frame_b, fixedT.frame_a) annotation(
    Line(points = {{-184, 34}, {-182, 34}, {-182, 46}, {-206, 46}, {-206, 58}, {-204, 58}}, color = {95, 95, 95}));
  connect(prismatic.support, StopMotion.flange_b) annotation(
    Line(points = {{-134, 40}, {-144, 40}, {-144, -10}, {-140, -10}}, color = {0, 127, 0}));
  connect(prismatic.axis, StopMotion.flange_a) annotation(
    Line(points = {{-122, 40}, {-114, 40}, {-114, -10}, {-120, -10}}, color = {0, 127, 0}));
  connect(Cube.frame_b, fixedT6.frame_a) annotation(
    Line(points = {{128, 34}, {134, 34}}, color = {95, 95, 95}));
  connect(fixedT6.frame_b, prismatic3.frame_a) annotation(
    Line(points = {{154, 34}, {168, 34}}, color = {95, 95, 95}));
  connect(constantForce.flange, StopMotion.flange_a) annotation(
    Line(points = {{-120, -48}, {-114, -48}, {-114, -10}, {-120, -10}}, color = {0, 127, 0}));
  connect(prismatic3.axis, SourceMeasure.flange_b) annotation(
    Line(points = {{186, 40}, {186, 68}}, color = {0, 127, 0}));
  connect(ForceMeasureThinBar.frame_b, ThinBar.frame_a) annotation(
    Line(points = {{234, 34}, {254, 34}, {254, 42}}, color = {95, 95, 95}));
  connect(absoluteSensor.frame_a, ThinBar.frame_a) annotation(
    Line(points = {{270, 34}, {254, 34}, {254, 42}}, color = {95, 95, 95}));
  connect(ThinBarRelativeToCube.frame_b, ThinBar.frame_a) annotation(
    Line(points = {{212, -24}, {254, -24}, {254, 42}}, color = {95, 95, 95}));
  connect(CubeRelativeToMiddleBar.frame_b, fixedT6.frame_b) annotation(
    Line(points = {{120, 90}, {162, 90}, {162, 34}, {154, 34}}, color = {95, 95, 95}));
  connect(ThinBarRelativeToCube.frame_a, fixedT6.frame_b) annotation(
    Line(points = {{192, -24}, {162, -24}, {162, 34}, {154, 34}}, color = {95, 95, 95}));
  connect(fixedT3.frame_a, middleBar2m.frame_b) annotation(
    Line(points = {{-30, 16}, {-30, 34}}, color = {95, 95, 95}));
  connect(middleBarLower1m.frame_b, fixedT4.frame_a) annotation(
    Line(points = {{18, 16}, {20, 16}, {20, 32}, {-4, 32}, {-4, 52}, {-2, 52}}, color = {95, 95, 95}));
  connect(fixedT5.frame_a, middleBarUpper1m.frame_b) annotation(
    Line(points = {{46, 34}, {44, 34}, {44, 52}, {42, 52}}, color = {95, 95, 95}));
  connect(CubeRelativeToMiddleBar.frame_a, fixedT5.frame_b) annotation(
    Line(points = {{100, 90}, {70, 90}, {70, 34}, {66, 34}}, color = {95, 95, 95}));
  connect(fixedT7.frame_a, ForceMeasureMiddleBar.frame_b) annotation(
    Line(points = {{-78, 34}, {-86, 34}}, color = {95, 95, 95}));
  connect(fixedT7.frame_b, middleBar2m.frame_a) annotation(
    Line(points = {{-58, 34}, {-50, 34}}, color = {95, 95, 95}));
  connect(MiddleBarRelativeToGround.frame_b, fixedT5.frame_b) annotation(
    Line(points = {{-80, 90}, {70, 90}, {70, 34}, {66, 34}}, color = {95, 95, 95}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-240, 140}, {300, -60}})),
    version = "");
end CartesianRobot;
