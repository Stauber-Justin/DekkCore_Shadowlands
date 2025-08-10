UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11804;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11804', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11881;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11881', '2', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11880;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11880', '2', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11736;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11736', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11741;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11741', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11721;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11721', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11739;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11739', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=11745;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11745', '2', '33095');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=14477;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('14477', '2', '39614');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11737;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11737', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11747;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11747', '2', '44325');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (8282, 1, 1, -1, 0, 0, 1, 81, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (8282, 0, 0, 0, 257107, 20379, 1, 81, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (8282, 1, 0, -6853, 739, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (8282, 0, 0, -8081, 985, 0, 45114);

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (8304, 2, 2, -1, 0, 0, 1, 81, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (8304, 1, 1, 0, 257225, 15222, 1, 81, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (8304, 0, 0, 0, 257224, 15221, 1, 81, 0, 1, 0, 0, 0, 0, 0, 45114);

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (8304, 2, 0, -6752, -824, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (8304, 1, 0, -8022, 1099, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (8304, 0, 0, -8030, 1123, 0, 45114);

UPDATE `gameobject_template` SET `Data1`='180435', `Data2`='0', `Data30`='0' WHERE  `entry`=180435;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('180435', '20379', '1');

UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6533 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6558 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6557 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6556 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6555 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6554 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6553 AND `OptionID`=0;

UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6534 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6551 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6550 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6549 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6548 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6547 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=6546 AND `OptionID`=0;

UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11746;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11746', '2', '33095');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11733;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11733', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11730;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11730', '2', '44325');
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('180453', '20456', '1');
UPDATE `creature_loot_template` SET `Chance`='100' WHERE  `Entry`=15200 AND `Item`=20394;
UPDATE `creature_loot_template` SET `Chance`='100' WHERE  `Entry`=11804 AND `Item`=20396;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=15201;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('15201', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=15213;
REPLACE INTO `creature_template_scaling` (`Entry`, `VerifiedBuild`) VALUES ('15213', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=15202;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('15202', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=11883;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('11883', '2', '39617');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (8315, 1, 1, -1, 0, 0, 1, 81, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (8315, 0, 0, 0, 257258, 20465, 1, 81, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (8315, 1, 0, -6828, 807, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `X`, `Y`, `VerifiedBuild`) VALUES ('8315', '-7308', '839', '45114');


UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='2048', `unit_flags3`='0' WHERE  `entry`=41158;
UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry`=41158;
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (41158, 0, 3248, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (41158, 1, 6660, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (41158, 2, 11972, 39653);

DELETE FROM `creature` WHERE `guid`=163727;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163727, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10873.2, -3060.09, 46.611, 4.46804, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163650;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163650, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11019.9, -3337.36, 64.215, 1.72788, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163530;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163530, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11067.5, -3258.44, 56.5723, 1.72788, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163363;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163363, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11001.3, -3332.99, 64.7632, 1.85005, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163362;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163362, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11017.5, -3300.98, 56.53, 1.48142, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163361;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163361, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11018.9, -3310.16, 58.6211, 1.42924, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163360;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163360, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11018.3, -3312.2, 59.1008, 1.50104, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163359;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163359, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11077.6, -3397.22, 90.7177, 2.07694, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163357;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163357, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10973.6, -3379.38, 65.1523, 3.00197, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163355;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163355, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11050.7, -3408.67, 80.5599, 3.75246, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163356;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163356, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10976.4, -3391.48, 65.1017, 2.86234, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163332;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163332, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11021.8, -3397.34, 65.231, 0.698132, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163334;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163334, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11028.6, -3387.07, 65.129, 0.541052, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163335;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163335, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11095.3, -3269.42, 58.7893, 2.07694, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163331;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163331, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11103.6, -3325.49, 55.5765, 2.61799, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163330;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163330, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10946.3, -3392.22, 80.5043, 6.05629, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163329;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163329, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10934.2, -3383.34, 66.4976, 4.4549, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163328;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163328, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10933.1, -3395.08, 65.0818, 2.87979, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163306;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163306, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10924.4, -3372.52, 90.6621, 1.3439, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163304;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163304, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11061.6, -3415.83, 65.1374, 0.506145, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163303;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163303, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10926.1, -3395.82, 75.4026, 6.17846, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163302;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163302, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11067.1, -3420.4, 75.4582, 3.89208, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163301;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163301, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11072.5, -3415.99, 80.5598, 0.541052, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163300;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163300, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11066.3, -3425.6, 80.5598, 0.541052, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163299;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163299, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10960.1, -3444.49, 65.0619, 2.70526, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163298;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163298, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11051.2, -3437.98, 90.7177, 5.21853, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163297;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163297, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10986, -3454.4, 65.0759, 1.85005, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163248;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163248, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10999.4, -3456.68, 65.0485, 1.55334, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163246;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163246, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11076, -3444.76, 67.1079, 0.663225, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163244;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163244, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -10923.1, -3390.77, 66.4976, 1.45871, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163245;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163245, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6727, 1, -10923, -3391.69, 80.5042, 3.00197, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163243;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163243, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6730, 1, -10925.6, -3402.83, 80.5042, 3.00197, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163242;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163242, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6730, 1, -10910.4, -3383.34, 69.0404, 5.84685, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163241;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163241, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -10899, -3377.06, 66.5808, 6.0912, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163240;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163240, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6730, 1, -10899.3, -3381.28, 67.1003, 5.84685, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163185;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163185, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6730, 1, -10937.7, -3489.31, 65.0376, 4.90438, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163175;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163175, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6729, 1, -10941.7, -3490.98, 65.0376, 5.42797, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163174;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163174, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -10933.1, -3488.76, 65.0376, 4.45059, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163172;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163172, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6730, 1, -10985.2, -3497.76, 78.0883, 4.77037, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163173;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163173, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6729, 1, -10916.7, -3484.39, 66.6113, 5.75959, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163170;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163170, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6727, 1, -10936.1, -3497.09, 65.0376, 1.69297, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163171;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163171, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -10917.4, -3487.31, 66.1199, 5.75959, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163169;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163169, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -10902.7, -3479.22, 66.5968, 4.59022, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163168;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163168, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6729, 1, -10904.2, -3490.44, 65.0376, 3.57747, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163167;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163167, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6730, 1, -10907.4, -3491.93, 65.0793, 0.435845, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163166;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163166, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6727, 1, -11041, -3455.41, 65.4979, 0.129446, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163165;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163165, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -11060.5, -3461.51, 65.6532, 0.164769, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163063;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163063, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -11121, -3493.59, 65.2795, 3.75246, 120, 7, 1, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163062;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163062, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 1, -11133.7, -3479.32, 65.2795, 3.87463, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163061;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163061, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6729, 0, -11061.6, -3415.83, 65.1374, 0.506145, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163060;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163060, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6730, 0, -10916.7, -3484.39, 66.6113, 5.75959, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163059;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163059, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6728, 0, -10926.1, -3395.82, 75.4026, 6.17846, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163058;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163058, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6727, 0, -11050.7, -3408.67, 80.5599, 3.75246, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=163057;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (163057, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6727, 0, -10931.4, -3372.52, 66.4975, 2.93006, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124234;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124234, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10963.2, -3371.66, 65.4832, 4.69166, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124248;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124248, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10965.2, -3372.2, 65.7239, 2.05525, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124246;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124246, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6727, 2, -10964.3, -3373.38, 65.7499, 5.41361, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124252;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124252, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 6727, 2, -10966.2, -3373.27, 65.9526, 5.20634, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124254;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124254, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10963.9, -3372.51, 65.6243, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124255;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124255, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10963.2, -3373.13, 65.6168, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124258;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124258, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10964.7, -3370.9, 65.5645, 0.75229, 120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124259;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124259, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10965.5, -3374.11, 65.9547, 2.10649, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124261;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124261, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -10995.3, -3381.98, 62.2833, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124262;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124262, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10998.6, -3330.75, 65.0039, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124271;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124271, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11023.6, -3336.86, 64.3525, 5.08107, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124290;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124290, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 1, -11002.4, -3408.25, 62.0001, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124295;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124295, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11022, -3401.85, 65.1643, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124298;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124298, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10937, -3445.51, 65.4025, 1.79974, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124302;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124302, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11016.1, -3444.29, 65.4889, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124307;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124307, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10969.5, -3453.88, 65.1035, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124308;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124308, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10913.9, -3505.77, 65.0377, 4.70179, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124309;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124309, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10911.3, -3506.41, 65.0377, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124319;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124319, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -10911.7, -3504.47, 65.0377, 1.83922, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124320;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124320, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11041.2, -3468.47, 65.0376, 1.07333, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124332;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124332, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11103.8, -3446.09, 64.8406, 1.99592, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124337;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124337, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11141.3, -3477.3, 65.2794, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124340;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124340, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11141, -3478.93, 65.2794, 5.12114, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124341;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124341, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11143.2, -3476.69, 65.2794, 1.61067, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124342;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124342, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11142.1, -3475.61, 65.2794, 1.80947, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124343;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124343, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11140.4, -3476.29, 65.2794, 5.20811, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124344;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124344, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11142.2, -3477.6, 65.2794, 5.8284, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124348;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124348, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11140, -3475.12, 65.2794, 5.36166, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124349;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124349, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11123.1, -3507.47, 65.336, 4.40693, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124350;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124350, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11100.5, -3486.08, 65.1188, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124351;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124351, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11141.2, -3476.21, 65.2794, 5.46447, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124352;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124352, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11142.9, -3478.79, 65.2794, 1.65507, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124354;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124354, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11111.8, -3461.74, 65.0394, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=10124356;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (10124356, 41158, 1190, 4, 1438, '0', 0, '', 0, -1, 0, 0, -11089.2, -3510.68, 64.6199, 2.24582, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature` SET `map`='1190', `equipment_id`='1' WHERE  `id`=41158;

DELETE FROM `creature` WHERE  `guid`=10124324;
DELETE FROM `creature` WHERE  `guid`=10124326;
DELETE FROM `creature` WHERE  `guid`=163058;
DELETE FROM `creature` WHERE  `guid`=10124291;
DELETE FROM `creature` WHERE  `guid`=10124288;
DELETE FROM `creature` WHERE  `guid`=10124293;
DELETE FROM `creature` WHERE  `guid`=10124226;
DELETE FROM `creature` WHERE  `guid`=10124241;
DELETE FROM `creature` WHERE  `guid`=10124233;
DELETE FROM `creature` WHERE  `guid`=10124236;
DELETE FROM `creature` WHERE  `guid`=10124256;
DELETE FROM `creature` WHERE  `guid`=10124235;
DELETE FROM `creature` WHERE  `guid`=10124249;
DELETE FROM `creature` WHERE  `guid`=10124253;
DELETE FROM `creature` WHERE  `guid`=10124275;
DELETE FROM `creature` WHERE  `guid`=10124276;
DELETE FROM `creature` WHERE  `guid`=10124272;
DELETE FROM `creature` WHERE  `guid`=10124296;
DELETE FROM `creature` WHERE  `guid`=10124301;
DELETE FROM `creature` WHERE  `guid`=10124304;
DELETE FROM `creature` WHERE  `guid`=10124299;
DELETE FROM `creature` WHERE  `guid`=10124315;
DELETE FROM `creature` WHERE  `guid`=10124312;
DELETE FROM `creature` WHERE  `guid`=10124325;
DELETE FROM `creature` WHERE  `guid`=10124328;
DELETE FROM `creature` WHERE  `guid`=10124306;


UPDATE `creature` SET `map`='1190' WHERE  `guid`=163072;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163073;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163071;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163029;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163031;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163028;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163070;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163079;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163081;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163080;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163033;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163036;
UPDATE `creature` SET `map`='1190' WHERE  `guid`=163035;

UPDATE `creature` SET `equipment_id`='1' WHERE  `guid`=163081;
UPDATE `creature` SET `equipment_id`='1' WHERE  `guid`=163080;

UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=99267;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=99213;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=99200;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=98946;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=95772;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=95766;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=181369;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=94691;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=111457;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=111291;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180653;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180669;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180650;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=181366;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=119396;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=119437;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=119438;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=119436;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=120827;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=163186;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=159016;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=171369;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=160074;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `entry`=163395;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=160075;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=159693;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=160076;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=158948;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=160713;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=163185;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=165224;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=168008;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=171328;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=171392;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=173528;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=177582;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=182098;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=184185;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=184432;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=185435;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180652;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180655;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=181375;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180656;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=182107;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=181392;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=183146;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180641;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=188157;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373762;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373763;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373764;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373765;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373766;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373767;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373768;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373769;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373770;
UPDATE `quest_objectives` SET `ObjectID`='133612' WHERE  `ID`=312328;
DELETE FROM `quest_objectives` WHERE  `ID`=294934;
DELETE FROM `quest_objectives` WHERE  `ID`=294933;
UPDATE `quest_objectives` SET `Order`='0', `StorageIndex`='0' WHERE  `ID`=388711;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=43605 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=43636 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=43726 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='11', `event_param1`='0', `action_type`='2', `action_param1`='7', `action_param2`='0', `action_param3`='0', `action_param4`='0', `comment`='On respawn - Set faction' WHERE  `entryorguid`=42391 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `link`='2', `action_type`='2', `action_param1`='14', `comment`='On gossip select - Set faction' WHERE  `entryorguid`=42391 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `link`='3', `event_type`='61', `event_param1`='0', `event_param2`='0', `action_type`='1', `action_param1`='0', `action_param2`='0', `action_param3`='0', `action_param4`='0', `comment`='Link - Say text' WHERE  `entryorguid`=42391 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='61', `event_param1`='0', `event_param2`='0', `action_type`='49', `action_param1`='0', `target_type`='7', `comment`='Link - Attack player' WHERE  `entryorguid`=42391 AND `source_type`=0 AND `id`=3 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 4, 5, 6, 0, 40, 0, 0, 0, 0, 0, 0, '', 11, 79170, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'On death - cast Summon Ragamuffin Looter');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 79171, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - cast Summon Ragamuffin Looter');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 79172, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - cast Summon Ragamuffin Looter');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 79173, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - cast Summon Ragamuffin Looter');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 8, 0, 1, 0, 2, 0, 1000, 15000, 10000, 30000, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'OOC - Chance for random speech');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 10, 11, 62, 0, 100, 1, 11635, 1, 0, 0, 0, '', 88, 4239100, 4239103, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gossip select - Random Actionlist');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Close gossip');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (42391, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Despawn');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239104, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murder was the case - On Gossip 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239104, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murder was the case - On Gossip 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239103, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 14, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Speech to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239103, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 42417, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Credit to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239102, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 13, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Speech to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239102, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 42416, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Credit to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239101, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 12, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Speech to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239101, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 42415, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Credit to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 11, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Speech to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4239100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 42414, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Credit to Invoker');

REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (42391, 1, 58514, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (42391, 2, 58519, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (42391, 3, 58511, 39653);

DELETE FROM `creature_text` WHERE `CreatureID`=42391 AND `GroupID`=0 AND `ID`=0;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42391, 0, 0, 'Heartless monsters!', 12, 0, 100, 1, 0, 0, 0, 42334, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=42391 AND `GroupID`=0 AND `ID`=1;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42391, 0, 1, 'Get off my land!', 12, 0, 100, 1, 0, 0, 0, 42355, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=42391 AND `GroupID`=1 AND `ID`=1;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42391, 1, 1, 'Perhaps one day I will repay you for this kind act.', 12, 0, 100, 1, 0, 0, 0, 42491, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=42391 AND `GroupID`=1 AND `ID`=0;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42391, 1, 0, 'Thank you, kind and gentle stranger.', 12, 0, 100, 1, 0, 0, 0, 42486, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=42391 AND `GroupID`=0 AND `ID`=3;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42391, 0, 3, 'You\\\'ll get nothing out of me!', 12, 0, 100, 1, 0, 0, 0, 42378, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=42391 AND `GroupID`=0 AND `ID`=2;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42391, 0, 2, 'HEY! HEY YOU! GET OFF MY PROPERTY!', 12, 0, 100, 1, 0, 0, 0, 42361, 0, '');

DELETE FROM `gossip_menu_option` WHERE `MenuID`=11635 AND `OptionID`=1;
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES (11635, 1, 0, 'Maybe a couple copper will loosen your tongue. Now tell me, did you see who killed the Furlbrows?', 42371, 1, 0, 0, 0, 0, 2, 'Are you sure you want to give this hobo money?', 0, 25881);

-- Grand Executor Mortuus
UPDATE `creature_template` SET `ScriptName`='npc_silverpine_grand_executor_mortuus' WHERE `entry`=44615;

-- Lady Sylvanas Windrunner
DELETE FROM `creature_text` WHERE `CreatureID`= 44365;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(44365, 0, 0, 'Where is that ogre-headed buffoon?', 12, 0, 100, 6, 0, 20459, 0, 44695, 0, 'VO_QE_SP_Sylvanas_SPEvent01'),
(44365, 1, 0, 'Ah, speak of the devil...', 12, 0, 100, 1, 0, 20460, 0, 44696, 0, 'VO_QE_SP_Sylvanas_SPEvent02'),
(44365, 2, 0, 'Warchief, so glad you could make it.', 12, 0, 100, 1, 0, 20461, 0, 44701, 0, 'VO_QE_SP_Sylvanas_SPEvent03'),
(44365, 3, 0, 'With the death of the Lich King, many of the more intelligent Scourge became... unemployed. Those \'fiends,\' as you so delicately put it, are called val\'kyr. They are under my command now...', 12, 0, 100, 0, 0, 20462, 0, 44702, 0, 'VO_QE_SP_Sylvanas_SPEvent04'),
(44365, 4, 0, '...and they are part of the reason that I asked to see you.', 12, 0, 100, 1, 0, 20463, 0, 44703, 0, 'VO_QE_SP_Sylvanas_SPEvent05'),
(44365, 5, 0, 'Very well, Warchief. I have solved the plight of the Forsaken!', 12, 0, 100, 5, 0, 20464, 0, 44705, 0, 'VO_QE_SP_Sylvanas_SPEvent06'),
(44365, 6, 0, 'As a race, we Forsaken are unable to procreate.', 12, 0, 100, 274, 0, 20465, 0, 44706, 0, 'VO_QE_SP_Sylvanas_SPEvent07'),
(44365, 7, 0, 'With the aid of the val\'kyr, we are now able to take the corpses of the fallen and create new Forsaken.', 12, 0, 100, 0, 0, 20466, 0, 44707, 0, 'VO_QE_SP_Sylvanas_SPEvent08'),
(44365, 8, 0, 'Agatha, show the Warchief!', 12, 0, 100, 5, 0, 20467, 0, 44709, 0, 'VO_QE_SP_Sylvanas_SPEvent09'),
(44365, 9, 0, 'Warchief, without these new Forsaken my people would die out... Our hold upon Gilneas and northern Lordaeron would crumble.', 12, 0, 100, 0, 0, 20468, 0, 44715, 0, 'VO_QE_SP_Sylvanas_SPEvent10'),
(44365, 10, 0, 'Isn\'t it obvious, Warchief? I serve the Horde.', 12, 0, 100, 66, 0, 20469, 0, 44718, 0, 'VO_QE_SP_Sylvanas_SPEvent11');

-- Garrosh Hellscream
DELETE FROM `creature_text` WHERE `CreatureID` = 44629;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(44629, 0, 0, 'This better be important, Sylvanas. You know how I detest this place and its foul stench. Why have you called for me?', 12, 0, 100, 0, 0, 20496, 0, 44699, 0, 'VO_QE_Garrosh_SPEvent01'),
(44629, 1, 0, 'And more importantly, what are those Scourge fiends doing here?', 12, 0, 100, 25, 0, 20497, 0, 44700, 0, 'VO_QE_Garrosh_SPEvent02'),
(44629, 2, 0, 'Get on with it, Sylvanas.', 12, 0, 100, 1, 0, 20498, 0, 44704, 0, 'VO_QE_Garrosh_SPEvent03'),
(44629, 3, 0, 'What you have done here, Sylvanas... it goes against the laws of nature. Disgusting is the only word I have to describe it.', 12, 0, 100, 0, 0, 20499, 0, 44714, 0, 'VO_QE_Garrosh_SPEvent04'),
(44629, 4, 0, 'Have you given any thought to what this means, Sylvanas?', 12, 0, 100, 6, 0, 20500, 0, 44716, 0, 'VO_QE_Garrosh_SPEvent05'),
(44629, 5, 0, 'What difference is there between you and the Lich King now?', 12, 0, 100, 6, 0, 20501, 0, 44717, 0, 'VO_QE_Garrosh_SPEvent06'),
(44629, 6, 0, 'Watch your clever mouth.', 12, 0, 100, 397, 0, 20502, 0, 44719, 0, 'VO_QE_Garrosh_SPEvent07'),
(44629, 7, 0, 'Cromush, you stay behind and make sure the Banshee Queen is well "guarded." I will be expecting a full report when next we meet.', 12, 0, 100, 0, 0, 20503, 0, 44720, 0, 'VO_QE_Garrosh_SPEvent08'),
(44629, 8, 0, 'Remember, Sylvanas, eventually we all have to stand before our maker and face judgment. Your day may come sooner than others...', 12, 0, 100, 0, 0, 20504, 0, 44721, 0, 'VO_QE_Garrosh_SPEvent09');

DELETE FROM `waypoint_data` WHERE `id` = 446290;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(446290, 0, 1377.69, 1048.67, 53.4456, NULL, 0, 0, 0, 0, 0),
(446290, 1, 1373.69, 1052.17, 53.4456, NULL, 0, 0, 0, 0, 0),
(446290, 2, 1365.23, 1058.61, 53.0524, NULL, 0, 0, 0, 0, 0);

-- High Warlord Cromush 
DELETE FROM `creature_text` WHERE `CreatureID` = 44640;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(44640, 0, 0, 'ABBERATION!', 12, 0, 100, 5, 0, 0, 0, 44713, 0, 'VO_QE_SP_Crommush_SPEvent01'),
(44640, 1, 0, 'As you command, Warchief.', 12, 0, 100, 66, 0, 0, 0, 44738, 0, 'VO_QE_SP_Crommush_SPEvent01');

DELETE FROM `waypoint_data` WHERE `id` = 446402;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(446402, 0, 1412.05, 1089.42, 60.4771, NULL, 0, 1, 0, 0, 0),
(446402, 1, 1405.38, 1095.16, 60.4774, NULL, 0, 1, 0, 0, 0),
(446402, 2, 1392.62, 1093.5, 56.4067, NULL, 0, 1, 0, 0, 0),
(446402, 3, 1380.65, 1083.27, 52.6221, NULL, 0, 1, 0, 0, 0),
(446402, 4, 1372.86, 1062, 53.0398, NULL, 0, 1, 0, 0, 0),
(446402, 5, 1376.69, 1048.61, 53.3362, NULL, 0, 1, 0, 0, 0),
(446402, 6, 1375.32, 1046.38, 53.2336, NULL, 0, 1, 0, 0, 0);

DELETE FROM `waypoint_data` WHERE `id` = 446403;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(446403, 0, 1376.69, 1048.61, 53.3362, NULL, 0, 1, 0, 0, 0),
(446403, 1, 1372.86, 1062, 53.0398, NULL, 0, 1, 0, 0, 0),
(446403, 2, 1380.65, 1083.27, 52.6221, NULL, 0, 1, 0, 0, 0),
(446403, 3, 1392.62, 1093.5, 56.4067, NULL, 0, 1, 0, 0, 0),
(446403, 4, 1405.38, 1095.16, 60.4774, NULL, 0, 1, 0, 0, 0),
(446403, 5, 1412.05, 1089.42, 60.4771, NULL, 0, 1, 0, 0, 0);

-- Fallen Human
UPDATE `creature_template` SET `ScriptName`='npc_silverpine_fallen_human' WHERE `entry` IN (44592, 44593);

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (44592, 44593);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES 
(44592, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(44593, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- Raise Forsaken (The Warchief Cometh)
DELETE FROM `spell_script_names` WHERE `spell_id` = 83173 AND `ScriptName` = 'spell_silverpine_raise_forsaken_83173';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(83173, 'spell_silverpine_raise_forsaken_83173');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=83173 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=44592 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES 
(13, 1, 83173, 0, 0, 31, 0, 3, 44592, 0, 0, 'Raise Forsaken - Target Fallen Human (Male)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=83173 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=44593 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES 
(13, 1, 83173, 0, 1, 31, 0, 3, 44593, 0, 0, 'Raise Forsaken - Target Fallen Human (Female)');

-- Forsaken Trooper Masterscript (The Warchief Cometh)
DELETE FROM `spell_script_names` WHERE `spell_id` = 83149 AND `ScriptName` = 'spell_silverpine_forsaken_trooper_masterscript_high_command';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(83149, 'spell_silverpine_forsaken_trooper_masterscript_high_command');

UPDATE `creature_template` SET `gossip_menu_id`=9821, `minlevel`=20, `maxlevel`=20 WHERE `entry`=68989; -- Beastblast Babblesnaff

-- Update Quest Chain
UPDATE `quest_template_addon` SET `PrevQuestID` = 14138, `ExclusiveGroup` = -14069 WHERE `ID` = 14075; -- Trouble in the Mines
UPDATE `quest_template_addon` SET `PrevQuestID` = 14138, `ExclusiveGroup` = -14069 WHERE `ID` = 14069; -- Good Help is Hard to Find

-- Quest Details/Offer Reward
DELETE FROM `quest_details` WHERE `ID` IN (14070 /*Do it Yourself*/, 24567 /*Report for Tryouts*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(14070, 1, 0, 0, 0, 0, 0, 0, 0, 45338), -- Do it Yourself
(24567, 1, 0, 0, 0, 0, 0, 0, 0, 45338); -- Report for Tryouts

DELETE FROM `quest_offer_reward` WHERE `ID`=28607;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28607, 6, 0, 0, 0, 0, 0, 0, 0, 'You lost your Keys to the Hot Rod somewhere?$B$BNo problem, boss. I always like to keep a spare set handy just in case.', 45338); -- The Keys to the Hot Rod

