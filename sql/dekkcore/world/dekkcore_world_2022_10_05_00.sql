SET @CGUID := 61000000001349616;
SET @NPCTEXTID := 580002;

-- Creature
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+2;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 188377, 2222, 10565, 13499, '0', 18890, 0, 0, 0, -1735.125, 1160.4896240234375, 5267.31396484375, 2.225665569305419921, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 45114), -- So'turu (Area: -Unknown- - Difficulty: 0)
(@CGUID+1, 188391, 2222, 10565, 13499, '0', 18890, 0, 0, 0, -1732.3367919921875, 1162.8316650390625, 5267.322265625, 2.988910436630249023, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 45114), -- Ko'ropo (Area: -Unknown- - Difficulty: 0)
(@CGUID+2, 188386, 2222, 10565, 13499, '0', 18890, 0, 0, 0, -1738.1302490234375, 1157.96533203125, 5267.30859375, 1.73673415184020996, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 45114); -- Ta'choso (Area: -Unknown- - Difficulty: 0)

-- Template Data
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=188386; -- Ta'choso
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=188391; -- Ko'ropo
UPDATE `creature_template` SET `gossip_menu_id`=28074, `minlevel`=60, `maxlevel`=60, `faction`=35, `npcflag`=131, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=188377; -- So'turu

-- Scaling
DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (188386,188391,188377));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(188386, 0, 0, 0, 783, 45114),
(188391, 0, 0, 0, 783, 45114),
(188377, 0, 0, 0, 783, 45114);

-- Gossip
DELETE FROM `npc_text` WHERE `ID` BETWEEN @NPCTEXTID+0 AND @NPCTEXTID+1;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(@NPCTEXTID+0, 1, 0, 0, 0, 0, 0, 0, 0, 218562, 0, 0, 0, 0, 0, 0, 0, 45114), -- 188377 (So'turu)
(@NPCTEXTID+1, 1, 0, 0, 0, 0, 0, 0, 0, 218563, 0, 0, 0, 0, 0, 0, 0, 45114); -- 188377 (So'turu)

DELETE FROM `gossip_menu` WHERE (`MenuID`=28074 AND `TextID`=@NPCTEXTID+0) OR (`MenuID`=28075 AND `TextID`=@NPCTEXTID+1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(28074, @NPCTEXTID+0, 45114), -- 188377 (So'turu)
(28075, @NPCTEXTID+1, 45114); -- 188377 (So'turu)

DELETE FROM `gossip_menu_option` WHERE (`MenuID`=28074);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(28074, 1, 'Show me your wares.', 58437, 0, 0, 0, 0, 0, NULL, 0, 45114), -- OptionBroadcastTextID: 58437 - 90189 - 180077
(28074, 0, 'You seem to recognize this coin. What is it?', 0, 0, 28075, 0, 0, 0, NULL, 0, 45114);

-- Phasing
DELETE FROM `phase_area` WHERE (`AreaId` = 13499 AND `PhaseId` = 18890);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(13499, 18890, 'Cosmetic - See Shadowlands Season 4 Coin Vendors');

DELETE FROM `phase_name` WHERE `ID` = 18890;
INSERT INTO `phase_name` (`ID`, `Name`) VALUES
(18890, 'Cosmetic - See Shadowlands Season 4 Coin Vendors');

-- Condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 18890 AND `SourceEntry` = 13499);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 18890, 13499, 0, 0, 47, 0, 66648, 64, 0, 0, 'Apply Phase 18890 If Quest 66648 IS rewarded');

-- Vendor Data
DELETE FROM `npc_vendor` WHERE (`entry`=188386 AND `item`=186417 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186438 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186398 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186406 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186410 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=187056 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186421 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186436 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186437 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186419 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186434 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186435 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186409 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186413 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186393 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186416 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186433 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186432 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186392 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186391 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186388 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186430 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186431 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186411 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186407 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186387 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186429 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186405 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186386 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186427 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186428 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186404 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186385 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186384 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186424 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186425 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186403 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186383 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186418 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186423 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186381 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186415 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188386 AND `item`=186422 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189851 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189861 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189862 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189818 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189860 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188253 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188252 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189852 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189853 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=191001 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188254 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189846 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189845 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188261 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188255 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189839 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188262 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189834 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189806 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189781 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188264 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188263 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189828 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189829 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189830 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188266 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188265 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188267 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189816 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189817 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189819 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189808 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189754 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188269 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188268 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189789 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189799 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189800 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188270 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188271 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189790 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189807 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189788 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188272 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=188273 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189779 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188377 AND `item`=189584 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184031 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184030 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184029 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184028 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184027 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184026 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184025 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184024 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184023 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184022 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184021 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184020 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184019 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184018 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184017 AND `ExtendedCost`=7302 AND `type`=1) OR (`entry`=188391 AND `item`=184016 AND `ExtendedCost`=7302 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(188386, 43, 186417, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 42, 186438, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 41, 186398, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 40, 186406, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 39, 186410, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 38, 187056, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 37, 186421, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 36, 186436, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 35, 186437, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 34, 186419, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 33, 186434, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 32, 186435, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 31, 186409, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 30, 186413, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 29, 186393, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 28, 186416, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 27, 186433, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 26, 186432, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 25, 186392, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 24, 186391, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 23, 186388, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 22, 186430, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 21, 186431, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 20, 186411, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 19, 186407, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 18, 186387, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 17, 186429, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 16, 186405, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 15, 186386, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 14, 186427, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 13, 186428, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 12, 186404, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 11, 186385, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 10, 186384, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 9, 186424, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 8, 186425, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 7, 186403, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 6, 186383, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 5, 186418, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 4, 186423, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 3, 186381, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 2, 186415, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188386, 1, 186422, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 48, 189851, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 47, 189861, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 46, 189862, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 45, 189818, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 44, 189860, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 43, 188253, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 42, 188252, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 41, 189852, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 40, 189853, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 39, 191001, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 38, 188254, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 37, 189846, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 36, 189845, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 35, 188261, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 34, 188255, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 33, 189839, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 31, 188262, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 30, 189834, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 29, 189806, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 28, 189781, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 27, 188264, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 26, 188263, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 25, 189828, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 24, 189829, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 23, 189830, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 22, 188266, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 21, 188265, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 20, 188267, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 19, 189816, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 18, 189817, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 17, 189819, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 16, 189808, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 15, 189754, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 14, 188269, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 13, 188268, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 12, 189789, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 11, 189799, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 10, 189800, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 9, 188270, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 8, 188271, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 7, 189790, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 6, 189807, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 5, 189788, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 4, 188272, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 3, 188273, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 2, 189779, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188377, 1, 189584, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 16, 184031, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 15, 184030, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 14, 184029, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 13, 184028, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 12, 184027, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 11, 184026, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 10, 184025, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 9, 184024, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 8, 184023, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 7, 184022, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 6, 184021, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 5, 184020, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 4, 184019, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 3, 184018, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 2, 184017, 0, 7302, 1, 0, 0, 45114), -- -Unknown-
(188391, 1, 184016, 0, 7302, 1, 0, 0, 45114); -- -Unknown-

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=43270;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43270, 0, 2, 0, 60, 0, 100, 0, 2000, 2000, 2000, 2000, 0, '', 86, 68561, 6, 18, 0, 0, 0, 10, 231041, 0, 0, 0, 0, 0, 0, 0, 'On Update-Nearby players cast Dummy Trigger');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43270, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 82099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn-Cast Quest Invis on self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43270, 0, 3, 0, 8, 0, 100, 0, 68561, 0, 0, 0, 0, '', 85, 82100, 6, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Hit from Player Dummy Trigger');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43270, 0, 4, 0, 8, 0, 100, 0, 68561, 0, 0, 0, 0, '', 28, 82100, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Hit from Dummy Trigger');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43270, 0, 5, 0, 8, 0, 100, 0, 68561, 0, 60000, 120000, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Hit From Player Dummy');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43270, 0, 0, 1, 20, 0, 100, 0, 26587, 0, 0, 0, 0, '', 85, 80893, 6, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Reward');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43270, 0, 0, 'If I never get out of here I´am gonna crap over your Head,you ping sucking Ork.', 12, 0, 100, 3, 0, 0, 0, 43294, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43270, 0, 1, 'Where´s the rest of my crew?!!!', 12, 0, 100, 3, 0, 0, 0, 43295, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43270, 0, 2, 'You think these bars can hold me?HAH!', 12, 0, 100, 3, 0, 0, 0, 43296, 0, '');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=43300;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43300, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 79849, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43300, 0, 1, 0, 0, 0, 100, 0, 500, 1000, 8000, 8500, 0, '', 11, 79854, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43300, 0, 2, 0, 0, 0, 100, 0, 4200, 4500, 12900, 13000, 0, '', 11, 79857, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43300, 0, 3, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43300, 0, 4, 0, 1, 0, 15, 0, 3000, 5000, 25000, 185000, 0, '', 1, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43300, 0, 5, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, '', 29, 0, 20, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Scripit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43300, 0, 6, 0, 79, 0, 100, 0, 0, 43221, 20, 2000, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Script');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 3, 'You ever notice how sarcastic the people living in Redridge are? Sometimes I feel like I just want to take a blow torch to that jackass Solomon\'s town hall.?', 12, 0, 100, 0, 0, 0, 0, 43462, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 4, 'I remember this one time, Keeshan and I were out fishing at the Lakeshire bridge and Keeshan farted. Don\'t think Oslow ever forgave Keeshan for that one...', 12, 0, 100, 0, 0, 0, 0, 43456, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 2, 'So I heard Thrall left the Horde. That true?', 12, 0, 100, 0, 0, 0, 0, 43469, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 0, 'Being a mage has its advantages, but the laundry bills are hell to pay.', 12, 0, 100, 0, 0, 0, 0, 43481, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 1, 'Jorgensen is real dainty, by the way. He\'s a paladin, so be careful what you say around him or you\'re liable to make him cry.', 12, 0, 100, 0, 0, 0, 0, 43460, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 5, 'They called us the Bravo Company. When things needed killin\', we did the spillin\'... of blood.', 12, 0, 100, 0, 0, 0, 0, 43458, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 6, 'So I hear Varian Wrynn is back. That true? Sorry, I\'m a bit out of the loop.', 12, 0, 100, 0, 0, 0, 0, 43461, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 7, 'So what\'s up with the bridge in Lakeshire? Oslow ever finish building it?', 12, 0, 100, 0, 0, 0, 0, 43482, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 8, 'Wait\'ll these orcs get a load of us. Bravo Company BACK IN BUSINESS!', 12, 0, 100, 0, 0, 0, 0, 43472, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 0, 9, 'So whatever happened to that hot little number in Stormwind? Lady Prestor was her name.', 12, 0, 100, 0, 0, 0, 0, 43474, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (43300, 1, 0, 'I really missed you, Danforth.', 12, 0, 100, 0, 0, 0, 0, 43455, 0, '');

REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (43300, 0, 79848, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (43300, 1, 79849, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (43300, 2, 79854, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (43300, 3, 79856, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (43300, 4, 79857, 39653);

DELETE FROM `creature_template` WHERE `entry`=6749;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (6749, 0, 0, 0, 0, 0, 'Erma', '', 'Stable Master', NULL, '', 9821, 30, 30, 0, 0, 0, 12, 4194433, 1, 1.14286, 1, 0, 0, 1000, 2000, 0, 0, 1, 512, 2048, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1.05, 1, 1, 1, 1, 1, 1, 0, 0, 5589, 0, 0, 1, 0, 0, 2, '', 45114);

UPDATE `smart_scripts` SET `link`='1', `event_type`='61', `event_param1`='9821', `event_param2`='2' WHERE  `entryorguid`=6749 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6749, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 85, 133994, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gossip select - revive pet');

DELETE FROM `creature_template_addon` WHERE `entry` IN (101459 /*101459 (Spoils) - Spoils Visuals*/, 103801 /*103801 (Arthfael) - Permanent Feign Death*/, 95675 /*95675 (God-King Skovald)*/, 96677 /*96677 (Steeljaw Grizzly)*/, 99828 /*99828 (Trained Hawk) - Ride Vehicle Hardcoded*/, 96608 /*96608 (Ebonclaw Worg) - Strength of the Pack, Strength of the Pack*/, 101712 /*101712 (Halls of Valor) - Portal Cosmetics*/, 99804 /*99804 (Valarjar Falconer) - Abandon Passengers on Poly*/, 95674 /*95674 (Fenryr)*/, 101637 /*101637 (Valarjar Aspirant) - Ride Vehicle Hardcoded*/, 101639 /*101639 (Valarjar Shieldmaiden) - Ride Vehicle Hardcoded*/, 101638 /*101638 (Chosen of Eyir)*/, 101640 /*101640 (Chosen of Eyir)*/, 97202 /*97202 (Olmyr the Enlightened)*/, 101697 /*101697 (Field of the Eternal Hunt) - Portal Cosmetics*/, 97219 /*97219 (Solsten)*/, 102423 /*102423 (Mug of Mead) - Cosmetic - Loot Sparkles*/, 97197 /*97197 (Valarjar Purifier)*/, 95833 /*95833 (Hyrja) - Chosen Visual*/, 93628 /*93628 (Eyir)*/, 97084 /*97084 (King Tor) - Might of the Brutal Siege*/, 95676 /*95676 (Odyn) - Honor Bound*/, 97081 /*97081 (King Bjorn) - Might of the Black Storm*/, 95843 /*95843 (King Haldor) - Might of the Rocky Cliffs*/, 96574 /*96574 (Stormforged Sentinel) - Sentinel's Watch*/, 97083 /*97083 (King Ranulf) - Might of the Screaming Abyss*/, 96664 /*96664 (Valarjar Runecarver) - Mod Scale 95-120%*/, 95834 /*95834 (Valarjar Mystic) - Mod Scale 95-120%*/, 95832 /*95832 (Valarjar Shieldmaiden) - Shieldmaiden Spawn Cosmetics*/, 96640 /*96640 (Valarjar Marksman) - Mod Scale 95-120%*/, 96648 /*96648 (Chosen of Eyir)*/, 94960 /*94960 (Hymdall)*/, 94968 /*94968 (Valarjar Stormrider) - Ride Vehicle (Pacify)*/, 120652 /*120652 (Global Affix Stalker)*/, 54638 /*54638 (Generic Bunny)*/, 95842 /*95842 (Valarjar Thundercaller)*/, 97087 /*97087 (Valarjar Champion) - Mod Scale 95-120%*/, 97795 /*97795 (Static Field)*/, 96609 /*96609 (Gildedfur Stag) - Mod Scale 95-120%*/, 97068 /*97068 (Storm Drake)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(101459, 0, 0, 0, 1, 0, 0, 0, 0, 0, '200020'), -- 101459 (Spoils) - Spoils Visuals
(103801, 0, 0, 0, 1, 0, 0, 0, 0, 0, '70628'), -- 103801 (Arthfael) - Permanent Feign Death
(95675, 0, 0, 0, 1, 0, 0, 0, 0, 4, ''), -- 95675 (God-King Skovald)
(96677, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''), -- 96677 (Steeljaw Grizzly)
(99828, 0, 0, 0, 1, 0, 0, 0, 0, 0, '46598'), -- 99828 (Trained Hawk) - Ride Vehicle Hardcoded
(96608, 0, 0, 0, 1, 0, 0, 0, 0, 3, '199186 199184'), -- 96608 (Ebonclaw Worg) - Strength of the Pack, Strength of the Pack
(101712, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, '200611'), -- 101712 (Halls of Valor) - Portal Cosmetics
(99804, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''), -- 99804 (Valarjar Falconer)
(95674, 0, 0, 0, 1, 0, 0, 0, 0, 4, ''), -- 95674 (Fenryr)
(101637, 0, 0, 0, 1, 0, 0, 0, 0, 0, '46598'), -- 101637 (Valarjar Aspirant) - Ride Vehicle Hardcoded
(101639, 0, 0, 0, 1, 0, 0, 0, 0, 0, '46598'), -- 101639 (Valarjar Shieldmaiden) - Ride Vehicle Hardcoded
(101638, 0, 0, 50331648, 1, 0, 0, 0, 0, 4, ''), -- 101638 (Chosen of Eyir)
(101640, 0, 0, 50331648, 1, 0, 0, 0, 0, 4, ''), -- 101640 (Chosen of Eyir)
(97202, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''), -- 97202 (Olmyr the Enlightened)
(101697, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, '200611'), -- 101697 (Field of the Eternal Hunt) - Portal Cosmetics
(97219, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''), -- 97219 (Solsten)
(102423, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, '159992'), -- 102423 (Mug of Mead) - Cosmetic - Loot Sparkles
(97197, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''), -- 97197 (Valarjar Purifier)
(95833, 0, 0, 0, 1, 0, 0, 0, 0, 4, '225330'), -- 95833 (Hyrja) - Chosen Visual
(93628, 0, 0, 0, 1, 0, 1566, 0, 0, 4, ''), -- 93628 (Eyir)
(97081, 0, 0, 0, 1, 333, 0, 0, 0, 5, '199592'), -- 97081 (King Bjorn) - Might of the Black Storm
(95843, 0, 0, 0, 1, 333, 0, 0, 0, 5, '199591'), -- 95843 (King Haldor) - Might of the Rocky Cliffs
(95676, 0, 0, 0, 1, 0, 0, 0, 0, 5, ''), -- 95676 (Odyn)
(97084, 0, 0, 0, 1, 333, 0, 0, 0, 5, '199590'), -- 97084 (King Tor) - Might of the Brutal Siege
(97083, 0, 0, 0, 1, 375, 0, 0, 0, 5, '199593'), -- 97083 (King Ranulf) - Might of the Screaming Abyss
(96574, 0, 0, 0, 1, 0, 0, 0, 0, 4, '215435'), -- 96574 (Stormforged Sentinel) - Sentinel's Watch
(96664, 0, 0, 0, 1, 0, 0, 0, 0, 4, '123978'), -- 96664 (Valarjar Runecarver) - Mod Scale 95-120%
(95834, 0, 0, 0, 1, 0, 0, 0, 0, 4, '191450'), -- 95834 (Valarjar Mystic) - Mod Scale 95-120%
(95832, 0, 0, 0, 1, 0, 0, 0, 0, 4, '191851'), -- 95832 (Valarjar Shieldmaiden) - Shieldmaiden Spawn Cosmetics
(96640, 0, 0, 0, 0, 0, 0, 0, 0, 4, '123978'), -- 96640 (Valarjar Marksman) - Mod Scale 95-120%
(96648, 0, 0, 50331648, 1, 0, 0, 0, 0, 4, ''), -- 96648 (Chosen of Eyir)
(94960, 0, 0, 0, 1, 0, 0, 0, 0, 4, ''), -- 94960 (Hymdall)
(94968, 0, 0, 0, 1, 0, 0, 0, 0, 4, '152731'), -- 94968 (Valarjar Stormrider) - Ride Vehicle (Pacify)
(120652, 0, 0, 0, 1, 0, 0, 0, 0, 5, ''), -- 120652 (Global Affix Stalker)
(54638, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, ''), -- 54638 (Generic Bunny)
(95842, 0, 0, 0, 1, 0, 0, 0, 0, 4, ''), -- 95842 (Valarjar Thundercaller)
(97087, 0, 0, 0, 1, 0, 0, 0, 0, 4, '123978'), -- 97087 (Valarjar Champion) - Mod Scale 95-120%
(97795, 0, 0, 50331648, 1, 0, 0, 0, 0, 4, ''), -- 97795 (Static Field)
(96609, 0, 0, 0, 1, 0, 0, 0, 0, 3, '123978'), -- 96609 (Gildedfur Stag) - Mod Scale 95-120%
(97068, 0, 0, 50331648, 1, 0, 0, 0, 0, 4, ''); -- 97068 (Storm Drake)

-- Creature Template data
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777216 WHERE `entry`=101459; -- Spoils
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=111374; -- Xal'atath
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47, `unit_flags2`=4194304 WHERE `entry`=95675; -- God-King Skovald
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777217 WHERE `entry` IN (111936, 111833); -- Thal'kiel
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32768 WHERE `entry`=96677; -- Steeljaw Grizzly
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832, `unit_flags2`=2099200, `unit_flags3`=0 WHERE `entry`=96611; -- Angerhoof Bull
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33587200 WHERE `entry`=99828; -- Trained Hawk
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96608; -- Ebonclaw Worg
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832, `unit_flags2`=35653632, `unit_flags3`=0 WHERE `entry`=96934; -- Valarjar Trapper
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777216 WHERE `entry`=101712; -- Halls of Valor
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=99804; -- Valarjar Falconer
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46 WHERE `entry`=103801; -- Arthfael
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46 WHERE `entry`=99891; -- Storm Drake
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47, `unit_flags`=32832 WHERE `entry`=95674; -- Fenryr
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32768 WHERE `entry`=96609; -- Gildedfur Stag
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=101637; -- Valarjar Aspirant
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=101639; -- Valarjar Shieldmaiden
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry` IN (101638, 101640, 96648); -- Chosen of Eyir
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48, `unit_flags3`=16777217 WHERE `entry`=101758; -- Eye of the Storm
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46 WHERE `entry`=97202; -- Olmyr the Enlightened
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777216 WHERE `entry`=101697; -- Field of the Eternal Hunt
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46 WHERE `entry`=97219; -- Solsten
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777216 WHERE `entry`=102423; -- Mug of Mead
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97197; -- Valarjar Purifier
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46, `faction`=16, `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=106320; -- Volynd Stormbringer
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47 WHERE `entry`=95833; -- Hyrja
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93628; -- Eyir
UPDATE `creature_template` SET `gossip_menu_id`=18851, `minlevel`=46, `maxlevel`=46, `unit_flags`=32768 WHERE `entry`=97081; -- King Bjorn
UPDATE `creature_template` SET `gossip_menu_id`=18850, `minlevel`=46, `maxlevel`=46, `unit_flags`=32768 WHERE `entry`=95843; -- King Haldor
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47 WHERE `entry`=95676; -- Odyn
UPDATE `creature_template` SET `gossip_menu_id`=18848, `minlevel`=46, `maxlevel`=46, `unit_flags`=32768 WHERE `entry`=97084; -- King Tor
UPDATE `creature_template` SET `gossip_menu_id`=18849, `minlevel`=46, `maxlevel`=46, `unit_flags`=32768 WHERE `entry`=97083; -- King Ranulf
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46 WHERE `entry`=96574; -- Stormforged Sentinel
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96664; -- Valarjar Runecarver
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=95834; -- Valarjar Mystic
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=95832; -- Valarjar Shieldmaiden
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96640; -- Valarjar Marksman
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47 WHERE `entry`=94960; -- Hymdall
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=94968; -- Valarjar Stormrider
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=59394; -- General Purpose Bunny JMF (Ground)
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50, `unit_flags3`=16777217 WHERE `entry`=120652; -- Global Affix Stalker
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=54638; -- Generic Bunny
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=95842; -- Valarjar Thundercaller
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97087; -- Valarjar Champion
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777217 WHERE `entry`=97795; -- Static Field
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46, `unit_flags`=32768 WHERE `entry`=97068; -- Storm Drake

-- Creature Movement data
DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (97068, 96648, 99891);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(97068, 0, 0, 1, 0, 0, 0, NULL),
(96648, 0, 0, 1, 0, 0, 0, NULL),
(99891, 0, 0, 1, 0, 0, 0, NULL);

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (97068, 99804, 101640, 101638);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(97068, 94968, 0, 0, 'Storm Drake - Valarjar Stormrider', 6, 3000000), -- Storm Drake - Valarjar Stormrider
(99804, 99828, 0, 0, 'Valarjar Falconer - Trained Hawk', 6, 3000000), -- Valarjar Falconer - Trained Hawk
(101640, 101639, 0, 0, 'Chosen of Eyir - Valarjar Shieldmaiden', 6, 3000000), -- Chosen of Eyir - Valarjar Shieldmaiden
(101638, 101637, 0, 0, 'Chosen of Eyir - Valarjar Aspirant', 6, 3000000); -- Chosen of Eyir - Valarjar Aspirant

-- Spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (102423, 97068, 99804);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(102423, 202284, 0, 0),
(97068, 46598, 0, 0),
(99804, 46598, 0, 0);

-- Creature Scaling Data
DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=23 AND `Entry` IN (101459,95675,119990,99868,96677,96611,99828,96608,96934,101712,99804,103801,99891,95674,96609,101637,101639,101638,101640,101758,97202,101697,97219,102423,97197,106320,95833,93628,97084,95676,97081,95843,96574,97083,96664,95834,95832,96640,96648,94960,94968,59394,95842,97087,97795,97068));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(101459, 23, 0, 0, 486, 45745),
(95675, 23, 2, 2, 629, 45745),
(119990, 23, 0, 0, 486, 45745),
(99868, 23, 2, 2, 629, 45745),
(96677, 23, 0, 0, 629, 45745),
(96611, 23, 0, 0, 629, 45745),
(99828, 23, 0, 0, 629, 45745),
(96608, 23, 0, 0, 629, 45745),
(96934, 23, 0, 0, 629, 45745),
(101712, 23, 0, 0, 486, 45745),
(99804, 23, 0, 0, 629, 45745),
(103801, 23, 1, 1, 629, 45745),
(99891, 23, 1, 1, 629, 45745),
(95674, 23, 2, 2, 629, 45745),
(96609, 23, 0, 0, 629, 45745),
(101637, 23, 0, 0, 629, 45745),
(101639, 23, 0, 0, 629, 45745),
(101638, 23, 0, 0, 629, 45745),
(101640, 23, 0, 0, 629, 45745),
(101758, 23, 3, 3, 486, 45745),
(97202, 23, 1, 1, 629, 45745),
(101697, 23, 0, 0, 486, 45745),
(97219, 23, 1, 1, 629, 45745),
(102423, 23, 0, 0, 486, 45745),
(97197, 23, 0, 0, 629, 45745),
(106320, 23, 1, 1, 629, 45745),
(95833, 23, 2, 2, 629, 45745),
(93628, 23, 0, 0, 334, 45745),
(97084, 23, 1, 1, 629, 45745),
(95676, 23, 2, 2, 629, 45745),
(97081, 23, 1, 1, 629, 45745),
(95843, 23, 1, 1, 629, 45745),
(96574, 23, 1, 1, 629, 45745),
(97083, 23, 1, 1, 629, 45745),
(96664, 23, 0, 0, 629, 45745),
(95834, 23, 0, 0, 629, 45745),
(95832, 23, 0, 0, 629, 45745),
(96640, 23, 0, 0, 629, 45745),
(96648, 23, 0, 0, 629, 45745),
(94960, 23, 2, 2, 629, 45745),
(94968, 23, 0, 0, 629, 45745),
(59394, 23, 0, 0, 328, 45745),
(95842, 23, 0, 0, 629, 45745),
(97087, 23, 0, 0, 629, 45745),
(97795, 23, 0, 0, 486, 45745),
(97068, 23, 1, 1, 629, 45745);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=45745 WHERE (`DifficultyID`=23 AND `Entry` IN (111374,111936,111833,120652,54638));

UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (67001, 65873, 67279, 67283, 41014, 65853, 42414, 70154, 67281, 67282, 24490, 64466, 70645, 64464, 47641, 64575, 63522, 65076, 74478, 28088, 67230, 28085, 28086, 67429, 28087, 64200, 64208, 25801, 25811, 24991, 67773, 67277, 62350, 67275, 16925, 67278, 67274, 67276, 11686, 67203);
UPDATE `creature_model_info` SET `BoundingRadius`=1.156227827072143554, `CombatReach`=1, `VerifiedBuild`=45745 WHERE `DisplayID`=45090;
UPDATE `creature_model_info` SET `BoundingRadius`=2.156903982162475585, `VerifiedBuild`=45745 WHERE `DisplayID`=69559;

-- Areatrigger templates
DELETE FROM `areatrigger_template` WHERE (`Id`=5379 AND `IsServerSide`=0);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(5379, 0, 0, 4, 8, 8, 0, 0, 0, 0, 0, 0, 45745);

DELETE FROM `areatrigger_create_properties` WHERE `Id`=1342;
INSERT INTO `areatrigger_create_properties` (`Id`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `Shape`, `ShapeData0`, `ShapeData1`, `ShapeData2`, `ShapeData3`, `ShapeData4`, `ShapeData5`, `ShapeData6`, `ShapeData7`, `VerifiedBuild`) VALUES
(1342, 5379, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 45745); -- SpellId : 302192

-- Creature templates
UPDATE `creature_template` SET `gossip_menu_id`=8988 WHERE `entry`=19148; -- Dwarf Commoner
UPDATE `creature_template` SET `gossip_menu_id`=8988 WHERE `entry`=19172; -- Gnome Commoner
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23481; -- Keiran Donoghue
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23486; -- Goldark Snipehunter
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23487; -- Wild Wolpertinger
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23488; -- Brewfest Crowd
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24364; -- Flynn Firebrew
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23521; -- Anne Summers
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23522; -- Arlen Lochlan
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23558; -- Neill Ramstein
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23627; -- Becan Barleybrew
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23628; -- Daran Thunderbrew
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23683; -- Maeve Barleybrew
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23684; -- Ita Thunderbrew
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23685; -- Gordok Brew Barker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23696; -- Gordok Brew Chief
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23710; -- Belbi Quikswitch
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24108; -- Self-Turning and Oscillating Utility Target
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24463; -- Swift Racing Ram
UPDATE `creature_template` SET `gossip_menu_id`=8958, `minlevel`=60, `maxlevel`=60 WHERE `entry`=24468; -- Pol Amberstill
UPDATE `creature_template` SET `gossip_menu_id`=8994, `minlevel`=60, `maxlevel`=60 WHERE `entry`=24710; -- Ipfelkofer Ironkeg
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `flags_extra`=`flags_extra`|128 WHERE `entry`=24766; -- [DND] Brewfest Face Me Bunny
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=27215; -- Boxey Boltspinner
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=73913; -- Brewmaster Tsing
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=152643; -- Despawn Bunny
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=152829; -- Arcti
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=152849; -- Vinter Tysiel
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=152871; -- Brewer Gerrat
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=152941; -- Verra Fireblood
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153029; -- Lucky Sachi
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153030; -- Haru
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153054; -- Racing Ram
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153146; -- Su Li
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153166; -- Sobrietus
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `RangeAttackTime`=0, `unit_flags3`=16777216 WHERE `entry`=153198; -- Chowdown Participant's Seat
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216 WHERE `entry`=153227; -- Chowdown Participant's Platter
UPDATE `creature_template` SET `gossip_menu_id`=24211 WHERE `entry`=153574; -- Britta Steinheart
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=154003; -- Melanie Charles
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=55, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=154012; -- Ragnar Thunderbrew
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=55, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=154013; -- Marleth Barleybrew
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=154078; -- Brewfest Crowd
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=154086; -- Keg Tap
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=154463; -- Mischevious Alemental
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=154477; -- Event Controller
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=154508; -- Alemental Controller
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=154605; -- Dark Iron Controller
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=154632; -- Direbrew Invader
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags`=768 WHERE `entry`=154729; -- Hozen Raider
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=154730; -- Hozen Controller
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=154745; -- Hozen Flyer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=154765; -- Hozen Bunny
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216 WHERE `entry`=155303; -- Apple Bucket
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=155345; -- [DNT] Brewfest Music
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=155602; -- Hozen Raider
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry` IN (153098, 153101, 153102, 153104, 153159, 153160, 153161, 153162); -- Brewfest Reveler

DELETE FROM `creature_template_addon` WHERE `entry` IN (19148, 19172, 73913, 152643, 152829, 152849, 152871, 152941, 153029, 153030, 153054, 153098, 153101, 153102, 153104, 153146, 153159, 153160, 153161, 153162, 153166, 153198, 153227, 153574, 153931, 154003, 154012, 154013, 154078, 154086, 154463, 154477, 154508, 154605, 154632, 154729, 154730, 154745, 154765, 155303, 155345, 155345, 155602);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(19148, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'), -- Aura 65511 - Gossip NPC Appearance (only during Brewfest)
(19172, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'), -- Aura 65511 - Gossip NPC Appearance (only during Brewfest)
(73913, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 73913 (Brewmaster Tsing)
(152643, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 152643 (Despawn Bunny) - Aura 182641 - Game Object Despawn Periodic (deleted until we know what it should affect)
(152829, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 152829 (Arcti)
(152849, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 152849 (Vinter Tysiel)
(152871, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 152871 (Brewer Gerrat)
(152941, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 152941 (Verra Fireblood)
(153029, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153029 (Lucky Sachi)
(153030, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153030 (Haru)
(153054, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153054 (Racing Ram)
(153098, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153098 (Brewfest Reveler)
(153101, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153101 (Brewfest Reveler)
(153102, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153102 (Brewfest Reveler)
(153104, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153104 (Brewfest Reveler)
(153146, 0, 0, 0, 1, 0, 0, 0, 0, 0, '297197'), -- 153146 (Su Li)
(153159, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153159 (Brewfest Reveler)
(153160, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153160 (Brewfest Reveler)
(153161, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153161 (Brewfest Reveler)
(153162, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153162 (Brewfest Reveler)
(153166, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153166 (Sobrietus)
(153198, 0, 0, 0, 1, 0, 0, 0, 0, 0, '297978'), -- 153198 (Chowdown Participant's Seat) - [DNT] Seat Preparation
(153227, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153227 (Chowdown Participant's Platter) - Ride Vehicle Hardcoded
(153574, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153574 (Britta Steinheart) - [DNT] Chowdown Organizer
(153931, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153931 (Brewfest Reveler)
(154003, 0, 0, 0, 1, 0, 0, 0, 0, 0, '299038'), -- 154003 (Melanie Charles) - Serving Platter
(154012, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154012 (Ragnar Thunderbrew)
(154013, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154013 (Marleth Barleybrew)
(154078, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154078 (Brewfest Crowd)
(154086, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154086 (Keg Tap)
(154463, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154463 (Mischevious Alemental)
(154477, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154477 (Event Controller)
(154508, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154508 (Alemental Controller)
(154605, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154605 (Dark Iron Controller)
(154632, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154632 (Direbrew Invader)
(154729, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154729 (Hozen Raider)
(154730, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154730 (Hozen Controller)
(154745, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, ''), -- 154745 (Hozen Flyer)
(154765, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154765 (Hozen Bunny)
(155303, 0, 0, 0, 1, 0, 0, 0, 0, 4, '302192'), -- 155303 (Apple Bucket)
(155345, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 155345 ([DNT] Brewfest Music)
(155602, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''); -- 155602 (Hozen Raider)

UPDATE `creature_template_addon` SET `bytes1`=65536, `auras`='39707 29920' WHERE `entry`=23487; -- 23487 (Wild Wolpertinger)
UPDATE `creature_template_addon` SET `auras`='268057' WHERE `entry`=23521; -- 23521 (Anne Summers) - Cradle Basket
UPDATE `creature_template_addon` SET `auras`='281819' WHERE `entry`=23627; -- 23627 (Becan Barleybrew) - Bar Tend Stand
UPDATE `creature_template_addon` SET `auras`='281819' WHERE `entry`=23628; -- 23628 (Daran Thunderbrew) - Bar Tend Stand

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23488, 152643, 153198, 153227, 154078, 154086, 154477, 154508, 154605, 154730, 154745, 154765, 155303, 155345);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(23488, 0, 0, 1, 0, 0, 0, NULL),
(152643, 0, 0, 1, 1, 0, 0, NULL),
(153198, 0, 0, 1, 1, 0, 0, NULL),
(153227, 0, 0, 1, 1, 0, 0, NULL),
(154078, 0, 0, 1, 1, 0, 0, NULL),
(154086, 0, 0, 1, 1, 0, 0, NULL),
(154477, 0, 0, 1, 1, 0, 0, NULL),
(154508, 0, 0, 1, 1, 0, 0, NULL),
(154605, 0, 0, 1, 1, 0, 0, NULL),
(154730, 0, 0, 1, 1, 0, 0, NULL),
(154745, 0, 0, 1, 0, 0, 0, NULL),
(154765, 0, 0, 1, 1, 0, 0, NULL),
(155303, 0, 0, 1, 1, 0, 0, NULL),
(155345, 0, 0, 1, 1, 0, 0, NULL);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (153198, 154729, 154745, 155602);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(153198, 105080, 1, 0),
(154729, 300956, 1, 0),
(154745, 300956, 1, 0),
(155602, 300956, 1, 0);

-- Vehicle data
DELETE FROM `vehicle_template_accessory` WHERE `entry`=154765;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(154765, 154729, 0, 0, 'Hozen Bunny - Hozen Raider', 8, 0); -- Hozen Bunny - Hozen Raider

DELETE FROM `vehicle_seat_addon` WHERE `SeatEntry`=20613;
INSERT INTO `vehicle_seat_addon` (`SeatEntry`, `SeatOrientation`, `ExitParamX`, `ExitParamY`, `ExitParamZ`, `ExitParamO`, `ExitParamValue`) VALUES
(20613, 0, 2.928, 0, 0, 0, 1);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=154765;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(154765, 46598, 0, 0);

DELETE FROM `creature_template_spell` WHERE `CreatureID`=153198;
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(153198, 2, 303242, 45745), -- Chowdown Participant's Seat
(153198, 1, 303241, 45745), -- Chowdown Participant's Seat
(153198, 0, 303240, 45745); -- Chowdown Participant's Seat

-- Gossips
DELETE FROM `gossip_menu` WHERE `MenuID` IN (24211, 24308);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(24211, 37918, 45745), -- 153574 (Britta Steinheart)
(24308, 38124, 45745); -- 153574 (Britta Steinheart)

UPDATE `gossip_menu` SET `VerifiedBuild`=45745 WHERE `MenuID`=8988 AND `TextID`=12134;

DELETE FROM `gossip_menu_option` WHERE `MenuID`=24211;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(24211, 0, 0, 'How do I play?', 176229, 0, 24308, 0, 0, 0, NULL, 0, 45745),
(24211, 1, 1, 'I would like to retrieve my trophy.', 177504, 0, 0, 0, 0, 0, NULL, 0, 45745);

DELETE FROM `gossip_menu_option` WHERE `MenuID`=8958 AND `OptionID`=6;
UPDATE `gossip_menu_option` SET `ActionPoiID`=0 WHERE `MenuID`=8783 AND `OptionID`=1;
UPDATE `gossip_menu_option` SET `VerifiedBuild`=45745 WHERE `MenuID` IN (8783, 8955, 8958, 8959, 8960, 8961, 8962, 8963, 9006, 9561, 10604);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8988 AND `SourceEntry`=12134;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (8958, 8960, 9006);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14,8988,12134,0,0,12,0,24,0,0,0,0,0,'','Show gossip text if event "Brewfest" is active'),
(15,9006,0,0,0,2,0,46735,1,1,1,0,0,'','Show gossip option if the player does not have the item 46735');

-- Equipments
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=153102 AND `ID`=6) OR (`CreatureID`=153162 AND `ID`=5) OR (`CreatureID`=153161 AND `ID`=4) OR (`ID`=1 AND `CreatureID` IN (154013,154012)) OR (`ID`=4 AND `CreatureID`=153101);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(154012, 1, 168670, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Ragnar Thunderbrew
(154013, 1, 168670, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Marleth Barleybrew
(153101, 4, 37059, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Brewfest Reveler
(153102, 6, 159383, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Brewfest Reveler
(153161, 4, 37059, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Brewfest Reveler
(153162, 5, 46733, 0, 0, 0, 0, 0, 0, 0, 0, 45745); -- Brewfest Reveler

-- Scaling
DELETE FROM `creature_template_scaling` WHERE `DifficultyID`=0 AND `Entry` IN (24364, 23481, 23486, 23487, 23488, 23521, 23522, 23558, 23627, 23628, 23683, 23684, 23685, 23696, 23710, 24108, 24463, 24468, 24710, 24766, 27215, 73913, 152829, 152849, 152871, 152941, 153029, 153030, 153054, 153098, 153101, 153102, 153104, 153146, 153159, 153160, 153161, 153162, 153166, 153198, 153227, 153574, 154003, 154012, 154013, 154078, 154086, 154463, 154477, 154508, 154605, 154632, 154729, 154730, 154745, 154765, 155303, 155602);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(24364, 0, 0, 0, 298, 45745),
(23481, 0, 0, 0, 298, 45745),
(23486, 0, 0, 0, 298, 45745),
(23487, 0, 0, 0, 298, 45745),
(23488, 0, 0, 0, 298, 45745),
(23521, 0, 0, 0, 298, 45745),
(23522, 0, 0, 0, 298, 45745),
(23558, 0, 0, 0, 298, 45745),
(23627, 0, 0, 0, 298, 45745),
(23628, 0, 0, 0, 298, 45745),
(23683, 0, 0, 0, 298, 45745),
(23684, 0, 0, 0, 298, 45745),
(23685, 0, 0, 0, 298, 45745),
(23696, 0, 0, 0, 298, 45745),
(23710, 0, 0, 0, 298, 45745),
(24108, 0, 0, 0, 298, 45745),
(24463, 0, 0, 0, 872, 45745),
(24468, 0, 0, 0, 298, 45745),
(24710, 0, 0, 0, 298, 45745),
(24766, 0, 0, 0, 298, 45745),
(27215, 0, 0, 0, 298, 45745),
(73913, 0, 0, 0, 298, 45745),
(152829, 0, 0, 0, 298, 45745),
(152849, 0, 0, 0, 298, 45745),
(152871, 0, 0, 0, 298, 45745),
(152941, 0, 0, 0, 298, 45745),
(153029, 0, 0, 0, 298, 45745),
(153030, 0, 0, 0, 298, 45745),
(153054, 0, 0, 0, 298, 45745),
(153098, 0, 0, 0, 298, 45745),
(153101, 0, 0, 0, 298, 45745),
(153102, 0, 0, 0, 298, 45745),
(153104, 0, 0, 0, 298, 45745),
(153146, 0, 0, 0, 298, 45745),
(153159, 0, 0, 0, 298, 45745),
(153160, 0, 0, 0, 298, 45745),
(153161, 0, 0, 0, 298, 45745),
(153162, 0, 0, 0, 298, 45745),
(153166, 0, 0, 0, 298, 45745),
(153198, 0, 0, 0, 2068, 45745),
(153227, 0, 0, 0, 298, 45745),
(153574, 0, 0, 0, 298, 45745),
(154003, 0, 0, 0, 298, 45745),
(154012, 0, 0, 0, 298, 45745),
(154013, 0, 0, 0, 298, 45745),
(154078, 0, 0, 0, 298, 45745),
(154086, 0, 0, 0, 298, 45745),
(154463, 0, 0, 0, 298, 45745),
(154477, 0, 0, 0, 298, 45745),
(154508, 0, 0, 0, 298, 45745),
(154605, 0, 0, 0, 298, 45745),
(154632, 0, 0, 0, 2068, 45745),
(154729, 0, 0, 0, 2068, 45745),
(154730, 0, 0, 0, 298, 45745),
(154745, 0, 0, 0, 2068, 45745),
(154765, 0, 0, 0, 298, 45745),
(155303, 0, 0, 0, 298, 45745),
(155602, 0, 0, 0, 2068, 45745);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=45745 WHERE (`DifficultyID`=0 AND `Entry` IN (41182,41175,41188,41189,6119,12427,43701,41335,2878,6328,1252,5612,40950,47396,1269,1378,1377,40951,1692,1231,1273,1238,1373,1241,1240,1375,1229,9980,1234,1374,2326,1267,1699,1247,1691,1232,1226,6806,1228,11941,43464,1872,63075,63074,1245,43224,1690,41181,40994,41056,42933,40939,40941,12996,14552,1268,5568,32639,32638,23511,41122,41121,61689,152643,727,23482,23510,1125,41478,61690,122323,52335,6181,155345,153931,14367,1959,11146,6031,4259,16013,50309,50308,1573,2092,5150,5138,5137,5605,5140,5570,8517,2695,6114,10090,34991,7298,5116,5115,5113,5117,9984,35007,1901,5114,31146,7976,5119,5120,5124,5121,153285,5129,5126,5125,2790,51495,6175,5049,5130,5101,5100,5132,1274,8879,52321,51596,5099,5103,5102,2461,19148,8720,9859,53568,8671,2460,40441,7292,49748,5109,5108,13843,5107,5106,5110,89830,27478,14183,62425,5112,5111,29141,118889,2918,34281,42147,42146,42129,51978,51976,42928,14363,5128,5127,42131,1466,6291,121541,5152,5133,5149,5148,5147,5141,6178,5143,2489,5142,50717,50720,50716,5146,5145,7978,5151,5144,8507,7312,11406,6179,175411,175410,175412,5153,8681,6826,5154,5155,5156,1703,5163,6120,10455,5170,5162,5161,53544,10456,10277,10276,42152,11145,4258,50732,5172,2943,5173,2786,15186,50729,50723,5167,5171,2737,5165,6382,97762,7936,4254,5166,5169,52586,3842,52584,4256,9099,23127,35073,61317,8256,6294,39718,2916,1356,3979,5637,5387,62822,62821,9616,5160,5159,48972,51383,14365,19172,6169,175403,7950,7944,5178,5177,5175,4081,5174,10877,47582,5123,5122,5158,5157,96490,1246,6569,30733,5569,5595,30717,11065,24110,48935,11029,11028));

-- Models
UPDATE `creature_template_model` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (9980,106283,153227,153098,122323,175411,2786,97762,5159,5178,5177,7944,27215,153159,7298,5113,5114,53568,13843,5152,5148,11406,52586,4254,9099,5123,1252,12996,61689,23684,11146,2092,8671,5127,50720,8507,6826,50723,5637,14365,11028,5595,1269,1228,40939,24364,153166,23710,14367,50309,34991,5049,7292,5112,34281,1466,5141,50717,6120,5172,23127,5387,51383,11029,96490,48935,41175,1267,1690,153162,153029,24108,152849,154003,5140,9984,153285,2790,5132,1274,2461,19148,27478,42147,42146,2489,175412,2943,4256,5160,6569,6119,41335,1375,1232,73913,24463,153574,154086,16013,5124,5126,14183,118889,51978,6179,5156,10277,62822,5122,19172,43701,6328,1377,1374,6806,63074,40941,14552,132969,153160,153030,153104,24710,5108,42131,6178,5143,5146,5144,5154,53544,2737,35073,5158,24110,41188,40950,1247,63075,174170,23511,23488,154078,61690,155303,155345,153931,50308,2695,5121,9859,5106,5111,2918,51976,5151,10455,4258,6382,7936,47582,175403,40951,1273,1240,1699,40994,41056,42933,32639,16085,23521,24766,23628,5137,5570,35007,51495,5100,52321,5099,5128,6291,7978,5163,5170,50729,5169,62821,6169,1246,1238,153146,41121,23481,152643,153101,1959,5150,5138,1901,31146,5130,5102,49748,121541,11145,50732,2916,3979,9616,5175,5157,1378,1231,1241,1229,2326,43464,41122,154477,1125,6031,7976,8720,5107,8681,5155,5166,7950,41182,41189,12427,1373,1226,23696,24468,152829,23683,23510,4259,1573,8517,5119,6175,8879,5109,175410,10456,5167,39718,48972,59979,30733,5612,153198,153161,23482,152941,128396,5605,5115,5117,2460,89830,42129,42928,10276,5173,5171,1356,5569,11065,2878,47396,1234,11941,1245,5568,1268,23685,23522,10090,5120,5101,51596,40441,62425,29141,5147,50716,1703,5165,52584,10877,4081,1692,727,153102,41478,6181,5116,5125,5103,5110,5149,5142,5145,7312,5153,5162,15186,165189,5174,175155,1691,43224,1872,41181,32638,153054,23486,23558,23627,152871,52335,6114,5129,14363,5133,5161,42152,3842,61317,8256,6294,30717)) OR (`Idx`=3 AND `CreatureID` IN (153098,153159,5595,51383,153162,41335,153160,153104,153931,153101,153161,89830,5568,153102,41181)) OR (`Idx`=2 AND `CreatureID` IN (153098,153159,53568,5595,51383,41175,153162,42147,41335,153160,153104,153931,153101,41182,59979,153161,89830,5568,153102,43224,41181)) OR (`Idx`=1 AND `CreatureID` IN (153098,122323,153159,53568,12996,5595,40939,34281,51383,41175,153162,19148,42147,41335,154086,19172,40941,153160,153104,24110,41188,23488,154078,155303,155345,153931,24766,41121,152643,153101,41122,154477,41182,41189,48972,59979,153161,89830,5568,727,153102,43224,41181,42152,61317)) OR (`Idx`=7 AND `CreatureID` IN (5595,51383)) OR (`Idx`=6 AND `CreatureID` IN (5595,51383)) OR (`Idx`=5 AND `CreatureID` IN (5595,51383)) OR (`Idx`=4 AND `CreatureID` IN (5595,51383));

UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (32334, 3762, 3837, 1801, 32336, 22769, 4864, 12474, 32403, 31934, 5040, 5042, 1376, 3607, 32194, 35581, 3440, 5105, 5106, 1786, 1811, 3414, 3558, 3417, 3420, 3438, 3422, 3425, 3405, 3431, 9253, 3436, 3398, 3433, 1684, 3435, 3434, 3430, 1622, 3429, 5525, 10215, 11899, 33381, 33279, 3415, 30586, 328, 3513, 33278, 1608, 3427, 1782, 32240, 381, 1785, 32193, 33141, 950, 14376, 22449, 3441, 28282, 28111, 21859, 91758, 51672, 21861, 21860, 22628, 27499, 27498, 27494, 42203, 22631, 22630, 91664, 91663, 91738, 21863, 22162, 22390, 91752, 91615, 21574, 24419, 22603, 91772, 91843, 1598, 22454, 22455, 91737, 91954, 22384, 22385, 21849, 91750, 21853, 91614, 91744, 91732, 21836, 22394, 22450, 16925, 91751, 21837, 91653, 21844, 91731, 21847, 21701, 22396, 91747, 91620, 91745, 22451, 607, 604, 92423, 37844, 4893, 43152, 91742, 21842, 21843, 91733, 91746, 21845, 304, 14405, 1891, 10694, 4950, 3098, 15965, 37017, 37018, 3007, 3600, 3068, 3064, 3063, 3591, 3065, 3458, 7598, 1670, 4995, 9338, 29512, 6062, 3072, 3056, 3054, 3073, 9258, 29520, 3053, 3055, 27510, 7120, 3075, 3057, 3078, 3076, 28048, 37350, 3106, 3080, 3079, 5410, 37401, 4889, 2999, 3081, 3041, 3040, 3107, 1655, 8171, 37836, 37514, 3039, 3043, 3042, 3038, 21848, 21846, 7989, 9131, 26184, 7990, 3037, 31847, 6588, 36597, 3050, 3049, 13850, 3045, 3044, 3046, 24982, 22397, 14235, 42481, 3051, 3047, 25955, 99840, 74943, 3598, 8755, 9289, 8826, 32680, 99842, 37695, 37693, 99841, 33140, 14396, 3105, 3104, 32681, 10620, 4986, 27823, 3110, 3082, 3087, 3088, 3089, 3086, 4891, 3085, 10548, 3066, 36936, 36934, 36937, 3109, 10214, 7119, 3119, 3108, 7805, 6072, 11053, 4892, 99617, 3091, 7951, 5647, 3069, 3070, 3071, 10629, 3112, 4865, 9818, 3103, 3121, 3096, 15395, 9821, 9740, 9741, 10693, 3097, 36940, 3116, 7916, 3122, 3599, 15369, 36941, 36938, 3113, 3115, 9817, 3101, 5085, 65406, 7003, 3092, 3100, 3114, 37957, 1935, 37956, 3093, 99838, 8353, 21265, 29573, 7769, 4988, 35687, 3595, 3594, 2049, 3756, 3596, 36357, 42722, 42720, 8829, 3095, 3094, 4959, 3526, 77915, 99839, 37351, 14404, 99837, 21851, 21850, 4999, 99600, 7041, 7028, 3125, 3124, 3118, 2184, 3117, 10184, 35706, 99836, 5408, 3077, 3120, 3111, 64921, 10635, 3525, 5377, 3524, 27298, 3457, 3527, 27274, 10588, 11686, 36342, 10722, 10571);
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=6926;
UPDATE `creature_model_info` SET `BoundingRadius`=0.292084097862243652, `VerifiedBuild`=45745 WHERE `DisplayID`=85209;
UPDATE `creature_model_info` SET `BoundingRadius`=0.89310389757156372, `CombatReach`=0.75, `VerifiedBuild`=45745 WHERE `DisplayID`=88619;
UPDATE `creature_model_info` SET `BoundingRadius`=0.166421771049499511, `CombatReach`=0.60000002384185791, `VerifiedBuild`=45745 WHERE `DisplayID`=5554;
UPDATE `creature_model_info` SET `BoundingRadius`=0.199706122279167175, `CombatReach`=0.719999969005584716, `VerifiedBuild`=45745 WHERE `DisplayID`=88407;

-- Vendor Data
DELETE FROM `npc_vendor` WHERE (`entry`=153166 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=154003 AND `item`=34065 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=154003 AND `item`=33043 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152941 AND `item`=163143 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152941 AND `item`=169436 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152941 AND `item`=170202 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152941 AND `item`=169439 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152871 AND `item`=163019 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152871 AND `item`=163103 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152871 AND `item`=162560 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152871 AND `item`=169397 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105704 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105707 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105703 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105708 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105706 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105700 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105701 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105711 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105705 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73913 AND `item`=105702 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105704 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105707 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105703 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105708 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105706 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105700 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105701 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105711 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105705 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153146 AND `item`=105702 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=82451 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=82450 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23481 AND `item`=138884 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23481 AND `item`=138900 AND `ExtendedCost`=2275 AND `type`=1) OR (`entry`=23710 AND `item`=37736 AND `ExtendedCost`=2397 AND `type`=1) OR (`entry`=23710 AND `item`=187998 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=23710 AND `item`=167732 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=23710 AND `item`=151615 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=23710 AND `item`=122341 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=23710 AND `item`=122339 AND `ExtendedCost`=5794 AND `type`=1) OR (`entry`=23710 AND `item`=166747 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=23710 AND `item`=138730 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=23710 AND `item`=116758 AND `ExtendedCost`=2275 AND `type`=1) OR (`entry`=23710 AND `item`=116757 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=23710 AND `item`=116756 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=23710 AND `item`=90427 AND `ExtendedCost`=2275 AND `type`=1) OR (`entry`=23710 AND `item`=90426 AND `ExtendedCost`=2398 AND `type`=1) OR (`entry`=23710 AND `item`=39476 AND `ExtendedCost`=2424 AND `type`=1) OR (`entry`=23710 AND `item`=37571 AND `ExtendedCost`=2397 AND `type`=1) OR (`entry`=23710 AND `item`=168915 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=23710 AND `item`=169461 AND `ExtendedCost`=6597 AND `type`=1) OR (`entry`=23710 AND `item`=169448 AND `ExtendedCost`=6582 AND `type`=1) OR (`entry`=152849 AND `item`=128833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152849 AND `item`=151774 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152849 AND `item`=168607 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152849 AND `item`=2723 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152849 AND `item`=63299 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153574 AND `item`=169865 AND `ExtendedCost`=6619 AND `type`=1) OR (`entry`=152829 AND `item`=169443 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152829 AND `item`=169442 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152829 AND `item`=169441 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153030 AND `item`=104344 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153030 AND `item`=104348 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153030 AND `item`=81414 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153030 AND `item`=104343 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(23481, 2, 138884, 0, 0, 1, 0, 0, 45745), -- Throwing Sausage
(23481, 1, 138900, 0, 2275, 1, 0, 0, 45745), -- Gravil Goldbraid's Famous Sausage Hat
(23522, 14, 82451, 0, 0, 1, 0, 0, 45745), -- Frybread
(23522, 13, 82450, 0, 0, 1, 0, 0, 45745), -- Cornmeal Biscuit
(23710, 33, 187998, 0, 5795, 1, 0, 0, 45745), -- Eternal Heirloom Scabbard
(23710, 32, 167732, 0, 5795, 1, 0, 0, 45745), -- Battle-Hardened Heirloom Scabbard
(23710, 31, 151615, 0, 5795, 1, 0, 0, 45745), -- Weathered Heirloom Scabbard
(23710, 30, 122341, 0, 5795, 1, 0, 0, 45745), -- Timeworn Heirloom Scabbard
(23710, 29, 122339, 0, 5794, 1, 0, 0, 45745), -- Ancient Heirloom Scabbard
(23710, 28, 166747, 0, 2276, 1, 0, 0, 45745), -- Brewfest Reveler's Hearthstone
(23710, 27, 138730, 0, 2276, 1, 0, 0, 45745), -- Synthebrew Goggles XL
(23710, 25, 116758, 0, 2275, 1, 0, 0, 45745), -- Brewfest Banner
(23710, 24, 116757, 0, 2276, 1, 0, 0, 45745), -- Steamworks Sausage Grill
(23710, 21, 116756, 0, 2276, 1, 0, 0, 45745), -- Stout Alemental
(23710, 16, 90427, 0, 2275, 1, 0, 0, 45745), -- Pandaren Brewpack
(23710, 15, 90426, 0, 2398, 1, 0, 0, 45745), -- Brewhelm
(23710, 14, 39476, 0, 2424, 1, 0, 0, 45745), -- Fresh Goblin Brewfest Hops
(23710, 12, 37571, 0, 2397, 1, 0, 0, 45745), -- "Brew of the Month" Club Membership Form
(23710, 11, 168915, 0, 2276, 1, 0, 0, 45745), -- Tabard of Brew
(23710, 10, 169461, 0, 6597, 1, 0, 0, 45745), -- Garland of Grain
(23710, 1, 169448, 0, 6582, 1, 0, 0, 45745), -- Bottomless Brewfest Stein
(73913, 10, 105704, 0, 0, 1, 0, 0, 45745), -- Yan-Zhu's Blazing Brew
(73913, 9, 105707, 0, 0, 1, 0, 0, 45745), -- Unga Brew
(73913, 8, 105703, 0, 0, 1, 0, 0, 45745), -- Stormstout Brew
(73913, 7, 105708, 0, 0, 1, 0, 0, 45745), -- Shimmering Amber-Brew
(73913, 6, 105706, 0, 0, 1, 0, 0, 45745), -- Shado-Pan Brew
(73913, 5, 105700, 0, 0, 1, 0, 0, 45745), -- Kun-Lai Kicker
(73913, 4, 105701, 0, 0, 1, 0, 0, 45745), -- Greenstone Brew
(73913, 3, 105711, 0, 0, 1, 0, 0, 45745), -- Funky Monkey Brew
(73913, 2, 105705, 0, 0, 1, 0, 0, 45745), -- Chani's Bitter Brew
(73913, 1, 105702, 0, 0, 1, 0, 0, 45745), -- Boomer Brew
(152829, 3, 169443, 0, 0, 1, 0, 0, 45745), -- Shadowmoon Schnapps
(152829, 2, 169442, 0, 0, 1, 0, 0, 45745), -- Exodar Martini
(152829, 1, 169441, 0, 0, 1, 0, 0, 45745), -- Azuremyst Mead
(152849, 5, 128833, 0, 0, 1, 0, 0, 45745), -- Kaldorei Ginger Wine
(152849, 4, 151774, 0, 0, 1, 0, 0, 45745), -- Distilled Voidblend
(152849, 3, 168607, 0, 0, 1, 0, 0, 45745), -- Bottle of Voidwine
(152849, 2, 2723, 0, 0, 1, 0, 0, 45745), -- Bottle of Dalaran Noir
(152849, 1, 63299, 0, 0, 1, 0, 0, 45745), -- Sunkissed Wine
(152871, 4, 163019, 0, 0, 1, 0, 0, 45745), -- Drop Anchor Dunkel
(152871, 3, 163103, 0, 0, 1, 0, 0, 45745), -- Admiralty-Issued Grog
(152871, 2, 162560, 0, 0, 1, 0, 0, 45745), -- Patina Pale Ale
(152871, 1, 169397, 0, 0, 1, 0, 0, 45745), -- Admiralty Ale
(152941, 4, 163143, 0, 0, 1, 0, 0, 45745), -- The Burning Black Beverage
(152941, 3, 169436, 0, 0, 1, 0, 0, 45745), -- Fireblood Stout
(152941, 2, 170202, 0, 0, 1, 0, 0, 45745), -- Shwayderbrau
(152941, 1, 169439, 0, 0, 1, 0, 0, 45745), -- Dark Iron Ale
(153030, 4, 104344, 0, 0, 1, 0, 0, 45745), -- Lucky Mushroom Noodles
(153030, 3, 104348, 0, 0, 1, 0, 0, 45745), -- Timeless Tea
(153030, 2, 81414, 0, 0, 1, 0, 0, 45745), -- Pearl Milk Tea
(153030, 1, 104343, 0, 0, 1, 0, 0, 45745), -- Golden Dragon Noodles
(153146, 10, 105704, 0, 0, 1, 0, 0, 45745), -- Yan-Zhu's Blazing Brew
(153146, 9, 105707, 0, 0, 1, 0, 0, 45745), -- Unga Brew
(153146, 8, 105703, 0, 0, 1, 0, 0, 45745), -- Stormstout Brew
(153146, 7, 105708, 0, 0, 1, 0, 0, 45745), -- Shimmering Amber-Brew
(153146, 6, 105706, 0, 0, 1, 0, 0, 45745), -- Shado-Pan Brew
(153146, 5, 105700, 0, 0, 1, 0, 0, 45745), -- Kun-Lai Kicker
(153146, 4, 105701, 0, 0, 1, 0, 0, 45745), -- Greenstone Brew
(153146, 3, 105711, 0, 0, 1, 0, 0, 45745), -- Funky Monkey Brew
(153146, 2, 105705, 0, 0, 1, 0, 0, 45745), -- Chani's Bitter Brew
(153146, 1, 105702, 0, 0, 1, 0, 0, 45745), -- Boomer Brew
(153166, 1, 159, 0, 0, 1, 0, 0, 45745), -- Refreshing Spring Water
(153574, 1, 169865, 0, 6619, 1, 0, 0, 45745), -- Brewfest Chowdown Trophy
(154003, 2, 34065, 0, 0, 1, 0, 0, 45745), -- Spiced Onion Cheese
(154003, 1, 33043, 0, 0, 1, 0, 0, 45745); -- The Essential Brewfest Pretzel

UPDATE `npc_vendor` SET `VerifiedBuild`=45745 WHERE (`entry`=23522 AND `item`=58261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=58260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=35950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=33449 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=27855 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=8950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=4601 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=4544 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=4542 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=4541 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23522 AND `item`=33043 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23482 AND `item`=138867 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23482 AND `item`=46400 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23482 AND `item`=33029 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23482 AND `item`=33028 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23482 AND `item`=33030 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23510 AND `item`=138868 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23510 AND `item`=138871 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23510 AND `item`=46399 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23510 AND `item`=33033 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23510 AND `item`=33032 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23510 AND `item`=33031 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23511 AND `item`=138869 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23511 AND `item`=46403 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23511 AND `item`=33036 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23511 AND `item`=33035 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23511 AND `item`=33034 AND `ExtendedCost`=0 AND `type`=1);
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=29451 AND `ExtendedCost`=0 AND `type`=1); -- Clefthoof Ribs
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=27854 AND `ExtendedCost`=0 AND `type`=1); -- Smoked Talbuk Venison
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=8952 AND `ExtendedCost`=0 AND `type`=1); -- Roasted Quail
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=4599 AND `ExtendedCost`=0 AND `type`=1); -- Cured Ham Steak
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=3771 AND `ExtendedCost`=0 AND `type`=1); -- Wild Hog Shank
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=3770 AND `ExtendedCost`=0 AND `type`=1); -- Mutton Chop
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=2287 AND `ExtendedCost`=0 AND `type`=1); -- Haunch of Meat
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=117 AND `ExtendedCost`=0 AND `type`=1); -- Tough Jerky
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=33026 AND `ExtendedCost`=0 AND `type`=1); -- The Golden Link
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=33025 AND `ExtendedCost`=0 AND `type`=1); -- Spicy Smoked Sausage
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=33024 AND `ExtendedCost`=0 AND `type`=1); -- Pickled Sausage
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=33023 AND `ExtendedCost`=0 AND `type`=1); -- Savory Sausage
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=34064 AND `ExtendedCost`=0 AND `type`=1); -- Succulent Sausage
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=45745 WHERE (`entry`=23481 AND `item`=34063 AND `ExtendedCost`=0 AND `type`=1); -- Dried Sausage
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=29448 AND `ExtendedCost`=0 AND `type`=1); -- Mag'har Mild Cheese
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=27857 AND `ExtendedCost`=0 AND `type`=1); -- Garadar Sharp
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=8932 AND `ExtendedCost`=0 AND `type`=1); -- Alterac Swiss
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=3927 AND `ExtendedCost`=0 AND `type`=1); -- Fine Aged Cheddar
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=1707 AND `ExtendedCost`=0 AND `type`=1); -- Stormwind Brie
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=422 AND `ExtendedCost`=0 AND `type`=1); -- Dwarven Mild
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=414 AND `ExtendedCost`=0 AND `type`=1); -- Dalaran Sharp
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=2070 AND `ExtendedCost`=0 AND `type`=1); -- Darnassian Bleu
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=45745 WHERE (`entry`=23521 AND `item`=34065 AND `ExtendedCost`=0 AND `type`=1); -- Spiced Onion Cheese
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=37816 AND `ExtendedCost`=2399 AND `type`=1); -- Preserved Brewfest Hops
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=37750 AND `ExtendedCost`=2398 AND `type`=1); -- Fresh Brewfest Hops
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=32233 AND `ExtendedCost`=2276 AND `type`=1); -- Wolpertinger's Tankard
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=46707 AND `ExtendedCost`=2275 AND `type`=1); -- Pint-Sized Pink Pachyderm
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33927 AND `ExtendedCost`=2275 AND `type`=1); -- Brewfest Pony Keg
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=71137 AND `ExtendedCost`=2276 AND `type`=1); -- Brewfest Keg Pony
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33047 AND `ExtendedCost`=2275 AND `type`=1); -- Belbi's Eyesight Enhancing Romance Goggles
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33868 AND `ExtendedCost`=2275 AND `type`=1); -- Brewfest Boots
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33862 AND `ExtendedCost`=2276 AND `type`=1); -- Brewfest Regalia
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33966 AND `ExtendedCost`=2275 AND `type`=1); -- Brewfest Slippers
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33863 AND `ExtendedCost`=2276 AND `type`=1); -- Brewfest Dress
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33969 AND `ExtendedCost`=2274 AND `type`=1); -- Purple Brewfest Hat
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33967 AND `ExtendedCost`=2274 AND `type`=1); -- Green Brewfest Hat
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33864 AND `ExtendedCost`=2274 AND `type`=1); -- Brown Brewfest Hat
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=45745 WHERE (`entry`=23710 AND `item`=33968 AND `ExtendedCost`=2274 AND `type`=1); -- Blue Brewfest Hat

-- Gameobject templates
DELETE FROM `gameobject_template` WHERE `entry` In (327669, 328413);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(327669, 2, 11072, 'Contained Alemental', '', '', '', 1, 57, 23083, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298, 45745), -- Contained Alemental
(328413, 2, 11304, 'Hozen Totem', '', '', '', 1, 57, 23096, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298, 45745); -- Hozen Totem

UPDATE `gameobject_template` SET `ContentTuningId`=339, `VerifiedBuild`=45745 WHERE `entry`=246194; -- Wine Glass
UPDATE `gameobject_template` SET `ContentTuningId`=298, `VerifiedBuild`=45745 WHERE `entry`=327681; -- Direbrew Mole Machine
UPDATE `gameobject_template` SET `ContentTuningId`=298, `VerifiedBuild`=45745 WHERE `entry`=328343; -- Direbrew Cog

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (259880, 326028, 326044, 326045, 326052, 326106, 326707, 326708, 326709, 326710, 326711, 326712, 326713, 326714, 326715, 327133, 327134, 327182, 327669, 327681, 328343, 328413);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(259880, 1375, 16, 0, 0), -- Collision Wall
(326028, 0, 32, 0, 0), -- Void Elf Tent
(326044, 0, 32, 0, 0), -- Kul Tiran Tent
(326045, 0, 8192, 0, 0), -- Kul Tiran Bar
(326052, 0, 32, 0, 13176), -- Mole Machine
(326106, 0, 32, 0, 0), -- Pandaren Noodle Cart
(326707, 0, 8192, 0, 0), -- Fence
(326708, 0, 8192, 0, 0), -- Fence
(326709, 0, 8192, 0, 0), -- Fence
(326710, 0, 8192, 0, 0), -- Fence
(326711, 0, 8192, 0, 0), -- Fence
(326712, 0, 8192, 0, 0), -- Fence
(326713, 0, 8192, 0, 0), -- Fence
(326714, 0, 8192, 0, 0), -- Fence
(326715, 0, 8192, 0, 0), -- Fence
(327133, 0, 32, 0, 0), -- Shoutbox
(327134, 0, 32, 0, 0), -- Brewfest Ceremonial Keg
(327182, 0, 8192, 0, 0), -- Table
(327669, 0, 4, 0, 0), -- Contained Alemental
(327681, 0, 48, 0, 0), -- Direbrew Mole Machine
(328343, 0, 4, 0, 0), -- Direbrew Cog
(328413, 0, 4, 0, 0); -- Hozen Totem

UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=221482; -- PA Mug Bamboo 06
UPDATE `gameobject_template_addon` SET `flags`=8192 WHERE `entry`=231782; -- Draenei Wagon

-- Misc
DELETE FROM `spell_target_position` WHERE (`ID`=304163 AND `EffectIndex`=0);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(304163, 0, 0, -5193.10986328125, -545.22998046875, 397.079986572265625, 45745); -- Spell: 304163 (Teleport) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)

UPDATE `serverside_spell` SET `SpellName`='Drunk Invisibility (Strong)' WHERE `Id`=39707;

-- Creature templates
UPDATE `creature_template` SET `gossip_menu_id`=8988 WHERE `entry`=19175; -- Orc Commoner
UPDATE `creature_template` SET `gossip_menu_id`=8988, `npcflag`=1 WHERE `entry`=19176; -- Tauren Commoner
UPDATE `creature_template` SET `gossip_menu_id`=8988, `npcflag`=1 WHERE `entry`=19177; -- Troll Commoner
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23533; -- T'chali's Voodoo Brewery Apprentice
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23603; -- Uta Roughdough
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23604; -- Agnes Farwithers
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23605; -- Bron
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=23706; -- Gordok Festive Keg
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24372; -- Drohn's Distillery Festive Keg
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24373; -- T'chali's Voodoo Brew Festive Keg
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24462; -- Racing Ram
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24495; -- Blix Fixwidget
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24497; -- Ram Master Ray
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24498; -- Cort Gorestein
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24499; -- Ja'ron
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24501; -- Drohn's Distillery Apprentice
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=24510; -- Driz Tumblequick
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=27216; -- Bizzle Quicklift
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=27707; -- Great Brewfest Kodo
UPDATE `creature_template` SET `gossip_menu_id`=11383, `minlevel`=60, `maxlevel`=60 WHERE `entry`=40437; -- Battered Brewer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=73914; -- Brewmaster Tao
UPDATE `creature_template` SET `gossip_menu_id`=9549 WHERE `entry`=89830; -- Brew Vendor
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=152775; -- Vinter Mollyleux
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=152780; -- Zenda
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=152948; -- Ha'ka Openview
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153008; -- Kaara
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153009; -- Ikura
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153012; -- Aichi
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153014; -- Lucky Nuru
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1735, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=153016; -- Gadar
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153116; -- Jun Soo
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=153167; -- Hydratius
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=154299; -- T'chali's Voodoo Brewery Barker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=154313; -- Drohn's Distillery Barker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=154980; -- Kyl'kahn
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=155131; -- Zipsi Switchcrank
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1735, `npcflag`=16777216, `unit_flags3`=16777216 WHERE `entry`=155134; -- Chowdown Participant's Seat
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216 WHERE `entry`=155135; -- Chowdown Participant's Platter
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=155194; -- La'gar Brewshout
UPDATE `creature_template` SET `gossip_menu_id`=24389, `minlevel`=60, `maxlevel`=60 WHERE `entry`=155269; -- Snipehunter Goro
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=155280; -- Azu
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=155320; -- Brewmaster Pijiu
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry` IN (153070, 153071, 153072, 153073, 153082, 153105, 155034); -- Brewfest Reveler
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags2`=2048 WHERE `entry` IN (153074, 153075); -- Brewfest Reveler

DELETE FROM `creature_template_addon` WHERE `entry` IN (19175, 19176, 19177, 24372, 24373, 40437, 73914, 152775, 152780, 152948, 153008, 153009, 153012, 153014, 153016, 153070, 153071, 153072, 153073, 153074, 153075, 153082, 153105, 153116, 153167, 154299, 154313, 154980, 155034, 155131, 155133, 155134, 155135, 155194, 155269, 155280, 155320);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(19175, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'), -- Aura 65511 - Gossip NPC Appearance (only during Brewfest)
(19176, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'), -- Aura 65511 - Gossip NPC Appearance (only during Brewfest)
(19177, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'), -- Aura 65511 - Gossip NPC Appearance (only during Brewfest)
(24372, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 24372 (Drohn's Distillery Festive Keg)
(24373, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 24373 (T'chali's Voodoo Brew Festive Keg)
(40437, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 40437 (Battered Brewer)
(73914, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 73914 (Brewmaster Tao)
(152775, 0, 0, 0, 1, 0, 10516, 0, 0, 0, '216450'), -- 152775 (Vinter Mollyleux) - Serving Platter Female
(152780, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 152780 (Zenda)
(152948, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 152948 (Ha'ka Openview)
(153008, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153008 (Kaara)
(153009, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153009 (Ikura)
(153012, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153012 (Aichi)
(153014, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153014 (Lucky Nuru)
(153016, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 153016 (Gadar)
(153070, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153070 (Brewfest Reveler)
(153071, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153071 (Brewfest Reveler)
(153072, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153072 (Brewfest Reveler)
(153073, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153073 (Brewfest Reveler)
(153074, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153074 (Brewfest Reveler)
(153075, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153075 (Brewfest Reveler)
(153082, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153082 (Brewfest Reveler)
(153105, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153105 (Brewfest Reveler)
(153116, 0, 0, 0, 1, 0, 0, 0, 0, 0, '297197'), -- 153116 (Jun Soo) - Barserver
(153167, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 153167 (Hydratius)
(154299, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154299 (T'chali's Voodoo Brewery Barker)
(154313, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 154313 (Drohn's Distillery Barker)
(154980, 0, 0, 0, 1, 0, 0, 0, 0, 0, '301619 301615'), -- 154980 (Kyl'kahn)
(155034, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 155034 (Brewfest Reveler)
(155131, 0, 0, 0, 1, 0, 0, 0, 0, 0, '301745'), -- 155131 (Zipsi Switchcrank) - Serving Platter
(155133, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 155133 (Etga) - [DNT] Chowdown Organizer
(155134, 0, 0, 0, 1, 0, 0, 0, 0, 0, '297978'), -- 155134 (Chowdown Participant's Seat) - [DNT] Seat Preparation
(155135, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 155135 (Chowdown Participant's Platter)
(155194, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 155194 (La'gar Brewshout)
(155269, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 155269 (Snipehunter Goro)
(155280, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 155280 (Azu)
(155320, 0, 0, 0, 257, 0, 0, 0, 0, 0, '44067'); -- 155320 (Brewmaster Pijiu) - Supplier Mark

UPDATE `creature_template_addon` SET `mount`=0 WHERE `entry`=24497; -- 24497 (Ram Master Ray)

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (23706, 24372, 24373);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(23706, 0, 0, 1, 1, 0, 0, NULL),
(24372, 0, 0, 1, 1, 0, 0, NULL),
(24373, 0, 0, 1, 1, 0, 0, NULL);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (155134);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(155134, 105080, 1, 0);

-- Vehicle data
DELETE FROM `vehicle_seat_addon` WHERE `SeatEntry`=20766;
INSERT INTO `vehicle_seat_addon` (`SeatEntry`, `SeatOrientation`, `ExitParamX`, `ExitParamY`, `ExitParamZ`, `ExitParamO`, `ExitParamValue`) VALUES
(20766, 0, 2.928, 0, 0, 0, 1);

DELETE FROM `creature_template_spell` WHERE `CreatureID`=155134;
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(155134, 2, 303242, 45745), -- Chowdown Participant's Seat
(155134, 1, 303241, 45745), -- Chowdown Participant's Seat
(155134, 0, 303240, 45745); -- Chowdown Participant's Seat

-- Gossips
DELETE FROM `gossip_menu` WHERE `MenuID` IN (24389, 24390);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(24389, 38253, 45745), -- 155269 (Snipehunter Goro)
(24390, 14672, 45745); -- 155269 (Snipehunter Goro)

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (24389, 24390);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(24389, 0, 0, 'What are Synthebrew Goggles?', 35222, 0, 24390, 0, 0, 0, NULL, 0, 45745),
(24390, 0, 0, 'I''d like a pair of Synthebrew Goggles.', 35220, 0, 0, 0, 0, 0, NULL, 0, 45745),
(24390, 1, 0, 'What did you say earlier?', 35223, 0, 24389, 0, 0, 0, NULL, 0, 45745);

UPDATE `gossip_menu_option` SET `ActionPoiID`=0 WHERE `MenuID`=8968 AND `OptionID`=1;
UPDATE `gossip_menu_option` SET `VerifiedBuild`=45745 WHERE `MenuID` IN (8968, 8967, 9560);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=24389;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,24389,0,0,0,2,0,46735,1,1,1,0,0,'','Show gossip option if the player does not have the item 46735');

-- Equipments
DELETE FROM `creature_equip_template` WHERE (`ID`=7 AND `CreatureID` IN (19176,153082)) OR (`ID`=1 AND `CreatureID`=153016);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(19176, 7, 46733, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Tauren Commoner
(153016, 1, 168670, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Gadar
(153082, 7, 168670, 0, 0, 0, 0, 0, 0, 0, 0, 45745); -- Brewfest Reveler

-- Scaling
DELETE FROM `creature_template_scaling` WHERE `DifficultyID`=0 AND `Entry` IN (23533, 23603, 23604, 23605, 23706, 24372, 24373, 24462, 24495, 24497, 24498, 24499, 24501, 24510, 27216, 27707, 40437, 73914, 152775, 152780, 152948, 153008, 153009, 153012, 153014, 153016, 153070, 153071, 153072, 153073, 153074, 153075, 153082, 153105, 153116, 153167, 154299, 154313, 154980, 155034, 155131, 155133, 155134, 155135, 155194, 155269, 155280, 155320);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(23533, 0, 0, 0, 298, 45745),
(23603, 0, 0, 0, 298, 45745),
(23604, 0, 0, 0, 298, 45745),
(23605, 0, 0, 0, 298, 45745),
(23706, 0, 0, 0, 298, 45745),
(24372, 0, 0, 0, 298, 45745),
(24373, 0, 0, 0, 298, 45745),
(24462, 0, 0, 0, 872, 45745),
(24495, 0, 0, 0, 298, 45745),
(24497, 0, 0, 0, 298, 45745),
(24498, 0, 0, 0, 298, 45745),
(24499, 0, 0, 0, 298, 45745),
(24501, 0, 0, 0, 298, 45745),
(24510, 0, 0, 0, 298, 45745),
(27216, 0, 0, 0, 298, 45745),
(27707, 0, 0, 0, 872, 45745),
(40437, 0, 0, 0, 298, 45745),
(73914, 0, 0, 0, 298, 45745),
(152775, 0, 0, 0, 298, 45745),
(152780, 0, 0, 0, 298, 45745),
(152948, 0, 0, 0, 298, 45745),
(153008, 0, 0, 0, 298, 45745),
(153009, 0, 0, 0, 298, 45745),
(153012, 0, 0, 0, 298, 45745),
(153014, 0, 0, 0, 298, 45745),
(153016, 0, 0, 0, 298, 45745),
(153070, 0, 0, 0, 298, 45745),
(153071, 0, 0, 0, 298, 45745),
(153072, 0, 0, 0, 298, 45745),
(153073, 0, 0, 0, 298, 45745),
(153074, 0, 0, 0, 298, 45745),
(153075, 0, 0, 0, 298, 45745),
(153082, 0, 0, 0, 298, 45745),
(153105, 0, 0, 0, 298, 45745),
(153116, 0, 0, 0, 298, 45745),
(153167, 0, 0, 0, 298, 45745),
(154299, 0, 0, 0, 298, 45745),
(154313, 0, 0, 0, 298, 45745),
(154980, 0, 0, 0, 298, 45745),
(155034, 0, 0, 0, 298, 45745),
(155131, 0, 0, 0, 298, 45745),
(155133, 0, 0, 0, 298, 45745),
(155134, 0, 0, 0, 298, 45745),
(155135, 0, 0, 0, 298, 45745),
(155194, 0, 0, 0, 298, 45745),
(155269, 0, 0, 0, 298, 45745),
(155280, 0, 0, 0, 298, 45745),
(155320, 0, 0, 0, 298, 45745);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=45745 WHERE (`DifficultyID`=0 AND `Entry` IN (45244,51230,47336,24930,24927,24926,24924,25081,25080,24931,24929,20493,20488,20486,31720,31727,31724,31723,31725,31726,5640,45095,9988,45081,7567,7565,7562,8404,11814,45086,45082,45093,44978,3399,45094,45008,3400,53081,45029,30706,16926,16909,45211,45025,45558,133108,45559,45789,133153,180176,45548,45546,45540,45023,52170,133236,45019,188163,45545,174864,174863,133114,45015,45549,174865,45567,45565,46080,140462,45659,46078,45347,133228,133523,45566,45830,158141,158138,158133,158131,30611,133276,167032,45563,45814,45552,46755,45553,48510,46082,172558,46754,48513,63086,63085,29929,30723,45138,45137,12795,12794,12793,7311,12791,12789,175050,3405,3404,52036,52033,44975,146626,19850,45139,12797,12790,54657,12798,69978,69977,5910,29143,179897,3189,3334,58199,44783,44785,3403,5892,44788,72939,13417,58193,44782,44770,15188,19176,44781,44780,5816,3330,44779,3322,44787,47321,161223,5909,88706,44735,44725,44740,3335,47335,44726,44723,44745,88704,44743,47254,5875,141912,88705,45230,141920,9564,174147,141528,54004,54113,130911,176095,176094,176012,50088,43062,11046,47663,35162,8576,35096,35086,42672,42673,42671,42650,14539,47817,47818,47767,114840,10266,1383,3360,11178,7790,3355,7231,3361,133355,7230,11177,11176,7793,7792,5812,3356,4043,3409,46675,50482,57922,3358,3357,3362,47788,31769,31758,31757,31755,47815,12353,47771,5195,3352,47764,31756,31768,46640,46639,46638,46637,168619,65058,65065,65060,168598,171691,168626,174164,65063,49573,2756,5029,68869,168551,16869,65061,16868,69333,5034,65008,62445,3353,34955,35364,70301,65074,66022,168553,13842,3354,168597,168596,171689,169166,168628,168621,46985,46667,168623,65071,42709,176261,14377,46642,175084,7951,65078,65076,42638,35845,43239,3333,3332,46619,46622,46618,46620,46621,62193,158789,180684,3359,161203,160452,4953,3348,8659,3347,3345,11066,12136,3346,46181,3350,3351,46742,6987,6986,46741,62197,62196,61369,3365,3225,7088,3366,3316,3372,7010,5811,188169,3321,46716,3371,3367,3364,3363,11017,2855,1420,42548,3413,3317,3315,46718,3412,52032,14451,62200,62199,52810,14498,2857,52812,52809,14499,68979,54473,54472,3369,49737,5639,46708,57801,3368,46709,42506,62194,88703,44871,44868,44866,63626,14881,44867,44865,15476,50488,50477,44918,3310,3216,50323,44948,44919,62198,20492,20491,20490,141310,20489,19177,3329,47247,47246,3328,47233,3327,47248,187775,26537,44160,3331,34765,49131,10880,44158,133218,133271,133270,133261,12796,73151,3323,45337,47571,52034,44338,35068,135201,17098,44872,46140,46358,46556,58155,46555,37072,23128,3312,27489,46512,49622,46357,3144,3319,46359,46142,188655,4047,3342,3314,45339,14375,14376,51195,149404,46572,5188,3370,188656,187758,49750,19175,188157,74228,23635,135202,5614,5613,5611,5610,5609,5606,88702,88701,6466,175135,137762,72559,149279,6929,44877,3313,151937,5817,44853,47253,148263,148795,150131,149408,44876,44854,44852,44878,149297,28960,62195,44856,133186,168459,149626,14392,149371,148250,149290,149258,149523,148242,44851,32520,38821,149296,168441,148770,149522,149270,155739,49837,3108,41621,5822,3204,3198,3197,61751,49743,5951,71100,3296,51346,53408,39380,39379,3100,40949,10685,42504,34719,34718,24935,24934,25075,34717,34715,3084,34730,34723,34721,40891,40948,62114,3127,3123,4311,62116,3300,155194,42859,62115,39596,61325,39595));
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMax`=0, `VerifiedBuild`=45745 WHERE (`Entry`=72654 AND `DifficultyID`=0);

-- Models
UPDATE `creature_template_model` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (45244,45008,45025,45015,45549,45567,46755,44782,44723,9564,47818,168626,168553,3317,3412,14451,44866,50477,47248,49131,46512,188157,5609,149297,155320,34717,24501,24495,39596,153008,24372,24924,31727,5640,8404,45093,46080,45566,172558,12794,3404,5892,58193,54113,47663,42672,42673,7231,4043,62445,13842,46642,46620,46618,46742,3316,14881,187775,44872,27489,14376,3370,175135,148242,53700,155034,25081,31724,7562,44978,45546,45565,45347,7311,69978,44770,141912,130911,43062,31216,42671,7790,5195,65060,2756,72934,3346,3225,3372,3364,5639,3216,20492,3319,51195,175165,3198,3084,3300,24497,152780,73914,154299,30706,45019,46078,133523,48513,12789,12798,5909,5875,7230,31755,65065,16868,168628,12922,3345,46741,62197,5811,2855,52032,52812,20491,3331,133270,12796,52034,45339,5611,44877,28960,149626,34718,34730,24510,155269,23604,47336,24931,31725,45548,63085,45553,45138,52036,69977,54004,11178,7793,3358,31758,168598,34955,168621,46667,7951,3359,4953,3347,3365,11017,52810,57801,46709,44865,50488,133261,73151,17098,14375,188656,5614,44876,149523,149270,49837,3123,23706,155280,133153,52170,45830,158131,52033,3403,19176,3322,3335,174147,141528,176095,176012,10266,65063,5034,3353,168597,43239,61369,46718,62194,44868,26537,44338,46358,44853,133186,38821,24373,24498,153075,20488,45081,45082,11814,174863,140462,48510,44743,3355,5812,3357,3362,46637,65058,46985,65076,3348,6986,188169,3368,88703,44867,3310,44948,62198,44158,135201,46556,6466,150131,44856,3197,3100,40949,62116,153167,31720,7567,180176,45552,12793,19850,44783,15188,44780,88706,44735,11176,47764,46639,35364,168623,175084,3350,7088,46716,3413,49737,3329,47233,35068,188655,4047,46572,137762,149408,148263,149522,155739,40891,61325,62115,154980,45211,45558,174865,133276,45563,3405,12790,3334,3189,44781,44740,60199,47817,1383,3361,46675,12353,171691,49573,5029,65008,169166,46622,180684,51090,3366,62199,14499,68979,44919,133218,37072,49622,149404,88701,151937,14392,32520,71100,3296,24934,153072,20493,45095,53081,3400,45029,174864,133228,158138,30723,12791,44788,13417,45230,35096,42650,31756,168619,65061,66022,42709,3332,46621,7010,3321,3315,42506,44918,20489,46359,19175,74228,40437,72559,148770,3204,34723,153016,27707,40948,62114,24462,152948,153070,155194,153105,24930,16909,45559,133114,45659,46082,45139,54657,5910,3330,88705,114840,11177,3409,3352,168551,65074,171689,42638,46619,62193,8659,3369,46708,44871,50323,34765,58155,46357,23635,5610,5817,44852,148795,148250,3108,5822,175156,4311,155131,153074,23603,24929,20486,188163,158141,63086,30611,45137,175050,44785,161223,8576,3360,7792,50482,47788,46638,70301,3354,176261,3333,158789,160452,46181,3371,1420,14498,54472,47246,44160,10880,46555,3342,88702,168459,61751,39380,24935,34721,152775,24499,153071,23533,24927,9988,16926,133236,46754,12795,12797,47321,88704,44725,35086,14539,47815,31768,46640,68869,65071,14377,11066,3351,3367,3363,15476,133271,3144,135202,5606,3313,44878,149258,10685,42859,153014,153009,25080,45789,45540,158133,45814,179897,44787,47254,44726,141920,176094,11046,47767,57922,31757,69333,168596,35845,62196,52809,2857,63626,19177,3327,3323,3314,5188,44854,149371,149290,168441,41621,53408,34719,25075,153012,155134,153116,23605,155133,51230,31726,45545,29929,44975,29143,72939,5816,44779,50088,3356,31769,174164,16869,6987,42548,54473,72654,20490,3328,47571,23128,3312,187758,47253,3527,53701,49743,42504,3127,154313,155135,153082,153073,24926,31723,7565,45086,45094,3399,133108,45023,167032,146626,58199,47335,44745,35162,133355,47771,65078,161203,12136,62200,141310,47247,45337,46140,46142,49750,5613,149279,6929,62195,44851,149296,5951,51346,39379,34715,39595,27216)) OR (`Idx`=3 AND `CreatureID` IN (45015,149297,58193,155034,3084,31755,31758,4953,49837,45830,158131,133186,153075,44158,149408,40891,62115,65008,14499,133218,149404,71100,3296,153072,158138,45230,42650,31756,74228,40948,62114,153070,153105,153074,158141,44160,168459,153071,31768,15476,133271,158133,45814,31757,149371,149290,51230,31769,42548,49743,153082,153073,46140,46142,149296,51346)) OR (`Idx`=2 AND `CreatureID` IN (45015,149297,58193,155034,3084,3300,31755,31758,4953,49837,45830,158131,133186,153075,44158,149408,40891,61325,62115,65008,14499,133218,149404,71100,3296,153072,158138,45230,42650,31756,74228,40948,62114,153070,153105,153074,158141,44160,168459,153071,31768,15476,133271,42859,158133,45814,31757,149371,149290,51230,31769,42548,49743,42504,153082,153073,46140,46142,149296,51346)) OR (`Idx`=1 AND `CreatureID` IN (45015,149297,58193,14881,53700,155034,42671,72934,3198,3084,3300,31755,28960,149626,31758,4953,52810,149270,49837,45830,158131,19176,133186,38821,153075,46985,44158,3197,47764,149408,148263,149522,155739,40891,61325,62115,65008,14499,133218,149404,32520,71100,3296,153072,158138,45230,42650,31756,19175,74228,72559,148770,40948,62114,153070,153105,148795,153074,158141,44160,168459,153071,31768,15476,133271,149258,42859,158133,45814,31757,35845,19177,149371,149290,51230,50088,31769,42548,72654,53701,49743,42504,153082,153073,46140,46142,149296,51346)) OR (`Idx`=5 AND `CreatureID` IN (3296,45230,46140)) OR (`Idx`=4 AND `CreatureID` IN (3296,45230,46140)) OR (`Idx`=7 AND `CreatureID`=46140) OR (`Idx`=6 AND `CreatureID`=46140);

DELETE FROM `creature_model_info` WHERE `DisplayID`=91662;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(91662, 0.409200012683868408, 1.65000009536743164, 0, 45745);

UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (26748, 33191, 34340, 33194, 35545, 22745, 22743, 22740, 22739, 22746, 22744, 17701, 17699, 17700, 27686, 27685, 27684, 27687, 4602, 3759, 34247, 9261, 34241, 6303, 2957, 99508, 11734, 34243, 34242, 34245, 34204, 2734, 34246, 34206, 2735, 38008, 34222, 27252, 81306, 81307, 34220, 34564, 82725, 34565, 34673, 70260, 48526, 100500, 34557, 34556, 34551, 34219, 37795, 82816, 34214, 34555, 99139, 99138, 82732, 48528, 48527, 34558, 72174, 34569, 34567, 34842, 86688, 34593, 34841, 34421, 66298, 34568, 34694, 93436, 93435, 93431, 93423, 93421, 93420, 27164, 64304, 24877, 34566, 99513, 34561, 35250, 34562, 36169, 34843, 98009, 35249, 36170, 29968, 25871, 99511, 34266, 99510, 12677, 12676, 12675, 6060, 12673, 12671, 99374, 99509, 4358, 37725, 37723, 34203, 66245, 19217, 34268, 12679, 12672, 22602, 12680, 14612, 28300, 4546, 101484, 99459, 1334, 24806, 34114, 82821, 34109, 4231, 4534, 34111, 51000, 13341, 26741, 34113, 34066, 15322, 99429, 34108, 99457, 1330, 34107, 99428, 9391, 34110, 35538, 94494, 99426, 8572, 4545, 99455, 34049, 34047, 99403, 99427, 99454, 35544, 34046, 34045, 30501, 61026, 34059, 4449, 99461, 87513, 61027, 9392, 91667, 64307, 32936, 38631, 81476, 100158, 100157, 100150, 4368, 10578, 99822, 30108, 7871, 1917, 29599, 33016, 32996, 33014, 25092, 33015, 32997, 32998, 34705, 14575, 342, 35818, 73494, 9739, 1382, 10697, 6873, 1377, 6006, 1383, 82868, 6005, 10696, 10695, 6854, 6843, 4351, 1378, 4612, 4363, 35218, 37088, 39910, 1380, 1379, 1384, 35827, 27700, 2541, 23521, 23519, 11414, 247, 35819, 2328, 1373, 35816, 27690, 20833, 35195, 35194, 35193, 35192, 96910, 43717, 43721, 43718, 96906, 97757, 96915, 98725, 43720, 36545, 46093, 45320, 46986, 96884, 45862, 45319, 43719, 45170, 45864, 47465, 43669, 45863, 39637, 1374, 29496, 29795, 47982, 43724, 44740, 96885, 13843, 1375, 96905, 96903, 72325, 96364, 96916, 96913, 35216, 96914, 43722, 33032, 100444, 14415, 35198, 99385, 15352, 43726, 43725, 32982, 35301, 1333, 1332, 35184, 35187, 35183, 35185, 35186, 42384, 18269, 93637, 101799, 79390, 85697, 2956, 32937, 99821, 99820, 1368, 1366, 10589, 12229, 99823, 34932, 99819, 1372, 35244, 5770, 5769, 99810, 42388, 42387, 1387, 744, 5846, 1388, 1316, 1394, 6839, 99817, 99816, 35241, 1393, 99811, 1386, 99812, 10472, 4384, 901, 32938, 7136, 99813, 1315, 35242, 99818, 99809, 14499, 20545, 99815, 38419, 4386, 33303, 38047, 14616, 14589, 38418, 47231, 38804, 38800, 99814, 1381, 99456, 99808, 39809, 1390, 33701, 35237, 99807, 42386, 15471, 20923, 8001, 9133, 34157, 34155, 5705, 44816, 34156, 34154, 15469, 37020, 31760, 34184, 49781, 1311, 99449, 37437, 30413, 34185, 33700, 42389, 17722, 17719, 17721, 86393, 17720, 1329, 35499, 1328, 99460, 1327, 35500, 2588, 24164, 33698, 99458, 15468, 29396, 31988, 10186, 33699, 83225, 83227, 82819, 82803, 12678, 51098, 1323, 99462, 89800, 34406, 35695, 37724, 29569, 16850, 8000, 89803, 35052, 35140, 40012, 35141, 4382, 21264, 1312, 22493, 35133, 36559, 35051, 24980, 82115, 1319, 14369, 35053, 14370, 4514, 1358, 1314, 34412, 14413, 14414, 37138, 31737, 90315, 35148, 3128, 1392, 21867, 106382, 106345, 36615, 31738, 106383, 99507, 8848, 3609, 3608, 3606, 7137, 3605, 3604, 61024, 61023, 31848, 5205, 24079, 49770, 90246, 5706, 1320, 1313, 4356, 34141, 36585, 36583, 90293, 35504, 90242, 20985, 20988, 90133, 90321, 34143, 34139, 1310, 90301, 42385, 16238, 34144, 82773, 92463, 35498, 51613, 90304, 89937, 90249, 16235, 90366, 86333, 89935, 83765, 36584, 34136, 21342, 21072, 90255, 96314, 86332, 90245, 83764, 90244, 92464, 15467, 32529, 4193, 4594, 240, 4191, 4190, 4192, 92322, 46130, 46126, 8971, 1560, 46131, 99453, 37331, 4601, 99452, 99451, 4260, 37329, 37330, 4259, 37328, 25256, 21856, 21874, 21838, 4366, 19017, 32171, 20546, 29369, 29368, 22750, 22873, 29367, 29366, 2141, 29375, 29371, 29370, 32172, 32173, 24757, 32170, 36598, 2732, 91661, 91660, 91755, 91715, 1987, 21841, 92280, 24860, 1959, 1318, 4515, 46940, 52599, 92190, 91659, 22492, 21878, 21881, 21880, 193, 1206, 7358, 21871, 21866, 4728, 70075, 21857, 22498, 21840, 92051, 91655, 92257, 21873, 22487, 22489, 92218, 21872, 704, 3027, 91723, 92228, 21877, 91584, 92224, 21879, 21875, 21870, 7511, 21839, 91705, 91724, 92055, 22490, 5561, 1986, 171, 22488, 22480, 91712, 21868);
UPDATE `creature_model_info` SET `BoundingRadius`=0.287056982517242431, `CombatReach`=0.375, `VerifiedBuild`=45745 WHERE `DisplayID`=32790;
UPDATE `creature_model_info` SET `BoundingRadius`=0.548862099647521972, `VerifiedBuild`=45745 WHERE `DisplayID`=6807;
UPDATE `creature_model_info` SET `BoundingRadius`=0.973670184612274169, `CombatReach`=2, `VerifiedBuild`=45745 WHERE `DisplayID`=913;
UPDATE `creature_model_info` SET `BoundingRadius`=1.066211581230163574, `CombatReach`=1.392857074737548828, `VerifiedBuild`=45745 WHERE `DisplayID`=999;
UPDATE `creature_model_info` SET `BoundingRadius`=0.219544842839241027, `VerifiedBuild`=45745 WHERE `DisplayID`=10015;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=21876;

-- Vendor Data
DELETE FROM `npc_vendor` WHERE (`entry`=153167 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=81921 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=81922 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152775 AND `item`=141209 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152775 AND `item`=169464 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152775 AND `item`=169462 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152775 AND `item`=169463 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=155133 AND `item`=169865 AND `ExtendedCost`=6619 AND `type`=1) OR (`entry`=154980 AND `item`=169466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=154980 AND `item`=169467 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=154980 AND `item`=169468 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=154980 AND `item`=169469 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153008 AND `item`=169466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153008 AND `item`=169467 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153008 AND `item`=169468 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153008 AND `item`=169469 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152948 AND `item`=169527 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152948 AND `item`=128841 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152948 AND `item`=169521 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153012 AND `item`=104344 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153012 AND `item`=104348 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153012 AND `item`=81414 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153012 AND `item`=104343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=24495 AND `item`=187998 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=24495 AND `item`=167732 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=24495 AND `item`=151615 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=24495 AND `item`=122341 AND `ExtendedCost`=5795 AND `type`=1) OR (`entry`=24495 AND `item`=122339 AND `ExtendedCost`=5794 AND `type`=1) OR (`entry`=24495 AND `item`=166747 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=24495 AND `item`=138730 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=24495 AND `item`=116758 AND `ExtendedCost`=2275 AND `type`=1) OR (`entry`=24495 AND `item`=116757 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=24495 AND `item`=116756 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=24495 AND `item`=90427 AND `ExtendedCost`=2275 AND `type`=1) OR (`entry`=24495 AND `item`=90426 AND `ExtendedCost`=2398 AND `type`=1) OR (`entry`=24495 AND `item`=168915 AND `ExtendedCost`=2276 AND `type`=1) OR (`entry`=24495 AND `item`=169461 AND `ExtendedCost`=6597 AND `type`=1) OR (`entry`=24495 AND `item`=169448 AND `ExtendedCost`=6582 AND `type`=1) OR (`entry`=155131 AND `item`=34065 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=155131 AND `item`=33043 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23533 AND `item`=138870 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105704 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105707 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105703 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105708 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105706 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105700 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105701 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105711 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105705 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=73914 AND `item`=105702 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152780 AND `item`=166420 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152780 AND `item`=162573 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152780 AND `item`=169458 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152780 AND `item`=169460 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=152780 AND `item`=169459 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153116 AND `item`=128841 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=153116 AND `item`=128842 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=24501 AND `item`=138871 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=24501 AND `item`=138868 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23605 AND `item`=81918 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23605 AND `item`=81917 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23605 AND `item`=138884 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23605 AND `item`=138900 AND `ExtendedCost`=2275 AND `type`=1) OR (`entry`=23603 AND `item`=82451 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=82450 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(23533, 5, 138870, 0, 0, 1, 0, 0, 45745), -- Spirit Spirits
(23603, 14, 82451, 0, 0, 1, 0, 0, 45745), -- Frybread
(23603, 13, 82450, 0, 0, 1, 0, 0, 45745), -- Cornmeal Biscuit
(23604, 14, 81921, 0, 0, 1, 0, 0, 45745), -- Chilton Stilton
(23604, 13, 81922, 0, 0, 1, 0, 0, 45745), -- Redridge Roquefort
(23605, 21, 81918, 0, 0, 1, 0, 0, 45745), -- Pickled Pig's Snout
(23605, 20, 81917, 0, 0, 1, 0, 0, 45745), -- Mutton Stew
(23605, 2, 138884, 0, 0, 1, 0, 0, 45745), -- Throwing Sausage
(23605, 1, 138900, 0, 2275, 1, 0, 0, 45745), -- Gravil Goldbraid's Famous Sausage Hat
(24495, 33, 187998, 0, 5795, 1, 0, 0, 45745), -- Eternal Heirloom Scabbard
(24495, 32, 167732, 0, 5795, 1, 0, 0, 45745), -- Battle-Hardened Heirloom Scabbard
(24495, 31, 151615, 0, 5795, 1, 0, 0, 45745), -- Weathered Heirloom Scabbard
(24495, 30, 122341, 0, 5795, 1, 0, 0, 45745), -- Timeworn Heirloom Scabbard
(24495, 29, 122339, 0, 5794, 1, 0, 0, 45745), -- Ancient Heirloom Scabbard
(24495, 28, 166747, 0, 2276, 1, 0, 0, 45745), -- Brewfest Reveler's Hearthstone
(24495, 27, 138730, 0, 2276, 1, 0, 0, 45745), -- Synthebrew Goggles XL
(24495, 25, 116758, 0, 2275, 1, 0, 0, 45745), -- Brewfest Banner
(24495, 24, 116757, 0, 2276, 1, 0, 0, 45745), -- Steamworks Sausage Grill
(24495, 21, 116756, 0, 2276, 1, 0, 0, 45745), -- Stout Alemental
(24495, 16, 90427, 0, 2275, 1, 0, 0, 45745), -- Pandaren Brewpack
(24495, 15, 90426, 0, 2398, 1, 0, 0, 45745), -- Brewhelm
(24495, 11, 168915, 0, 2276, 1, 0, 0, 45745), -- Tabard of Brew
(24495, 10, 169461, 0, 6597, 1, 0, 0, 45745), -- Garland of Grain
(24495, 1, 169448, 0, 6582, 1, 0, 0, 45745), -- Bottomless Brewfest Stein
(24501, 6, 138871, 0, 0, 1, 0, 0, 45745), -- Storming Saison
(24501, 5, 138868, 0, 0, 1, 0, 0, 45745), -- Mannoroth's Blood Red Ale
(73914, 10, 105704, 0, 0, 1, 0, 0, 45745), -- Yan-Zhu's Blazing Brew
(73914, 9, 105707, 0, 0, 1, 0, 0, 45745), -- Unga Brew
(73914, 8, 105703, 0, 0, 1, 0, 0, 45745), -- Stormstout Brew
(73914, 7, 105708, 0, 0, 1, 0, 0, 45745), -- Shimmering Amber-Brew
(73914, 6, 105706, 0, 0, 1, 0, 0, 45745), -- Shado-Pan Brew
(73914, 5, 105700, 0, 0, 1, 0, 0, 45745), -- Kun-Lai Kicker
(73914, 4, 105701, 0, 0, 1, 0, 0, 45745), -- Greenstone Brew
(73914, 3, 105711, 0, 0, 1, 0, 0, 45745), -- Funky Monkey Brew
(73914, 2, 105705, 0, 0, 1, 0, 0, 45745), -- Chani's Bitter Brew
(73914, 1, 105702, 0, 0, 1, 0, 0, 45745), -- Boomer Brew
(152775, 4, 141209, 0, 0, 1, 0, 0, 45745), -- Distilled Nightwine
(152775, 3, 169464, 0, 0, 1, 0, 0, 45745), -- Sparkling Suramar Spritz
(152775, 2, 169462, 0, 0, 1, 0, 0, 45745), -- Boxed Nightwine
(152775, 1, 169463, 0, 0, 1, 0, 0, 45745), -- Nightwine Cooler
(152780, 5, 166420, 0, 0, 1, 0, 0, 45745), -- Xibala Kombucha
(152780, 4, 162573, 0, 0, 1, 0, 0, 45745), -- Amani Mule
(152780, 3, 169458, 0, 0, 1, 0, 0, 45745), -- Vol'dunshine
(152780, 2, 169460, 0, 0, 1, 0, 0, 45745), -- Really Really Really Old Fashioned
(152780, 1, 169459, 0, 0, 1, 0, 0, 45745), -- Saurid Sipper
(152948, 3, 169527, 0, 0, 1, 0, 0, 45745), -- Thunder Stumbler
(152948, 2, 128841, 0, 0, 1, 0, 0, 45745), -- Highmountain Tiswin
(152948, 1, 169521, 0, 0, 1, 0, 0, 45745), -- Butterhoof Milk Stout
(153012, 4, 104344, 0, 0, 1, 0, 0, 45745), -- Lucky Mushroom Noodles
(153012, 3, 104348, 0, 0, 1, 0, 0, 45745), -- Timeless Tea
(153012, 2, 81414, 0, 0, 1, 0, 0, 45745), -- Pearl Milk Tea
(153012, 1, 104343, 0, 0, 1, 0, 0, 45745), -- Golden Dragon Noodles
(153116, 2, 128841, 0, 0, 1, 0, 0, 45745), -- Highmountain Tiswin
(153116, 1, 128842, 0, 0, 1, 0, 0, 45745), -- Tideskorn Mead Ale
(153167, 1, 159, 0, 0, 1, 0, 0, 45745), -- Refreshing Spring Water
(154980, 4, 169466, 0, 0, 1, 0, 0, 45745), -- Everbloom IPA
(154980, 3, 169467, 0, 0, 1, 0, 0, 45745), -- Doomlager
(154980, 2, 169468, 0, 0, 1, 0, 0, 45745), -- Ancestral Ale
(154980, 1, 169469, 0, 0, 1, 0, 0, 45745), -- Mag'helada
(153008, 4, 169466, 0, 0, 1, 0, 0, 45745), -- Everbloom IPA
(153008, 3, 169467, 0, 0, 1, 0, 0, 45745), -- Doomlager
(153008, 2, 169468, 0, 0, 1, 0, 0, 45745), -- Ancestral Ale
(153008, 1, 169469, 0, 0, 1, 0, 0, 45745), -- Mag'helada
(155131, 2, 34065, 0, 0, 1, 0, 0, 45745), -- Spiced Onion Cheese
(155131, 1, 33043, 0, 0, 1, 0, 0, 45745), -- The Essential Brewfest Pretzel
(155133, 1, 169865, 0, 6619, 1, 0, 0, 45745); -- Brewfest Chowdown Trophy

UPDATE `npc_vendor` SET `VerifiedBuild`=45745 WHERE (`entry`=23604 AND `item`=58259 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=58258 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=35952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=33443 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=27857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=8932 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=3927 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=1707 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=422 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=414 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=2070 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23604 AND `item`=34065 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23533 AND `item`=46401 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23533 AND `item`=34022 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23533 AND `item`=34021 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23533 AND `item`=34020 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=24501 AND `item`=46402 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=24501 AND `item`=34019 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=24501 AND `item`=34018 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=24501 AND `item`=34017 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=58261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=58260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=35950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=33449 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=27855 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=8950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=4601 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=4544 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=4542 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=4541 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=23603 AND `item`=33043 AND `ExtendedCost`=0 AND `type`=1);
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=58269 AND `ExtendedCost`=0 AND `type`=1); -- Massive Turkey Leg
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=58268 AND `ExtendedCost`=0 AND `type`=1); -- Roasted Beef
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=35953 AND `ExtendedCost`=0 AND `type`=1); -- Mead Basted Caribou
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=33454 AND `ExtendedCost`=0 AND `type`=1); -- Salted Venison
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=27854 AND `ExtendedCost`=0 AND `type`=1); -- Smoked Talbuk Venison
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=8952 AND `ExtendedCost`=0 AND `type`=1); -- Roasted Quail
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=4599 AND `ExtendedCost`=0 AND `type`=1); -- Cured Ham Steak
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=3771 AND `ExtendedCost`=0 AND `type`=1); -- Wild Hog Shank
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=3770 AND `ExtendedCost`=0 AND `type`=1); -- Mutton Chop
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=2287 AND `ExtendedCost`=0 AND `type`=1); -- Haunch of Meat
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=117 AND `ExtendedCost`=0 AND `type`=1); -- Tough Jerky
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=33026 AND `ExtendedCost`=0 AND `type`=1); -- The Golden Link
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=33025 AND `ExtendedCost`=0 AND `type`=1); -- Spicy Smoked Sausage
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=33024 AND `ExtendedCost`=0 AND `type`=1); -- Pickled Sausage
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=33023 AND `ExtendedCost`=0 AND `type`=1); -- Savory Sausage
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=34064 AND `ExtendedCost`=0 AND `type`=1); -- Succulent Sausage
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=45745 WHERE (`entry`=23605 AND `item`=34063 AND `ExtendedCost`=0 AND `type`=1); -- Dried Sausage
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=37816 AND `ExtendedCost`=2399 AND `type`=1); -- Preserved Brewfest Hops
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=37750 AND `ExtendedCost`=2398 AND `type`=1); -- Fresh Brewfest Hops
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=32233 AND `ExtendedCost`=2276 AND `type`=1); -- Wolpertinger's Tankard
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=46707 AND `ExtendedCost`=2275 AND `type`=1); -- Pint-Sized Pink Pachyderm
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33927 AND `ExtendedCost`=2275 AND `type`=1); -- Brewfest Pony Keg
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=71137 AND `ExtendedCost`=2276 AND `type`=1); -- Brewfest Keg Pony
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=39477 AND `ExtendedCost`=2424 AND `type`=1); -- Fresh Dwarven Brewfest Hops
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=34008 AND `ExtendedCost`=2275 AND `type`=1); -- Blix's Eyesight Enhancing Romance Goggles
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=37599 AND `ExtendedCost`=2276 AND `type`=1); -- "Brew of the Month" Club Membership Form
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33868 AND `ExtendedCost`=2275 AND `type`=1); -- Brewfest Boots
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33862 AND `ExtendedCost`=2276 AND `type`=1); -- Brewfest Regalia
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33966 AND `ExtendedCost`=2275 AND `type`=1); -- Brewfest Slippers
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33863 AND `ExtendedCost`=2276 AND `type`=1); -- Brewfest Dress
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33969 AND `ExtendedCost`=2274 AND `type`=1); -- Purple Brewfest Hat
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33967 AND `ExtendedCost`=2274 AND `type`=1); -- Green Brewfest Hat
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33864 AND `ExtendedCost`=2274 AND `type`=1); -- Brown Brewfest Hat
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=45745 WHERE (`entry`=24495 AND `item`=33968 AND `ExtendedCost`=2274 AND `type`=1); -- Blue Brewfest Hat

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=298, `VerifiedBuild`=45745 WHERE `entry`=186186; -- Drohn's Distillery Festive Keg
UPDATE `gameobject_template` SET `ContentTuningId`=298, `VerifiedBuild`=45745 WHERE `entry`=186187; -- T'chali's Voodoo Brew Festive Keg
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=45745 WHERE `entry` IN (250563, 250564); -- Baskets
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=45745 WHERE `entry`=250566; -- Hides

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (252967, 265545, 279239, 279243, 325994, 325998, 326067, 326077, 326104);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(252967, 1375, 8192, 0, 0), -- Nightborne Goods
(265545, 0, 8192, 0, 0), -- Frostwolf Banner
(279239, 114, 0, 0, 0), -- [DNT] Crate
(279243, 114, 0, 0, 0), -- [DNT] Basket
(325994, 0, 32, 0, 0), -- Nightborne Arcwine Tent
(325998, 0, 32, 0, 0), -- Zandalari Tent
(326067, 0, 32, 0, 0), -- Highmountain Tent
(326077, 0, 32, 0, 0), -- Ogre Tent
(326104, 0, 32, 0, 0); -- Frostwolf Tent


