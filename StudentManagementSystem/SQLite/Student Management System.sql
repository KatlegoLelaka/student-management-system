CREATE TABLE `users` (
  `user_id` integer PRIMARY KEY,
  `name` varchar(255),
  `email` varchar(255),
  `password_hash` varchar(255),
  `role` varchar(255) CHECK (role IN ('Student','Teacher','Admin','SuperAdmin')),
  `is_active` bool
);

CREATE TABLE `students` (
  `student_id` integer PRIMARY KEY,
  `user_id` integer UNIQUE,
  `student_number` integer,
  `name` varchar(255),
  `surname` varchar(255),
  `DOB` date CHECK (strftime('%Y', 'now') - strftime('%Y', dob) >= 13 AND strftime('%Y', 'now') - strftime('%Y', dob) <= 21),
  `email` varchar(255)
);

CREATE TABLE `teachers` (
  `teacher_id` integer PRIMARY KEY,
  `user_id` integer UNIQUE,
  `name` varchar(255),
  `surname` varchar(255),
  `DOB` date CHECK (strftime('%Y', 'now') - strftime('%Y', dob) >= 18 AND strftime('%Y', 'now') - strftime('%Y', dob) <= 65),
  `email` varchar(255)
);

CREATE TABLE `classes` (
  `class_id` integer PRIMARY KEY,
  `class_name` varchar(255),
  `teacher_id` integer,
  `grade_level` integer,
  `phase` varchar(255) CHECK (phase IN ('GET','FET'))
);

CREATE TABLE `student_classes` (
  `student_id` integer,
  `class_id` integer
);

CREATE TABLE `subjects` (
  `subject_id` integer PRIMARY KEY,
  `subject_code` varchar(255),
  `subject_name` varchar(255),
  `class_id` int
);

CREATE TABLE `marks` (
  `mark_id` integer PRIMARY KEY,
  `student_id` integer,
  `subject_id` integer,
  `grade` double CHECK (grade >= 0 AND grade <= 100),
  `visible` bool,
  `mark_comment` varchar(255)
);

CREATE TABLE `attendance` (
  `attendance_id` integer PRIMARY KEY,
  `student_id` integer,
  `class_id` integer,
  `date` date,
  `attended` varchar(255) CHECK (attended IN ('P','A','L'))
);

CREATE TABLE `materials` (
  `materials_id` integer PRIMARY KEY,
  `teacher_id` integer,
  `class_id` integer,
  `subject_id` integer,
  `title` varchar(255),
  `materials_link` varchar(255),
  `date` date
);

CREATE TABLE `notifications` (
  `notification_id` integer PRIMARY KEY,
  `teacher_id` integer,
  `class_id` integer,
  `subject_id` integer,
  `message` varchar(255),
  `date` date
);

CREATE TABLE `notifications_checked` (
  `notification_id` integer,
  `student_id` integer
);

ALTER TABLE `students` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `teachers` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

ALTER TABLE `classes` ADD FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);

ALTER TABLE `student_classes` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `student_classes` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `subject` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `marks` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `marks` ADD FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

ALTER TABLE `attendance` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

ALTER TABLE `attendance` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `materials` ADD FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);

ALTER TABLE `materials` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `materials` ADD FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

ALTER TABLE `notifications` ADD FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);

ALTER TABLE `notifications` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

ALTER TABLE `notifications` ADD FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

ALTER TABLE `notifications_checked` ADD FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`notification_id`);

ALTER TABLE `notifications_checked` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);
