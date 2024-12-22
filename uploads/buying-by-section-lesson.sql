ALTER TABLE `enrol`
    ADD `section_id` INT(11) NULL DEFAULT NULL AFTER `course_id`,
    ADD `lesson_id` INT(11) NULL DEFAULT NULL AFTER `section_id`;

ALTER TABLE `payment`
    ADD `section_id` INT(11) NULL DEFAULT NULL AFTER `course_id`,
    ADD `lesson_id` INT(11) NULL DEFAULT NULL AFTER `section_id`;
