USE CustomizedWorkoutGenerator;
GO

INSERT INTO [dbo].[Exercise]
	([Name],
	[Description],
	[Steps],
	[WorkoutTypeId],
	[EquipmentTypeId])
VALUES
	-- No equipment
	('Push-up',
	'A bodyweight exercise that targets the chest, shoulders, and triceps.',
	'Start in a plank position with your hands shoulder-width apart. Lower your chest towards the ground by bending your elbows. Push back up to the starting position while keeping your body straight.',
	1,
	1),

	('Squat',
	'A lower-body exercise that strengthens the legs and glutes using only bodyweight.',
	'Stand with your feet shoulder-width apart. Lower your body by bending your knees and pushing your hips back. Keep your chest up and return to standing.',
	1,
	1),

	('Plank',
	'A core stabilization exercise that strengthens the abs, back, and shoulders.',
	'Start in a push-up position with your elbows bent and forearms on the ground. Keep your body in a straight line from head to heels and hold this position for as long as possible.',
	1,
	1),

	('Mountain Climbers',
	'A cardio and core exercise that mimics the movement of climbing a mountain.',
	'Start in a push-up position. Bring one knee towards your chest and quickly switch to the other knee in a running motion. Continue alternating legs while keeping your body straight.',
	2,
	1),

	('Lunges',
	'A lower-body exercise that works the quads, hamstrings, and glutes.',
	'Stand with your feet together. Step forward with one leg and lower your hips until both knees are bent at a 90-degree angle. Push back up to the starting position and repeat on the other leg.',
	1,
	1),

	('Burpees',
	'A full-body exercise that combines strength and cardio by moving from a squat to a push-up and back up to a jump.',
	'Start in a standing position. Drop into a squat, then place your hands on the ground and jump your feet back into a plank position. Perform a push-up, then jump your feet back to your hands and explode into a jump.',
	2,
	1),

	('Superman',
	'Strengthens the lower back and glutes by lifting the arms and legs off the ground while lying on the stomach.',
	'Lie face down with arms extended in front of you. Simultaneously lift your arms, chest, and legs off the ground. Hold for a few seconds, then lower back down.',
	1,
	1),

	('Bicycle Crunches',
	'A core exercise that targets the abs and obliques through a cycling motion.',
	'Lie on your back with your hands behind your head. Lift your legs off the ground and alternate bringing your elbow to the opposite knee, while extending the other leg.',
	1,
	1),

	('Jumping Jacks',
	'A cardio exercise that involves jumping with arms and legs spreading out and returning to the center.',
	'Stand with your feet together and arms at your sides. Jump while spreading your legs shoulder-width apart and raising your arms overhead. Return to the starting position and repeat.',
	2,
	1),

	('Glute Bridge',
	'A bodyweight exercise that strengthens the glutes and lower back.',
	'Lie on your back with your knees bent and feet flat on the ground. Lift your hips towards the ceiling by squeezing your glutes, then lower back down.',
	1,
	1),

	('Cat-Cow Stretch',
	'A gentle flow between two yoga poses to stretch the spine and relieve tension.',
	'Start on all fours with your hands under your shoulders and knees under your hips. Inhale, arch your back (cow pose), and exhale while rounding your back (cat pose).',
	3,
	1),

	('Child''s Pose',
	'A resting yoga pose that stretches the lower back, hips, and thighs.',
	'Kneel on the floor, sit back on your heels, and lower your torso forward with your arms stretched out in front of you. Rest your forehead on the ground.',
	3,
	1),

	('Downward Dog',
	'A yoga pose that stretches the hamstrings, calves, and back while strengthening the arms.',
	'Start on all fours, tuck your toes under, and lift your hips towards the ceiling. Straighten your legs and arms, keeping your head between your arms.',
	3,
	1),

	('High Knees',
	'A cardio exercise that involves running in place with your knees lifted as high as possible.',
	'Stand tall and quickly alternate bringing each knee up towards your chest, swinging your arms in sync with the movement.',
	2,
	1),

	('Butt Kicks',
	'A cardio exercise that involves kicking your heels up to your glutes while running in place.',
	'Run in place while kicking your heels back towards your glutes with each step. Keep your body straight and use quick movements.',
	2,
	1),

	('Side Lunges',
	'A mobility and flexibility exercise that stretches the inner thighs and hips.',
	'Stand with your feet wide apart. Shift your weight to one side, bending that knee and keeping the other leg straight. Return to the center and repeat on the other side.',
	3,
	1),

	('Arm Circles',
	'A simple mobility exercise to warm up the shoulders and increase range of motion.',
	'Extend your arms out to the sides and make small, controlled circles with your arms. Gradually increase the size of the circles.',
	3,
	1),

	('Toe Touches',
	'A flexibility exercise that stretches the hamstrings and lower back.',
	'Stand with your feet shoulder-width apart. Bend at the waist and reach down towards your toes while keeping your legs straight. Hold the stretch and return to the standing position.',
	3,
	1),

	('Walking on the Spot',
	'A low-impact cardio exercise that mimics walking, keeping the heart rate up.',
	'Stand upright and walk in place, lifting your knees slightly with each step. Swing your arms naturally as you move.',
	2,
	1),

	('Shoulder Shrugs',
	'A simple movement that relieves tension in the neck and shoulders while increasing mobility.',
	'Stand with your arms at your sides. Lift your shoulders up towards your ears, hold for a second, then lower them back down.',
	3,
	1),

	-- Resistance band
	('Resistance Band Squat',
	'A lower-body exercise that strengthens the legs and glutes using a resistance band.',
	'Stand on the resistance band with feet shoulder-width apart. Hold the handles at shoulder height. Lower your body into a squat by bending your knees and pushing your hips back. Keep your chest up and return to standing.',
	1,
	2),

	('Resistance Band Chest Press',
	'Targets the chest muscles by simulating a bench press with a resistance band.',
	'Anchor the band behind you at chest level. Hold the handles and step forward to create tension. Press the handles forward until your arms are fully extended. Slowly return to the starting position.',
	1,
	2),

	('Resistance Band Row',
	'Strengthens the back and biceps by performing a rowing motion with a resistance band.',
	'Anchor the band in front of you at waist height. Hold the handles and step back to create tension. Pull the handles towards your torso, squeezing your shoulder blades together. Release back to the starting position.',
	1,
	2),

	('Resistance Band Shoulder Press',
	'A shoulder strengthening exercise that utilizes a resistance band.',
	'Stand on the band with feet shoulder-width apart. Hold the handles at shoulder height. Press the handles overhead until your arms are fully extended. Lower back to shoulder height.',
	1,
	2),

	('Resistance Band Deadlift',
	'Engages the hamstrings and lower back using a resistance band.',
	'Stand on the band with feet hip-width apart. Hold the handles with both hands. Keep your back straight and hinge at the hips to lower your torso. Stand back up while pulling against the band.',
	1,
	2),

	('Resistance Band Lateral Raise',
	'Strengthens the shoulders and upper back using a resistance band.',
	'Stand on the band with feet shoulder-width apart. Hold the handles at your sides. Raise your arms out to the side until they are parallel to the ground, then lower them back down.',
	1,
	2),

	('Resistance Band Bicep Curl',
	'Focuses on building strength in the biceps using a resistance band.',
	'Stand on the band with feet shoulder-width apart. Hold the handles at your sides with palms facing forward. Curl the handles up towards your shoulders, squeezing the biceps. Lower back to the starting position.',
	1,
	2),

	('Resistance Band Tricep Extension',
	'Targets the triceps through a resistance band extension exercise.',
	'Anchor the band overhead or behind you. Hold the handles and extend your arms straight in front of you. Bend your elbows to lower the handles behind your head, then extend back to the starting position.',
	1,
	2),

	('Resistance Band Glute Bridge',
	'Strengthens the glutes and lower back while using a resistance band.',
	'Lie on your back with the band around your thighs, just above your knees. Bend your knees and place your feet flat on the ground. Lift your hips towards the ceiling by squeezing your glutes, then lower back down.',
	1,
	2),

	('Resistance Band Side Steps',
	'A lateral exercise that targets the hips and outer thighs using a resistance band.',
	'Place the band around your legs, just above your knees. Stand with feet shoulder-width apart. Step sideways to the right, then return to the starting position. Repeat on the left side.',
	1,
	2),

	-- Kettlebell
	('Kettlebell Swing',
	'Full-body exercise to improve strength and conditioning.',
	'Stand with feet shoulder-width apart, swing the kettlebell between your legs, and explosively drive your hips forward to swing it up to chest level.',
	1,
	3),
	
	('Kettlebell Goblet Squat',
	'A lower body exercise to build leg and core strength.',
	'Hold the kettlebell by the horns, squat down until your thighs are parallel to the floor, then drive back up.',
	1,
	3),
	
	('Kettlebell Deadlift',
	'Strengthens the posterior chain, including hamstrings, glutes, and back.',
	'Stand with feet hip-width apart, grip the kettlebell, and hinge at the hips to lift it by extending your hips and knees.',
	1,
	3),
	
	('Kettlebell Clean',
	'A power move that builds strength and coordination.',
	'Swing the kettlebell from the ground to chest level, catching it in a racked position by your shoulder.',
	1,
	3),
	
	('Kettlebell Snatch',
	'An explosive full-body exercise.',
	'Swing the kettlebell between your legs, then drive it overhead in one smooth motion.',
	1,
	3),
	
	('Kettlebell Lunge',
	'Builds leg strength and balance.',
	'Hold the kettlebell at chest height, step forward into a lunge, and return to standing.',
	1,
	3),
	
	('Kettlebell Turkish Get-Up',
	'A complex movement to build strength, stability, and coordination.',
	' From lying down, hold the kettlebell overhead and use your body to stand up while maintaining control.',
	1,
	3),
	
	('Kettlebell Press',
	'Upper body strength move focused on the shoulders and arms.',
	'Hold the kettlebell at shoulder height and press it overhead.',
	1,
	3),
	
	('Kettlebell Row',
	'Strengthens the back and biceps.',
	'Hinge at the hips and row the kettlebell towards your rib cage, then lower it.',
	1,
	3),
	
	('Kettlebell Windmill',
	'Strengthens the core and improves flexibility.',
	'With the kettlebell overhead, hinge at the hips while maintaining the weight overhead, touch the floor with your free hand.',
	3,
	3),
	
	-- Stationary bicycle
	('Steady-State Cycling',
	'Cardiovascular exercise focused on endurance.',
	'Set a comfortable pace on the bike and cycle for 20-60 minutes.',
	2,
	4),
	
	('Hill Climb',
	'Simulates uphill cycling to build leg strength.',
	'Increase resistance and cycle in a standing position for 3-5 minutes, then recover.',
	1,
	4),
	
	('Sprints',
	'High-intensity intervals to improve power and speed.',
	'Cycle as fast as possible for 20-30 seconds, followed by a slower pace for 1-2 minutes.',
	2,
	4),
	
	('Interval Training',
	'Alternates between high-intensity sprints and recovery for a balanced workout.',
	'Sprint for 1 minute, recover for 2 minutes, repeat for 20 minutes.',
	2,
	4),
	
	('Low-Intensity Ride',
	'A gentle ride focused on fat burning.',
	'Cycle at a low pace for 30-45 minutes.',
	2,
	4),
	
	('Tabata Cycling',
	'Short bursts of high-intensity followed by rest.',
	'Cycle at maximum effort for 20 seconds, rest for 10 seconds, repeat for 4 minutes.',
	2,
	4),
	
	('Endurance Ride',
	'Builds cardiovascular stamina with a long, moderate ride.',
	'Cycle for 60+ minutes at a moderate pace.',
	2,
	4),
	
	('Bike Push',
	'Strengthens lower body muscles.',
	'Increase resistance to the maximum and cycle at a slow pace for 2-3 minutes.',
	1,
	4),
	
	('Recovery Ride',
	'Gentle, low-intensity cycling to aid recovery.',
	'Cycle for 20-30 minutes at a light, comfortable pace.',
	2,
	4),
	
	('Time Trial',
	'Measures endurance and speed over a set distance or time.',
	'Cycle as fast as possible for a specific time (e.g., 20 minutes).',
	2,
	4),
	
	-- Yoga mat
	('Plank',
	'Core exercise that builds strength and stability.',
	'Hold a push-up position on your forearms, keeping your body in a straight line.',
	1,
	5),
	
	('Downward Dog',
	'Full-body stretch focusing on flexibility and balance.',
	'Start on all fours, lift your hips into the air to form an inverted "V" shape.',
	3,
	5),
	
	('Child�s Pose',
	'Restorative pose to stretch the lower back and hips.',
	'Sit back on your heels and reach your arms forward, resting your forehead on the mat.',
	3,
	5),
	
	('Boat Pose',
	'Core strength exercise.',
	'Sit on the mat, lift your legs and balance on your sit bones while extending your arms forward.',
	1,
	5),
	
	('Mountain Pose',
	'Basic standing posture to improve alignment.',
	'Stand tall with feet together, arms at your sides, and breathe deeply.',
	3,
	5),
	
	('Cobra Pose',
	'Strengthens the back and stretches the chest.',
	'Lie face down, press into your palms, and lift your chest off the mat while keeping your hips on the ground.',
	3,
	5),
	
	('Side Plank',
	'Core strengthening move focusing on obliques.',
	'Lie on your side, lift your hips off the mat while supporting yourself on one arm.',
	1,
	5),
	
	('Bridge Pose',
	'Strengthens the lower back and glutes.',
	'Lie on your back, press into your feet, and lift your hips while squeezing your glutes.',
	1,
	5),
	
	('Leg Raises',
	'Targets the core and lower body.',
	'Lie on the mat, raise your legs until they form a 90-degree angle with your body, then lower them slowly.',
	1,
	5),
	
	('Cat-Cow Stretch',
	'Stretches the back and improves flexibility.',
	'On all fours, alternate between arching your back (cow) and rounding it (cat).',
	3,
	5),
	
	-- Dumbbell
	('Dumbbell Bench Press',
	'Upper body exercise to build chest, shoulders, and triceps.',
	'Lie on a bench, press dumbbells above your chest, and lower them back to starting position.',
	1,
	6),
	
	('Dumbbell Squat',
	'Strengthens the lower body, especially the quads and glutes.',
	'Hold a dumbbell in each hand, squat down keeping your chest up, and push back to the starting position.',
	1,
	6),
	
	('Dumbbell Shoulder Press',
	'Builds shoulder strength and stability.',
	'Sit or stand with dumbbells at shoulder height, press them overhead until your arms are fully extended.',
	1,
	6),
	
	('Dumbbell Row',
	'Strengthens the back and biceps.',
	'Hinge at your hips, row a dumbbell towards your rib cage, and lower it slowly.',
	1,
	6),
	
	('Dumbbell Deadlift',
	'Strengthens the hamstrings, glutes, and lower back.',
	'Stand with dumbbells in front of your legs, bend at the hips, and lift the dumbbells while straightening your back and legs.',
	1,
	6),
	
	('Dumbbell Lateral Raise',
	'Isolates and strengthens the shoulders.',
	'Stand with a dumbbell in each hand, raise your arms out to the sides until they are shoulder height.',
	1,
	6),
	
	('Dumbbell Lunges',
	'Builds leg strength and balance.',
	'Hold a dumbbell in each hand, take a step forward into a lunge, and return to standing.',
	1,
	6),
	
	('Dumbbell Bicep Curl',
	'Targets the biceps for arm strength.',
	'Hold the dumbbells at your sides, curl them towards your shoulders, and lower them slowly.',
	1,
	6),
	
	('Dumbbell Tricep Extension',
	'Isolates and strengthens the triceps.',
	'Hold a dumbbell overhead with both hands, bend your elbows to lower the weight behind your head, and extend back up.',
	1,
	6),
	
	('Dumbbell Bulgarian Split Squat',
	'A unilateral exercise that improves balance and leg strength.',
	'Hold a dumbbell in each hand, place one foot on a bench behind you, and perform a lunge with the other leg.',
	1,
	6),
	
	-- Jump rope
	('Basic Jump',
	'A simple cardiovascular exercise for conditioning.',
	'Hold the jump rope handles, swing the rope over your head, and jump as it passes under your feet.',
	2,
	7),
	
	('Double Under',
	'Advanced jump rope move for improved conditioning.',
	'Swing the rope fast enough to pass under your feet twice in one jump.',
	2,
	7),
	
	('Cross Jump',
	'Engages the upper body and improves coordination.',
	'Cross your arms in front of your body while jumping, then uncross them for the next jump.',
	2,
	7),
	
	('High Knees Jump',
	'Builds leg strength and cardiovascular endurance.',
	'Jump rope while bringing your knees up towards your chest.',
	2,
	7),
	
	('Side Swing',
	'A low-impact variation of jump rope.',
	'Swing the rope to one side of your body instead of jumping over it.',
	2,
	7),
	
	('Alternate Foot Jump',
	'Increases agility and coordination.',
	'Jump rope while alternating between your left and right foot with each rotation of the rope.',
	2,
	7),
	
	('Backward Jump',
	'A variation to improve coordination.',
	'Swing the rope backward and jump over it as it passes under your feet.',
	2,
	7),
	
	('Boxer Step',
	'A smooth, alternating footwork pattern used by boxers.',
	'Shift weight from one foot to the other while jumping the rope, alternating steps.',
	2,
	7),
	
	('Jump Rope Sprint',
	'High-intensity cardio for fat burning.',
	'Jump rope as fast as possible for 30-60 seconds, then rest.',
	2,
	7),
	
	('Single Leg Jump',
	'Builds balance and coordination.',
	'Jump rope while keeping one foot off the ground for the entire set, then switch legs.',
	2,
	7),
	
	-- Bench
	('Bench Press',
	'A compound movement to build chest, shoulder, and tricep strength.',
	'Lie on a bench, press the dumbbells above your chest, and lower them.',
	1,
	8),
	
	('Step-Up',
	'Strengthens legs and improves balance.',
	'Step onto the bench with one foot, drive your knee up, then step back down and repeat.',
	1,
	8),
	
	('Bulgarian Split Squat',
	'Unilateral exercise for leg strength.',
	'Place your back foot on the bench, squat with your other leg, and push back to starting position.',
	1,
	8),
	
	('Decline Push-Up',
	'Targets the upper chest and shoulders.',
	'Place your feet on the bench, hands on the floor, and perform a push-up.',
	1,
	8),
	
	('Bench Dips',
	'Builds tricep strength.',
	'Sit on the bench, place your hands behind you, lower your body off the bench, and push back up.',
	1,
	8),
	
	('Seated Overhead Press',
	'Strengthens shoulders and upper arms.',
	'Sit on the bench, hold dumbbells or a barbell at shoulder height, and press them overhead.',
	1,
	8),
	
	('Leg Raises on Bench',
	'Targets the lower abs.',
	'Lie on the bench, lift your legs straight up, and lower them slowly without touching the bench.',
	1,
	8),
	
	('Incline Bench Press',
	'Builds the upper chest muscles.',
	'Set the bench to an incline, press the dumbbells overhead, and lower them back.',
	1,
	8),
	
	('Bench Jump',
	'Explosive exercise to improve power and leg strength.',
	'Jump onto the bench with both feet and step back down.',
	1,
	8),
	
	('Single-Leg Glute Bridge on Bench',
	'Strengthens the glutes and hamstrings.',
	'Place your upper back on the bench, lift one leg, and thrust your hips upward, then lower.',
	1,
	8),
	
	-- Foam roller
	('Thoracic Spine Roll',
	'Loosens up the muscles of the upper back.',
	'Lie on your back with the roller under your shoulder blades, roll back and forth.',
	3,
	9),
	
	('IT Band Roll',
	'Stretches and releases tension in the iliotibial band on the side of the thigh.',
	'Lie on your side, place the roller under your thigh, and roll from your hip to your knee.',
	3,
	9),
	
	('Quad Roll',
	'Targets the quadriceps muscles.',
	'Lie face down with the roller under your thighs, and roll up and down the length of your quads.',
	3,
	9),
	
	('Hamstring Roll',
	'Releases tightness in the hamstrings.',
	'Sit with the roller under your hamstrings, and roll from the base of your glutes to the back of your knees.',
	3,
	9),
	
	('Calf Roll',
	'Loosens tight calves.',
	'Place the roller under your calves, and roll back and forth.',
	3,
	9),
	
	('Glute Roll',
	'Targets the glute muscles to release tightness.',
	'Sit on the roller, cross one leg over the other knee, and roll from your lower back to the top of your hamstrings.',
	3,
	9),
	
	('Lat Roll',
	'Releases tension in the lat muscles.',
	'Lie on your side with the roller under your armpit, and roll up and down along the side of your torso.',
	3,
	9),
	
	('Adductor Roll',
	'Stretches the inner thigh muscles.',
	'Lie face down, place the roller under one inner thigh, and roll back and forth.',
	3,
	9),
	
	('Hip Flexor Roll',
	'Targets the muscles of the hips.',
	'Lie face down, place the roller under one hip, and roll back and forth to loosen the hip flexors.',
	3,
	9),
	
	('Chest Roll',
	'Opens up the chest muscles.',
	'Lie face down, place the roller under your chest, and roll gently back and forth.',
	3,
	9),
	
	-- Pull up bar
	('Pull-Up',
	'A strength exercise that targets the upper body, especially the back and biceps, by pulling your body upwards.',
	'Grab the bar with an overhand grip, hands shoulder-width apart. Hang with your arms fully extended. Pull your chest towards the bar by engaging your back and arms. Lower back down in a controlled manner.',
	1,
	10),
	
	('Chin-Up',
	'A strength exercise similar to the pull-up but with an underhand grip to emphasize the biceps.',
	'Grab the bar with an underhand grip, hands shoulder-width apart. Hang with your arms extended. Pull your chin over the bar by engaging your biceps and back. Lower yourself slowly.',
	1,
	10),
	
	('Hanging Leg Raise',
	'A core exercise that targets the abdominal muscles by raising the legs while hanging from the pull-up bar.',
	'Hang from the bar with your arms extended. Keep your legs straight and raise them until they are parallel to the ground. Lower your legs back down slowly.',
	1,
	10),
	
	('Hanging Knee Tuck',
	'A beginner-friendly core exercise that involves tucking the knees up while hanging, targeting the lower abs.',
	'Hang from the bar with your arms extended. Bring your knees up towards your chest while keeping your torso stable. Lower your knees back down slowly.',
	1,
	10),
	
	('Archer Pull-Up',
	'An advanced pull-up variation that isolates one arm more than the other for added strength and control.',
	'Grab the bar with a wide overhand grip. Pull yourself towards one hand, extending the other arm straight out. Lower back down and repeat on the other side.',
	1,
	10),
	
	('Hanging Scapular Retraction',
	'A shoulder stability exercise that strengthens the muscles around the scapula by retracting them while hanging.',
	'Hang from the bar with arms extended. Without bending your elbows, pull your shoulder blades back and down. Hold briefly, then relax.',
	3,
	10),
	
	('Hanging L-Sit',
	'A core and endurance exercise where you hold an "L" position while hanging, targeting the abs and hip flexors.',
	'Hang from the bar with arms extended. Lift your legs straight out in front of you, forming an "L" shape. Hold this position for as long as possible.',
	1,
	10),
	
	('Hanging Windshield Wipers',
	'A dynamic core exercise that works the obliques by moving the legs side-to-side while hanging from the bar.',
	'Hang from the bar with your legs raised straight. Rotate your legs from side to side in a controlled manner like windshield wipers.',
	1,
	10),
	
	('Towel Pull-Up',
	'A variation of the pull-up that increases grip strength by using a towel draped over the bar.',
	'Drape a towel over the bar and grab both ends. Pull your chest towards the bar by engaging your back and arms, and lower yourself slowly.',
	1,
	10),
	
	('Muscle-Up',
	'A powerful upper-body exercise that combines a pull-up with a dip to bring the body over the bar.',
	'Start with a pull-up. As your chest reaches the bar, push your body up and over, finishing in a dip position. Lower yourself back down in reverse.',
	1,
	10);
