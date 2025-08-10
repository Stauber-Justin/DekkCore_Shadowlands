UPDATE `creature_template` SET `ScriptName`='npc_sylvanas_windrunner_177114' WHERE  `entry`=177114;
UPDATE `creature_template` SET `ScriptName`='npc_plague_177261' WHERE  `entry`=177261;
UPDATE `creature_template` SET `ScriptName`='npc_trained_flayedwing_177583' WHERE  `entry`=177583;
UPDATE `creature_template` SET `ScriptName`='npc_rokhan_126549' WHERE  `entry`=126549;

DELETE FROM `quest_template` WHERE  `ID`=14281;
REPLACE INTO `disables` (`sourceType`, `entry`, `flags`, `comment`) VALUES ('1', '14281', '0', 'deprecated quest');
UPDATE `creature_template` SET `ScriptName` = 'npc_sean_dempsey' WHERE `entry` IN (35081);
UPDATE `creature_template` SET `ScriptName` = 'npc_lord_darius_crowley_c1' WHERE `entry` IN (35077);
UPDATE `creature_template` SET `ScriptName` = 'npc_worgen_runt_c1' WHERE `entry` IN (35188);
UPDATE `creature_template` SET `ScriptName` = 'npc_worgen_alpha_c1' WHERE `entry` IN (35170);
UPDATE `creature_template` SET `ScriptName` = 'npc_worgen_runt_c2' WHERE `entry` IN (35456);
UPDATE `creature_template` SET `ScriptName` = 'npc_worgen_alpha_c2' WHERE `entry` IN (35167);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35229 AND `source_type`=0 AND `id`=0 AND `link`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35229, 0, 0, 1, 2, 0, 100, 1, 0, 30, 1000, 1000, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Cast Enrage at 30% HP');
DELETE FROM `smart_scripts` WHERE `entryorguid`=35229 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35229, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Say Text at 30% HP');
DELETE FROM `smart_scripts` WHERE `entryorguid`=35229 AND `source_type`=0 AND `id`=2 AND `link`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35229, 0, 2, 3, 8, 0, 100, 512, 67063, 0, 0, 0, 0, '', 33, 35582, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - On Spellhit - Quest Credit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=35229 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35229, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Die');

UPDATE `creature_template` SET `speed_run`=1.28571426868439, `minlevel`=4, `maxlevel`=4, `Unit_Flags`=8, `mechanic_immune_mask`=2147483647 WHERE `entry`=35231;

DELETE FROM `npc_vendor` WHERE `entry`=135153;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(135153, 1, 159867, 0, 0, 1, 0, 0, 45745),
(135153, 2, 159868, 0, 0, 1, 0, 0, 45745),
(135153, 3, 162026, 0, 0, 1, 0, 0, 45745),
(135153, 4, 159850, 0, 0, 1, 0, 0, 45745),
(135153, 5, 159846, 0, 0, 1, 0, 0, 45745),
(135153, 6, 163019, 0, 0, 1, 0, 0, 45745),
(135153, 7, 159874, 0, 0, 1, 0, 0, 45745),
(135153, 8, 159878, 0, 0, 1, 0, 0, 45745),
(135153, 9, 163052, 0, 0, 1, 0, 0, 45745),
(135153, 10, 163107, 0, 0, 1, 0, 0, 45745);

UPDATE `creature_template` SET `gossip_menu_id`=23196 WHERE `entry`=142752;
UPDATE `creature_template` SET `gossip_menu_id`=26846 WHERE `entry`=177193;
UPDATE `creature_template` SET `gossip_menu_id`=22552 WHERE `entry`=135153;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (142056,143502,142139,143022,135521,143272,144175,144178,144177,144176,142069,142050,142055,142053,142052,142453,142031,142030,142035,142043,142042,142040,137199,137196,142029,142613,142032,142111,142046,142044,137201,138410,148906,138423,138422,138421,142051,144110,144327,144328,143444,148904,142119);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(142056, 224326, 3, 0),
(143502, 224326, 3, 0),
(142139, 224326, 3, 0),
(143022, 224326, 3, 0),
(135521, 224326, 3, 0),
(143272, 224326, 3, 0),
(144175, 224326, 3, 0),
(144178, 224326, 3, 0),
(144177, 224326, 3, 0),
(144176, 224326, 3, 0),
(142069, 224326, 3, 0),
(142050, 224326, 3, 0),
(142055, 224326, 3, 0),
(142053, 224326, 3, 0),
(142052, 224326, 3, 0),
(142453, 224326, 3, 0),
(142031, 224326, 3, 0),
(142030, 224326, 3, 0),
(142035, 224326, 3, 0),
(142043, 224326, 3, 0),
(142042, 224326, 3, 0),
(142040, 224326, 3, 0),
(137199, 224326, 3, 0),
(137196, 224326, 3, 0),
(142029, 224326, 3, 0),
(142613, 224326, 3, 0),
(142032, 224326, 3, 0),
(142111, 224326, 3, 0),
(142046, 224326, 3, 0),
(142044, 224326, 3, 0),
(137201, 224326, 3, 0),
(138410, 224326, 3, 0),
(148906, 224326, 3, 0),
(138423, 224326, 3, 0),
(138422, 224326, 3, 0),
(138421, 224326, 3, 0),
(142051, 224326, 3, 0),
(144110, 224326, 3, 0),
(144327, 224326, 3, 0),
(144328, 224326, 3, 0),
(143444, 224326, 3, 0),
(148904, 224326, 3, 0),
(142119, 224326, 3, 0);

DELETE FROM `npc_vendor` WHERE `entry`=135153;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(135153, 1, 159867, 0, 0, 1, 0, 0, 45745),
(135153, 2, 159868, 0, 0, 1, 0, 0, 45745),
(135153, 3, 162026, 0, 0, 1, 0, 0, 45745),
(135153, 4, 159850, 0, 0, 1, 0, 0, 45745),
(135153, 5, 159846, 0, 0, 1, 0, 0, 45745),
(135153, 6, 163019, 0, 0, 1, 0, 0, 45745),
(135153, 7, 159874, 0, 0, 1, 0, 0, 45745),
(135153, 8, 159878, 0, 0, 1, 0, 0, 45745),
(135153, 9, 163052, 0, 0, 1, 0, 0, 45745),
(135153, 10, 163107, 0, 0, 1, 0, 0, 45745);

UPDATE `creature_template` SET `gossip_menu_id`=23196 WHERE `entry`=142752;
UPDATE `creature_template` SET `gossip_menu_id`=26846 WHERE `entry`=177193;
UPDATE `creature_template` SET `gossip_menu_id`=22552 WHERE `entry`=135153;
UPDATE `npc_text` SET `Probability0`=1 WHERE `ID`=42723;

-- Pettable creatures on Boralus spell clicks
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (142056,143502,142139,143022,135521,143272,144175,144178,144177,144176,142069,142050,142055,142053,142052,142453,142031,142030,142035,142043,142042,142040,137199,137196,142029,142613,142032,142111,142046,142044,137201,138410,148906,138423,138422,138421,142051,144110,144327,144328,143444,148904,142119);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(142056, 224326, 3, 0),
(143502, 224326, 3, 0),
(142139, 224326, 3, 0),
(143022, 224326, 3, 0),
(135521, 224326, 3, 0),
(143272, 224326, 3, 0),
(144175, 224326, 3, 0),
(144178, 224326, 3, 0),
(144177, 224326, 3, 0),
(144176, 224326, 3, 0),
(142069, 224326, 3, 0),
(142050, 224326, 3, 0),
(142055, 224326, 3, 0),
(142053, 224326, 3, 0),
(142052, 224326, 3, 0),
(142453, 224326, 3, 0),
(142031, 224326, 3, 0),
(142030, 224326, 3, 0),
(142035, 224326, 3, 0),
(142043, 224326, 3, 0),
(142042, 224326, 3, 0),
(142040, 224326, 3, 0),
(137199, 224326, 3, 0),
(137196, 224326, 3, 0),
(142029, 224326, 3, 0),
(142613, 224326, 3, 0),
(142032, 224326, 3, 0),
(142111, 224326, 3, 0),
(142046, 224326, 3, 0),
(142044, 224326, 3, 0),
(137201, 224326, 3, 0),
(138410, 224326, 3, 0),
(148906, 224326, 3, 0),
(138423, 224326, 3, 0),
(138422, 224326, 3, 0),
(138421, 224326, 3, 0),
(142051, 224326, 3, 0),
(144110, 224326, 3, 0),
(144327, 224326, 3, 0),
(144328, 224326, 3, 0),
(143444, 224326, 3, 0),
(148904, 224326, 3, 0),
(142119, 224326, 3, 0);

--
-- Table structure for table `gossip_menu_option_addon`
--
DROP TABLE IF EXISTS `gossip_menu_option_addon`;
CREATE TABLE `gossip_menu_option_addon` (
  `MenuID` int unsigned NOT NULL DEFAULT '0',
  `OptionID` int unsigned NOT NULL DEFAULT '0',
  `GarrTalentTreeID` int DEFAULT NULL,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`MenuID`,`OptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
