UPDATE `smart_scripts` SET `action_param1`='24858' WHERE  `entryorguid`=2732801 AND `source_type`=9 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='209746' WHERE  `entryorguid`=2732801 AND `source_type`=9 AND `id`=4 AND `link`=0;
UPDATE `smart_scripts` SET `target_type`='10' WHERE  `entryorguid`=2598300 AND `source_type`=9 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='20964', `action_param2`='0' WHERE  `entryorguid`=2244801 AND `source_type`=9 AND `id`=5 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=156666;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (91043, 0, 0, 'Is this world real? Or has my dream become a reality?', 12, 0, 100, 0, 0, 0, 0, 93364, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (91043, 1, 0, 'I felt the presence of some dark force in the Emerald Dream.', 12, 0, 100, 0, 0, 0, 0, 93368, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (91043, 2, 0, 'I\\\'ve had these weird dreams... I\\\'m afraid there\\\'s something amiss going on in the Emerald Dream.', 12, 0, 100, 0, 0, 0, 0, 93366, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (91043, 3, 0, 'I don\\\'t sleep, I don\\\'t sleep...', 12, 0, 100, 0, 0, 0, 0, 93363, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (91130, 0, 0, 'Fools! This forest will soon die... and you with it!', 12, 0, 100, 0, 0, 52321, 0, 93797, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (91130, 1, 0, 'Wretched! Soon... <cough>... you will follow me in death!', 12, 0, 100, 0, 0, 52322, 0, 93798, 0, '');
UPDATE `smart_scripts` SET `id`='0', `event_type`='19', `event_param1`='34582', `action_type`='85', `action_param1`='160856', `target_type`='7', `comment`='on quest accept - cast summon multi spell' WHERE  `entryorguid`=79206 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=79206 AND `source_type`=0 AND `id`=2 AND `link`=0;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (76204, 0, 0, 'Hold on, Gidwin. Help is on the way.', 12, 0, 100, 0, 0, 0, 0, 82996, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (76204, 1, 0, 'This herb will make your stride springy. Be careful, $n.', 12, 0, 100, 0, 0, 0, 0, 79303, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (76204, 2, 0, 'If I can repay you in any way, just tell me.', 12, 0, 100, 0, 0, 0, 0, 83314, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (76204, 3, 0, 'Tell me, when you are $gready:ready;.', 12, 0, 100, 0, 0, 79205, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (80251, 0, 0, 'Mother was right; the Shadowmoon clan cannot be trusted!', 14, 0, 0, 0, 0, 0, 0, 82364, 0, '');
UPDATE `creature_template` SET `gossip_menu_id`='14991', `AIName`='SmartAI' WHERE  `entry`=63626;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE  `entry`=61927;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61680, 0, 0, 'Thanks!', 12, 0, 100, 0, 0, 0, 0, 112662, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61680, 0, 1, 'I thought I was going to die down here!', 12, 0, 100, 0, 0, 0, 0, 61285, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61280, 0, 2, 'I didn\\\'t think anyone was coming for us.', 12, 0, 100, 0, 0, 0, 0, 61287, 0, '');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=58701;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58508, 0, 0, 'Let\\\'s both do our best!', 14, 0, 100, 1, 0, 0, 0, 67161, 0, 'Gossip text');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58508, 1, 0, 'I lost again! I\\\'d better keep training.', 12, 0, 100, 1, 0, 0, 0, 67174, 0, 'KillCreditText');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58509, 0, 0, 'Let\\\'s see who is stronger serpent rider.\'', 14, 0, 100, 1, 0, 0, 0, 67188, 0, 'Gossip Text');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58509, 1, 0, 'What? I... I lost? Auuugh! I\\\'ll have to work harder to beat you!', 12, 0, 100, 1, 0, 0, 0, 67190, 0, 'KillCreditText');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58510, 0, 0, 'I feel a rush of energy coming on. Let\\\'s do this!', 14, 0, 100, 1, 0, 0, 0, 67183, 0, 'Gossip text');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58510, 1, 0, 'Damit, I lost! Oof... I feel tired...', 12, 0, 100, 1, 0, 0, 0, 0, 0, 'KillCreditText');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58511, 0, 0, 'Let us begin. Good luck.', 14, 0, 100, 1, 0, 0, 0, 67193, 0, 'Gossip text');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (58511, 1, 0, 'You have bested me fairly. Well done.', 12, 0, 100, 1, 0, 0, 0, 67195, 0, 'KillCreditText');
UPDATE `smart_scripts` SET `event_param2`='58508' WHERE  `entryorguid`=58508 AND `source_type`=0 AND `id`=3 AND `link`=4;
UPDATE `smart_scripts` SET `event_param2`='58509' WHERE  `entryorguid`=58509 AND `source_type`=0 AND `id`=3 AND `link`=4;
UPDATE `smart_scripts` SET `event_param2`='58510' WHERE  `entryorguid`=58510 AND `source_type`=0 AND `id`=3 AND `link`=4;
UPDATE `smart_scripts` SET `event_param2`='58511' WHERE  `entryorguid`=58511 AND `source_type`=0 AND `id`=3 AND `link`=4;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (63626, 0, 0, 'Careful with the scorpion, he may look friendly but he is a beast in battle!', 12, 0, 100, 1, 0, 0, 0, 63546, 0, 'Varzok to Player');
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=49263 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `target_param1`='50000' WHERE  `entryorguid`=93838 AND `source_type`=0 AND `id`=4 AND `link`=0;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (93640, 0, 0, 'Thank you, traveler. All is not yet lost.', 12, 0, 100, 449, 0, 52279, 0, 95323, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (93644, 0, 0, 'Elothir be with you, friend of the grove.', 12, 0, 100, 449, 0, 52280, 0, 95324, 0, '');
UPDATE `smart_scripts` SET `target_param1`='50000' WHERE  `entryorguid`=93839 AND `source_type`=0 AND `id`=4 AND `link`=0;
UPDATE `smart_scripts` SET `target_o`='2.05303' WHERE  `entryorguid`=95659 AND `source_type`=0 AND `id`=9 AND `link`=10;
UPDATE `smart_scripts` SET `event_type`='10', `event_param2`='10', `event_param3`='2000', `event_param4`='2000', `action_type`='33', `action_param1`='66220', `action_param2`='0', `action_param3`='0', `action_param4`='0', `target_type`='7', `comment`='Mayor Honeydew' WHERE  `entryorguid`=66220 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (66220, 0, 1, 0, 10, 0, 100, 0, 1, 10, 2000, 2000, 0, '', 33, 66220, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Mayor Honeydew');
UPDATE `smart_scripts` SET `link`='2', `event_type`='10', `event_param1`='0', `event_param2`='10', `event_param3`='2000', `event_param4`='2000', `action_type`='80', `action_param1`='6591000', `action_param2`='0', `action_param3`='0', `action_param4`='0', `comment`='q31736 - Sunke Khang' WHERE  `entryorguid`=65910 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65910, 0, 1, 2, 10, 0, 100, 0, 1, 10, 2000, 2000, 0, '', 80, 6591000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'q31736 - Sunke Khang');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65910, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 65910, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'q31736 - Sunke Khang');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6591000, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'q31736 - Sunke Khang');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (65910, 0, 0, 'Just a moment, Teng. We have... a visitor.', 12, 0, 100, 0, 0, 0, 0, 0, 0, 'q31736 - Sunke Khang');


DELETE FROM `gameobject_template_locale` WHERE (`locale`='zhCN' AND `entry` IN (260282,247038,247037,246984,225627,252795,246953,355229,254938,252819,252807,252859,247985,253279,252239,268875,268876,268813,213804,215184,215182,211540,213814,210503,213803,212859,211361,268808,268807,268806,268805,259031,215461,215460,213503,212506,215966,215965,215964,211175,212487,211172,211171,211170,211508,212771,212484,212664,212774,212773,212772,212777,212776,215183,215181,211643,214864,215843,214893,210804,214894,215756,268443,267599,267035,266978,266951,267905,269151,269150,269152,267902,267907,267899,267904,267901,267906,267903,267900,210005,242645,245087,242328,250107,249380,253162,255342,254269,240690,250091,248092,242658,242657,258323,253553,258690,268453,311341,204144,203823,194615,194617,204732,204731,204728,267771,267180,267041,259263,251318,268458,257984,257985,267492,251310,257987,269125));
INSERT INTO `gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `unk1`, `VerifiedBuild`) VALUES
(260282, 'zhCN', '天启外观', '', '', 42010),
(247038, 'zhCN', '黑脓菇', '投掷', '', 42010),
(247037, 'zhCN', '不朽啤酒花', '投掷', '', 42010),
(246984, 'zhCN', '奥丁的大锅', '喝水中', '', 42010),
(225627, 'zhCN', '营火', '', '', 42010),
(252795, 'zhCN', '神器调查笔记', '', '', 42010),
(246953, 'zhCN', '奥丁的大锅', '收集中', '', 41793),
(355229, 'zhCN', '通往奥利波斯的传送门', '', '', 41793),
(254938, 'zhCN', '篝火', '', '', 41793),
(252819, 'zhCN', '小宝箱', '正在打开', '', 41793),
(252807, 'zhCN', '小宝箱', '正在打开', '', 41793),
(252859, 'zhCN', '亡灵书', '取回', '', 41793),
(247985, 'zhCN', '囚笼', '正在破坏', '', 41793),
(253279, 'zhCN', '篝火', '', '', 41793),
(252239, 'zhCN', '船只残骸', '搜索中', '', 41793),
(268875, 'zhCN', '孤夜思', '', '', 42010),
(268876, 'zhCN', '樱花', '', '', 42010),
(268813, 'zhCN', '月光百合', '收集中', '', 42010),
(213804, 'zhCN', '营火', '', '', 42010),
(215184, 'zhCN', '铁砧', '', '', 42010),
(215182, 'zhCN', '熔炉', '', '', 42010),
(211540, 'zhCN', '联盟军旗', '', '', 42010),
(213814, 'zhCN', '营火', '', '', 42010),
(210503, 'zhCN', '营火', '', '', 42010),
(213803, 'zhCN', '营火', '', '', 42010),
(212859, 'zhCN', '集合石', '', '', 42010),
(211361, 'zhCN', '营火', '', '', 42010),
(268808, 'zhCN', '爪印', '调查', '', 42010),
(268807, 'zhCN', '爪印', '调查', '', 42010),
(268806, 'zhCN', '爪印', '调查', '', 42010),
(268805, 'zhCN', '爪印', '调查', '', 42010),
(259031, 'zhCN', '通往暴风城的传送门', '', '', 42010),
(215461, 'zhCN', '铁砧', '', '', 42010),
(215460, 'zhCN', '熔炉', '', '', 42010),
(213503, 'zhCN', '营火', '', '', 42010),
(212506, 'zhCN', '营火', '', '', 42010),
(215966, 'zhCN', '凳子', '', '', 42010),
(215965, 'zhCN', '凳子', '', '', 42010),
(215964, 'zhCN', '凳子', '', '', 42010),
(211175, 'zhCN', '营火', '', '', 42010),
(212487, 'zhCN', '篝火', '', '', 42010),
(211172, 'zhCN', '武器架', '', '', 42010),
(211171, 'zhCN', '铁砧', '', '', 42010),
(211170, 'zhCN', '熔炉', '', '', 42010),
(211508, 'zhCN', '部落军旗', '', '', 42010),
(212771, 'zhCN', '营火', '', '', 42010),
(212484, 'zhCN', '篝火', '', '', 42010),
(212664, 'zhCN', '凳子', '', '', 42010),
(212774, 'zhCN', '熔炉', '', '', 42010),
(212773, 'zhCN', '铁砧', '', '', 42010),
(212772, 'zhCN', '营火', '', '', 42010),
(212777, 'zhCN', '营火', '', '', 42010),
(212776, 'zhCN', '营火', '', '', 42010),
(215183, 'zhCN', '铁砧', '', '', 42010),
(215181, 'zhCN', '铁砧', '', '', 42010),
(211643, 'zhCN', '铁砧', '', '', 42010),
(214864, 'zhCN', '营火', '', '', 42010),
(215843, 'zhCN', '部落旗帜', '', '', 42010),
(214893, 'zhCN', '熔炉', '', '', 42010),
(210804, 'zhCN', '通往奥格瑞玛的传送门', '', '', 42010),
(214894, 'zhCN', '铁砧', '', '', 42010),
(215756, 'zhCN', '运酒车', '', '', 42010),
(268443, 'zhCN', '不合格的破坏器', '', '', 42010),
(267599, 'zhCN', '一堆消失粉', '', '', 42010),
(267035, 'zhCN', '一桶风暴蜜酒', '', '', 42010),
(266978, 'zhCN', '推拉门', '', '', 42010),
(266951, 'zhCN', '一桶风暴蜜酒', '取回', '', 42010),
(267905, 'zhCN', 'Doodad_PA_GhostBrewery_VermingBossKeg001', '', '', 42010),
(269151, 'zhCN', '碎片', '', '', 42010),
(269150, 'zhCN', '碎玻璃', '', '', 42010),
(269152, 'zhCN', '碎片', '', '', 42010),
(267902, 'zhCN', '大门', '', '', 42010),
(267907, 'zhCN', '大门', '', '', 42010),
(267899, 'zhCN', '大门', '', '', 42010),
(267904, 'zhCN', '大门', '', '', 42010),
(267901, 'zhCN', '大门', '', '', 42010),
(267906, 'zhCN', '大门', '', '', 42010),
(267903, 'zhCN', '大门', '', '', 42010),
(267900, 'zhCN', '大门', '', '', 42010),
(210005, 'zhCN', '武器架', '', '', 42010),
(242645, 'zhCN', '小宝箱', '正在打开', '', 42010),
(245087, 'zhCN', '石头', '', '', 42010),
(242328, 'zhCN', '小宝箱', '正在打开', '', 42010),
(250107, 'zhCN', '闪闪发光的宝箱', '正在打开', '', 42010),
(249380, 'zhCN', '军团联络器', '', '', 42010),
(253162, 'zhCN', '集合石', '', '', 42010),
(255342, 'zhCN', '篝火', '', '', 42010),
(254269, 'zhCN', '看守者猫头鹰', '', '', 42010),
(240690, 'zhCN', '宝箱', '正在打开', '', 42010),
(250091, 'zhCN', '小宝箱', '正在打开', '', 42010),
(248092, 'zhCN', '测量工具盒', '收集中', '', 42010),
(242658, 'zhCN', '林达斯的精加工台', '', '', 42010),
(242657, 'zhCN', '林达斯的符文肠线', '收集', '', 42010),
(258323, 'zhCN', '营火', '', '', 42010),
(253553, 'zhCN', '长椅', '', '', 42010),
(258690, 'zhCN', '小宝箱', '正在打开', '', 42010),
(268453, 'zhCN', '上层精灵考古发现', '', '', 42010),
(311341, 'zhCN', '邮箱', '', '', 41793),
(204144, 'zhCN', '大篝火', '', '', 41793),
(203823, 'zhCN', '火盆', '', '', 41793),
(194615, 'zhCN', '营火', '', '', 41793),
(194617, 'zhCN', '营火', '', '', 41793),
(204732, 'zhCN', '火盆', '', '', 41793),
(204731, 'zhCN', '火盆', '', '', 41793),
(204728, 'zhCN', '火盆', '', '', 41793),
(267771, 'zhCN', '手术台', '', '', 41793),
(267180, 'zhCN', '邪火炸弹', '放置', '', 41793),
(267041, 'zhCN', '灌注邪能的火药箱', '拾起', '', 41793),
(259263, 'zhCN', '椅子', '', '', 41793),
(251318, 'zhCN', '营火', '', '', 41793),
(268458, 'zhCN', '伪造的指令', '种植', '', 41793),
(257984, 'zhCN', '营火', '', '', 41793),
(257985, 'zhCN', '营火', '', '', 41793),
(267492, 'zhCN', '伪造的指令', '种植', '', 41793),
(251310, 'zhCN', '营火', '', '', 41793),
(257987, 'zhCN', '营火', '', '', 41793),
(269125, 'zhCN', '森提纳克斯号传送门', '', '', 41793);

UPDATE `gameobject_template_locale` SET `VerifiedBuild`=42010 WHERE (`locale`='zhCN' AND `entry` IN (212616,249745,212617,248576,210102,248556,252186,245642,251676,209658,209656,209663,209661,245655,245654,245653,212595,212586,212585,212584,212583,212581,212580,212572,212569,212568,212567,212564,212593,212590,212587,212594,212591,212588,268454,212592,212576,212589,212579,212578,212571,212570,212566,212565,212563,212562,212561,212560,212559,212582,209660,248501,216723,245073,245074,265511,245083,245125,245077,245131,209363,245128,265512,245084,245081,245085,213439,245055,245072,213532,245132,245129,245097,253076,245078,245098,245082,245130,251315,268611,245076,245108,209466,245636,209353,209313,215798,214767,212485,210915,215865,215783,212650,213354,212649,211226,210038,212480,214772,214773,214771,334659,211325,211324,211323,211516,214744,211446,177664,214408,212899,211602,211598,215797,211601,209328,211597,211559,211346,211345,211344,211342,209351,211343,212175,210054,213331,211967,211900,211528,211965,211901,211898,211712,211707,211704,211963,211703,213793,211688,214464,211702,211541,212903,213379,211124,215963,214764,214763,211539,211340,214426,213382,214423,212486,211538,211537,214766,214765,211536,210869,210870,211615,211531,215699,211530,211614,211693,210868,211668,215381,215382,209311,214535,214534,211664,216309,214416,214410,212775,214414,214163,214411,211699,211778,212177,215131,215391,214415,213748,209815,209814,212736,212171,211990,215844,215764,215318,186457,186456,209578,209349,212186,215849,214569,214566,215859,212624,212183,215563,212621,214570,214567,215422,214987,215423,215860,212625,212184,215564,215686,215850,212622,216302,212181,215683,215687,215693,214988,212623,212182,215562,215684,204658,323855,323852,293736,282416,323849,223814,204646,332214,323853,293737,282417,323850,204650,204163,204663,204647,323854,292758,293774,223739,323851,204651,293735,293339,206608,206609,292776,206610,259395,259394,259393,209657,244774,267266,265572,269271,268678,252412,268448,241726,268412,241743,268563,268544,268538,268534,268532,268571,268568,268567,268566,268564,268561,268559,268557,268555,268554,268550,268540,268539,268536,268535,268533,268569,268565,268542,268560,268551,268552,268527,268553,268543,268570,268546,268548,268547,268572,268558,268556,268549,268537,268541,255344,234085,267918,267912,267911,234086,234084,269141,269140,241535,268703,269054,268526,241523,252565,267785,293837,246493,269052,258687,210101,216301,214568,212615,212620,214564,212614,212619,214565,212618,214413,214409,209364,209989,209988,252559,242507,268436,269887,231252,231251,240569,240567,250081,239418,239419,240638,258972,251829,241907,241906,251144,240629,248821,240646,240630,245791,240267,240425,250092,239987,249771,245574,239959,245572,245573,251168,242530,249211,312210,257289,252198,266111,266110,242666,251959,245650,243636,242660,245843,247421,246695,246692,246694,246680,247396,240652,224687,245637,242529,242450,266417,249853,241128,242347,242279,244776,248931,240519,254128,252558,252340,251831,249360,240637,240112,258954,245473,266891,325979,325978,254279,255795,253549,253548,239970,253552,253551,253564,239338,241859,239332,237017,246285,243562,246352,246284,251769,243564,254246,190228,241902,241909,241901,249917,249916,254268,254266,254265,254263,254264,254262,254267,254261,250433,251784,244875,254028,250269,250266,245324,253538,250267,254024,250593,250592,250591,250603,252434,249704,240113,258983,244865,233708,252563,240552,250087,250088,245484,239744,239748,239341,250264,245485,245483,240644,238979,238940,239745,239451,224375,245486,250090,257296,253555,240642,239693,239692,253556,248091,248090,239985,239984,243563,243393,240291,239452,236931,250098,253542,253544,253546,253545,253543,253541,253547,251496,251186,245862,245221,241908,253280,240645,251183,239122,253554,246206,239333,233319,251958,246732,240346,256790,246205,243009,258325,249761,259237,246488,251643,250262));
UPDATE `gameobject_template_locale` SET `VerifiedBuild`=41793 WHERE (`locale`='zhCN' AND `entry` IN (216301,214568,214564,251991,245847,245698,245697,245696,245695,245699,246272,258968,245700,246145,245702,246144,244664,245701,245884,255345,252332,244902,251762,248784,268759,254125,252824,240033,245573,245572,239959,239987,240424,240425,250092,249771,240267,252563,239693,239692,244774,246352,246284,241859,239970,255795,253564,253552,253551,253549,253548,239338,239332,237017,254279,251769,256790,246488,325979,239985,245473,266891,240291,239984,239452,250262,325978,204608,204205,204609,204602,269949,206995,204603,204209,204214,204206,204210,204207,204600,204601,204215,281340,206725,206726,204208,204201,206727,205109,204211,204202,205108,204213,204212,206737,204665,205142,204662,204655,204193,204645,204666,204664,204658,323855,323852,293736,282416,323849,340644,223814,204646,332214,323853,293737,282417,323850,204650,204163,204663,204647,208806,323854,293774,292758,223739,323851,204651,293735,293339,206608,206609,292776,206610,249853,257289,242644,245120,245676,251407,248977,248976,252010,246703,246704,247044,252260,266296,252448,252822,241435,254063,241635,241634,241633,241436,252053,252052,252051,248767,251738,255223,240283,240282,240281,236833,253163,253094,253578,266465,259759,253580,253579,253575,253577,253576,241585,241148,246870,245671,245670,245669,253257,245668,245667,241207,241429,241462,245672,241146,244829,240365,251257,246924,246922,241149,259754,241564,241665,253242,243842,243819,243814,242444,243835,243823,243820,241705,243822,243818,243845,243817,251792,241153,241904,251522,241680,244912,244720,241528,244719,252163,244887,244717,244718,248775,244731,251714,254021,244729,244703,244681,252237,248601,244704,244696,243799,251188,251713,251155,253244,251285,251277,251276,251275,251221,251220,251219,251218,251189,266466,266054,253250,244872,244859,243062,253246,243571,251571,244904,242673,253247,243456,243454,253574,253573,253582,253581,252837,252838,214565,212615,212620,212614,212619,212616,212618,206706,206381,50805,50804,50803,142140,206585,206625,178147,181690,194458,194997,194297,140112,140109,6290,6289,140111,140110,6291,194482,6292,207889,196837,203471,58389,58388,202819,206734,205371,205230,281107,268690,204625,204624,207101,203977,307614,298892,273293,273286,243460,243459,339344,207100,207099,273300,206709,206708,243462,243461,204729,204620,203979,350063,278281,207098,207097,207096,207094,204730,204627,204626,179707,204710,204623,204611,202590,206735,204723,204709,204639,204628,204622,204621,206732,204725,204724,204640,197257,206547,197307,206730,202809,202808,202799,197259,206740,197309,197285,197311,197276,197286,197315,197322,206548,197314,197278,293684,205056,197310,197280,197207,197279,206741,197312,202717,206538,206529,197313,206549,105576,197287,197284,197323,206736,206546,206545,206539,206530,204634,204633,204632,204631,204204,204203,207414,206729,204198,204197,204196,204195,204194,204192,204191,293851,293850,204610,204607,204606,204605,204200,175787,175788,204199,204604,204656,203969,216057,242175,242507,265585,267040,268418,243247,250081,240346,251186,251145,251320,257986,235671,251144,251129,251026,250867,240638,258972,251829,241907,241906,239122,233319,248821,250080,239418,239333,251958,246732,240569,240567,239419,239328,231252,231251,259425,254237,249907,259412,259413,259409,259405,259424,259421,259420,259432,259429,259428,250897,258907,252188,252798,246387,249694,246670,247545,251966,246198,252044,249427,246386,247547,252018,246142,249382,268621,249426,253044,246196,250898,247546,244798,259434,259414,259431,249518,259422,259418,259399,259430,259436,259417,259437,249517,259423,259419,259427,259433));
UPDATE `gameobject_template_locale` SET `castBarCaption`='检查', `VerifiedBuild`=41793 WHERE (`entry`=249356 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `castBarCaption`='收集', `VerifiedBuild`=41793 WHERE (`entry`=244853 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `castBarCaption`='收集中', `VerifiedBuild`=42010 WHERE (`locale`='zhCN' AND `entry` IN (210887,210759));
UPDATE `gameobject_template_locale` SET `name`='Faction Hub Taken', `VerifiedBuild`=42010 WHERE (`locale`='zhCN' AND `entry` IN (211213,211212,211210,211209,211205,211204,211241,211240,211230,211229,211228,211231));
UPDATE `gameobject_template_locale` SET `name`='一大群冰冻虎皮丝足鱼', `VerifiedBuild`=42010 WHERE (`entry`=218636 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `name`='冰冻虎皮丝足鱼', `VerifiedBuild`=42010 WHERE (`entry`=218635 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `name`='Zeppelin, Horde (The Mighty Wind)', `VerifiedBuild`=42010 WHERE (`entry`=186238 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `name`='一桶庆祝美酒', `VerifiedBuild`=42010 WHERE (`locale`='zhCN' AND `entry` IN (268379,268378,268377));
UPDATE `gameobject_template_locale` SET `castBarCaption`='燃烧', `VerifiedBuild`=42010 WHERE (`entry`=241682 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `castBarCaption`='正在打开', `VerifiedBuild`=42010 WHERE (`entry`=240609 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `castBarCaption`='检查', `VerifiedBuild`=42010 WHERE (`entry`=249356 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `castBarCaption`='正在破坏', `VerifiedBuild`=42010 WHERE (`entry`=242275 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `castBarCaption`='收集中', `VerifiedBuild`=41793 WHERE (`entry`=181686 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `name`='Zeppelin, Horde (The Mighty Wind)', `VerifiedBuild`=41793 WHERE (`entry`=186238 AND `locale`='zhCN');
UPDATE `gameobject_template_locale` SET `castBarCaption`='敲门', `VerifiedBuild`=41793 WHERE (`locale`='zhCN' AND `entry` IN (249401,249908,249423));
UPDATE `gameobject_template_locale` SET `name`='渡鸦之眼', `castBarCaption`='使用', `VerifiedBuild`=41793 WHERE (`entry`=252017 AND `locale`='zhCN');

SET NAMES 'latin1';
SET NAMES 'utf8';
DELETE FROM `quest_template_locale` WHERE (`locale`='zhCN' AND `ID` IN (53233,45735,45734,45733,45732,45731,45730,45729,45643,45642,45641,45639,44185,45657,45656,45654,45651,8));
INSERT INTO `quest_template_locale` (`ID`, `locale`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) VALUES
(53233, 'zhCN', '阿拉希捐赠：霜纹弹药', '为伯拉勒斯港的诺波尔·拴链收集$1oa份霜纹弹药。', '嘿！\n\n上层的信息已经传递过来了——我们需要更多的弹药！要火力猛一点的。要让敌人出乎意料！\n\n我听说有种特殊的冰霜弹药，只有经验最丰富的工程师才能制造。如果你能给我送来一些这种弹药，我敢肯定我们的弹药军官会非常高兴！\n\n他们甚至可能会给我留一份来做检查！', '', '', '', '', '', '', 42010),
(45735, 'zhCN', '精瘦腿肉', '', '', '', '', '', '', '', '', 42010),
(45734, 'zhCN', '生裂蹄牛肉', '', '', '', '', '', '', '', '', 42010),
(45733, 'zhCN', '生虎排', '', '', '', '', '', '', '', '', 42010),
(45732, 'zhCN', '鳄鱼尾', '', '', '', '', '', '', '', '', 42010),
(45731, 'zhCN', '冻肉', '', '', '', '', '', '', '', '', 42010),
(45730, 'zhCN', '松脆蜘蛛腿', '', '', '', '', '', '', '', '', 42010),
(45729, 'zhCN', '沙虫的肉', '', '', '', '', '', '', '', '', 42010),
(45643, 'zhCN', '精瘦腿肉', '', '', '', '', '', '', '', '', 42010),
(45642, 'zhCN', '生裂蹄牛肉', '', '', '', '', '', '', '', '', 42010),
(45641, 'zhCN', '生虎排', '', '', '', '', '', '', '', '', 42010),
(45639, 'zhCN', '冻肉', '', '', '', '', '', '', '', '', 42010),
(44185, 'zhCN', '通缉：萨纳尔', '', '', '', '', '', '', '', '', 42010),
(45657, 'zhCN', '水晶尘', '', '', '', '', '', '', '', '', 42010),
(45656, 'zhCN', '次级风石', '', '', '', '', '', '', '', '', 42010),
(45654, 'zhCN', '安其拉：克苏恩', '', '', '', '', '', '', '', '', 42010),
(45651, 'zhCN', '安其拉废墟：奥斯里安', '', '', '', '', '', '', '', '', 42010),
(8, 'zhCN', '潜行者的交易', '把笔迹潦草的信件送给布瑞尔的旅店老板瑞尼。', '嘿，伙计！帮我一个忙如何？大堆僵尸和蜘蛛实在让我应接不暇。$B$B现在我手里有一封要送到布瑞尔的信……送给一个名叫瑞尼的还是别的什么的旅店老板，别管她姓什么啦。$B$B总之，那里是一个舒适而温暖的小地方，里面都是些希望重返真实自我的瘟疫受害者，当然那里也是你休息的好去处。你应该自己去看看……如果你愿意跑一趟，我会给你不错的报酬的。', '', '', '', '', '', '', 42010);

UPDATE `quest_template_locale` SET `VerifiedBuild`=42010 WHERE (`locale`='zhCN' AND `ID` IN (53238,53219,25248,24847,24845,24841,24839,24821,24819,11104,8194,41703,31833,53224,25249,43477,44016,44302,44189,44048));
UPDATE `quest_template_locale` SET `VerifiedBuild`=41793 WHERE (`locale`='zhCN' AND `ID` IN (52967,50823,50740,46001,25249,24845,44305,44015,43460));

SET NAMES 'latin1';
SET NAMES 'utf8';
DELETE FROM `quest_offer_reward_locale` WHERE (`locale`='zhCN' AND `ID` IN (43359,41739,41087,41911,41059,41040,43151,41039,41038,41738,41737,41736,41854,41853,41851,41852,41850,41849,46350,46349,46348,46347,46346,46344,46343,46342,46341,46353,45790,45771,45442,46320,45545,45449,45574,45459,45404,45440,41910,41086,42420,46103,46779,46058,46827,45629,45576,45571,46326,45848,46324,46323,45073,46322));
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES
(43359, 'zhCN', '愿你的武器的新力量能在今后的路途上为你披荆斩棘。', 42010),
(41739, 'zhCN', '我们一起经历了无数考验，$n。$B$B如果没有你的帮助，我就不可能为我的师傅报仇，也无法鼓起勇气酿造她的传奇蜜酒。$B$B多亏了你，我们会有足够的风暴蜜酒来供应整座寺院。$B$B说起来，我觉得我们俩的战斗风格十分相似。$B$B你是否愿意让我加入你的行列？', 42010),
(41087, 'zhCN', '我不知道你怎么想，大宗师，但我认为经过了这一切之后，我们应该享受一下自己的付出换来的休憩了。', 42010),
(41911, 'zhCN', '唔唔，光是闻一闻这些啤酒花都醉了！这一批质量肯定不错，我就知道。', 41793),
(41059, 'zhCN', '跟我说说，英灵殿真的像传说中那么壮观吗？不管怎样，你已经拿到了大锅。我们可以开始酿酒了。', 41793),
(41040, 'zhCN', '你好，勇士。$B$B我一直在远处观察你。', 41793),
(43151, 'zhCN', '感谢你，$c。我会好好使用这些东西的。', 41793),
(41039, 'zhCN', '上一次看到这些笔记的时候，我还只是个小孩子。$B$B我现在能够理解上面的大部分内容。$B$B要获得所有的东西十分不易，不过我相信我们可以做到，$n。', 41793),
(41038, 'zhCN', '我的师傅受人爱戴，她已经把毕生所学都传授给我。$B$B但是，她藏得密不透风的风暴蜜酒配方却在她传授给我之前就被人偷走了。', 41793),
(41738, 'zhCN', '<赛莱拉凝望着门外的天空，似乎想着某件尚未完成的任务而出神。她发出一声几乎听不到的叹息。>$B$B<然后，她用刚毅的目光盯着你。>$B$B我属于这里。$B$B我会为你而战。', 41793),
(41737, 'zhCN', '啊，能够全身而退的感觉真好。$B$B几杯酒下肚，感觉好多了。$B$B我的命是你救的，大宗师。我会永远效忠于你。只要你开口，我必定全力以赴。', 41793),
(41736, 'zhCN', '我很荣幸能亲眼目睹你的风采，$n大宗师。我怀着无比坚定的决心，誓要铲除凯丽翠丝夫人和燃烧军团。$B$B我认为，我们可以效法维库人的风暴蜜酒，研制自己的配方，以其人之道还治其人之身。$B$B你愿意让我跟你一起作战吗？', 41793),
(41854, 'zhCN', '这真是天大的好消息，$n！$B$B你不但破坏了燃烧军团的计划，还拯救了无数的生命。$B$B另外，在你救出的武僧当中，有三位是我们近年训练出来的精英。$B$B教派又欠你一份人情。', 41793),
(41853, 'zhCN', '啊，谢谢你们救了我。我以为自己肯定会被恶魔吃掉。', 41793),
(41851, 'zhCN', '<赛莱拉深深鞠躬。>$B$B打得漂亮。', 41793),
(41852, 'zhCN', '非常好，大宗师！$B$B一个都没少。', 41793),
(41850, 'zhCN', '很好，你成功了。赛莱拉比十个训练有素的武僧更有价值。', 41793),
(41849, 'zhCN', '你都当上大宗师了？哎呀，反正我也没空当的！$B$B总之，我想尽办法才从那些嗜血的家伙手里逃了出来，但是还有好多同伴仍然身处险境。$B$B那些燃烧军团恶魔打算献祭俘虏，掠夺他们的灵魂。$B$B我们必须去救他们！', 41793),
(46350, 'zhCN', '如果能让我驮着你从神龛走向五晨寺，那真是我莫大的荣幸。这条道路是举行仪式的必经之路，在你之前，我曾经陪伴过许多位大宗师走过这里。', 42010),
(46349, 'zhCN', '谢谢你。接下来请允许我为你寻找答案。', 42010),
(46348, 'zhCN', '你好。大宗师莅临，真令我蓬荜生辉。请问有何贵干？', 42010),
(46347, 'zhCN', '影踪派很感谢你，大宗师。$b$b我们继续……你脚上的黑色残留物是什么？', 42010),
(46346, 'zhCN', '我已经开始冥想了，大宗师。但是我们也许还有另一条线索……', 42010),
(46344, 'zhCN', '发臭的土山头有了新点子！就让他的背包继续烧着好了！$b$b只要背包还在燃烧，就不会有别的倒霉事发生！燃烧的背包就是发臭的土山头的新幸运符！$b$b噢，你在找那只大猫？发臭的土山头看到过一只亮闪闪的大猫。他往西面的禅院去了。土山头帮到你了吗？', 42010),
(46343, 'zhCN', '我这把老骨头得休息一下了，但我们的旅程又前进了一步。$b$b那边那个土地精看起来很需要人帮忙。趁我休息的时候，你不妨去跟他谈一谈吧？', 42010),
(46342, 'zhCN', '生命就这样毫无意义地消逝了，这又是为了什么？$b$b<卜大师面色凝重地看着传送门，摇了摇头。>', 42010),
(46341, 'zhCN', '谢谢你聆听这段故事，并给我买喝的。', 42010),
(46353, 'zhCN', '谢谢你赶来，大宗师。', 42010),
(45790, 'zhCN', '我会想念酒仙布兰琪的。她教导我要勇敢追逐梦想。$b$b而我一直都想要学习织雾之道……$b$b大宗师$n，如果你愿意收留我，我会保护你和我们的教派不受任何伤害的。', 42010),
(45771, 'zhCN', '大宗师$n，我这把老骨头已经不中用了。我们的未来就靠你了，你得继续与军团战斗。$b$b只要你依旧在黑暗中闪烁光芒，希望就永远存在！', 42010),
(45442, 'zhCN', '看到我们的人恢复健康，我的心情也好起来了。', 42010),
(46320, 'zhCN', '嗯，我看看……不错，我想我能够中和这些毒药！', 42010),
(45545, 'zhCN', '炸飞恶魔总是这么爽，是吧？哈！', 42010),
(45449, 'zhCN', '谢谢你。与我们作对的恶魔又少了一只。', 42010),
(45574, 'zhCN', '希望这些足够调制出解药，医治我们濒死的武僧！', 42010),
(45459, 'zhCN', '太好了，你成功了！', 42010),
(45404, 'zhCN', '这种事情怎么会发生在我们，尤其是我身上？我从没想过我会死得这么早……而且这么惨……$b$b我们已经尝试过为倒下的朋友使用清创生血，但这种毒药太强大了。$b$b我们的教派正处于生死关头，我无法在这种时候安息。我很抱歉，让你失望了，大宗师$n。', 42010),
(45440, 'zhCN', '呼。庆祝美酒比*嗝儿*我印象中的要烈很多啊。*嗝儿*', 42010),
(41910, 'zhCN', '这水经过每个冬天刚刚落下的雪的过滤，是我们美酒的关键原料！', 42010),
(41086, 'zhCN', '大宗师，你真了不起！你胜利的喜报像雪片一样不断飞来。如果没有你的帮助，我们在破碎群岛的许多岗哨肯定已经陷落。', 42010),
(42420, 'zhCN', '法罗迪斯宫廷感谢你。', 42010),
(46103, 'zhCN', '你没法知道某个盟友是不是恐惧魔王的亡灵爪牙，只有把他们剖开才行。', 41793),
(46779, 'zhCN', '我们的力量在增长。', 41793),
(46058, 'zhCN', '你处置这些恶魔真是干净利落，我希望你能这样对付更多的恶魔。只要军团还在我们的世界横行，他们就会继续腐化我们的人民。$b$b我想继续与你合作，终结这场疯狂。我的利刃属于你，$ct。', 41793),
(46827, 'zhCN', '我们讨论了你最近的战绩，$n。我们在暗影中行动，所以经常被忽视。但是没有我们，抗魔联军要对付的恶魔就会多得多。$b$b我们不需要名声。战绩就是我们的奖励。', 41793),
(45629, 'zhCN', '就算我自己动手，也没法做得更好了。干得漂亮，$ct。', 41793),
(45576, 'zhCN', '啊，我的利刃在欢唱。该执行计划了，$ct。', 41793),
(45571, 'zhCN', '很好，你来了。我们开始吧。', 41793),
(46326, 'zhCN', '欢迎回来，$ct。我想你已经拿到火药了？', 41793),
(45848, 'zhCN', '呱！特塞斯太差劲！坏海盗！坏海盗！$b$b$n，好海盗，呱呱呱！我跟你混了！', 41793),
(46324, 'zhCN', '他们就那样乐呵呵地离开了……真是群蠢货。', 41793),
(46323, 'zhCN', '太好了……火药到手了。它对我的计划至关重要！', 41793),
(45073, 'zhCN', '谢谢你，朋友。报了仇之后，我感觉好多了。', 41793),
(46322, 'zhCN', '终于……轮到我闪亮登场了。我们要大干一场。', 41793);

UPDATE `quest_offer_reward_locale` SET `VerifiedBuild`=42010 WHERE (`locale`='zhCN' AND `ID` IN (47137,43179,39985,42422));
UPDATE `quest_offer_reward_locale` SET `VerifiedBuild`=41793 WHERE (`ID`=47137 AND `locale`='zhCN');

DELETE FROM `quest_objectives_locale` WHERE (`locale`='zhCN' AND `ID` IN (288309,288304));
INSERT INTO `quest_objectives_locale` (`ID`, `locale`, `QuestId`, `StorageIndex`, `Description`, `VerifiedBuild`) VALUES
(288309, 'zhCN', 45657, 0, '把5个水晶尘交给部落收集者', 42010),
(288304, 'zhCN', 45656, 2, '消灭召唤出的圣殿骑士', 42010);

UPDATE `quest_objectives_locale` SET `VerifiedBuild`=42010 WHERE (`locale`='zhCN' AND `ID` IN (282703,269076,286165));
UPDATE `quest_objectives_locale` SET `VerifiedBuild`=41793 WHERE (`locale`='zhCN' AND `ID` IN (341745,333727,333726,285292));

DELETE FROM `quest_greeting_locale` WHERE (`ID`=117305 AND `Type`=0 AND `locale`='zhCN') OR (`ID`=119822 AND `Type`=0 AND `locale`='zhCN');
INSERT INTO `quest_greeting_locale` (`ID`, `Type`, `locale`, `Greeting`, `VerifiedBuild`) VALUES
(117305, 0, 'zhCN', '这个地方让我感到恐惧。我们还是快点完事吧！', 42010),
(119822, 0, 'zhCN', '终于……到了我发光的时候了。我们要大干一场。', 41793);

DELETE FROM `quest_request_items_locale` WHERE (`locale`='zhCN' AND `ID` IN (41059,43151,41039,41038,46349,46344,45442,45574,47606,46323));
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(41059, 'zhCN', '你通过试炼了吗？', 41793),
(43151, 'zhCN', '你有皮革要交易吗？', 41793),
(41039, 'zhCN', '你拿到配方了吗？', 41793),
(41038, 'zhCN', '有何贵干？', 41793),
(46349, 'zhCN', '月光百合收集得怎么样了，大宗师？', 42010),
(46344, 'zhCN', '找到我的幸运符了吗？这里好像越来越热了。', 42010),
(45442, 'zhCN', '我们的药酒有用吗？', 42010),
(45574, 'zhCN', '你找到我们能用的样本了吗？', 42010),
(47606, 'zhCN', '天呐，已经搞定了！？', 41793),
(46323, 'zhCN', '拿到了吗？', 41793);

DELETE FROM `page_text_locale` WHERE (`locale`='zhCN' AND `ID` IN (4993,4982,4980,4979,4978,4977,4976,4975,4974,4973));
INSERT INTO `page_text_locale` (`ID`, `Text`, `locale`, `VerifiedBuild`) VALUES
(4993, '第二十七天\n我们总算回来了。要塞一片混乱。郭雅的补给一直没有抵达。邓布林认为戒严令是个好主意。他现在听命于厄菲阿尔了。拉希奥已经不知所踪，还带走了几个我最好的手下。现在是时候挽起袖子大干一场，让一切重回正轨了。', 'zhCN', 41793),
(4982, '第二十五天\n赢了！爱德华在竞技场里简直就是个打不死的沙包。', 'zhCN', 41793),
(4980, '第二十一天\n今天收到了一封古尔戈索克的来信，邀请我们参加鲜血竞技场的对决。我很想让他们看看联盟的实力。我打算把奖金给郭雅。我已经带着爱德华和克劳迪娅去为了“乌瑞恩国王”而战。邓布林留下负责安保。', 'zhCN', 41793),
(4979, '第十六天\n我把一些守卫叫到一边并给了他们极其可观的薪水，让他们24小时盯着拉希奥。但他们却低下了头，说拉希奥给了他们更恐怖的薪水，让他们24小时盯着我。那个狗杂种……', 'zhCN', 41793),
(4978, '第十五天\n军营完成了。军械库正在建造当中。早上又来了一大批物资 - 这些都是拉希奥送来的“礼物”，协助我们建造旅店。他是怎么办到的？我去找了拉希奥，他告诉我要盯着点厄菲阿尔。反正他们俩我都不相信。', 'zhCN', 41793),
(4977, '第十二天\n爱德华爵士今天来到了城镇中心，和他一起来的还有黑王子拉希奥。很难看出谁抓住了谁。拉希奥希望能在我的要塞里避难，声称他干了一些让食人魔抓狂的事情。爱德华吼叫着说拉希奥是联盟的难民。克劳迪娅女士和她的士兵则举起了枪作为回应。气氛很紧张。我告诉拉希奥，他将受到“客人般”的欢迎，住在有全天守卫监视的屋子里。另外，我也发信给了国王。黑龙现在正乖乖待在我的要塞里——还能出什么乱子呢？', 'zhCN', 41793),
(4976, '第七天\n钢铁部落来袭！感谢圣光我们及时造起了城墙。邓布林在战斗中绝对是个怪物。尽管如此，我们还是失去了许多优秀的士兵，许多人都是后背受伤。厄菲阿尔在攻击结束后失踪了几个小时。他似乎有些不太对劲。我给了劳工一天的时间掩埋尸体。建造工作会在明天继续。军营差不多要完成了。还有足够的物资建造一所军械库。', 'zhCN', 41793),
(4975, '第四天\n守备官玛尔拉德今天来拜访我们了。他对我们的进度感到很高兴。另外，还建议我们派一些劳工前往一座被称为“艾洛多尔”的德莱尼小镇拿一些食物。我拒绝了 - 我怎么可能派我最好的手下穿过半个世界只不过去拿些吃的呢。我已经有了其他打算。那个友好的熊猫人，郭雅夫人已经把几车的食物便宜卖给了我们。情况似乎越来越好了。', 'zhCN', 41793),
(4974, '第二天\n大约十二名伐木工失踪了。唯一一个回来的伐木工肚子上，刺着一根跟我手臂一样长的黄蜂毒刺。邓布林和厄菲阿尔提议带领一支作战小队肃清附近的区域。我派了几个跟班跟他们一起去。我们实在太需要木材了。', 'zhCN', 41793),
(4973, '第一天\n刚刚抵达了海岸，大部分装备完好无损。费恩向我保证这儿是个理想的位置。爱德华和克劳迪娅因为最近的一次鸦人袭击而争吵不休。而厄菲阿尔则痴迷于”能量线”（管它是什么呢）。穿过传送门后，我们甚至连时间都不知道 - 感觉已经到了秋天？无论如何，今天是第一天。', 'zhCN', 41793);

UPDATE `page_text_locale` SET `VerifiedBuild`=42010 WHERE (`ID`=3576 AND `locale`='zhCN');

DELETE FROM `scene_template` WHERE `SceneId` IN (61, 1278, 1679, 1547);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(61, 0, 196, 0),
(1278, 0, 1626, 0),
(1679, 26, 1838, 0),
(1547, 20, 1784, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (43359 /*A Hero's Weapon*/, 41739 /*Champion: Aegira*/, 41087 /*Storm Brew*/, 41911 /*Amaranthine Hops*/, 41059 /*Halls of Valor: Odyn's Cauldron*/, 41040 /*Halls of Valor: The Brewmaster*/, 43151 /*Making A Trade*/, 41039 /*Stolen Knowledge*/, 41038 /*The Mead Master*/, 41738 /*Champion: Sylara Steelsong*/, 41737 /*Champion: Hiro*/, 41736 /*Champion: Angus Ironfist*/, 41854 /*Brick By Brick*/, 41853 /*Zero to Hiro*/, 41851 /*Quelling the Tide*/, 41852 /*No Monk Left Behind*/, 41850 /*The Master of Swords*/, 41849 /*The Iron Fist*/, 46350 /*The Trial of Ban-Lu*/, 46349 /*Lilies for Ryuli*/, 46348 /*The River to Ban-Lu*/, 46347 /*Clean-up on Aisle Sha*/, 46346 /*The Shadow of Ban-Lu*/, 46344 /*Smelly's Luckydo*/, 46343 /*The Trail of Ban-Lu*/, 46342 /*Return to the Broken Peak*/, 46341 /*The Tale of Ban-Lu*/, 46353 /*Master Who?*/, 45790 /*Champion: Almai*/, 45771 /*A Time for Everything*/, 45442 /*Not Felling Well*/, 46320 /*Hope For a Cure*/, 45545 /*Barrel Toss*/, 45449 /*Alchemist Korlya*/, 45574 /*Fel Ingredients*/, 45459 /*Storming the Legion*/, 45404 /*Panic at the Brewery*/, 45440 /*A Brewing Situation*/, 41910 /*Freya's Spring*/, 41086 /*A Peaceful World*/, 42420 /*Court of Farondis*/, 46103 /*Dread Infiltrators*/, 46779 /*Further Advancement*/, 46058 /*Champion: Lilian Voss*/, 46827 /*Meld Into the Shadows*/, 45629 /*This Time, Leave a Trail*/, 45576 /*Rise Up*/, 45571 /*A Bit of Espionage*/, 46326 /*Jorach's Calling*/, 45848 /*Fit For a Pirate*/, 46324 /*False Orders*/, 46323 /*What's the Cache?*/, 45073 /*Loot and Plunder!*/, 46322 /*The Pirate's Bay*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(43359, 2, 0, 0, 0, 0, 0, 0, 0, '愿你的武器的新力量能在今后的路途上为你披荆斩棘。', 42010), -- A Hero's Weapon
(41739, 1, 66, 0, 0, 0, 500, 0, 0, '我们一起经历了无数考验，$n。$B$B如果没有你的帮助，我就不可能为我的师傅报仇，也无法鼓起勇气酿造她的传奇蜜酒。$B$B多亏了你，我们会有足够的风暴蜜酒来供应整座寺院。$B$B说起来，我觉得我们俩的战斗风格十分相似。$B$B你是否愿意让我加入你的行列？', 42010), -- Champion: Aegira
(41087, 0, 0, 0, 0, 0, 0, 0, 0, '我不知道你怎么想，大宗师，但我认为经过了这一切之后，我们应该享受一下自己的付出换来的休憩了。', 42010), -- Storm Brew
(41911, 0, 0, 0, 0, 0, 0, 0, 0, '唔唔，光是闻一闻这些啤酒花都醉了！这一批质量肯定不错，我就知道。', 41793), -- Amaranthine Hops
(41059, 0, 0, 0, 0, 0, 0, 0, 0, '跟我说说，英灵殿真的像传说中那么壮观吗？不管怎样，你已经拿到了大锅。我们可以开始酿酒了。', 41793), -- Halls of Valor: Odyn's Cauldron
(41040, 0, 0, 0, 0, 0, 0, 0, 0, '你好，勇士。$B$B我一直在远处观察你。', 41793), -- Halls of Valor: The Brewmaster
(43151, 0, 0, 0, 0, 0, 0, 0, 0, '感谢你，$c。我会好好使用这些东西的。', 41793), -- Making A Trade
(41039, 0, 0, 0, 0, 0, 0, 0, 0, '上一次看到这些笔记的时候，我还只是个小孩子。$B$B我现在能够理解上面的大部分内容。$B$B要获得所有的东西十分不易，不过我相信我们可以做到，$n。', 41793), -- Stolen Knowledge
(41038, 0, 0, 0, 0, 0, 0, 0, 0, '我的师傅受人爱戴，她已经把毕生所学都传授给我。$B$B但是，她藏得密不透风的风暴蜜酒配方却在她传授给我之前就被人偷走了。', 41793), -- The Mead Master
(41738, 1, 66, 0, 0, 0, 500, 0, 0, '<赛莱拉凝望着门外的天空，似乎想着某件尚未完成的任务而出神。她发出一声几乎听不到的叹息。>$B$B<然后，她用刚毅的目光盯着你。>$B$B我属于这里。$B$B我会为你而战。', 41793), -- Champion: Sylara Steelsong
(41737, 1, 66, 0, 0, 0, 500, 0, 0, '啊，能够全身而退的感觉真好。$B$B几杯酒下肚，感觉好多了。$B$B我的命是你救的，大宗师。我会永远效忠于你。只要你开口，我必定全力以赴。', 41793), -- Champion: Hiro
(41736, 1, 66, 0, 0, 0, 500, 0, 0, '我很荣幸能亲眼目睹你的风采，$n大宗师。我怀着无比坚定的决心，誓要铲除凯丽翠丝夫人和燃烧军团。$B$B我认为，我们可以效法维库人的风暴蜜酒，研制自己的配方，以其人之道还治其人之身。$B$B你愿意让我跟你一起作战吗？', 41793), -- Champion: Angus Ironfist
(41854, 1, 66, 0, 0, 0, 500, 0, 0, '这真是天大的好消息，$n！$B$B你不但破坏了燃烧军团的计划，还拯救了无数的生命。$B$B另外，在你救出的武僧当中，有三位是我们近年训练出来的精英。$B$B教派又欠你一份人情。', 41793), -- Brick By Brick
(41853, 1, 66, 0, 0, 0, 500, 0, 0, '啊，谢谢你们救了我。我以为自己肯定会被恶魔吃掉。', 41793), -- Zero to Hiro
(41851, 1, 66, 0, 0, 0, 500, 0, 0, '<赛莱拉深深鞠躬。>$B$B打得漂亮。', 41793), -- Quelling the Tide
(41852, 1, 66, 0, 0, 0, 500, 0, 0, '非常好，大宗师！$B$B一个都没少。', 41793), -- No Monk Left Behind
(41850, 1, 66, 0, 0, 0, 500, 0, 0, '很好，你成功了。赛莱拉比十个训练有素的武僧更有价值。', 41793), -- The Master of Swords
(41849, 1, 66, 0, 0, 0, 500, 0, 0, '你都当上大宗师了？哎呀，反正我也没空当的！$B$B总之，我想尽办法才从那些嗜血的家伙手里逃了出来，但是还有好多同伴仍然身处险境。$B$B那些燃烧军团恶魔打算献祭俘虏，掠夺他们的灵魂。$B$B我们必须去救他们！', 41793), -- The Iron Fist
(46350, 0, 0, 0, 0, 0, 0, 0, 0, '如果能让我驮着你从神龛走向五晨寺，那真是我莫大的荣幸。这条道路是举行仪式的必经之路，在你之前，我曾经陪伴过许多位大宗师走过这里。', 42010), -- The Trial of Ban-Lu
(46349, 0, 0, 0, 0, 0, 0, 0, 0, '谢谢你。接下来请允许我为你寻找答案。', 42010), -- Lilies for Ryuli
(46348, 0, 0, 0, 0, 0, 0, 0, 0, '你好。大宗师莅临，真令我蓬荜生辉。请问有何贵干？', 42010), -- The River to Ban-Lu
(46347, 0, 0, 0, 0, 0, 0, 0, 0, '影踪派很感谢你，大宗师。$b$b我们继续……你脚上的黑色残留物是什么？', 42010), -- Clean-up on Aisle Sha
(46346, 0, 0, 0, 0, 0, 0, 0, 0, '我已经开始冥想了，大宗师。但是我们也许还有另一条线索……', 42010), -- The Shadow of Ban-Lu
(46344, 0, 0, 0, 0, 0, 0, 0, 0, '发臭的土山头有了新点子！就让他的背包继续烧着好了！$b$b只要背包还在燃烧，就不会有别的倒霉事发生！燃烧的背包就是发臭的土山头的新幸运符！$b$b噢，你在找那只大猫？发臭的土山头看到过一只亮闪闪的大猫。他往西面的禅院去了。土山头帮到你了吗？', 42010), -- Smelly's Luckydo
(46343, 0, 0, 0, 0, 0, 0, 0, 0, '我这把老骨头得休息一下了，但我们的旅程又前进了一步。$b$b那边那个土地精看起来很需要人帮忙。趁我休息的时候，你不妨去跟他谈一谈吧？', 42010), -- The Trail of Ban-Lu
(46342, 0, 0, 0, 0, 0, 0, 0, 0, '生命就这样毫无意义地消逝了，这又是为了什么？$b$b<卜大师面色凝重地看着传送门，摇了摇头。>', 42010), -- Return to the Broken Peak
(46341, 0, 0, 0, 0, 0, 0, 0, 0, '谢谢你聆听这段故事，并给我买喝的。', 42010), -- The Tale of Ban-Lu
(46353, 0, 0, 0, 0, 0, 0, 0, 0, '谢谢你赶来，大宗师。', 42010), -- Master Who?
(45790, 1, 66, 0, 0, 0, 500, 0, 0, '我会想念酒仙布兰琪的。她教导我要勇敢追逐梦想。$b$b而我一直都想要学习织雾之道……$b$b大宗师$n，如果你愿意收留我，我会保护你和我们的教派不受任何伤害的。', 42010), -- Champion: Almai
(45771, 1, 66, 0, 0, 0, 500, 0, 0, '大宗师$n，我这把老骨头已经不中用了。我们的未来就靠你了，你得继续与军团战斗。$b$b只要你依旧在黑暗中闪烁光芒，希望就永远存在！', 42010), -- A Time for Everything
(45442, 1, 66, 0, 0, 0, 500, 0, 0, '看到我们的人恢复健康，我的心情也好起来了。', 42010), -- Not Felling Well
(46320, 1, 0, 0, 0, 0, 0, 0, 0, '嗯，我看看……不错，我想我能够中和这些毒药！', 42010), -- Hope For a Cure
(45545, 1, 0, 0, 0, 0, 0, 0, 0, '炸飞恶魔总是这么爽，是吧？哈！', 42010), -- Barrel Toss
(45449, 1, 0, 0, 0, 0, 0, 0, 0, '谢谢你。与我们作对的恶魔又少了一只。', 42010), -- Alchemist Korlya
(45574, 1, 0, 0, 0, 0, 0, 0, 0, '希望这些足够调制出解药，医治我们濒死的武僧！', 42010), -- Fel Ingredients
(45459, 1, 0, 0, 0, 0, 0, 0, 0, '太好了，你成功了！', 42010), -- Storming the Legion
(45404, 1, 66, 0, 0, 0, 500, 0, 0, '这种事情怎么会发生在我们，尤其是我身上？我从没想过我会死得这么早……而且这么惨……$b$b我们已经尝试过为倒下的朋友使用清创生血，但这种毒药太强大了。$b$b我们的教派正处于生死关头，我无法在这种时候安息。我很抱歉，让你失望了，大宗师$n。', 42010), -- Panic at the Brewery
(45440, 1, 66, 0, 0, 0, 500, 0, 0, '呼。庆祝美酒比*嗝儿*我印象中的要烈很多啊。*嗝儿*', 42010), -- A Brewing Situation
(41910, 0, 0, 0, 0, 0, 0, 0, 0, '这水经过每个冬天刚刚落下的雪的过滤，是我们美酒的关键原料！', 42010), -- Freya's Spring
(41086, 0, 0, 0, 0, 0, 0, 0, 0, '大宗师，你真了不起！你胜利的喜报像雪片一样不断飞来。如果没有你的帮助，我们在破碎群岛的许多岗哨肯定已经陷落。', 42010), -- A Peaceful World
(42420, 0, 0, 0, 0, 0, 0, 0, 0, '法罗迪斯宫廷感谢你。', 42010), -- Court of Farondis
(46103, 0, 0, 0, 0, 0, 0, 0, 0, '你没法知道某个盟友是不是恐惧魔王的亡灵爪牙，只有把他们剖开才行。', 41793), -- Dread Infiltrators
(46779, 0, 0, 0, 0, 0, 0, 0, 0, '我们的力量在增长。', 41793), -- Further Advancement
(46058, 1, 0, 0, 0, 0, 0, 0, 0, '你处置这些恶魔真是干净利落，我希望你能这样对付更多的恶魔。只要军团还在我们的世界横行，他们就会继续腐化我们的人民。$b$b我想继续与你合作，终结这场疯狂。我的利刃属于你，$ct。', 41793), -- Champion: Lilian Voss
(46827, 1, 0, 0, 0, 0, 0, 0, 0, '我们讨论了你最近的战绩，$n。我们在暗影中行动，所以经常被忽视。但是没有我们，抗魔联军要对付的恶魔就会多得多。$b$b我们不需要名声。战绩就是我们的奖励。', 41793), -- Meld Into the Shadows
(45629, 0, 0, 0, 0, 0, 0, 0, 0, '就算我自己动手，也没法做得更好了。干得漂亮，$ct。', 41793), -- This Time, Leave a Trail
(45576, 1, 0, 0, 0, 0, 0, 0, 0, '啊，我的利刃在欢唱。该执行计划了，$ct。', 41793), -- Rise Up
(45571, 0, 0, 0, 0, 0, 0, 0, 0, '很好，你来了。我们开始吧。', 41793), -- A Bit of Espionage
(46326, 1, 0, 0, 0, 0, 0, 0, 0, '欢迎回来，$ct。我想你已经拿到火药了？', 41793), -- Jorach's Calling
(45848, 0, 0, 0, 0, 0, 0, 0, 0, '呱！特塞斯太差劲！坏海盗！坏海盗！$b$b$n，好海盗，呱呱呱！我跟你混了！', 41793), -- Fit For a Pirate
(46324, 0, 0, 0, 0, 0, 0, 0, 0, '他们就那样乐呵呵地离开了……真是群蠢货。', 41793), -- False Orders
(46323, 1, 0, 0, 0, 0, 0, 0, 0, '太好了……火药到手了。它对我的计划至关重要！', 41793), -- What's the Cache?
(45073, 1, 0, 0, 0, 0, 0, 0, 0, '谢谢你，朋友。报了仇之后，我感觉好多了。', 41793), -- Loot and Plunder!
(46322, 0, 0, 0, 0, 0, 0, 0, 0, '终于……轮到我闪亮登场了。我们要大干一场。', 41793); -- The Pirate's Bay

UPDATE `quest_offer_reward` SET `VerifiedBuild`=42010 WHERE `ID` IN (47137, 43179, 39985, 42422);

DELETE FROM `quest_poi` WHERE (`QuestID`=41040 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=41040 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=41854 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=41854 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=46342 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=46342 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=46353 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=46353 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=46320 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=46320 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45440 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=45440 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=45440 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=45440 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=45440 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42624 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=42624 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=42624 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=42624 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42624 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=37179 AND `BlobIndex`=5 AND `Idx1`=12) OR (`QuestID`=37179 AND `BlobIndex`=4 AND `Idx1`=11) OR (`QuestID`=37179 AND `BlobIndex`=3 AND `Idx1`=10) OR (`QuestID`=37179 AND `BlobIndex`=2 AND `Idx1`=9) OR (`QuestID`=37179 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=37179 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=37179 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=37179 AND `BlobIndex`=5 AND `Idx1`=5) OR (`QuestID`=37179 AND `BlobIndex`=4 AND `Idx1`=4) OR (`QuestID`=37179 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=37179 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=37179 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=37179 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=31459 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(41040, 0, 1, 32, 0, 0, 1514, 709, 0, 0, 0, 0, 0, 1141860, 0, 41793), -- Halls of Valor: The Brewmaster
(41040, 0, 0, -1, 0, 0, 1477, 704, 0, 2, 0, 0, 0, 0, 0, 41793), -- Halls of Valor: The Brewmaster
(41854, 0, 1, 32, 0, 0, 1220, 634, 0, 0, 0, 0, 0, 1140534, 0, 41793), -- Brick By Brick
(41854, 0, 0, -1, 0, 0, 1514, 709, 0, 0, 0, 0, 0, 1098209, 0, 41793), -- Brick By Brick
(46342, 0, 1, 32, 0, 0, 1514, 709, 0, 0, 0, 0, 0, 1302376, 0, 42010), -- Return to the Broken Peak
(46342, 0, 0, -1, 0, 0, 870, 379, 0, 0, 0, 0, 0, 1302565, 0, 42010), -- Return to the Broken Peak
(46353, 0, 1, 32, 0, 0, 1220, 646, 0, 0, 0, 0, 0, 1278667, 0, 42010), -- Master Who?
(46353, 0, 0, -1, 0, 0, 1514, 709, 0, 0, 0, 0, 0, 1302376, 0, 42010), -- Master Who?
(46320, 0, 1, 32, 0, 0, 1220, 646, 0, 0, 0, 0, 0, 1273097, 0, 42010), -- Hope For a Cure
(46320, 0, 0, -1, 0, 0, 1514, 709, 0, 0, 0, 0, 0, 1293545, 0, 42010), -- Hope For a Cure
(45440, 0, 4, 32, 0, 0, 1514, 709, 0, 0, 0, 0, 0, 1270605, 0, 42010), -- A Brewing Situation
(45440, 0, 3, 2, 289214, 119625, 1514, 709, 0, 2, 0, 0, 0, 0, 0, 42010), -- A Brewing Situation
(45440, 0, 2, 1, 289213, 119624, 1514, 709, 0, 2, 0, 0, 0, 0, 0, 42010), -- A Brewing Situation
(45440, 0, 1, 0, 289212, 119623, 1514, 709, 0, 2, 0, 0, 0, 0, 0, 42010), -- A Brewing Situation
(45440, 0, 0, -1, 0, 0, 1514, 709, 0, 0, 0, 0, 0, 1098209, 0, 42010), -- A Brewing Situation
(42624, 0, 4, 32, 0, 0, 1220, 630, 0, 2, 0, 0, 0, 0, 0, 41793), -- Heads of the Fleet
(42624, 0, 3, 3, 284535, 108186, 1220, 630, 0, 0, 0, 0, 0, 1253583, 0, 41793), -- Heads of the Fleet
(42624, 0, 2, 2, 284534, 108174, 1220, 630, 0, 0, 0, 0, 0, 1175615, 0, 41793), -- Heads of the Fleet
(42624, 0, 1, 1, 284533, 108212, 1220, 630, 0, 0, 0, 0, 0, 1176338, 0, 41793), -- Heads of the Fleet
(42624, 0, 0, 0, 284484, 108137, 1220, 630, 0, 0, 0, 0, 0, 1175036, 0, 41793), -- Heads of the Fleet
(37179, 5, 12, 1, 277200, 77120, 1358, 618, 0, 0, 0, 0, 0, 913866, 0, 41793), -- For The Children!
(37179, 4, 11, 1, 277200, 77120, 1358, 618, 0, 0, 0, 0, 0, 914219, 0, 41793), -- For The Children!
(37179, 3, 10, 1, 277200, 77120, 1358, 617, 0, 0, 0, 0, 0, 913866, 0, 41793), -- For The Children!
(37179, 2, 9, 1, 277200, 77120, 1358, 617, 0, 0, 0, 0, 0, 914219, 0, 41793), -- For The Children!
(37179, 1, 8, 1, 277200, 77120, 1358, 616, 0, 0, 0, 0, 0, 913866, 0, 41793), -- For The Children!
(37179, 0, 7, 1, 277200, 77120, 1358, 616, 0, 0, 0, 0, 0, 914219, 0, 41793), -- For The Children!
(37179, 0, 6, 0, 275949, 118645, 1358, 618, 0, 0, 0, 31295, 0, 0, 0, 41793), -- For The Children!
(37179, 5, 5, -1, 0, 0, 1116, 582, 0, 0, 0, 924, 0, 953666, 0, 41793), -- For The Children!
(37179, 4, 4, -1, 0, 0, 1116, 582, 0, 0, 0, 924, 0, 953666, 0, 41793), -- For The Children!
(37179, 3, 3, -1, 0, 0, 1116, 582, 0, 0, 0, 924, 0, 953667, 0, 41793), -- For The Children!
(37179, 2, 2, -1, 0, 0, 1116, 590, 0, 0, 0, 923, 0, 953669, 0, 41793), -- For The Children!
(37179, 1, 1, -1, 0, 0, 1116, 590, 0, 0, 0, 923, 0, 953669, 0, 41793), -- For The Children!
(37179, 0, 0, -1, 0, 0, 1116, 590, 0, 0, 0, 923, 0, 953669, 0, 41793), -- For The Children!
(31459, 0, 0, -1, 0, 0, 870, 379, 0, 0, 0, 0, 0, 0, 0, 41793); -- Cho's Missive

UPDATE `quest_poi` SET `VerifiedBuild`=41793 WHERE (`QuestID`=61874 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=61874 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=61874 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61874 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61874 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61874 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61874 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=41040 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=41040 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=41854 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=41854 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=46342 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=46342 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=46353 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=46353 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=46320 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=46320 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=45440 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=45440 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=45440 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=45440 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=45440 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42624 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=42624 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=42624 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=42624 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42624 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=37179 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=31459 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(41040, 1, 0, 717, 3641, 141, 41793), -- Halls of Valor: The Brewmaster
(41040, 0, 0, 3790, 515, 603, 41793), -- Halls of Valor: The Brewmaster
(41854, 1, 0, 2874, 1381, 0, 41793), -- Brick By Brick
(41854, 0, 0, 924, 3606, 196, 41793), -- Brick By Brick
(46342, 1, 0, 1012, 4116, 211, 42010), -- Return to the Broken Peak
(46342, 0, 0, 3880, 1877, 918, 42010), -- Return to the Broken Peak
(46353, 1, 0, -1594, 3185, 131, 42010), -- Master Who?
(46353, 0, 0, 1012, 4116, 211, 42010), -- Master Who?
(46320, 1, 0, -1376, 2848, 31, 42010), -- Hope For a Cure
(46320, 0, 0, 756, 3631, 196, 42010), -- Hope For a Cure
(45440, 4, 0, 924, 3603, 196, 42010), -- A Brewing Situation
(45440, 3, 0, 747, 3532, 0, 42010), -- A Brewing Situation
(45440, 2, 0, 735, 3626, 0, 42010), -- A Brewing Situation
(45440, 1, 0, 795, 3620, 0, 42010), -- A Brewing Situation
(45440, 0, 0, 924, 3606, 196, 42010), -- A Brewing Situation
(42624, 4, 0, -1396, 5941, 0, 41793), -- Heads of the Fleet
(42624, 3, 0, -1504, 6046, 5, 41793), -- Heads of the Fleet
(42624, 2, 0, -1304, 5825, 0, 41793), -- Heads of the Fleet
(42624, 1, 0, -1260, 5902, 1, 41793), -- Heads of the Fleet
(42624, 0, 0, -1215, 5805, 20, 41793), -- Heads of the Fleet
(37179, 12, 0, 150, -443, 0, 41793), -- For The Children!
(37179, 11, 0, 22, -103, 0, 41793), -- For The Children!
(37179, 10, 0, 150, -443, 122, 41793), -- For The Children!
(37179, 9, 0, 22, -103, 122, 41793), -- For The Children!
(37179, 8, 0, 150, -443, 0, 41793), -- For The Children!
(37179, 7, 0, 22, -103, 0, 41793), -- For The Children!
(37179, 6, 0, -12, -290, 0, 41793), -- For The Children!
(37179, 5, 0, 1867, 247, 0, 41793), -- For The Children!
(37179, 4, 0, 1867, 247, 0, 41793), -- For The Children!
(37179, 3, 0, 1867, 247, 0, 41793), -- For The Children!
(37179, 2, 0, 5642, 4533, 0, 41793), -- For The Children!
(37179, 1, 0, 5642, 4533, 0, 41793), -- For The Children!
(37179, 0, 0, 5642, 4533, 0, 41793), -- For The Children!
(31459, 0, 0, 3044, 1251, 655, 41793); -- Cho's Missive

UPDATE `quest_poi_points` SET `VerifiedBuild`=41793 WHERE (`QuestID`=61874 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61874 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61874 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61874 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61874 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61874 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61874 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_greeting` WHERE (`Type`=0 AND `ID` IN (102996,117305,119822));
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(102996, 0, 0, 0, '', 41793), -- 102996
(117305, 0, 0, 0, '这个地方让我感到恐惧。我们还是快点完事吧！', 42010), -- 117305
(119822, 0, 0, 0, '终于……到了我发光的时候了。我们要大干一场。', 41793); -- 119822


DELETE FROM `quest_details` WHERE `ID` IN (43359 /*A Hero's Weapon*/, 41086 /*A Peaceful World*/, 41059 /*Halls of Valor: Odyn's Cauldron*/, 43151 /*Making A Trade*/, 41911 /*Amaranthine Hops*/, 41040 /*Halls of Valor: The Brewmaster*/, 41910 /*Freya's Spring*/, 41039 /*Stolen Knowledge*/, 41038 /*The Mead Master*/, 41854 /*Brick By Brick*/, 41851 /*Quelling the Tide*/, 41853 /*Zero to Hiro*/, 41852 /*No Monk Left Behind*/, 41850 /*The Master of Swords*/, 41849 /*The Iron Fist*/, 46350 /*The Trial of Ban-Lu*/, 46349 /*Lilies for Ryuli*/, 46348 /*The River to Ban-Lu*/, 46347 /*Clean-up on Aisle Sha*/, 46346 /*The Shadow of Ban-Lu*/, 46344 /*Smelly's Luckydo*/, 46343 /*The Trail of Ban-Lu*/, 46342 /*Return to the Broken Peak*/, 46341 /*The Tale of Ban-Lu*/, 46353 /*Master Who?*/, 45771 /*A Time for Everything*/, 45442 /*Not Felling Well*/, 46320 /*Hope For a Cure*/, 45545 /*Barrel Toss*/, 45449 /*Alchemist Korlya*/, 45574 /*Fel Ingredients*/, 45459 /*Storming the Legion*/, 45404 /*Panic at the Brewery*/, 45440 /*A Brewing Situation*/, 32442 /*Impending Danger*/, 46178 /*Hiding In Plain Sight*/, 46103 /*Dread Infiltrators*/, 46779 /*Further Advancement*/, 46827 /*Meld Into the Shadows*/, 45629 /*This Time, Leave a Trail*/, 45576 /*Rise Up*/, 45571 /*A Bit of Espionage*/, 46326 /*Jorach's Calling*/, 45073 /*Loot and Plunder!*/, 46324 /*False Orders*/, 46323 /*What's the Cache?*/, 46322 /*The Pirate's Bay*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(43359, 1, 603, 0, 0, 0, 0, 0, 0, 42010), -- A Hero's Weapon
(41086, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- A Peaceful World
(41059, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Halls of Valor: Odyn's Cauldron
(43151, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Making A Trade
(41911, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Amaranthine Hops
(41040, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Halls of Valor: The Brewmaster
(41910, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Freya's Spring
(41039, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Stolen Knowledge
(41038, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- The Mead Master
(41854, 1, 1, 0, 0, 0, 0, 0, 0, 41793), -- Brick By Brick
(41851, 1, 1, 0, 0, 0, 0, 0, 0, 41793), -- Quelling the Tide
(41853, 1, 1, 0, 0, 0, 0, 0, 0, 41793), -- Zero to Hiro
(41852, 1, 1, 0, 0, 0, 0, 0, 0, 41793), -- No Monk Left Behind
(41850, 1, 1, 0, 0, 0, 0, 0, 0, 41793), -- The Master of Swords
(41849, 1, 1, 0, 0, 0, 0, 0, 0, 41793), -- The Iron Fist
(46350, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Trial of Ban-Lu
(46349, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- Lilies for Ryuli
(46348, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- The River to Ban-Lu
(46347, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- Clean-up on Aisle Sha
(46346, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Shadow of Ban-Lu
(46344, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- Smelly's Luckydo
(46343, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Trail of Ban-Lu
(46342, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- Return to the Broken Peak
(46341, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Tale of Ban-Lu
(46353, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- Master Who?
(45771, 1, 1, 0, 0, 0, 0, 0, 0, 42010), -- A Time for Everything
(45442, 1, 1, 0, 0, 0, 0, 0, 0, 42010), -- Not Felling Well
(46320, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Hope For a Cure
(45545, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Barrel Toss
(45449, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Alchemist Korlya
(45574, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Fel Ingredients
(45459, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Storming the Legion
(45404, 1, 1, 0, 0, 0, 0, 0, 0, 42010), -- Panic at the Brewery
(45440, 1, 1, 0, 0, 0, 0, 0, 0, 42010), -- A Brewing Situation
(32442, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Impending Danger
(46178, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Hiding In Plain Sight
(46103, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Dread Infiltrators
(46779, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Further Advancement
(46827, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Meld Into the Shadows
(45629, 1, 0, 0, 0, 0, 0, 0, 0, 41793), -- This Time, Leave a Trail
(45576, 1, 0, 0, 0, 0, 0, 0, 0, 41793), -- Rise Up
(45571, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- A Bit of Espionage
(46326, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- Jorach's Calling
(45073, 1, 0, 0, 0, 0, 0, 0, 0, 41793), -- Loot and Plunder!
(46324, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- False Orders
(46323, 1, 0, 0, 0, 0, 0, 0, 0, 41793), -- What's the Cache?
(46322, 0, 0, 0, 0, 0, 0, 0, 0, 41793); -- The Pirate's Bay

UPDATE `quest_details` SET `VerifiedBuild`=42010 WHERE `ID`=39986;
UPDATE `quest_details` SET `VerifiedBuild`=41793 WHERE `ID`=47137;

DELETE FROM `quest_request_items` WHERE `ID` IN (43151 /*Making A Trade*/, 46344 /*Smelly's Luckydo*/, 45442 /*Not Felling Well*/, 41039 /*Stolen Knowledge*/, 41038 /*The Mead Master*/, 47606 /*Loyalty Is Its Own Reward*/, 41059 /*Halls of Valor: Odyn's Cauldron*/, 46323 /*What's the Cache?*/, 45574 /*Fel Ingredients*/, 46349 /*Lilies for Ryuli*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(43151, 0, 0, 0, 0, '你有皮革要交易吗？', 41793), -- Making A Trade
(46344, 0, 0, 0, 0, '找到我的幸运符了吗？这里好像越来越热了。', 41793), -- Smelly's Luckydo
(45442, 1, 0, 0, 0, '我们的药酒有用吗？', 41793), -- Not Felling Well
(41039, 0, 0, 0, 0, '你拿到配方了吗？', 41793), -- Stolen Knowledge
(41038, 0, 0, 0, 0, '有何贵干？', 42010), -- The Mead Master
(47606, 0, 0, 0, 0, '天呐，已经搞定了！？', 41793), -- Loyalty Is Its Own Reward
(41059, 0, 0, 0, 0, '你通过试炼了吗？', 41793), -- Halls of Valor: Odyn's Cauldron
(46323, 0, 0, 0, 0, '拿到了吗？', 42010), -- What's the Cache?
(45574, 0, 0, 0, 0, '你找到我们能用的样本了吗？', 41793), -- Fel Ingredients
(46349, 0, 0, 0, 0, '月光百合收集得怎么样了，大宗师？', 41793); -- Lilies for Ryuli


DELETE FROM `creature_queststarter` WHERE (`id`=100438 AND `quest` IN (43359,41038,41849,32442)) OR (`id`=102820 AND `quest`=41086) OR (`id`=103049 AND `quest`=41059) OR (`id`=109738 AND `quest`=43151) OR (`id`=102996 AND `quest` IN (41911,41040,41910)) OR (`id`=102843 AND `quest`=41039) OR (`id`=105152 AND `quest`=41854) OR (`id`=105088 AND `quest`=41851) OR (`id`=105072 AND `quest` IN (41853,41852)) OR (`id`=105045 AND `quest`=41850) OR (`id`=120726 AND `quest` IN (46350,46349)) OR (`id`=120722 AND `quest` IN (46348,46347,46346,46343)) OR (`id`=120744 AND `quest`=46344) OR (`id`=120758 AND `quest` IN (46342,46341)) OR (`id`=118214 AND `quest`=46353) OR (`id`=119765 AND `quest` IN (45771,45442,45459)) OR (`id`=117305 AND `quest` IN (46320,45545,45449,45574)) OR (`id`=119664 AND `quest`=45404) OR (`id`=116929 AND `quest`=45440) OR (`id`=90417 AND `quest`=39986) OR (`id`=98099 AND `quest`=46178) OR (`id`=119259 AND `quest`=46103) OR (`id`=98092 AND `quest`=46779) OR (`id`=117259 AND `quest` IN (46827,45576)) OR (`id`=117263 AND `quest`=45629) OR (`id`=101513 AND `quest` IN (45571,46322)) OR (`id`=119822 AND `quest` IN (46326,46324,46323)) OR (`id`=118125 AND `quest`=45073);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(100438, 43359, 42010), -- A Hero's Weapon offered 金刚不坏彭戍
(102820, 41086, 41793), -- A Peaceful World offered 陈·风暴烈酒
(103049, 41059, 41793), -- Halls of Valor: Odyn's Cauldron offered 梅尔芭
(109738, 43151, 41793), -- Making A Trade offered 芙勒瑞斯·星叶
(102996, 41911, 41793), -- Amaranthine Hops offered 残寺派酒仙武僧
(102996, 41040, 41793), -- Halls of Valor: The Brewmaster offered 残寺派酒仙武僧
(102996, 41910, 41793), -- Freya's Spring offered 残寺派酒仙武僧
(102843, 41039, 41793), -- Stolen Knowledge offered 艾吉拉
(100438, 41038, 41793), -- The Mead Master offered 金刚不坏彭戍
(105152, 41854, 41793), -- Brick By Brick offered 残寺派织雾武僧
(105088, 41851, 41793), -- Quelling the Tide offered 残寺派踏风武僧
(105072, 41853, 41793), -- Zero to Hiro offered 残寺派酒仙武僧
(105072, 41852, 41793), -- No Monk Left Behind offered 残寺派酒仙武僧
(105045, 41850, 41793), -- The Master of Swords offered 安古斯·铁拳
(100438, 41849, 41793), -- The Iron Fist offered 金刚不坏彭戍
(120726, 46350, 42010), -- The Trial of Ban-Lu offered 水语者云离
(120726, 46349, 42010), -- Lilies for Ryuli offered 水语者云离
(120722, 46348, 42010), -- The River to Ban-Lu offered 卜大师
(120722, 46347, 42010), -- Clean-up on Aisle Sha offered 卜大师
(120722, 46346, 42010), -- The Shadow of Ban-Lu offered 卜大师
(120744, 46344, 42010), -- Smelly's Luckydo offered 发臭的土山头
(120722, 46343, 42010), -- The Trail of Ban-Lu offered 卜大师
(120758, 46342, 42010), -- Return to the Broken Peak offered 卜大师
(120758, 46341, 42010), -- The Tale of Ban-Lu offered 卜大师
(118214, 46353, 42010), -- Master Who? offered 伊斯卡
(119765, 45771, 42010), -- A Time for Everything offered 酒仙布兰琪的灵魂
(119765, 45442, 42010), -- Not Felling Well offered 酒仙布兰琪的灵魂
(117305, 46320, 42010), -- Hope For a Cure offered 酿酒师阿麦
(117305, 45545, 42010), -- Barrel Toss offered 酿酒师阿麦
(117305, 45449, 42010), -- Alchemist Korlya offered 酿酒师阿麦
(117305, 45574, 42010), -- Fel Ingredients offered 酿酒师阿麦
(119765, 45459, 42010), -- Storming the Legion offered 酒仙布兰琪的灵魂
(119664, 45404, 42010), -- Panic at the Brewery offered 酿酒师阿麦
(116929, 45440, 42010), -- A Brewing Situation offered 酒仙布兰琪
(100438, 32442, 42010), -- Impending Danger offered 金刚不坏彭戍
(90417, 39986, 42010), -- Magic Message offered 大法师卡德加
(98099, 46178, 41793), -- Hiding In Plain Sight offered 莉莉安·沃斯
(119259, 46103, 41793), -- Dread Infiltrators offered 药剂师基佛
(98092, 46779, 41793), -- Further Advancement offered 多嘴的尼基
(117259, 46827, 41793), -- Meld Into the Shadows offered 乔拉齐·拉文霍德公爵
(117263, 45629, 41793), -- This Time, Leave a Trail offered 莉莉安·沃斯
(117259, 45576, 41793), -- Rise Up offered 乔拉齐·拉文霍德公爵
(101513, 45571, 41793), -- A Bit of Espionage offered 乔拉齐·拉文霍德公爵
(119822, 46326, 41793), -- Jorach's Calling offered 莉莉安·沃斯
(118125, 45073, 41793), -- Loot and Plunder! offered 舰队上将特塞斯
(119822, 46324, 41793), -- False Orders offered 莉莉安·沃斯
(119822, 46323, 41793), -- What's the Cache? offered 莉莉安·沃斯
(101513, 46322, 41793); -- The Pirate's Bay offered 乔拉齐·拉文霍德公爵

UPDATE `creature_queststarter` SET `VerifiedBuild`=41793 WHERE (`id`=116576 AND `quest`=47137) OR (`id`=120215 AND `quest` IN (46734,46730));

DELETE FROM `creature_questender` WHERE (`id`=102855 AND `quest`=41739) OR (`id`=121343 AND `quest`=46350) OR (`id`=120726 AND `quest` IN (46349,46348)) OR (`id`=120722 AND `quest` IN (46347,46346,46343,46342)) OR (`id`=120744 AND `quest`=46344) OR (`id`=120758 AND `quest` IN (46341,46353)) OR (`id`=117504 AND `quest`=45790) OR (`id`=100438 AND `quest` IN (45771,45440)) OR (`id`=119765 AND `quest` IN (45442,46320,45404)) OR (`id`=117305 AND `quest` IN (45545,45449,45574,45459)) OR (`id`=98099 AND `quest` IN (46103,46058)) OR (`id`=98092 AND `quest`=46779) OR (`id`=101513 AND `quest` IN (46827,46326)) OR (`id`=117259 AND `quest` IN (45629,45571)) OR (`id`=117263 AND `quest`=45576) OR (`id`=123087 AND `quest`=47606) OR (`id`=118126 AND `quest`=45848) OR (`id`=119822 AND `quest` IN (46324,46323,46322)) OR (`id`=118125 AND `quest`=45073);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(102855, 41739, 42010), -- Champion: Aegira ended by 艾吉拉
(121343, 46350, 42010), -- The Trial of Ban-Lu ended by 班禄
(120726, 46349, 42010), -- Lilies for Ryuli ended by 水语者云离
(120726, 46348, 42010), -- The River to Ban-Lu ended by 水语者云离
(120722, 46347, 42010), -- Clean-up on Aisle Sha ended by 卜大师
(120722, 46346, 42010), -- The Shadow of Ban-Lu ended by 卜大师
(120744, 46344, 42010), -- Smelly's Luckydo ended by 发臭的土山头
(120722, 46343, 42010), -- The Trail of Ban-Lu ended by 卜大师
(120722, 46342, 42010), -- Return to the Broken Peak ended by 卜大师
(120758, 46341, 42010), -- The Tale of Ban-Lu ended by 卜大师
(120758, 46353, 42010), -- Master Who? ended by 卜大师
(117504, 45790, 42010), -- Champion: Almai ended by 酿酒师阿麦
(100438, 45771, 42010), -- A Time for Everything ended by 金刚不坏彭戍
(119765, 45442, 42010), -- Not Felling Well ended by 酒仙布兰琪的灵魂
(119765, 46320, 42010), -- Hope For a Cure ended by 酒仙布兰琪的灵魂
(117305, 45545, 42010), -- Barrel Toss ended by 酿酒师阿麦
(117305, 45449, 42010), -- Alchemist Korlya ended by 酿酒师阿麦
(117305, 45574, 42010), -- Fel Ingredients ended by 酿酒师阿麦
(117305, 45459, 42010), -- Storming the Legion ended by 酿酒师阿麦
(119765, 45404, 42010), -- Panic at the Brewery ended by 酒仙布兰琪的灵魂
(100438, 45440, 42010), -- A Brewing Situation ended by 金刚不坏彭戍
(98099, 46103, 41793), -- Dread Infiltrators ended by 莉莉安·沃斯
(98092, 46779, 41793), -- Further Advancement ended by 多嘴的尼基
(98099, 46058, 41793), -- Champion: Lilian Voss ended by 莉莉安·沃斯
(101513, 46827, 41793), -- Meld Into the Shadows ended by 乔拉齐·拉文霍德公爵
(117259, 45629, 41793), -- This Time, Leave a Trail ended by 乔拉齐·拉文霍德公爵
(117263, 45576, 41793), -- Rise Up ended by 莉莉安·沃斯
(117259, 45571, 41793), -- A Bit of Espionage ended by 乔拉齐·拉文霍德公爵
(123087, 47606, 41793), -- Loyalty Is Its Own Reward ended by 阿尔阿巴斯
(101513, 46326, 41793), -- Jorach's Calling ended by 乔拉齐·拉文霍德公爵
(118126, 45848, 41793), -- Fit For a Pirate ended by 咸饼干
(119822, 46324, 41793), -- False Orders ended by 莉莉安·沃斯
(119822, 46323, 41793), -- What's the Cache? ended by 莉莉安·沃斯
(118125, 45073, 41793), -- Loot and Plunder! ended by 舰队上将特塞斯
(119822, 46322, 41793); -- The Pirate's Bay ended by 莉莉安·沃斯

UPDATE `creature_questender` SET `VerifiedBuild`=42010 WHERE (`id`=100438 AND `quest` IN (43359,41910,41086)) OR (`id`=109823 AND `quest`=41087) OR (`id`=116576 AND `quest`=47137) OR (`id`=32725 AND `quest`=43179) OR (`id`=90417 AND `quest`=39985) OR (`id`=107379 AND `quest`=42422) OR (`id`=107376 AND `quest`=42420);
UPDATE `creature_questender` SET `VerifiedBuild`=41793 WHERE (`id`=100438 AND `quest` IN (41911,41059,41854)) OR (`id`=103049 AND `quest`=41040) OR (`id`=109738 AND `quest`=43151) OR (`id`=102996 AND `quest`=41039) OR (`id`=102843 AND `quest`=41038) OR (`id`=105056 AND `quest`=41738) OR (`id`=105058 AND `quest`=41737) OR (`id`=105046 AND `quest`=41736) OR (`id`=105152 AND `quest`=41853) OR (`id`=105088 AND `quest`=41851) OR (`id`=105072 AND `quest` IN (41852,41850)) OR (`id`=105045 AND `quest`=41849) OR (`id`=116576 AND `quest`=47137) OR (`id`=116302 AND `quest`=46734) OR (`id`=120215 AND `quest`=46730);

DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (3821,4273,17303,17304,34232,34233,50769,55593,58500,59165,59166,59180,59181,59272,59353,59385,59413,59688,59691,59695,59696,59697,59698,59699,59701,59716,59731,59755,59814,59827,60022,60079,60093,60177,60186,60220,60416,60420,60423,60425,60475,60503,60508,60572,60593,60596,60765,60826,60879,60937,60938,60939,60946,60995,61070,61130,61316,61454,61504,61512,61566,61572,61603,61787,61789,61799,61802,61815,61816,61819,61820,61847,62096,62108,62149,62158,62545,62961,63155,63177,63422,63564,63603,63612,63643,63644,63645,63646,63647,63648,63649,63650,65416,66464,68563,68769,68770,68774,69815,69943,70333,70338,70339,70340,70404,70415,70417,70423,70431,73783,73785,73788,73790,73793,73794,73795,90907,91166,91580,91585,91795,92044,92475,92547,92557,94138,94141,94159,94162,95223,97777,97785,97990,98015,98016,98092,98093,98099,98100,98102,98910,99079,99091,99106,99108,99141,99154,101490,101500,101690,101880,102066,102550,102594,102603,102604,102605,102641,102843,102848,102855,102901,102903,102904,103049,103482,103829,104365,104754,104755,104758,105020,105045,105046,105054,105056,105058,105107,105113,105118,105129,105226,105255,105519,105520,105521,105522,105523,105524,105750,105751,105858,105866,105867,105908,105913,105914,105975,105978,105979,105981,105984,105985,105986,105987,105988,105989,105990,105991,105992,105993,105997,105998,106002,106044,106045,106046,106063,106064,106066,106075,106079,106083,106125,106942,107020,107105,107143,107144,107161,107168,107463,108133,108136,108137,108146,108174,108186,108212,108221,108334,108337,108340,108348,108349,108447,108451,108580,108617,108720,108726,109482,109558,109600,109609,109823,109942,109967,109994,111236,111418,111438,111454,111456,111457,111469,111479,111481,111508,111543,111570,111784,111823,111824,111889,111897,111898,112008,112010,112028,112041,112042,112127,112137,112200,112203,112205,112207,112215,112217,112219,112225,112339,112433,112556,112559,112560,112619,112620,112622,112624,113139,113152,113186,113389,113797,113798,113800,113801,113803,113804,113805,113806,113807,113808,113810,113811,113852,113872,114654,114776,115242,116035,116597,116900,116929,117253,117254,117259,117261,117263,117270,117277,117305,117420,117422,117423,117504,117704,117708,117710,117711,117716,117720,117722,117768,118125,118126,118165,118166,118181,118207,118208,118209,118210,118211,118212,118214,118215,118217,118218,118219,118220,118249,118265,118422,118633,118732,118741,118850,118874,118875,118959,119235,119236,119237,119241,119242,119243,119244,119245,119247,119248,119249,119250,119251,119253,119254,119255,119256,119258,119259,119260,119261,119262,119263,119488,119492,119514,119523,119586,119587,119590,119596,119598,119599,119619,119620,119621,119664,119822,119876,119915,120425,120628,120629,120722,120726,120744,120747,120758,120759,120797,120798,120799,120814,120921,121282,121343,121351,121481,123087)) OR (`DifficultyID`=1 AND `Entry` IN (93628,95674,95675,95833,96608,96609,96611,96677,96934,97197,97202,97219,99804,99828,99868,99891,101459,101637,101638,101639,101640,101697,101712,101758,102423,103801,106320)) OR (`DifficultyID`=12 AND `Entry` IN (115540,116849,116992,117005,117021,117108,117112,117125,117157,117158,117159,117161,117186,117800,119151,119152,119672,119735,119765,119771,119772,119773,120997,121152));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(3821, 0, 0, 0, 12, 42010),
(4273, 0, 0, 0, 12, 42010),
(17303, 0, 0, 0, 12, 42010),
(17304, 0, 0, 0, 12, 42010),
(34232, 0, 0, 0, 12, 42010),
(34233, 0, 0, 0, 12, 42010),
(50769, 0, 0, 0, 60, 42010),
(55593, 0, 0, 0, 60, 42010),
(58500, 0, 0, 0, 60, 42010),
(59165, 0, 0, 0, 60, 42010),
(59166, 0, 0, 0, 60, 42010),
(59180, 0, 0, 0, 60, 42010),
(59181, 0, 0, 0, 60, 42010),
(59272, 0, 0, 0, 60, 42010),
(59353, 0, 0, 0, 60, 42010),
(59385, 0, 0, 0, 60, 42010),
(59413, 0, 0, 0, 60, 42010),
(59688, 0, 0, 0, 60, 42010),
(59691, 0, 0, 0, 60, 42010),
(59695, 0, 0, 0, 60, 42010),
(59696, 0, 0, 0, 60, 42010),
(59697, 0, 0, 0, 60, 42010),
(59698, 0, 0, 0, 60, 42010),
(59699, 0, 0, 0, 60, 42010),
(59701, 0, 0, 0, 60, 42010),
(59716, 0, 0, 0, 60, 42010),
(59731, 0, 0, 0, 60, 42010),
(59755, 0, 0, 0, 60, 42010),
(59814, 0, 0, 0, 60, 42010),
(59827, 0, 0, 0, 60, 42010),
(60022, 0, 0, 0, 60, 42010),
(60079, 0, 0, 0, 60, 42010),
(60093, 0, 0, 0, 60, 42010),
(60177, 0, 0, 0, 60, 42010),
(60186, 0, 0, 0, 60, 42010),
(60220, 0, 0, 0, 60, 42010),
(60416, 0, 0, 0, 881, 42010),
(60420, 0, 0, 0, 60, 42010),
(60423, 0, 0, 0, 60, 42010),
(60425, 0, 0, 0, 60, 42010),
(60475, 0, 0, 0, 60, 42010),
(60503, 0, 0, 0, 60, 42010),
(60508, 0, 0, 0, 60, 42010),
(60572, 0, 0, 0, 60, 42010),
(60593, 0, 0, 0, 60, 42010),
(60596, 0, 0, 0, 60, 42010),
(60765, 0, 0, 0, 60, 42010),
(60826, 0, 0, 0, 60, 42010),
(60879, 0, 0, 0, 60, 42010),
(60937, 0, 0, 0, 60, 42010),
(60938, 0, 0, 0, 60, 42010),
(60939, 0, 0, 0, 60, 42010),
(60946, 0, 0, 0, 81, 42010),
(60995, 0, 0, 0, 60, 42010),
(61070, 0, 0, 0, 60, 42010),
(61130, 0, 0, 0, 60, 42010),
(61316, 0, 0, 0, 60, 42010),
(61454, 0, 0, 0, 60, 42010),
(61504, 0, 0, 0, 881, 42010),
(61512, 0, 0, 0, 881, 42010),
(61566, 0, 0, 0, 60, 42010),
(61572, 0, 0, 0, 60, 42010),
(61603, 0, 0, 0, 60, 42010),
(61787, 0, 0, 0, 60, 42010),
(61789, 0, 0, 0, 60, 42010),
(61799, 0, 0, 0, 60, 42010),
(61802, 0, 0, 0, 60, 42010),
(61815, 0, 0, 0, 60, 42010),
(61816, 0, 0, 0, 60, 42010),
(61819, 0, 0, 0, 60, 42010),
(61820, 0, 0, 0, 60, 42010),
(61847, 0, 0, 0, 60, 42010),
(62096, 0, 0, 0, 60, 42010),
(62108, 0, 0, 0, 60, 42010),
(62149, 0, 0, 0, 60, 42010),
(62158, 0, 0, 0, 60, 42010),
(62545, 0, 0, 0, 57, 42010),
(62961, 0, 0, 0, 60, 42010),
(63155, 0, 0, 0, 60, 42010),
(63177, 0, 0, 0, 60, 42010),
(63422, 0, 0, 0, 60, 42010),
(63564, 0, 0, 0, 60, 42010),
(63603, 0, 0, 0, 60, 42010),
(63612, 0, 0, 0, 60, 42010),
(63643, 0, 0, 0, 60, 42010),
(63644, 0, 0, 0, 60, 42010),
(63645, 0, 0, 0, 60, 42010),
(63646, 0, 0, 0, 60, 42010),
(63647, 0, 0, 0, 60, 42010),
(63648, 0, 0, 0, 60, 42010),
(63649, 0, 0, 0, 60, 42010),
(63650, 0, 0, 0, 60, 42010),
(65416, 0, 0, 0, 60, 42010),
(66464, 0, 0, 0, 60, 42010),
(68563, 0, 24, 24, 371, 42010),
(68769, 0, 0, 0, 60, 42010),
(68770, 0, 0, 0, 60, 42010),
(68774, 0, 0, 0, 60, 42010),
(69815, 0, 0, 0, 167, 42010),
(69943, 0, 0, 0, 60, 42010),
(70333, 0, 0, 0, 657, 42010),
(70338, 0, 0, 0, 657, 42010),
(70339, 0, 0, 0, 657, 42010),
(70340, 0, 0, 0, 657, 42010),
(70404, 0, 0, 0, 657, 42010),
(70415, 0, 0, 0, 657, 42010),
(70417, 0, 0, 0, 657, 42010),
(70423, 0, 0, 0, 657, 42010),
(70431, 0, 0, 0, 657, 42010),
(73783, 0, 0, 0, 169, 42010),
(73785, 0, 0, 0, 169, 42010),
(73788, 0, 0, 0, 169, 42010),
(73790, 0, 0, 0, 169, 42010),
(73793, 0, 0, 0, 169, 42010),
(73794, 0, 0, 0, 169, 42010),
(73795, 0, 0, 0, 169, 42010),
(90907, 0, 0, 0, 334, 42010),
(91166, 0, 0, 0, 331, 42010),
(91580, 0, 0, 0, 331, 42010),
(91585, 0, 0, 0, 331, 42010),
(91795, 0, 0, 0, 334, 42010),
(92044, 0, 0, 0, 339, 42010),
(92475, 0, 0, 0, 334, 42010),
(92547, 0, 0, 0, 334, 42010),
(92557, 0, 0, 0, 334, 42010),
(93628, 1, 0, 0, 334, 42010),
(94138, 0, 0, 0, 633, 42010),
(94141, 0, 0, 0, 633, 42010),
(94159, 0, 0, 0, 633, 42010),
(94162, 0, 0, 0, 642, 42010),
(95223, 0, 0, 0, 332, 42010),
(95674, 1, 0, 0, 485, 42010),
(95675, 1, 0, 0, 485, 42010),
(95833, 1, 0, 0, 485, 42010),
(96608, 1, 0, 0, 485, 42010),
(96609, 1, 0, 0, 485, 42010),
(96611, 1, 0, 0, 485, 42010),
(96677, 1, 0, 0, 485, 42010),
(96934, 1, 0, 0, 485, 42010),
(97197, 1, 0, 0, 485, 42010),
(97202, 1, 0, 0, 485, 42010),
(97219, 1, 0, 0, 485, 42010),
(97777, 0, 0, 0, 642, 42010),
(97785, 0, 0, 0, 642, 42010),
(97990, 0, 0, 0, 334, 42010),
(98015, 0, 0, 0, 334, 42010),
(98016, 0, 0, 0, 334, 42010),
(98092, 0, 0, 0, 633, 42010),
(98093, 0, 0, 0, 633, 42010),
(98099, 0, 0, 0, 633, 42010),
(98100, 0, 0, 0, 633, 42010),
(98102, 0, 0, 0, 633, 42010),
(98910, 0, 0, 0, 334, 42010),
(99079, 0, 0, 0, 633, 42010),
(99091, 0, 0, 0, 633, 42010),
(99106, 0, 0, 0, 642, 42010),
(99108, 0, 0, 0, 633, 42010),
(99141, 0, 0, 0, 633, 42010),
(99154, 0, 0, 0, 633, 42010),
(99804, 1, 0, 0, 485, 42010),
(99828, 1, 0, 0, 485, 42010),
(99868, 1, 0, 0, 485, 42010),
(99891, 1, 0, 0, 485, 42010),
(101459, 1, 0, 0, 486, 42010),
(101490, 0, 0, 0, 633, 42010),
(101500, 0, 0, 0, 633, 42010),
(101637, 1, 0, 0, 485, 42010),
(101638, 1, 0, 0, 485, 42010),
(101639, 1, 0, 0, 485, 42010),
(101640, 1, 0, 0, 485, 42010),
(101690, 0, 0, 0, 633, 42010),
(101697, 1, 0, 0, 486, 42010),
(101712, 1, 0, 0, 486, 42010),
(101758, 1, 3, 3, 486, 42010),
(101880, 0, 0, 0, 773, 42010),
(102066, 0, 0, 0, 331, 42010),
(102423, 1, 0, 0, 486, 42010),
(102550, 0, 0, 0, 633, 42010),
(102594, 0, 0, 0, 633, 42010),
(102603, 0, 0, 0, 633, 42010),
(102604, 0, 0, 0, 633, 42010),
(102605, 0, 0, 0, 633, 42010),
(102641, 0, 0, 0, 633, 42010),
(102843, 0, 0, 0, 334, 42010),
(102848, 0, 0, 0, 334, 42010),
(102855, 0, 0, 0, 334, 42010),
(102901, 0, 0, 0, 633, 42010),
(102903, 0, 0, 0, 633, 42010),
(102904, 0, 0, 0, 633, 42010),
(103049, 0, 0, 0, 633, 42010),
(103482, 0, 0, 0, 354, 42010),
(103801, 1, 0, 0, 485, 42010),
(103829, 0, 0, 0, 633, 42010),
(104365, 0, 0, 0, 334, 42010),
(104754, 0, 0, 0, 339, 42010),
(104755, 0, 0, 0, 339, 42010),
(104758, 0, 0, 0, 339, 42010),
(105020, 0, 0, 0, 633, 42010),
(105045, 0, 0, 0, 334, 42010),
(105046, 0, 0, 0, 339, 42010),
(105054, 0, 0, 0, 334, 42010),
(105056, 0, 0, 0, 339, 42010),
(105058, 0, 0, 0, 339, 42010),
(105107, 0, 0, 0, 773, 42010),
(105113, 0, 0, 0, 773, 42010),
(105118, 0, 0, 0, 633, 42010),
(105129, 0, 0, 0, 334, 42010),
(105226, 0, 0, 0, 773, 42010),
(105255, 0, 0, 0, 339, 42010),
(105519, 0, 0, 0, 633, 42010),
(105520, 0, 0, 0, 633, 42010),
(105521, 0, 0, 0, 633, 42010),
(105522, 0, 0, 0, 633, 42010),
(105523, 0, 0, 0, 633, 42010),
(105524, 0, 0, 0, 633, 42010),
(105750, 0, 0, 0, 334, 42010),
(105751, 0, 0, 0, 331, 42010),
(105858, 0, 0, 0, 633, 42010),
(105866, 0, 0, 0, 633, 42010),
(105867, 0, 0, 0, 633, 42010),
(105908, 0, 0, 0, 633, 42010),
(105913, 0, 0, 0, 331, 42010),
(105914, 0, 0, 0, 331, 42010),
(105975, 0, 0, 0, 633, 42010),
(105978, 0, 0, 0, 633, 42010),
(105979, 0, 0, 0, 633, 42010),
(105981, 0, 0, 0, 633, 42010),
(105984, 0, 0, 0, 633, 42010),
(105985, 0, 0, 0, 633, 42010),
(105986, 0, 0, 0, 633, 42010),
(105987, 0, 0, 0, 633, 42010),
(105988, 0, 0, 0, 633, 42010),
(105989, 0, 0, 0, 633, 42010),
(105990, 0, 0, 0, 633, 42010),
(105991, 0, 0, 0, 633, 42010),
(105992, 0, 0, 0, 633, 42010),
(105993, 0, 0, 0, 633, 42010),
(105997, 0, 0, 0, 633, 42010),
(105998, 0, 0, 0, 633, 42010),
(106002, 0, 0, 0, 633, 42010),
(106044, 0, 0, 0, 633, 42010),
(106045, 0, 0, 0, 633, 42010),
(106046, 0, 0, 0, 633, 42010),
(106063, 0, 0, 0, 633, 42010),
(106064, 0, 0, 0, 633, 42010),
(106066, 0, 0, 0, 633, 42010),
(106075, 0, 0, 0, 633, 42010),
(106079, 0, 0, 0, 633, 42010),
(106083, 0, 0, 0, 633, 42010),
(106125, 0, 0, 0, 633, 42010);

INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(106320, 1, 0, 0, 485, 42010),
(106942, 0, 0, 0, 633, 42010),
(107020, 0, 0, 0, 334, 42010),
(107105, 0, 0, 0, 331, 42010),
(107143, 0, 0, 0, 343, 42010),
(107144, 0, 0, 0, 339, 42010),
(107161, 0, 0, 0, 339, 42010),
(107168, 0, 0, 0, 331, 42010),
(107463, 0, 0, 0, 334, 42010),
(108133, 0, 0, 0, 331, 42010),
(108136, 0, 0, 0, 331, 42010),
(108137, 0, 0, 0, 331, 42010),
(108146, 0, 0, 0, 331, 42010),
(108174, 0, 0, 0, 331, 42010),
(108186, 0, 0, 0, 331, 42010),
(108212, 0, 0, 0, 331, 42010),
(108221, 0, 0, 0, 633, 42010),
(108334, 0, 0, 0, 331, 42010),
(108337, 0, 0, 0, 331, 42010),
(108340, 0, 0, 0, 331, 42010),
(108348, 0, 0, 0, 331, 42010),
(108349, 0, 0, 0, 331, 42010),
(108447, 0, 0, 0, 331, 42010),
(108451, 0, 0, 0, 331, 42010),
(108580, 0, 0, 0, 334, 42010),
(108617, 0, 0, 0, 331, 42010),
(108720, 0, 0, 0, 642, 42010),
(108726, 0, 0, 0, 633, 42010),
(109482, 0, 0, 0, 334, 42010),
(109558, 0, 0, 0, 881, 42010),
(109600, 0, 0, 0, 633, 42010),
(109609, 0, 0, 0, 633, 42010),
(109823, 0, 0, 0, 773, 42010),
(109942, 0, 0, 0, 334, 42010),
(109967, 0, 0, 0, 334, 42010),
(109994, 0, 0, 0, 334, 42010),
(111236, 0, 0, 0, 633, 42010),
(111418, 0, 0, 0, 881, 42010),
(111438, 0, 0, 0, 331, 42010),
(111454, 0, 0, 0, 331, 42010),
(111456, 0, 0, 0, 331, 42010),
(111457, 0, 0, 0, 331, 42010),
(111469, 0, 0, 0, 331, 42010),
(111479, 0, 0, 0, 331, 42010),
(111481, 0, 0, 0, 331, 42010),
(111508, 0, 0, 0, 331, 42010),
(111543, 0, 0, 0, 331, 42010),
(111570, 0, 0, 0, 331, 42010),
(111784, 0, 0, 0, 331, 42010),
(111823, 0, 0, 0, 331, 42010),
(111824, 0, 0, 0, 331, 42010),
(111889, 0, 0, 0, 331, 42010),
(111897, 0, 0, 0, 633, 42010),
(111898, 0, 0, 0, 331, 42010),
(112008, 0, 0, 0, 331, 42010),
(112010, 0, 0, 0, 331, 42010),
(112028, 0, 0, 0, 81, 42010),
(112041, 0, 0, 0, 331, 42010),
(112042, 0, 0, 0, 331, 42010),
(112127, 0, 0, 0, 334, 42010),
(112137, 0, 0, 0, 334, 42010),
(112200, 0, 0, 0, 334, 42010),
(112203, 0, 0, 0, 334, 42010),
(112205, 0, 0, 0, 334, 42010),
(112207, 0, 0, 0, 334, 42010),
(112215, 0, 0, 0, 334, 42010),
(112217, 0, 0, 0, 334, 42010),
(112219, 0, 0, 0, 334, 42010),
(112225, 0, 0, 0, 334, 42010),
(112339, 0, 0, 0, 331, 42010),
(112433, 0, 0, 0, 343, 42010),
(112556, 0, 0, 0, 334, 42010),
(112559, 0, 0, 0, 334, 42010),
(112560, 0, 0, 0, 334, 42010),
(112619, 0, 0, 0, 334, 42010),
(112620, 0, 0, 0, 334, 42010),
(112622, 0, 0, 0, 334, 42010),
(112624, 0, 0, 0, 334, 42010),
(113139, 0, 0, 0, 633, 42010),
(113152, 0, 0, 0, 633, 42010),
(113186, 0, 0, 0, 633, 42010),
(113389, 0, 0, 0, 339, 42010),
(113797, 0, 0, 0, 331, 42010),
(113798, 0, 0, 0, 331, 42010),
(113800, 0, 0, 0, 331, 42010),
(113801, 0, 0, 0, 331, 42010),
(113803, 0, 0, 0, 331, 42010),
(113804, 0, 0, 0, 331, 42010),
(113805, 0, 0, 0, 331, 42010),
(113806, 0, 0, 0, 331, 42010),
(113807, 0, 0, 0, 331, 42010),
(113808, 0, 0, 0, 331, 42010),
(113810, 0, 0, 0, 331, 42010),
(113811, 0, 0, 0, 331, 42010),
(113852, 0, 0, 0, 336, 42010),
(113872, 0, 0, 0, 339, 42010),
(114654, 0, 0, 0, 332, 42010),
(114776, 0, 0, 0, 633, 42010),
(115242, 0, 0, 0, 336, 42010),
(115540, 12, 0, 0, 336, 42010),
(116035, 0, 0, 0, 336, 42010),
(116597, 0, 0, 0, 633, 42010),
(116849, 12, 0, 0, 336, 42010),
(116900, 0, 0, 0, 336, 42010),
(116929, 0, 0, 0, 336, 42010),
(116992, 12, 0, 0, 336, 42010),
(117005, 12, 0, 0, 336, 42010),
(117021, 12, 0, 0, 336, 42010),
(117108, 12, 0, 0, 339, 42010),
(117112, 12, 0, 0, 336, 42010),
(117125, 12, 0, 0, 336, 42010),
(117157, 12, 0, 0, 336, 42010),
(117158, 12, 0, 0, 336, 42010),
(117159, 12, 0, 0, 336, 42010),
(117161, 12, 0, 0, 336, 42010),
(117186, 12, 0, 0, 336, 42010),
(117253, 0, 0, 0, 336, 42010),
(117254, 0, 0, 0, 336, 42010),
(117259, 0, 0, 0, 336, 42010),
(117261, 0, 0, 0, 336, 42010),
(117263, 0, 0, 0, 336, 42010),
(117270, 0, 0, 0, 336, 42010),
(117277, 0, 0, 0, 336, 42010),
(117305, 0, 0, 0, 336, 42010),
(117420, 0, 2, 2, 336, 42010),
(117422, 0, 2, 2, 336, 42010),
(117423, 0, 2, 2, 336, 42010),
(117504, 0, 0, 0, 336, 42010),
(117704, 0, 0, 0, 336, 42010),
(117708, 0, 0, 0, 336, 42010),
(117710, 0, 0, 0, 336, 42010),
(117711, 0, 0, 0, 336, 42010),
(117716, 0, 0, 0, 336, 42010),
(117720, 0, 0, 0, 336, 42010),
(117722, 0, 0, 0, 336, 42010),
(117768, 0, 0, 0, 336, 42010),
(117800, 12, 2, 2, 336, 42010),
(118125, 0, 0, 0, 336, 42010),
(118126, 0, 0, 0, 336, 42010),
(118165, 0, 0, 0, 336, 42010),
(118166, 0, 0, 0, 336, 42010),
(118181, 0, 0, 0, 336, 42010),
(118207, 0, 0, 0, 336, 42010),
(118208, 0, 0, 0, 336, 42010),
(118209, 0, 0, 0, 336, 42010),
(118210, 0, 0, 0, 336, 42010),
(118211, 0, 0, 0, 336, 42010),
(118212, 0, 0, 0, 336, 42010),
(118214, 0, 0, 0, 336, 42010),
(118215, 0, 0, 0, 336, 42010),
(118217, 0, 0, 0, 336, 42010),
(118218, 0, 0, 0, 336, 42010),
(118219, 0, 0, 0, 336, 42010),
(118220, 0, 0, 0, 336, 42010),
(118249, 0, 0, 0, 336, 42010),
(118265, 0, 0, 0, 336, 42010),
(118422, 0, 0, 0, 336, 42010),
(118633, 0, 0, 0, 336, 42010),
(118732, 0, 0, 0, 336, 42010),
(118741, 0, 0, 0, 336, 42010),
(118850, 0, 0, 0, 336, 42010),
(118874, 0, 0, 0, 336, 42010),
(118875, 0, 0, 0, 336, 42010),
(118959, 0, 0, 0, 336, 42010),
(119151, 12, 0, 0, 336, 42010),
(119152, 12, 0, 0, 336, 42010),
(119235, 0, 0, 0, 336, 42010),
(119236, 0, 0, 0, 336, 42010),
(119237, 0, 0, 0, 336, 42010),
(119241, 0, 0, 0, 336, 42010),
(119242, 0, 0, 0, 336, 42010),
(119243, 0, 0, 0, 336, 42010),
(119244, 0, 0, 0, 336, 42010),
(119245, 0, 0, 0, 336, 42010),
(119247, 0, 0, 0, 336, 42010),
(119248, 0, 0, 0, 336, 42010),
(119249, 0, 0, 0, 336, 42010),
(119250, 0, 0, 0, 336, 42010),
(119251, 0, 0, 0, 336, 42010),
(119253, 0, 0, 0, 336, 42010),
(119254, 0, 0, 0, 336, 42010),
(119255, 0, 0, 0, 336, 42010),
(119256, 0, 0, 0, 336, 42010),
(119258, 0, 0, 0, 336, 42010),
(119259, 0, 0, 0, 336, 42010),
(119260, 0, 0, 0, 336, 42010),
(119261, 0, 0, 0, 336, 42010),
(119262, 0, 0, 0, 336, 42010),
(119263, 0, 0, 0, 336, 42010),
(119488, 0, 0, 0, 336, 42010),
(119492, 0, 0, 0, 336, 42010),
(119514, 0, 0, 0, 336, 42010),
(119523, 0, 0, 0, 336, 42010),
(119586, 0, 0, 0, 336, 42010),
(119587, 0, 0, 0, 336, 42010),
(119590, 0, 0, 0, 336, 42010),
(119596, 0, 0, 0, 336, 42010),
(119598, 0, 0, 0, 336, 42010),
(119599, 0, 0, 0, 336, 42010),
(119619, 0, 0, 0, 336, 42010),
(119620, 0, 0, 0, 336, 42010),
(119621, 0, 0, 0, 336, 42010),
(119664, 0, 0, 0, 336, 42010),
(119672, 12, 0, 0, 336, 42010),
(119735, 12, 2, 2, 336, 42010),
(119765, 12, 0, 0, 336, 42010),
(119771, 12, 0, 0, 336, 42010),
(119772, 12, 0, 0, 336, 42010),
(119773, 12, 0, 0, 336, 42010),
(119822, 0, 0, 0, 336, 42010),
(119876, 0, 0, 0, 336, 42010),
(119915, 0, 0, 0, 336, 42010),
(120425, 0, 1, 1, 336, 42010),
(120628, 0, 0, 0, 336, 42010),
(120629, 0, 0, 0, 336, 42010),
(120722, 0, 0, 0, 336, 42010),
(120726, 0, 0, 0, 336, 42010),
(120744, 0, 0, 0, 336, 42010),
(120747, 0, 0, 0, 336, 42010),
(120758, 0, 0, 0, 336, 42010),
(120759, 0, 0, 0, 336, 42010),
(120797, 0, 0, 0, 336, 42010),
(120798, 0, 0, 0, 336, 42010),
(120799, 0, 0, 0, 336, 42010),
(120814, 0, 0, 0, 336, 42010),
(120921, 0, 0, 0, 336, 42010),
(120997, 12, 0, 0, 336, 42010),
(121152, 12, 0, 0, 336, 42010),
(121282, 0, 0, 0, 336, 42010),
(121343, 0, 0, 0, 336, 42010),
(121351, 0, 0, 0, 336, 42010),
(121481, 0, 0, 0, 336, 42010),
(123087, 0, 0, 0, 336, 42010);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=42010 WHERE (`DifficultyID`=0 AND `Entry` IN (7106,7110,7153,47392,48959,50332,55180,55379,55383,55388,55392,55463,55464,55470,55522,55523,55610,55622,59083,59420,59486,59679,59690,59790,59797,59816,59968,59970,59972,60028,60099,60431,60443,60458,60459,60478,60479,60550,60930,61060,61061,61068,61475,61488,61489,61490,61535,61745,62870,62883,62891,62918,62920,62923,63367,63393,63467,63535,63751,63821,64796,64975,64978,64980,65841,65842,65875,65905,65915,66207,66253,66254,66255,66256,66257,66258,66260,66353,66354,66355,66356,66360,66848,66896,66897,66911,66916,66917,66943,66947,66986,66987,67009,67015,67016,67019,67021,67066,67092,67095,67176,68846,70470,90507,91229,91240,91261,91486,91723,91799,91800,91812,92167,92839,93603,93608,93609,93610,93611,93967,93973,94328,94456,94458,95212,95748,95787,96139,96176,96255,96283,96290,97776,98105,98106,98115,98255,98745,98817,98939,98944,98945,98974,98978,98980,98982,98983,98985,99041,99047,99048,99115,99126,99129,99130,99131,99132,99133,99134,99135,99136,99139,99140,99164,99166,99179,99255,99256,99259,99263,99265,99266,99269,99270,99274,99275,99863,100438,100440,100441,100444,100451,100479,100481,101046,101471,101513,101749,101757,102055,102057,102088,102145,102204,102820,102852,102899,102900,102902,102969,103789,103791,103792,103828,103830,103834,103837,103839,103933,103972,104236,104744,104792,104984,105015,105019,105216,105490,105509,105510,105511,105526,105581,105590,105597,105816,105974,105976,105977,105982,105983,106000,106004,106023,106030,106034,106038,106040,106050,106051,106054,106056,106081,106084,107133,107135,107136,107171,107172,107201,107216,107255,107267,107323,107327,107331,107335,107379,107485,107545,107625,107629,107657,107852,107881,107883,108139,108335,108339,108343,108403,108438,108453,108526,108530,108888,109133,109356,109454,109458,109468,109633,110363,110442,110502,110619,110696,110751,110768,110797,110839,110971,110974,111402,111420,111524,111571,111625,111626,111627,111742,111763,111766,111767,111768,111821,112229,112230,112232,112233,112234,112235,112236,112238,112239,112240,112338,112428,112532,112534,112538,112540,112541,112988,113245,113248,113273,113796,113799,113802,113809,113906,113907,113908,113909,113910,114103,114733,115453,115454,115455,115648,115866,115874,115875,115876,115883,116121,116144,116518,116595,116801,116985,117201,117255,117258,117278,117289,117291,117294,117303,117430,117431,117612,117627,117628,117762,117763,117765,117950,118090,118093,118094,118096,118121,118264,118294,118384,118544,118549,118679,118680,118683,118786,118788,118943,118971,119053,119173,119239,119240,119605,119645,119837,120076,120108,120127,120226,120273,120344,120358,120376,120377,120378,120386,120698,120751,120800,120801,120805,120810,120811,120816,120820,121009,121166,121321,122021,128399,128400,140176,144315));
UPDATE `creature_template_scaling` SET `ContentTuningID`=1279, `VerifiedBuild`=42010 WHERE (`DifficultyID`=0 AND `Entry` IN (120611,120612));

DELETE FROM `npc_vendor` WHERE (`entry`=112338 AND `item`=143727 AND `ExtendedCost`=6183 AND `type`=1) OR (`entry`=112338 AND `item`=136800 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112338 AND `item`=140973 AND `ExtendedCost`=6102 AND `type`=1) OR (`entry`=112338 AND `item`=140940 AND `ExtendedCost`=6101 AND `type`=1) OR (`entry`=112338 AND `item`=140972 AND `ExtendedCost`=5952 AND `type`=1) OR (`entry`=112338 AND `item`=139736 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=139737 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=139732 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=139731 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=139735 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=139733 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=139738 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=139734 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112338 AND `item`=140543 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112338 AND `item`=140564 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112338 AND `item`=140551 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112338 AND `item`=124124 AND `ExtendedCost`=6214 AND `type`=1) OR (`entry`=103792 AND `item`=138954 AND `ExtendedCost`=6213 AND `type`=1) OR (`entry`=103792 AND `item`=120857 AND `ExtendedCost`=6210 AND `type`=1) OR (`entry`=103792 AND `item`=120861 AND `ExtendedCost`=6210 AND `type`=1) OR (`entry`=103792 AND `item`=120858 AND `ExtendedCost`=6213 AND `type`=1) OR (`entry`=103792 AND `item`=120439 AND `ExtendedCost`=6213 AND `type`=1) OR (`entry`=103792 AND `item`=120432 AND `ExtendedCost`=6213 AND `type`=1) OR (`entry`=103792 AND `item`=120431 AND `ExtendedCost`=6212 AND `type`=1) OR (`entry`=103792 AND `item`=120435 AND `ExtendedCost`=6212 AND `type`=1) OR (`entry`=103792 AND `item`=120434 AND `ExtendedCost`=6212 AND `type`=1) OR (`entry`=103792 AND `item`=120433 AND `ExtendedCost`=6212 AND `type`=1) OR (`entry`=103792 AND `item`=120437 AND `ExtendedCost`=6212 AND `type`=1) OR (`entry`=103792 AND `item`=151877 AND `ExtendedCost`=6210 AND `type`=1) OR (`entry`=103792 AND `item`=151569 AND `ExtendedCost`=6209 AND `type`=1) OR (`entry`=103792 AND `item`=151633 AND `ExtendedCost`=6209 AND `type`=1) OR (`entry`=103792 AND `item`=151131 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=151180 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=74918 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=34249 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27940 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27944 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27982 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27976 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27941 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27945 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27979 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27992 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=103792 AND `item`=27978 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(112338, 17, 143727, 0, 6183, 1, 0, 0, 42010), -- 143727
(112338, 16, 136800, 0, 0, 1, 0, 0, 42010), -- 136800
(112338, 15, 140973, 0, 6102, 1, 0, 0, 42010), -- 140973
(112338, 14, 140940, 0, 6101, 1, 0, 0, 42010), -- 140940
(112338, 13, 140972, 0, 5952, 1, 0, 0, 42010), -- 140972
(112338, 12, 139736, 0, 6125, 1, 0, 0, 42010), -- 139736
(112338, 11, 139737, 0, 6125, 1, 0, 0, 42010), -- 139737
(112338, 10, 139732, 0, 6125, 1, 43054, 0, 42010), -- 139732
(112338, 9, 139731, 0, 6125, 1, 0, 0, 42010), -- 139731
(112338, 8, 139735, 0, 6125, 1, 43111, 0, 42010), -- 139735
(112338, 7, 139733, 0, 6125, 1, 0, 0, 42010), -- 139733
(112338, 6, 139738, 0, 6125, 1, 0, 0, 42010), -- 139738
(112338, 5, 139734, 0, 6125, 1, 0, 0, 42010), -- 139734
(112338, 4, 140543, 0, 0, 1, 0, 0, 42010), -- 140543
(112338, 3, 140564, 0, 0, 1, 0, 0, 42010), -- 140564
(112338, 2, 140551, 0, 0, 1, 0, 0, 42010), -- 140551
(112338, 1, 124124, 0, 6214, 1, 0, 0, 42010), -- 124124
(103792, 32, 138954, 0, 6213, 1, 0, 0, 41793), -- 138954
(103792, 31, 120857, 0, 6210, 1, 0, 0, 41793), -- 120857
(103792, 30, 120861, 0, 6210, 1, 0, 0, 41793), -- 120861
(103792, 29, 120858, 0, 6213, 1, 0, 0, 41793), -- 120858
(103792, 28, 120439, 0, 6213, 1, 0, 0, 41793), -- 120439
(103792, 27, 120432, 0, 6213, 1, 0, 0, 41793), -- 120432
(103792, 26, 120431, 0, 6212, 1, 0, 0, 41793), -- 120431
(103792, 25, 120435, 0, 6212, 1, 0, 0, 41793), -- 120435
(103792, 24, 120434, 0, 6212, 1, 0, 0, 41793), -- 120434
(103792, 23, 120433, 0, 6212, 1, 0, 0, 41793), -- 120433
(103792, 22, 120437, 0, 6212, 1, 0, 0, 41793), -- 120437
(103792, 21, 151877, 0, 6210, 1, 0, 0, 41793), -- 151877
(103792, 20, 151569, 0, 6209, 1, 0, 0, 41793), -- 151569
(103792, 19, 151633, 0, 6209, 1, 0, 0, 41793), -- 151633
(103792, 16, 151131, 0, 0, 1, 0, 0, 41793), -- 151131
(103792, 14, 151180, 0, 0, 1, 0, 0, 41793), -- 151180
(103792, 11, 74918, 0, 0, 1, 0, 0, 41793), -- 74918
(103792, 10, 34249, 0, 0, 1, 0, 0, 41793), -- 34249
(103792, 9, 27940, 0, 0, 1, 0, 0, 41793), -- 27940
(103792, 8, 27944, 0, 0, 1, 0, 0, 41793), -- 27944
(103792, 7, 27982, 0, 0, 1, 0, 0, 41793), -- 27982
(103792, 6, 27976, 0, 0, 1, 0, 0, 41793), -- 27976
(103792, 5, 27941, 0, 0, 1, 0, 0, 41793), -- 27941
(103792, 4, 27945, 0, 0, 1, 0, 0, 41793), -- 27945
(103792, 3, 27979, 0, 0, 1, 0, 0, 41793), -- 27979
(103792, 2, 27992, 0, 0, 1, 0, 0, 41793), -- 27992
(103792, 1, 27978, 0, 0, 1, 0, 0, 41793); -- 27978


DELETE FROM `gossip_menu` WHERE (`MenuID`=19130 AND `TextID`=27997) OR (`MenuID`=18919 AND `TextID`=27586) OR (`MenuID`=19228 AND `TextID`=19889) OR (`MenuID`=19069 AND `TextID`=29717) OR (`MenuID`=19254 AND `TextID`=28276) OR (`MenuID`=15040 AND `TextID`=21274) OR (`MenuID`=19946 AND `TextID`=29647) OR (`MenuID`=19455 AND `TextID`=28720) OR (`MenuID`=19453 AND `TextID`=28718) OR (`MenuID`=20368 AND `TextID`=30461) OR (`MenuID`=20992 AND `TextID`=31668) OR (`MenuID`=20893 AND `TextID`=31412) OR (`MenuID`=20892 AND `TextID` IN (31408,31410)) OR (`MenuID`=20447 AND `TextID`=30595) OR (`MenuID`=20444 AND `TextID`=30592) OR (`MenuID`=20448 AND `TextID`=30596) OR (`MenuID`=20446 AND `TextID`=30594) OR (`MenuID`=20445 AND `TextID`=30593) OR (`MenuID`=18922 AND `TextID`=27590) OR (`MenuID`=19189 AND `TextID`=28122) OR (`MenuID`=19999 AND `TextID`=29731) OR (`MenuID`=19545 AND `TextID`=28888) OR (`MenuID`=20808 AND `TextID`=31229) OR (`MenuID`=20807 AND `TextID`=31230) OR (`MenuID`=21324 AND `TextID`=32402) OR (`MenuID`=20179 AND `TextID`=30031);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(19130, 27997, 42010), -- 100438 (金刚不坏彭戍)
(18919, 27586, 42010), -- 106942 (游学者周卓)
(19228, 19889, 42010), -- 97777 (金刚不坏彭戍)
(19069, 29717, 42010), -- 108726 (陈·风暴烈酒)
(19254, 28276, 42010), -- 101880 (泰克泰克)
(15040, 21274, 41793), -- 99106 (点灯人老穆)
(19946, 29647, 41793), -- 98939 (贾九鹤)
(19455, 28720, 41793), -- 105088 (残寺派踏风武僧)
(19453, 28718, 41793), -- 105072 (残寺派酒仙武僧)
(20368, 30461, 42010), -- 112338 (凯多丽·亮星)
(20992, 31668, 42010), -- 120747 (指挥官沈利)
(20893, 31412, 42010), -- 119765 (酒仙布兰琪的灵魂)
(20892, 31408, 42010), -- 117504 (酿酒师阿麦)
(20892, 31410, 42010), -- 121152 (酿酒师阿麦)
(20447, 30595, 42010), -- 113909 (孔万泰)
(20444, 30592, 42010), -- 113906 (智者韩楚)
(20448, 30596, 42010), -- 113910 (战术家乔纳)
(20446, 30594, 42010), -- 113908 (玛塔·白牛)
(20445, 30593, 42010), -- 113907 (收藏家班卡德)
(18922, 27590, 42010), -- 98945 (老舒)
(19189, 28122, 42010), -- 101690 (苔荆教头)
(19999, 29731, 41793), -- 105998 (温斯顿·沃尔菲)
(19545, 28888, 41793), -- 101513 (乔拉齐·拉文霍德公爵)
(20808, 31229, 41793), -- 117261 (舰队上将特塞斯)
(20807, 31230, 41793), -- 117261 (舰队上将特塞斯)
(21324, 32402, 41793), -- 103792 (格里伏塔)
(20179, 30031, 41793); -- 102641 (菲琉斯·斯巴塔克)

UPDATE `gossip_menu` SET `VerifiedBuild`=41793 WHERE (`TextID`=27251 AND `MenuID`=18747) OR (`TextID`=28134 AND `MenuID`=19198) OR (`TextID`=27457 AND `MenuID` IN (18850,18851,18848)) OR (`TextID`=18217 AND `MenuID`=12949) OR (`TextID`=29696 AND `MenuID`=19971) OR (`TextID`=28337 AND `MenuID`=19275) OR (`TextID`=28719 AND `MenuID`=19454) OR (`TextID`=27426 AND `MenuID`=18828) OR (`TextID`=5516 AND `MenuID`=4342) OR (`TextID`=28878 AND `MenuID`=19540) OR (`TextID`=32983 AND `MenuID`=21664);
UPDATE `gossip_menu` SET `VerifiedBuild`=42010 WHERE (`MenuID`=13830 AND `TextID`=19966) OR (`MenuID`=20992 AND `TextID`=31666) OR (`MenuID`=18747 AND `TextID`=27251) OR (`MenuID`=20440 AND `TextID`=30587) OR (`MenuID`=18531 AND `TextID`=28847);
UPDATE `gossip_menu_option` SET `OptionText`='我需要空运服务。', `VerifiedBuild`=41793 WHERE (`MenuID`=4342 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='我想要看看你卖的货物。', `VerifiedBuild`=41793 WHERE (`MenuID`=10181 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='让我查看一下拍卖的物品。', `VerifiedBuild`=41793 WHERE (`MenuID`=12949 AND `OptionID`=1);
UPDATE `gossip_menu_option` SET `OptionText`='我想乘风筝出游。', `VerifiedBuild`=42010 WHERE (`MenuID`=13830 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='我要挑战你，托尔。', `OptionType`=1,`VerifiedBuild`=41793 WHERE (`MenuID`=18848 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='我要挑战你，赫尔多。', `OptionType`=1, `VerifiedBuild`=41793 WHERE (`MenuID`=18850 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='我要挑战你，布约恩。', `OptionType`=1, `VerifiedBuild`=41793 WHERE (`MenuID`=18851 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='我们已经准备好来挑战你了，奥丁！', `OptionType`=1, `BoxText`='你想要开始这场首领战吗？', `BoxBroadcastTextID`=57303, `VerifiedBuild`=41793 WHERE (`MenuID`=19198 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='让我看看你有什么。', `VerifiedBuild`=41793 WHERE (`MenuID`=19540 AND `OptionID`=2);
UPDATE `gossip_menu_option` SET `OptionText`='我想要看看你卖的货物。', `VerifiedBuild`=42010 WHERE (`MenuID`=20440 AND `OptionID`=0);


UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7113; -- 加德纳尔守护者
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7106; -- 碧火盗贼
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7110; -- 碧火捕猎者
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=32768 WHERE `entry`=47392; -- 翡翠巨熊
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=43079; -- 凯拉·静林
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=10922; -- 格雷塔·苔蹄
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=47617; -- 法卢斯·野性之心
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=11019; -- 杰希尔·月弓
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=48599; -- 旅店老板提尼考
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=8958; -- 怒爪巨熊
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7099; -- 铁喙狩猎者
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7086; -- 被诅咒的软泥怪
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=8960; -- 魔爪食腐狼
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7153; -- 死木战士
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=37522; -- Romo's Standard Bunny
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=47308; -- Felwood Honey Bunny
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=10921; -- 塔诺恩·红羽
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=11554; -- 格拉兹
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=10923; -- 泰尼尔·飘叶
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=10920; -- 科雷克·望天
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=48607; -- 穆乌拉德
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=48608; -- 卡尔玛
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=22931; -- 高瑞姆
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=10924; -- 伊维·飘叶
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7097; -- 铁喙猫头鹰
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=8956; -- 怒爪熊
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=8959; -- 魔爪狼
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3834; -- 疯狂的古树
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3919; -- 干枯的古树
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3825; -- 幽爪前锋
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry` IN (4054, 34426); -- 欢笑的姐妹
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=67108864 WHERE `entry`=4273; -- 守护者奥达努斯
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34389; -- ELM General Purpose Bunny (Normal & Phase I)
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34377; -- 哈兰尼娅
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3815; -- 闪龙
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=67108864 WHERE `entry`=3833; -- 塞纳里奥辩护者
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34366; -- 战歌先锋
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1 WHERE `entry`=12836; -- 游荡的守护古树
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3817; -- 黑角鹿
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3824; -- 幽爪嗥叫者
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=12877; -- 埃尔托格·怒齿
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33195; -- 灰谷弓箭手
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=12720; -- 弗拉纳里
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=12724; -- 皮克希尔
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33726; -- 碎木攻城车
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33728; -- 德娜卡
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33688; -- 暴怒的古树
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3928; -- 腐烂的泥浆怪
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3821; -- 野棘潜伏者
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33697; -- Raging Ancient Target
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=6073; -- 灼热的地狱火
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3784; -- 裂木沼泽兽
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=11697; -- 玛诺洛克鞭笞者
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=6115; -- 咆哮的恶魔卫士
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3782; -- 移石沼泽兽
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33736; -- Fel Fire Bunny
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34294; -- 保卫者多里纳
UPDATE `creature_template` SET  `minlevel`=30, `maxlevel`=30 WHERE `entry`=17310; -- 纳亚尔
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34182; -- Warsong Fires Target
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34177; -- 灰谷斥候
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=11684; -- 地精伐木机
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34138; -- Ashenvale Oak Bunny
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33706; -- 战歌伐木机
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=11681; -- 战歌伐木工
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=17304; -- 监工古尔萨克
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34233; -- 守护者曼纳林
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34232; -- 茜拉尔特使
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=11683; -- 战歌萨满祭司
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34212; -- Ashenvale Assassin Bunny 00
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=11682; -- 战歌步兵
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3820; -- 野棘毒蜘蛛
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=45082; -- 拍卖师泽基
UPDATE `creature_template` SET `minlevel`=9, `maxlevel`=9 WHERE `entry`=174863; -- 艾薇
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388608 WHERE `entry`=133168; -- 奥格瑞玛卫兵
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388608 WHERE `entry`=45015; -- 暗矛猎头者
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388608 WHERE `entry`=45822; -- 休班的卫兵
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=45659; -- 拍卖师芬卡
UPDATE `creature_template` SET `minlevel`=64, `maxlevel`=64 WHERE `entry`=63085; -- 暴暴
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388608 WHERE `entry`=30611; -- “步兵”格莉拉·克拉奇
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388608 WHERE `entry`=45814; -- 奥格瑞玛卫兵
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=12798; -- 步兵贝克拉
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=12797; -- 步兵科尔夫
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=25081; -- 步兵欧恩达
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=102904; -- 艾莎·云歌
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=102901; -- 大丹·风暴烈酒
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=173279; -- 奥格瑞玛步兵
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=14376; -- 斥候曼斯雷尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=101459; -- 战利品
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=536904448, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=118741; -- 特里尔
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=111374; -- 萨拉塔斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags2`=4194304 WHERE `entry`=95675; -- 神王斯科瓦尔德
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=117716; -- 无冕者征募官
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119514; -- 坚定的斗士
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=120810; -- 石鳍暴雨使者
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=111936; -- 萨奇尔

UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=67141696 WHERE `entry`=99868; -- 芬雷尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=103801; -- 阿斯法尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=101712; -- 英灵殿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33587200 WHERE `entry`=99828; -- 训练有素的鹰
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=95674; -- 芬雷尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832 WHERE `entry`=96677; -- 钢颚灰熊
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832 WHERE `entry`=99891; -- 风暴幼龙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96611; -- 怒蹄公牛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96934; -- 瓦拉加尔捕兽者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32768 WHERE `entry`=96609; -- 金鬃雄鹿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96608; -- 黑爪座狼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=99804; -- 瓦拉加尔驯鹰人
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2110, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=102550; -- 梵妮莎·范克里夫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=121343; -- 班禄
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry` IN (101638, 101640); -- 艾尔的选民
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=101637; -- 瓦拉加尔候选者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=101639; -- 瓦拉加尔女武神
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=116173; -- 虚空之誓教徒
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2813, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=118732; -- 梦境林地治愈者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `BaseAttackTime`=2000, `unit_flags`=536870912, `unit_flags2`=33556480 WHERE `entry`=118422; -- 怒刃荣誉卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2813, `BaseAttackTime`=2000, `unit_flags`=536903936, `unit_flags2`=33556480 WHERE `entry`=118633; -- 利爪德鲁伊
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=101758; -- 风暴之眼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=101697; -- 永恒猎场
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `unit_flags`=33104, `unit_flags3`=1 WHERE `entry`=97202; -- 启迪者奥米尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `unit_flags`=33104, `unit_flags3`=1 WHERE `entry`=97219; -- 索斯坦
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97197; -- 瓦拉加尔净化者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2048, `dynamicflags`=4 WHERE `entry`=106320; -- 沃伦德·风暴使者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=102423; -- 一杯蜜酒
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_walk`=1.60000002384185791, `BaseAttackTime`=2000, `unit_flags`=33554448, `unit_flags2`=2048 WHERE `entry`=120814; -- 卜大师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832, `unit_flags3`=2, `HoverHeight`=9 WHERE `entry`=95833; -- 赫娅
UPDATE `creature_template` SET `gossip_menu_id`=18851, `faction`=16, `npcflag`=0 WHERE `entry`=97081; -- 布约恩国王
UPDATE `creature_template` SET `gossip_menu_id`=18848, `faction`=16, `npcflag`=0 WHERE `entry`=97084; -- 托尔国王
UPDATE `creature_template` SET `faction`=16, `npcflag`=0 WHERE `entry`=97083; -- 拉努夫国王
UPDATE `creature_template` SET `faction`=35, `unit_flags`=33104 WHERE `entry`=94960; -- 海姆达尔
UPDATE `creature_template` SET `gossip_menu_id`=18850, `faction`=16, `npcflag`=0, `dynamicflags`=4 WHERE `entry`=95843; -- 赫尔多国王
UPDATE `creature_template` SET `gossip_menu_id`=19198, `npcflag`=1, `unit_flags`=33088 WHERE `entry`=95676; -- 奥丁
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832, `unit_flags3`=0 WHERE `entry`=96574; -- 雷铸斥候
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832, `unit_flags3`=0 WHERE `entry`=95834; -- 瓦拉加尔秘法师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `HoverHeight`=3 WHERE `entry`=103049; -- 梅尔芭
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32832, `unit_flags3`=0 WHERE `entry`=95842; -- 瓦拉加尔唤雷者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=2129984, `unit_flags3`=0 WHERE `entry`=97087; -- 瓦拉加尔勇士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=117270; -- 爆烈魔焰
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `dynamicflags`=0 WHERE `entry`=120612; -- 潜伏的女猎手
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `dynamicflags`=0 WHERE `entry`=120611; -- 潜伏的刺客
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=102903; -- 季·火掌
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=69815; -- 静音飞翼龙
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61061; -- Tiger Temple General Purpose Bunny
UPDATE `creature_template` SET `unit_flags3`=1056768 WHERE `entry`=102024; -- 月落角鹰兽
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=101780; -- 月落角鹰兽
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61212; -- 白虎寺观众
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `dynamicflags`=4 WHERE `entry`=120827; -- 冷鳍鲤鱼
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=61211; -- 白虎寺武僧
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=66891; -- 泽地阔步者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60475; -- 恐祸
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60431; -- 勇齐蛮兵
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60459; -- 烈焰骑手
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60458; -- 部族炼金师
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59385; -- 勇齐斥候
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59353; -- 老麝香爪
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=60995; -- 暴怒蛮兵
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=50769; -- 被放逐的赞伊
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=120726; -- 水语者云离
UPDATE `creature_template` SET `unit_flags3`=8192 WHERE `entry`=108612; -- 黏糊糊的水母
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=89975; -- 塞纳苟斯
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59083; -- 巴塔里火战士
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=89362; -- 凯恩·日怒
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47, `faction`=90, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=117420; -- 巴沙加克斯
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47, `faction`=90, `speed_walk`=1.60000002384185791, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=117422; -- 达克瑟扎尔
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47, `faction`=90, `speed_walk`=1.60000002384185791, `speed_run`=0.571428596973419189, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=117423; -- 杰拉克鲁尔

UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59679; -- 部落牦牛
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=59448; -- 利维特·急刹
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=59449; -- 匿踪大师琪麟
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59690; -- 获救的雇农
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63751; -- 雇农小寇
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62883; -- 打瞌睡的麦金
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=67176; -- 护甲匠小刚
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63535; -- 邵长老
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=61745; -- 翔天爪
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=59442; -- 纳兹戈林将军
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63821; -- 部落徒弟
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59486; -- 巴塔里战旗卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=119876; -- 地狱犬
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=90, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=121351; -- 恐翼魔蝠
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=103482; -- 泰瑟兰·血望者
UPDATE `creature_template` SET `gossip_menu_id`=10183 WHERE `entry`=107376; -- 维里迪斯·法隆
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59970; -- 斡耳朵作战牦牛
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60099; -- 西部钻油机
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59972; -- 斡耳朵战士
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59968; -- 斡耳朵掠夺者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=50332; -- 考达·多罗斯
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60879; -- 死去的猢狲
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry` IN (59816, 59814); -- 死去的运货人
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60420; -- 苜蓿保管人
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=60416; -- 表叔东风急
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60596; -- 表哥山羊毛
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60503; -- 表叔激情豆
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60425; -- 表哥山茶叶
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60423; -- 表哥铜钱迷
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59755; -- 堂弟油牦牛
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59413; -- 表哥山麝香
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62961; -- 寇塔峰土地精
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry` IN (117263, 119822); -- 莉莉安·沃斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=117259; -- 乔拉齐·拉文霍德公爵
UPDATE `creature_template` SET `gossip_menu_id`=20808, `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=1300, `unit_flags`=33536, `unit_flags2`=2048, `VehicleId`=5134 WHERE `entry`=117261; -- 舰队上将特塞斯
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60550; -- 野地刺灵
UPDATE `creature_template` SET `minlevel`=46, `maxlevel`=46 WHERE `entry`=120425; -- 莫尔葛工头
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=61819; -- 班·熊心
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=61820; -- 铁腹老陈
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=61454; -- 孙娜·默拳
UPDATE `creature_template` SET `gossip_menu_id`=13830, `minlevel`=60, `maxlevel`=60 WHERE `entry`=61512; -- 风筝大师林息
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=61816; -- 林·默拳
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63564; -- 影踪派守关者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=121481; -- "Owl and the Dreadlord" Quest Dungeon Entrance POI Marker
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=1 WHERE `entry`=63603; -- 班的热气球
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378 WHERE `entry`=66464; -- 金尼
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63647; -- 吃了一半的鱼
UPDATE `creature_template` SET `faction`=775 WHERE `entry`=89830; -- 美酒商人
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=44872; -- 步兵瓦邦
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=45339; -- 黑暗牧师塞希莉
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=45337; -- 提耶利斯
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=46140; -- 银月城代表团卫士
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388608 WHERE `entry`=46142; -- 被遗忘者代表亡灵卫兵
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63 WHERE `entry`=175135; -- 洛坎
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=44871; -- 步兵格雷姆弗
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=72559; -- 雷霆崖防御者
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=88703; -- 步兵阿胡恩
UPDATE `creature_template` SET `unit_flags3`=1048577 WHERE `entry`=118241; -- 军团飞碟
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=44878; -- 步兵卡鲁斯
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=44877; -- 步兵索兰
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=44876; -- 步兵克玛
UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=120751; -- 不稳定的虚空传送门
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=145714; -- 使用通往祖达萨的传送门
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=151937; -- 传送门控制者

UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70415; -- 垂钓翁林·雪爪
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70417; -- 噜噜
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70431; -- 谢尔比
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70338; -- 老海狗苏利文
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70333; -- 垂钓翁强尼·鲁顿
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70404; -- 垂钓翁尹波澄
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70339; -- 垂钓翁史考蒂
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=70423; -- 雪流门徒
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60939; -- 影踪派武士
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60938; -- 影踪派戒卫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `speed_walk`=3.20000004768371582, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=120921; -- 邪煞软泥怪
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=70340; -- “咸水”艾尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=634, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=120759; -- 暴怒残渣
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63649; -- 木头勺
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63648; -- 穆山饼
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63645; -- 不化的冰凌柱
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63612; -- 雪花鞋
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63646; -- 老鹰尾
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63644; -- 金子雪
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63643; -- 影踪禅院卫士
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=63650; -- 沮丧的土地精商人
UPDATE `creature_template` SET `gossip_menu_id`=20992, `minlevel`=45, `maxlevel`=45, `faction`=2482, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=120747; -- 指挥官沈利
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60937; -- 影踪派守护者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=537166080, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=59540; -- 饥饿的雪人
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=65471; -- 土水派弟子
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=118181; -- 纳纳斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=120797; -- 多克亚
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=120798; -- 猢狲攀岩者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=120799; -- 猢狲投雪者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61316; -- Tablet Kill Credit
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61815; -- Jump Landing Bunny 3
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60022; -- Neverrest Caravan Delivery Credit
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=34816 WHERE `entry`=120744; -- 发臭的土山头
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=62096; -- 表侄弯指甲
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=60186; -- 经验丰富的向导
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378 WHERE `entry`=60177; -- 高山牦牛
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60079; -- General Purpose Bunny (JLR)
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=56739; -- Hozen Hanging Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=1 WHERE `entry`=60220; -- 季禄的货车补给品
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66253; -- 吉斯坦大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry` IN (66258, 66256); -- 程大师
UPDATE `creature_template` SET `unit_flags3`=8388609 WHERE `entry`=66987; -- 训练沙袋
UPDATE `creature_template` SET `unit_flags3`=9437184 WHERE `entry`=66207; -- 许大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66257; -- 曾大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66254; -- 吴大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry` IN (66986, 67009, 67015, 66947, 67021); -- 武僧弟子
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (120722, 120758); -- 卜大师
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry` IN (66946, 118216); -- 梅花桩
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66255; -- 尹大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=67095; -- 杨大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=67092; -- 周大师
UPDATE `creature_template` SET `speed_run`=2.285714387893676757, `unit_flags3`=8388608 WHERE `entry`=67066; -- 武僧弟子
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66260; -- 海特大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66360; -- 布兰登师傅
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66356; -- 黄师傅

UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66355; -- 马歇尔大师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=66353; -- 常大师
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60765; -- Ambush Event Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63155; -- 石头守护者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63177; -- Ambush Trigger Visual
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61799; -- Jump Landing Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61787; -- Arrow Shooting Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63422; -- Arrow Shooting Bunny Visual
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=68774; -- 青玉追随者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61789; -- Arrow Receiving Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61802; -- Jump Landing Bunny 1
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry` IN (62167, 55370); -- General Purpose Bunny ZTO
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=68770; -- 玉锁魁麟
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=68769; -- 皇家枪兵
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `unit_flags`=256 WHERE `entry`=60572; -- 纳卡莱卡斯
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=61603; -- 里克提克皇帝
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60826; -- 皇家守卫
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378, `unit_flags`=570720256, `unit_flags3`=8192 WHERE `entry`=60593; -- 经验丰富的向导
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=58500; -- 着火的残骸
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=69943; -- 咕米
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378 WHERE `entry`=59696; -- 表叔苜蓿叶
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60093; -- 季禄的货车
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59688; -- 奇游·雾爪
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378 WHERE `entry`=59698; -- 堂弟修皮剪
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59697; -- 表侄弯指甲
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59716; -- 幸运旅行者季禄
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59731; -- 堂弟破烂骰
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59699; -- 高山牦牛
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62108; -- 好运的蓝麻绳
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=61504; -- 小鬼白风筝
UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=66306; -- 黑爪密探
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59691; -- 方剂师老袁
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378 WHERE `entry`=59827; -- 塑铁者阿守
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378 WHERE `entry`=59695; -- 邵老大
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60508; -- 曾吉
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=65416; -- Alchemist Yuan
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62158; -- 扎伊予
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62149; -- 雍娜
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61847; -- 游学者周卓
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59701; -- 堂弟皮棉兜
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry` IN (61475, 59790); -- 卢秦步兵
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61490; -- 坦齐斯
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61488; -- 哈吉斯
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61489; -- 希利斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=108348; -- 强力魔仆
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59797; -- 魔古岬唤魂者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=60028; -- ELM General Purpose Bunny Gigantic (scale x6)
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108451; -- 永燃魔仆
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108447; -- 永恒炎术师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108334; -- 古代织法者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=99091; -- 斯普林特·光轮
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=66692; -- 萨姆斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1, `HoverHeight`=3 WHERE `entry`=105226; -- 艾吉拉
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=99079; -- 入门弟子
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=63027; -- 风滚草
UPDATE `creature_template` SET `unit_flags3`=8192 WHERE `entry`=59685; -- 死去的高地穆山兽
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108136; -- 大块头
UPDATE `creature_template` SET `unit_flags`=2147516416 WHERE `entry`=61069; -- 刹嗳呼
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63367; -- 酒仙布夫
UPDATE `creature_template` SET `unit_flags3`=8192 WHERE `entry`=61656; -- 死亡的墨鳃祭司
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59272; -- 武鹏
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378 WHERE `entry`=61572; -- 墨鳃难民
UPDATE `creature_template` SET `unit_flags3`=8193 WHERE `entry`=61655; -- 死亡的墨鳃矛兵
UPDATE `creature_template` SET `unit_flags`=537165840 WHERE `entry`=56183; -- 肿胀的鳄鱼
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62923; -- 空包裹
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=8192 WHERE `entry`=62918; -- 地精旋翼回收器
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62920; -- 冰霜棘
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108617; -- 分裂追捕者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=115242; -- 神枪手派瑞克丝
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62891; -- Rocket Jumpers Shoreline Bunny 02
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108186; -- 军需官佐利克斯
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62870; -- Rocket Jumpers Shoreline Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=55610; -- 蹒跚花苗
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=63420; -- SLG Generic MoP
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=63467; -- 被激怒的树人
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=55180; -- 匿踪大师琪麟
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `npcflag`=0, `unit_flags3`=1 WHERE `entry`=55522; -- 格罗克中士
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=8193 WHERE `entry`=66896; -- 铁腕旋翼机
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=65840; -- 铁腕飞行员
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=8192 WHERE `entry`=65915; -- 铁腕工人
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `npcflag`=18 WHERE `entry`=55523; -- 夏琪亚
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=8192 WHERE `entry`=65842; -- 铁腕医护兵
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=8192 WHERE `entry`=65841; -- 铁腕列兵
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=8192 WHERE `entry`=65905; -- 铁腕中尉
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=55622; -- 乌克门头领
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=1 WHERE `entry`=66897; -- 铁腕旋翼机
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=44775; -- Generic Bunny - PRK (Large AOI)
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=67019; -- 古代雕像肩膀
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=55392; -- Head Kill Credit Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=62545; -- 大堆火焰
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=66911; -- 罗布·悲鸣
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=55388; -- Shoulder Kill Credit Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=67016; -- 古代雕像躯干
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=55383; -- Arm Kill Credit Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=1 WHERE `entry`=66916; -- Hozen Dangler VEHICLE
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry` IN (66917, 55470); -- 猢狲震地者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=55379; -- Torso Kill Credit Bunny
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=1 WHERE `entry`=66848; -- 艾利·蜜掌
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (118166, 118165); -- 黑帆炮手
UPDATE `creature_template` SET `npcflag`=18 WHERE `entry`=98135; -- 荒野工匠奥斯默
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=113937; -- Invisible Stalker
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=105882; -- 赛兰德拉·林歌
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93582; -- 尼米娅·暮泉
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93327; -- 狂缚雄鹿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91650; -- 伊芙丽·夜语
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=95320; -- 腐蚀者康格拉克斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=103841; -- 影箭
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=112433; -- 先锋格弗多
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=105554; -- 碎石侍女
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=105613; -- 裂背蜘蛛
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=103805; -- 黑角母鹿
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=102426; -- 大嘴
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=98213; -- 草药师塔里隆
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=102030; -- 凯丽娅·风羽
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=101767; -- 莱瑞娅·风羽
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=106182; -- 受伤的月落防御者
UPDATE `creature_template` SET `unit_flags`=33587200 WHERE `entry`=102034; -- 野生月落角鹰兽
UPDATE `creature_template` SET `minlevel`=46 WHERE `entry` IN (106048, 106047); -- 夜之子根除者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=106275; -- 指挥官多米蒂勒
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=113606; -- 魔网结界
UPDATE `creature_template` SET `minlevel`=47 WHERE `entry`=122926; -- 克罗米的影像
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=96771; -- 战斗法师鲁克姆斯
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=96770; -- 战斗法师穆琳娜
UPDATE `creature_template` SET `unit_flags3`=1048577 WHERE `entry`=115884; -- 命中能量力场
UPDATE `creature_template` SET `unit_flags3`=1048577 WHERE `entry`=115868; -- 能量力场
UPDATE `creature_template` SET `unit_flags3`=1048577 WHERE `entry`=115872; -- 负能量场
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry` IN (113598, 113592); -- 至高岭保卫者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32768, `unit_flags3`=0 WHERE `entry`=90907; -- 维瑟尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92475; -- Signal Boost Controller
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92547; -- 被控制的恐翼蝙蝠
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048576 WHERE `entry`=92557; -- 空军上将罗杰斯
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=90749; -- 空军上将罗杰斯
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=55632; -- 狒狒村恶猴
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `VehicleId`=4435, `HoverHeight`=3 WHERE `entry`=112127; -- 詹妮弗·卡塞
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112205; -- 艾瑞克·朗豪
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112622; -- 泽克·扎卡
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112624; -- 夏妮·网须
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=2048, `unit_flags3`=1, `VehicleId`=4926 WHERE `entry`=112137; -- 20% Credit
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `HoverHeight`=3 WHERE `entry`=112217; -- 尖锐的拉基塔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112225; -- 阵亡的族长
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112200; -- 格弗勒弗
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112620; -- 罗恩·灰须
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `VehicleId`=4435, `HoverHeight`=3 WHERE `entry`=112215; -- 克莉丝基娜·贾玛提诺
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112560; -- 凯尔·心弦
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112207; -- 峭壁行者乔尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112203; -- 投矛者卡鲁茨
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=98910; -- 训练有素的鹰
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112559; -- 自由人安德鲁
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112219; -- 马丁·法斯特
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `HoverHeight`=3 WHERE `entry`=112619; -- 托妮·康纳
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1885, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=112556; -- 狂战士丹普卡里
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=34816 WHERE `entry`=118217; -- 提卡塔克
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65545; -- 火金派武僧
UPDATE `creature_template` SET `unit_flags`=67141696 WHERE `entry`=107914; -- 岩牙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109482; -- 惊魂船长
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93608; -- 本杰明·帕里什
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93609; -- 塔尔娅·帕里什
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93610; -- 艾米利亚·帕里什
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=98106; -- 艾略特·西德里克
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109468; -- 湮灭号船员
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91795; -- 风暴之翼主母
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=118220; -- 杨护士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=536903936, `unit_flags2`=2048 WHERE `entry`=118214; -- 伊斯卡
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=118208; -- 苔荆教头
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119599; -- [DNT] Scroll on Side
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119596; -- [DNT] Desk
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119598; -- [DNT] Upright Scroll
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=118212; -- 伯根·三杯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119587; -- [DNT] Keg Side
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119586; -- [DNT] Keg Up
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=118219; -- “瓦片鲨”莉萨
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=118215; -- 祖巴吉·断矛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=118218; -- 提丽·莫斯沃斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=118209; -- “铁皮”曹敖
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=118211; -- 林音
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=118210; -- 项恨腹
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=118249; -- 武僧旗帜
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=118207; -- 楚石腹
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=119590; -- 警惕的熊猫人之灵
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=118959; -- 芬斯维克
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=90507; -- 利奥达斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108335; -- 古代烈焰幽魂
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108438; -- 永恒塑法者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108453; -- 光明魔仆
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=120127; -- 诡异邪能
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=118874; -- 罗兰·桶腹
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=118875; -- 一桶风暴蜜酒
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108530; -- 德克加尔风裔骑士
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=91486; -- 风暴之翼幼龙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=67141696 WHERE `entry`=90057; -- 刀喙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2785, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=104365; -- 至高岭囚犯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91517; -- 破风者雷吉尔
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=91204; -- 蔑潮斧枪兵
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=108526; -- 蔑潮工人
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=91202; -- 风暴之翼幼龙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=119915; -- 金刚不坏彭戍
UPDATE `creature_template` SET `unit_flags2`=34816 WHERE `entry`=110534; -- 后勤官谢尔顿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96139; -- 泰坦控制台
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=14881; -- 蜘蛛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92965; -- 黑暗之影
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=92620; -- 指挥官加洛德·影歌
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=111876; -- 萌芽的树
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108174; -- 贝尔格拉特
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=100884; -- 拉苏妮·星刃
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=91776; -- 埃洛瑟尔助祭
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91774; -- 萨斯塔拉树妖
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93056; -- 埃洛瑟尔助祭
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=92698; -- 泉眼水黾
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=100498; -- 贾布尔
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=2000 WHERE `entry`=102877; -- 吉尔尼斯狂心战士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=102864; -- 吉尔尼斯保卫者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=102865; -- 吉尔尼斯盾卫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `dynamicflags`=4 WHERE `entry`=92180; -- 希尔赛
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=256, `unit_flags2`=2048 WHERE `entry`=92365; -- 沼泽小蜘蛛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=189, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=92333; -- 灰顶鹤
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=98015; -- 希格里德
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=91150; -- 埃洛瑟尔助祭
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=96932; -- 孵化中的鹰身人蛋
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=105751; -- 暴怒的海巨人
UPDATE `creature_template` SET `npcflag`=16777216, `unit_flags`=33587200, `unit_flags2`=2048 WHERE `entry`=92874; -- 埃洛瑟尔助祭
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2817, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=98016; -- 柯吉尔
UPDATE `creature_template` SET `unit_flags`=33587200 WHERE `entry`=91149; -- 埃洛瑟尔助祭
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108212; -- 二副席勒斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108137; -- 大副奥斯万
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=93581; -- 小毛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92001; -- 萨莎·晨露
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92000; -- 贾文·棘爪
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048576 WHERE `entry`=73427; -- 特诺·棘掌
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=73426; -- 瑞丽萨·熊歌
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93890; -- 斯古克长老
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry` IN (101422, 91306, 91043); -- 利爪德鲁伊
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=117768; -- 云瀑长老
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=34816 WHERE `entry`=116035; -- 黑帆宝藏
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108163; -- 糟壳蟹
UPDATE `creature_template` SET `unit_flags`=537165824, `unit_flags2`=33556481, `unit_flags3`=1056768 WHERE `entry`=93946; -- 神殿弓箭手
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=94109; -- 缠绕藤蔓
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=100459; -- 布林兰娅·月石
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=94137; -- 神殿卫士
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=110896; -- 上古歼灭者
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=92794; -- 恐魔蝙蝠
UPDATE `creature_template` SET `unit_flags`=33587200 WHERE `entry`=92792; -- 梦魇骑士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=118265; -- 无冕者破坏者
UPDATE `creature_template` SET `gossip_menu_id`=19971 WHERE `entry`=109738; -- 芙勒瑞斯·星叶
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92104; -- 蓟叶无赖
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=93314; -- 闪蹄母鹿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048577 WHERE `entry`=114654; -- 魔网节点
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=109807; -- 野生夜刃豹
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=93318; -- 灰喉巨熊
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=93319; -- 灰喉熊崽
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93677; -- 发抖的灰喉熊崽
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=93489; -- 被俘的月翼精灵龙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=537166592, `unit_flags2`=1, `unit_flags3`=8192 WHERE `entry`=93680; -- 利爪德鲁伊
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777218, `unit_flags`=33280, `unit_flags2`=34816 WHERE `entry`=91223; -- 科达·钢爪
UPDATE `creature_template` SET `gossip_menu_id`=19275, `minlevel`=45, `maxlevel`=45, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `HoverHeight`=3 WHERE `entry`=102843; -- 艾吉拉
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `HoverHeight`=2 WHERE `entry`=102848; -- 希尔弗纳
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109867; -- 法拉石颚蜥
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=95223; -- 斯纳格利
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=90, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `HoverHeight`=4.5 WHERE `entry`=117277; -- 炼金师科瑞娅
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1917, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `unit_flags3`=1048576, `VehicleId`=4880, `HoverHeight`=4 WHERE `entry`=109994; -- 风暴之爪
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2000, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `unit_flags3`=1048576, `VehicleId`=4878 WHERE `entry`=109942; -- 风暴之触雄鹿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1711, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `unit_flags3`=1048576, `VehicleId`=4879 WHERE `entry`=109967; -- 风暴之触战熊
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2000, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `unit_flags3`=1048576, `VehicleId`=4771 WHERE `entry`=107020; -- 风暴之触岩羊
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1711, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1048576, `VehicleId`=4780 WHERE `entry`=107463; -- 风暴之触座狼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=105749; -- 冥口猎魂者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=115291; -- 海拉加尔窃魂者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=115276; -- 瓦拉加尔之魂
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=0 WHERE `entry`=105750; -- 淹死的牧师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97990; -- Kill Credit: Remnants of the Past
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108580; -- 符文贤者弗洛奇
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91318; -- 葛诺酋长
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91645; -- 暗魔梦境猎犬
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109133; -- 蝙蝠管理员克劳德
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109138; -- 作战蝙蝠
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93578; -- 燃皮猎手
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=105973; -- 梦魇乍醒
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91288; -- 燃皮战士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91044; -- 暗魔拷问者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432 WHERE `entry`=105960; -- 嗜睡梦魇
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91118; -- 钉刺黄蜂
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91142; -- 梦魇触须
UPDATE `creature_template` SET `unit_flags`=67141632 WHERE `entry`=110562; -- 巴哈加
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93577; -- 燃皮吟咏者
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=91660; -- 鬼魅防御者
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=90336; -- 蓝翼雏龙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=90, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=120628; -- 恶毒小鬼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=90, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=120629; -- 暗火魔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=107168; -- 恶魔哨卫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2804, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480, `unit_flags3`=1048576 WHERE `entry`=105913; -- 特德·舒马克
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=105914; -- 恶魔卫士
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=91095; -- 马瑞斯·魔灾
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048576 WHERE `entry`=91580; -- 特德·舒马克
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91585; -- 恶魔猎犬
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91579; -- 末日领主卡兹洛克
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=88782; -- 纳萨拉斯守夜人
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91544; -- 布兰赛德船长
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91524; -- 火炮
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=16448 WHERE `entry`=89884; -- 船长克星弗洛格
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91528; -- 南海走私者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93487; -- 文雅的洛什
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93475; -- 克里夫·雷山
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108349; -- 冰寒魔宠
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108340; -- 古代冰女巫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108153; -- 黑帆打捞“专家”
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108343; -- 阴燃魔仆
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108339; -- 古代召焰者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108139; -- 黑帆船工
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108146; -- 黑帆枪手
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=108337; -- 古代霜语者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=102055; -- 赛拉·月卫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111626; -- 米拉娜·星光
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111768; -- 邪火魔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=2, `BaseAttackTime`=1300, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=118125; -- 舰队上将特塞斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=118126; -- 咸饼干
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `dynamicflags`=4 WHERE `entry`=108133; -- 黑帆奴贩
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=108888; -- 新兵希温黛儿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111627; -- 新兵天影
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry` IN (102057, 111625, 111757); -- 守望者新兵
UPDATE `creature_template` SET `gossip_menu_id`=20440, `minlevel`=45, `maxlevel`=45 WHERE `entry`=107379; -- 麦琳·刀翼
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=73783; -- 前方危险
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=73785; -- 前方有危险敌人
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=73793; -- 需要坦克
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=73794; -- 需要治疗者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=73795; -- 需要伤害输出者
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=73790; -- 致命陷阱
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=109558; -- 巨鹰
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=73788; -- 这里！
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=111418; -- 新兵星语
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=570687488, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=111898; -- 守护者角鹰兽
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=112008; -- 峭壁狐
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=112041; -- 死亡的守望者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111767; -- 暗焰魔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=112010; -- 蓝翼卫兵
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=537133056 WHERE `entry`=112042; -- 死亡的恶魔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_walk`=1, `BaseAttackTime`=2000 WHERE `entry`=111766; -- 炽燃魔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111479; -- 剧毒织网者
UPDATE `creature_template` SET `BaseAttackTime`=2000, `dynamicflags`=4 WHERE `entry`=120376; -- 蔑魔新兵
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=2000 WHERE `entry`=117278; -- 邪火焚化者
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=117201; -- 邪能酒播撒器
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2636, `BaseAttackTime`=1000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=117253; -- 玄牛宗师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2636, `BaseAttackTime`=1000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=117254; -- 白虎宗师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (117305, 119664); -- 酿酒师阿麦
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `speed_walk`=1.60000002384185791, `speed_run`=2, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048, `HoverHeight`=15 WHERE `entry`=111454; -- 贝崔克丝
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=118850; -- 狂奔的地狱战马
UPDATE `creature_template` SET `HoverHeight`=3.60000014305114746 WHERE `entry`=117763; -- 肯瑞托书籍
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111456; -- 小蜘蛛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111469; -- 掠行者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=16384, `unit_flags2`=2048 WHERE `entry`=102066; -- 海洋卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=111438; -- 积怨掠夺者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `dynamicflags`=4, `HoverHeight`=17.5 WHERE `entry`=105129; -- 索尔加泽
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry` IN (111524, 111508); -- 黑火邪翼蝠
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111751; -- 恶毒漫步者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111889; -- 硫磺愤怒卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33554688, `unit_flags2`=2048 WHERE `entry`=111543; -- Invisible Stalker Summoner
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `dynamicflags`=4 WHERE `entry`=111481; -- 积怨守卫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags2`=2048, `dynamicflags`=4 WHERE `entry`=111457; -- 积怨飓语者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111571; -- 泥地蟹
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111570; -- 海湾鸥
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111742; -- 腐蚀之喉
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=67141632 WHERE `entry`=111929; -- 魔誓污染者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry` IN (111821, 102059); -- 魔誓精锐
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=16 WHERE `entry`=103972; -- 魔誓背叛者
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=107983; -- 石铸卫兵
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111823; -- 魔誓背叛者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=7, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags2`=33556480, `unit_flags3`=8388609 WHERE `entry`=111824; -- 训练假人
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2854, `speed_walk`=1.60000002384185791, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=112339; -- 萨莉斯·黑暗猎手
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=0 WHERE `entry`=111763; -- 实验邪能腐化器
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=111784; -- 无尽之海螃蟹
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97942; -- 拉瓦塞斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=90578; -- Stellagosa Chain Bunny - All Phases
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=91719; -- 走私者蛮兵
UPDATE `creature_template` SET `unit_flags`=295680 WHERE `entry`=112874; -- 兰顿·多伊
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=112866; -- 阿瓦娅·远风
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=107368; -- 艾瑞达灵魂法师
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=117612; -- 地狱犬
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=107335; -- 邪焰小鬼
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=89290; -- 女王的复仇号水手
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97983; -- Credit - North Portal Destroyed
UPDATE `creature_template` SET `gossip_menu_id`=20893, `minlevel`=45, `maxlevel`=45, `faction`=2860, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=119765; -- 酒仙布兰琪的灵魂
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry` IN (119771, 119772); -- 邪能中毒的弟子
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=119773; -- 邪能中毒的弟子
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=108825; -- 咒法师马戈斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (105113, 105107); -- 残寺派囚犯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=105118; -- 风暴蜜酒
UPDATE `creature_template` SET `npcflag`=16777216, `dynamicflags`=0 WHERE `entry`=105105; -- 风暴蜜酒
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1768, `speed_walk`=1.60000002384185791, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=117125; -- 佐利斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1768, `BaseAttackTime`=2000, `unit_flags`=32832 WHERE `entry`=119735; -- 酒仙布兰琪
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=107216; -- 军团狱卒
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=107331; -- 艾瑞达食魂者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=101490; -- 斯莱德
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=102605; -- 提尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105981; -- 混乱之手阿兰提尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105908; -- 米尔顿·比斯
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=99349; -- 好运的罗伯特·勒洛尔
UPDATE `creature_template` SET `gossip_menu_id`=19540 WHERE `entry`=97004; -- “红发”杰克·芬德
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=103092; -- 伟大的阿卡扎曼扎拉克
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=108323; -- 吉尔尼斯卫兵
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1768, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2639872 WHERE `entry`=117108; -- 军团传送门
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `speed_walk`=0.25, `speed_run`=0.285714298486709594, `BaseAttackTime`=2500, `unit_flags`=33280, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=117158; -- 凶猛小鬼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `speed_walk`=0.25, `speed_run`=0.285714298486709594, `BaseAttackTime`=2500, `unit_flags`=33280, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=117159; -- 虫语清道夫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `speed_walk`=0.25, `speed_run`=0.285714298486709594, `BaseAttackTime`=2500, `unit_flags`=33280, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=117112; -- 魔刃哨兵
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=67110912, `unit_flags3`=1 WHERE `entry`=120997; -- Fel Rain Invisible Bunny (Medium)
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=107201; -- 军团碎心者
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=107133; -- 愤怒卫士
UPDATE `creature_template` SET `gossip_menu_id`=18531 WHERE `entry`=93973; -- 织魔者法索杜斯
UPDATE `creature_template` SET `faction`=1732 WHERE `entry`=32639; -- 尼莫
UPDATE `creature_template` SET `faction`=1732 WHERE `entry`=32638; -- 阿古斯的哈克穆德
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=107136; -- 驯犬者斯托克西斯
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=107135; -- 魔法猎犬
UPDATE `creature_template` SET `gossip_menu_id`=18828 WHERE `entry`=91743; -- 禁锢法阵
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=108890; -- 符文林地雄鹿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=107105; -- 蛛母丽萨克丝
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=93066; -- 骨语符文斧兵
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=117744; -- 邪能软泥怪
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119242; -- [DNT] Gold Pile
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=119254; -- 纳格尔·爆言
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=117721; -- 达戈
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=118931; -- [DNT] Water Lily
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119523; -- 无冕者铁匠
UPDATE `creature_template` SET `faction`=2105 WHERE `entry`=118370; -- 阿古斯防御者
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=2000 WHERE `entry`=122021; -- Portal Bunny
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119258; -- 无冕者卫兵
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105054; -- 赛莱拉·钢咏
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=117502; -- 坚忍蟑螂
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=117879; -- [DNT] Archery Target
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=107696; -- 塔什瑞尔领主
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=107657; -- 奥术师沙尔曼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67108864, `unit_flags3`=1 WHERE `entry` IN (119151, 119152, 116992); -- 酒厂大门
UPDATE `creature_template` SET `gossip_menu_id`=19453, `minlevel`=45, `maxlevel`=45, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105045; -- 安古斯·铁拳
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=112481; -- 蔑魔狂热者
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=93870; -- 灰色哨所守卫
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33587968, `unit_flags2`=67143680 WHERE `entry`=111236; -- 假人
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=94413; -- “大锤”伊赛尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry` IN (107629, 107628, 107625, 107624); -- 复仇的灵魂
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2860, `speed_walk`=2, `speed_run`=2.142857074737548828, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (119621, 119620, 119619); -- 风暴烈酒酿酒师
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=88090; -- 深海指挥官扎林
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=99420; -- 卡米拉
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=90282; -- 狂乱的雏龙
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=89795; -- 艾米苟萨
UPDATE `creature_template` SET `gossip_menu_id`=10181 WHERE `entry`=106904; -- 瓦德玛尔·逐风
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=8192, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `HoverHeight`=5.849999904632568359 WHERE `entry`=90556; -- 达格罗娜
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=67110912 WHERE `entry`=89938; -- 赛鲁勒丹的魔法之爪
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2099200, `unit_flags3`=8388608 WHERE `entry`=89940; -- 蓝翼鳞卫
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=89943; -- 蓝翼守护者
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=107803; -- 野生平原符角牛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109454; -- 开往斯考德-艾希尔的划艇
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92839; -- 朱莉耶塔·斯米瑟
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=98105; -- 亡灵骑兵巴恩斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=93603; -- 纳萨诺斯·凋零者
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=93592; -- 皇家恐怖卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=95444; -- 吉恩·格雷迈恩
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=93612; -- 惊魂港亡灵卫兵
UPDATE `creature_template` SET `faction`=2618 WHERE `entry`=94614; -- 灰色哨所破坏者
UPDATE `creature_template` SET `unit_flags`=536904448, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=107881; -- 蔑潮斩兽者
UPDATE `creature_template` SET `HoverHeight`=0.25 WHERE `entry`=111787; -- 无尽之海鳐鱼
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=112436; -- 追星目标
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=112352; -- 坠星目标
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=99598; -- 斧尾蜥蜴主母
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry` IN (91983, 91975, 92017, 92072); -- 锚点
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=89653; -- 贡戈麦什
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=107367; -- 积怨奴隶主
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_walk`=2, `speed_run`=2.142857074737548828, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=116849; -- 风暴烈酒酿酒师
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=123230; -- 损坏的潜水头盔
UPDATE `creature_template` SET `minlevel`=47, `maxlevel`=47, `faction`=90, `speed_walk`=1.60000002384185791, `speed_run`=0.571428596973419189, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=117800; -- 伊鲁克斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1786, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `dynamicflags`=4 WHERE `entry`=117005; -- 愤怒卫士织刃者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1786, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=117021; -- 虫语抽取者
UPDATE `creature_template` SET `gossip_menu_id`=20892, `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=121152; -- 酿酒师阿麦
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `BaseAttackTime`=2000, `unit_flags`=256, `unit_flags2`=100681728, `unit_flags3`=1 WHERE `entry`=119672; -- 酒厂大门
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `BaseAttackTime`=2500, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=117186; -- 复仇的愤怒卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `speed_walk`=0.25, `speed_run`=0.285714298486709594, `BaseAttackTime`=2500, `unit_flags`=32768, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=117161; -- 复仇的愤怒卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `speed_walk`=0.25, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=117157; -- 邪翼游荡者
UPDATE `creature_template` SET `speed_walk`=0.949999988079071044, `speed_run`=1.085714221000671386 WHERE `entry`=88970; -- 溺死的守夜人
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=109600; -- 田吉
UPDATE `creature_template` SET `gossip_menu_id`=19228, `minlevel`=45, `maxlevel`=45, `faction`=2263, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `VehicleId`=4415 WHERE `entry`=97777; -- 金刚不坏彭戍
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=109823; -- 陈·风暴烈酒
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=105020; -- 沈劳
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=108720; -- 猢狲学徒
UPDATE `creature_template` SET `gossip_menu_id`=19189, `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=101690; -- 苔荆教头
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags3`=1 WHERE `entry`=119627; -- 邪爪啼鸣者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=71305216, `VehicleId`=5349 WHERE `entry`=119245; -- [DNT] Zepp
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=954, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=119244; -- 被俘的虫语者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119259; -- 药剂师基佛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=640, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119256; -- 史密斯奶奶
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119253; -- 卡雷斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=2176, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119255; -- 塔克·语掌
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry` IN (119249, 119251, 119248, 119250); -- 无冕者路匪
UPDATE `creature_template` SET `unit_flags`=33040 WHERE `entry`=118314; -- 伊利达雷执行者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119237; -- [DNT] Lockpick Table
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119236; -- [DNT] Mission Table
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119235; -- [DNT] Poison Table
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119263; -- 被遗忘者炼金师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119247; -- [DNT] Cannon
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=119261; -- 血帆海盗
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=117710; -- [DNT] Large Tent
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry` IN (117704, 117708); -- 无冕者旗帜
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=121083; -- 森提纳克斯激光
UPDATE `creature_template` SET `unit_flags`=16 WHERE `entry`=117630; -- 黑暗收割祈祷者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=119243; -- 负重巨怪
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119488; -- [DNT] Cauldron
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=119238; -- [DNT] Crate stack 01
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=117711; -- [DNT] Small Tent
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119492; -- [DNT] Cannonball Stack
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=640, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=117720; -- 埃林·提亚斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=117722; -- 格里伏塔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=33555200, `unit_flags2`=67110912 WHERE `entry`=119241; -- [DNT] Wanted Posters
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119260; -- 血帆海盗
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=119262; -- 暗矛割喉者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=104755; -- 凯丽翠丝夫人
UPDATE `creature_template` SET `gossip_menu_id`=20892, `minlevel`=45, `maxlevel`=45, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (116900, 117504); -- 酿酒师阿麦
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1771, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=92044; -- 索拉祖恩
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=99141; -- 杨护士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=99108; -- 炼金师老蒋
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=89111; -- 海难俘虏
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1771, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=113872; -- 播邪小鬼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1786, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=104754; -- 播邪小鬼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113809; -- 斯蒂芬·乔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113806; -- 米卡尔·乔普林
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113797; -- 卡林·威尔什
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113800; -- 杰里米·麦金泰尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113810; -- 史蒂夫·麦考利
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113808; -- 肖恩·韦伯斯特
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113805; -- 马修·布朗宁
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113811; -- 凯丽·格林菲德
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113804; -- 贾斯汀斯·班特尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113807; -- 山姆·恩戈
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113799; -- 詹姆斯·科莫福德
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113796; -- 艾里克斯·林格
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113801; -- 乔恩·罗伯特
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113798; -- 查尔斯·萨顿
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113803; -- 科尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=113802; -- 乔纳森·纽什
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120424; -- 阿隆索斯·法奥
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120421; -- 雷特森·焰怒
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120420; -- 金刚不坏彭戍
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120423; -- 伊墨瑞尔·影卫
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120417; -- 梅瑞尔·邪风
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120418; -- 哈维
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120215; -- 大法师卡德加
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120413; -- 伦萨·巨蹄
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120412; -- 预言者努波顿
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120415; -- 大领主达里安·莫格莱尼
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120422; -- 女伯爵莉亚德琳
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120416; -- 乔拉齐·拉文霍德公爵
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48 WHERE `entry`=120419; -- 考瓦斯·血棘
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1, `HoverHeight`=3 WHERE `entry`=102855; -- 艾吉拉
UPDATE `creature_template` SET `gossip_menu_id`=19069, `minlevel`=45, `maxlevel`=45, `faction`=2263, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108726; -- 陈·风暴烈酒
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=99154; -- 梅琴乐
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry` IN (106913, 106873); -- 奥能之泉
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91073; -- 暗影魔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2502, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=107161; -- 地狱犬
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=91166; -- 达格洛普
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=106689; -- 未启动的构造体
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2860, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=116929; -- 酒仙布兰琪
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=82347; -- 追猎者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2502, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=107143; -- 攻城地狱火
UPDATE `creature_template` SET `gossip_menu_id`=19130 WHERE `entry`=100438; -- 金刚不坏彭戍
UPDATE `creature_template` SET `minlevel`=63 WHERE `entry`=142668; -- 商人马库
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `npcflag`=0, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=105056; -- 赛莱拉·钢咏
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `npcflag`=0, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=105058; -- 希罗
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `npcflag`=0, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=105046; -- 安古斯·铁拳
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2502, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=107144; -- 愤怒卫士
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=113389; -- 晨息村民
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry` IN (105523, 105524); -- 猛虎派宗师
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=103630; -- 被遗忘者精锐卫兵
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=120687; -- 维奥莱特·影愈
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=119487; -- 塔里娅·恐角
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=119486; -- 药剂师李
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=116175; -- 卡兰姆·法师之矛
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=103626; -- 被遗忘者卫兵
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=104091; -- 肯瑞托卫士
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=119272; -- 狂野的萨拉
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry` IN (105520, 105519); -- 神鹤派宗师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=1107298304 WHERE `entry`=97785; -- 军团指挥舰
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry` IN (105521, 105522); -- 玄牛派宗师
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1770, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=1050624, `unit_flags3`=1048576 WHERE `entry`=105255; -- 祝踏岚
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2102, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=104758; -- 邪能卫士入侵者
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=55601; -- 狒狒村智者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106044; -- 凯尔莱
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=103829; -- 大药剂师法拉尼尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33587968, `unit_flags2`=2048 WHERE `entry`=106125; -- 软泥怪
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106046; -- 达尔莉亚
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105992; -- 瑟兰尼斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105989; -- 侠盗萝伦
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105990; -- 戈达尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105987; -- 霍夫丹·黑须
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=106063; -- 艾尔文绵羊
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108221; -- 乔里克斯·能火
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106064; -- 暴怒的麻风病人
UPDATE `creature_template` SET `gossip_menu_id`=19254, `minlevel`=45, `maxlevel`=45, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=101880; -- 泰克泰克
UPDATE `creature_template` SET `gossip_menu_id`=18919, `minlevel`=45, `maxlevel`=45, `npcflag`=1099511627779, `BaseAttackTime`=2500, `unit_flags2`=2048 WHERE `entry`=106942; -- 游学者周卓
UPDATE `creature_template` SET `gossip_menu_id`=15040, `minlevel`=45, `maxlevel`=45, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=99106; -- 点灯人老穆
UPDATE `creature_template` SET `gossip_menu_id`=20368 WHERE `entry`=112338; -- 凯多丽·亮星
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=92168; -- 地下城训练假人
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=114776; -- 酿酒助手
UPDATE `creature_template` SET `gossip_menu_id`=18747 WHERE `entry`=99041; -- 侦察地图
UPDATE `creature_template` SET `gossip_menu_id`=18922 WHERE `entry`=98945; -- 老舒
UPDATE `creature_template` SET `gossip_menu_id`=19946 WHERE `entry`=98939; -- 贾九鹤
UPDATE `creature_template` SET `gossip_menu_id`=20446 WHERE `entry`=113908; -- 玛塔·白牛
UPDATE `creature_template` SET `gossip_menu_id`=20448 WHERE `entry`=113910; -- 战术家乔纳
UPDATE `creature_template` SET `gossip_menu_id`=20445 WHERE `entry`=113907; -- 收藏家班卡德
UPDATE `creature_template` SET `gossip_menu_id`=20447 WHERE `entry`=113909; -- 孔万泰
UPDATE `creature_template` SET `gossip_menu_id`=20444 WHERE `entry`=113906; -- 智者韩楚
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=66691; -- 艾兹瑞尔
UPDATE `creature_template` SET `unit_flags`=294912, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=106920; -- 覆羽徘徊者
UPDATE `creature_template` SET `unit_flags3`=1048577 WHERE `entry`=109944; -- 魔网节点
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106045; -- 药剂师基佛
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry` IN (105867, 105858, 105866); -- 无冕维和者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1168231104513, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=106083; -- 扬希·格里尔森
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106079; -- 阿勒瑞克·霍克金斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106075; -- 亚瑟·休维
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106066; -- 石窟嚼石者
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=106040; -- “剃刀”雷吉克
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105997; -- 麦洛克斯
UPDATE `creature_template` SET `gossip_menu_id`=19999, `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=2199023255553, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105998; -- 温斯顿·沃尔菲
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=105993; -- 格雷戈·查尔斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105988; -- 芬斯维克
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105991; -- 夜行者库纳基
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=105985; -- 托尼·罗曼诺
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105984; -- 艾瑞安·影语
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=4227, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105986; -- 凯尔希·钢烁
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2700, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=94162; -- 狼嚎玛丽·史密斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=106002; -- 弗拉胡恩·影语者
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=94141; -- 半兽人迦罗娜
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=3, `BaseAttackTime`=1000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=94138; -- 苔丝·格雷迈恩公主
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=101500; -- 受雇的吟游诗人
UPDATE `creature_template` SET `gossip_menu_id`=18747, `minlevel`=45, `maxlevel`=45, `faction`=190, `npcflag`=137438953473, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680 WHERE `entry`=98093; -- 侦察地图
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=98092; -- 多嘴的尼基
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=98100; -- 陶矢
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=116597; -- 无冕者护甲
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=51200 WHERE `entry`=98102; -- 瓦莉拉·萨古纳尔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=295680, `unit_flags2`=2048 WHERE `entry`=98099; -- 莉莉安·沃斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=111897; -- 达戈
UPDATE `creature_template` SET `gossip_menu_id`=19545 WHERE `entry`=101513; -- 乔拉齐·拉文霍德公爵
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=113852; -- 特里尔
UPDATE `creature_template` SET `unit_flags3`=8388609 WHERE `entry`=92165; -- 地下城训练假人
UPDATE `creature_template` SET `unit_flags3`=8388609 WHERE `entry`=92164; -- 训练假人
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=123087; -- 阿尔阿巴斯
UPDATE `creature_template` SET `gossip_menu_id`=20179, `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1099511627779, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=102641; -- 菲琉斯·斯巴塔克
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry` IN (102604, 102603); -- 满头大汗的打扇人

UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=102594; -- 马林·诺格弗格
UPDATE `creature_template` SET `gossip_menu_id`=21324 WHERE `entry`=103792; -- 格里伏塔
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=121282; -- 萨恩·刀链
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=3, `BaseAttackTime`=1300, `unit_flags`=33536, `unit_flags2`=2048, `VehicleId`=4563 WHERE `entry`=94159; -- 舰队上将特塞斯
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=1000, `unit_flags2`=2048 WHERE `entry` IN (113186, 113152); -- 迪菲亚盗贼
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=1168231104513, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105979; -- 洛妮卡·静刃
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105978; -- 萨罗米
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `npcflag`=640, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=105975; -- 莎妮兹
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=1000, `unit_flags2`=2048 WHERE `entry`=113139; -- 海盗
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2789, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=109609; -- 罗瑞娜·贝利

UPDATE `quest_template` SET `VerifiedBuild`=42010 WHERE `ID` IN (53238, 53233, 53219, 28607, 8194, 44185, 41703, 45657, 45656, 45654, 45651, 24843, 44016, 44302, 44189);
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=6130900294268439629, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45735; -- Lean Shanks
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=6130900294268439629, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45734; -- Raw Clefthoof Meat
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=6130900294268439629, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45733; -- Raw Tiger Steaks
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=6130900294268439629, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45732; -- Crocolisk Tails
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=6130900294268439629, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45731; -- Chilled Meat
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=6130900294268439629, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45730; -- Crunchy Spider Legs
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=6130900294268439629, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45729; -- Sandworm Meat
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=12261800583900083122, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45643; -- Lean Shanks
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=12261800583900083122, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45642; -- Raw Clefthoof Meat
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=12261800583900083122, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45641; -- Raw Tiger Steaks
UPDATE `quest_template` SET `ContentTuningID`=183, `AllowableRaces`=12261800583900083122, `Expansion`=8, `VerifiedBuild`=42010 WHERE `ID`=45639; -- Chilled Meat
UPDATE `quest_template` SET `FlagsEx`=0, `VerifiedBuild`=42010 WHERE `ID`=42713; -- Eye of Azshara: Slug It Out
UPDATE `quest_template` SET `RewardBonusMoney`=92600, `VerifiedBuild`=42010 WHERE `ID`=31833; -- Continue Your Training: Master Woo
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=42010 WHERE `ID`=53224; -- Arathi Donations: Seasoned Loins
UPDATE `quest_template` SET `FlagsEx`=0, `VerifiedBuild`=42010 WHERE `ID`=25249; -- A Change of Heart
UPDATE `quest_template` SET `VerifiedBuild`=41793 WHERE `ID` IN (46001, 29394, 28607, 44015, 43460);
UPDATE `quest_template` SET `FlagsEx`=0, `VerifiedBuild`=41793 WHERE `ID`=25249; -- A Change of Heart

UPDATE `quest_objectives` SET `VerifiedBuild`=42010 WHERE `ID` IN (341184, 340986, 340981, 340965, 288397, 288396, 288395, 288394, 288393, 288392, 288391, 288260, 288259, 288258, 288256, 260407, 285403, 286347, 284226, 284733, 284732, 284629, 284628, 282880, 282703, 281548, 288309, 288304, 288300, 288293, 391646, 391645, 391644, 391643, 392141, 392085, 391873, 391878, 394143, 394142, 394136, 394135, 392169, 392168, 392013, 392012, 392011, 392010, 391603, 391602, 391601, 391600, 392455, 269076, 251785, 340969, 265105, 265104, 264916, 264915, 397205, 285570, 286114, 282974, 283175, 286551, 286550, 286370);
UPDATE `quest_objectives` SET `VerifiedBuild`=41793 WHERE `ID` IN (285570, 285403, 285021, 392455, 288792, 288793, 289938, 288861, 288855, 288854, 288853, 288852, 265105, 265104, 286554, 286113, 285292, 282980, 282979);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=42010 WHERE (`Index`=0 AND `ID` IN (285403,284226,284733,284732,284629,284628,288309,288304,288300,288293,392085,391873,391878,394143,394142,394136,394135,392169,392168,269076,282974,283175,286370)) OR (`Index`=1 AND `ID` IN (288309,392085)) OR (`Index`=2 AND `ID`=392085);
UPDATE `quest_visual_effect` SET `VerifiedBuild`=41793 WHERE (`Index`=0 AND `ID` IN (285403,285021,288792,289938));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=42010 WHERE (`QuestID`=31833 AND `Idx`=0);

DELETE FROM `gameobject_template` WHERE `entry` IN (247038 /*黑脓菇*/, 247037 /*不朽啤酒花*/, 246984 /*奥丁的大锅*/, 225627 /*营火*/, 248501 /*历代记*/, 252795 /*神器调查笔记*/, 246953 /*奥丁的大锅*/, 252859 /*亡灵书*/, 268875 /*孤夜思*/, 268876 /*樱花*/, 268808 /*爪印*/, 268807 /*爪印*/, 268806 /*爪印*/, 268805 /*爪印*/, 267035 /*一桶风暴蜜酒*/, 266978 /*推拉门*/, 266951 /*一桶风暴蜜酒*/, 267905 /*Doodad_PA_GhostBrewery_VermingBossKeg001*/, 269151 /*碎片*/, 269150 /*碎玻璃*/, 269152 /*碎片*/, 267902 /*大门*/, 267907 /*大门*/, 267899 /*大门*/, 267904 /*大门*/, 267901 /*大门*/, 267906 /*大门*/, 267903 /*大门*/, 267900 /*大门*/, 268379 /*一桶庆祝美酒*/, 268378 /*一桶庆祝美酒*/, 268377 /*一桶庆祝美酒*/, 267771 /*手术台*/, 267180 /*邪火炸弹*/, 267041 /*灌注邪能的火药箱*/, 259263 /*椅子*/, 259425 /*椅子*/, 259412 /*椅子*/, 259413 /*椅子*/, 259409 /*长椅*/, 259405 /*椅子*/, 259424 /*椅子*/, 259421 /*椅子*/, 259420 /*椅子*/, 259432 /*椅子*/, 259429 /*椅子*/, 259428 /*椅子*/, 250897 /*训练部队*/, 258907 /*弑君者外观*/, 252188 /*征用的命运印记*/, 252798 /*神器调查笔记*/, 246387 /*火把*/, 252017 /*渡鸦之眼*/, 246670 /*椅子*/, 247545 /*箱子*/, 249908 /*门环*/, 251966 /*走私来的武器*/, 246198 /*武器箱*/, 252044 /*占位符*/, 249427 /*海报*/, 246386 /*书柜*/, 247547 /*箱子*/, 252018 /*军情七处信件*/, 246142 /*大门*/, 249382 /*火把*/, 268621 /*训练部队*/, 249426 /*桨*/, 249423 /*门环*/, 246196 /*瓶子*/, 250898 /*训练部队*/, 247546 /*箱子*/, 244798 /*血腥战利品*/, 259434 /*椅子*/, 259414 /*椅子*/, 259431 /*椅子*/, 249518 /*椅子*/, 259422 /*椅子*/, 259418 /*椅子*/, 259399 /*椅子*/, 259430 /*椅子*/, 259436 /*椅子*/, 259417 /*椅子*/, 259437 /*椅子*/, 249517 /*血腥帐簿*/, 259423 /*椅子*/, 259419 /*椅子*/, 259427 /*椅子*/, 259433 /*椅子*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `IconName`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(247038, 10, 35433, 'questinteract', '', 0.5, 1691, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 203995, 0, 0, 0, 96631, 0, 0, 0, 0, 0, 0, 0, 38308, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 633, 42010), -- 黑脓菇
(247037, 10, 35434, 'questinteract', '', 1, 1691, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 203994, 0, 0, 0, 96631, 0, 0, 0, 0, 0, 0, 0, 38308, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 不朽啤酒花
(246984, 10, 31885, 'questinteract', '', 4, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 218574, 0, 0, 0, 21295, 0, 0, 0, 0, 0, 0, 0, 41517, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 633, 42010), -- 奥丁的大锅
(225627, 5, 11330, '', '', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- 营火
(248501, 9, 32732, '', '', 1.10000002384185791, 5790, 0, 8, 0, 42675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 历代记
(252795, 45, 15781, '', '', 1, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 神器调查笔记
(246953, 3, 31885, 'questinteract', '', 4, 1691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 38271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64425, 1, 0, 0, 0, 633, 41793), -- 奥丁的大锅
(252859, 3, 34727, 'openhandglow', '', 1.5, 1691, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 23645, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67947, 1, 0, 0, 0, 339, 41793), -- 亡灵书
(268875, 9, 11458, 'inspect', '', 1, 7119, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 孤夜思
(268876, 5, 41620, '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 樱花
(268808, 10, 13743, 'questinteract', '', 0.699999988079071044, 43, 0, 0, 1, 0, 0, 1, 0, 0, 0, 240694, 0, 0, 1, 45353, 0, 0, 0, 0, 0, 1, 0, 48775, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 爪印
(268807, 10, 13743, 'questinteract', '', 0.699999988079071044, 43, 0, 0, 1, 0, 0, 1, 0, 0, 0, 240693, 0, 0, 1, 45353, 0, 0, 0, 0, 0, 1, 0, 48774, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 爪印
(268806, 10, 13743, 'questinteract', '', 0.699999988079071044, 43, 0, 0, 1, 0, 0, 1, 0, 0, 0, 240691, 0, 0, 1, 45353, 0, 0, 0, 0, 0, 1, 0, 48776, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 爪印
(268805, 10, 13743, 'questinteract', '', 0.699999988079071044, 43, 0, 0, 1, 0, 0, 1, 0, 0, 0, 240684, 0, 0, 1, 45353, 0, 0, 0, 0, 0, 1, 0, 48773, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 爪印
(267035, 5, 10976, '', '', 1.299999952316284179, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 一桶风暴蜜酒
(266978, 0, 11041, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 推拉门
(266951, 3, 10976, 'questinteract', '', 1.5, 1691, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23645, 0, 0, 46879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71249, 0, 0, 0, 0, 339, 42010), -- 一桶风暴蜜酒
(267905, 5, 11367, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- Doodad_PA_GhostBrewery_VermingBossKeg001
(269151, 5, 11428, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 碎片
(269150, 5, 24060, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 碎玻璃
(269152, 5, 11418, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 碎片
(267902, 0, 11041, '', '', 0.999999940395355224, 0, 0, 3000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- 大门
(267907, 0, 11041, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 46948, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 大门
(267899, 0, 11041, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 大门
(267904, 0, 11041, '', '', 0.999999880790710449, 0, 0, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- 大门
(267901, 0, 11041, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 大门
(267906, 0, 11041, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 46948, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 大门
(267903, 0, 11041, '', '', 0.999999821186065673, 0, 0, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- 大门
(267900, 0, 11041, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 42010), -- 大门
(268379, 10, 10976, 'questinteract', '', 1.299999952316284179, 2640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 一桶庆祝美酒
(268378, 10, 10976, 'questinteract', '', 1.299999952316284179, 2640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 一桶庆祝美酒
(268377, 10, 10976, 'questinteract', '', 1.299999952316284179, 2640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 237619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 42010), -- 一桶庆祝美酒
(267771, 5, 31544, '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 41793), -- 手术台
(267180, 10, 32278, '', '', 3, 2693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 347, 41793), -- 邪火炸弹
(267041, 10, 15383, 'questinteract', '', 1, 1690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 233370, 0, 0, 0, 125962, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 347, 41793), -- 灌注邪能的火药箱
(259263, 7, 32290, '', '', 1.029999971389770507, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259425, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259412, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259413, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259409, 7, 38132, '', '', 1.120000004768371582, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 长椅
(259405, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259424, 7, 32290, '', '', 0.999999940395355224, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259421, 7, 32290, '', '', 1.029999971389770507, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259420, 7, 32290, '', '', 1.029999971389770507, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259432, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259429, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259428, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(250897, 45, 9510, '', '', 1, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 训练部队
(258907, 5, 37914, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 弑君者外观
(252188, 45, 9510, '', '', 1.75, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 征用的命运印记
(252798, 45, 15781, '', '', 1, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 神器调查笔记
(246387, 10, 442, '', '', 1, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 201324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 火把
(252017, 10, 31225, 'questinteract', '', 2, 93, 0, 0, 1, 0, 0, 0, 0, 0, 0, 219701, 0, 0, 0, 19700, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 渡鸦之眼
(246670, 10, 32290, 'questinteract', '', 1.049999952316284179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 39629, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 椅子
(247545, 5, 13635, '', '', 0.85000002384185791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 箱子
(249908, 10, 33342, '', '', 1, 2173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212425, 0, 0, 0, 108913, 0, 0, 0, 0, 0, 1, 0, 39723, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 门环
(251966, 45, 9510, '', '', 1, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 走私来的武器
(246198, 5, 15578, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 武器箱
(252044, 5, 9198, '', '', 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 占位符
(249427, 5, 33362, '', '', 0.649999976158142089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 海报
(246386, 0, 6626, '', '', 0.899999976158142089, 0, 0, 10000, 0, 0, 0, 0, 5703, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 书柜
(247547, 5, 12441, '', '', 0.649999976158142089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 箱子
(252018, 22, 9130, '', '', 1, 219701, -1, 0, 0, 0, 41852, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 军情七处信件
(246142, 0, 7320, '', '', 0.150000005960464477, 0, 0, 5000, 0, 0, 0, 0, 5703, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 大门
(249382, 10, 442, '', '', 1, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 201324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 火把
(268621, 45, 9510, '', '', 1, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 训练部队
(249426, 5, 33361, '', '', 0.649999976158142089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 桨
(249423, 10, 33342, '', '', 1, 2173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210176, 0, 0, 0, 108913, 0, 0, 0, 0, 0, 1, 0, 39723, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 门环
(246196, 5, 10298, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 瓶子
(250898, 45, 9510, '', '', 1, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 训练部队
(247546, 5, 14240, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 箱子
(244798, 5, 19151, '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 血腥战利品
(259434, 7, 15617, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259414, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259431, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(249518, 7, 32290, '', '', 1.029999971389770507, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259422, 7, 32290, '', '', 1.029999971389770507, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259418, 7, 32290, '', '', 1.029999971389770507, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259399, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259430, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259436, 7, 15617, '', '', 0.999999940395355224, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259417, 7, 32290, '', '', 1.030000090599060058, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259437, 7, 15617, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(249517, 9, 33334, '', '', 1.25, 5121, 0, 8, 0, 42678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 41793), -- 血腥帐簿
(259423, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259419, 7, 32290, '', '', 1.029999971389770507, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259427, 7, 32290, '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793), -- 椅子
(259433, 7, 15617, '', '', 0.999999940395355224, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41793); -- 椅子

UPDATE `gameobject_template` SET `VerifiedBuild`=42010 WHERE `entry` IN (212616, 212617, 209658, 212595, 212586, 212585, 212584, 212583, 212581, 212580, 212572, 212569, 212568, 212567, 212564, 212593, 212590, 212587, 212594, 212591, 212588, 212592, 212576, 212589, 212579, 212578, 212571, 212570, 212566, 212565, 212563, 212562, 212561, 212560, 212559, 212582, 253076, 209353, 209313, 215798, 214767, 213804, 212485, 210915, 215865, 215783, 210887, 215184, 215182, 212650, 213354, 212649, 211226, 210038, 212480, 214772, 214773, 214771, 211325, 211324, 211323, 211516, 211213, 211212, 211540, 211210, 211209, 211205, 211204, 213814, 214744, 211446, 177664, 210503, 214408, 213803, 212859, 212899, 211598, 215797, 209328, 211559, 211346, 211345, 211344, 211342, 211361, 211343, 212175, 210054, 215461, 215460, 213503, 213331, 211900, 211528, 211965, 211901, 211898, 211712, 211707, 211704, 211963, 211703, 211688, 214464, 211702, 211541, 212506, 215966, 215965, 215964, 213379, 211175, 211124, 215963, 212487, 211172, 214764, 214763, 211539, 211340, 214426, 213382, 214423, 212486, 214766, 214765, 210869, 210870, 211615, 215699, 211530, 211614, 211693, 211241, 211240, 211230, 211229, 211508, 211228, 211231, 210868, 211668, 215381, 215382, 209311, 214535, 214534, 212771, 212484, 211664, 216309, 214416, 214410, 212775, 212664, 214414, 214163, 212774, 212773, 212772, 212777, 210759, 214411, 212776, 215183, 215181, 211699, 211643, 211778, 212177, 215131, 215391, 214415, 209815, 209814, 212736, 212171, 211990, 214864, 215844, 215764, 215318, 186457, 186456, 209578, 209349, 215843, 212186, 215849, 214569, 214566, 214893, 210804, 215859, 212624, 212183, 215563, 212621, 214570, 214567, 215422, 214894, 215756, 214987, 215423, 215860, 212625, 212184, 215564, 215686, 215850, 212622, 216302, 212181, 215683, 215687, 215693, 214988, 212623, 212182, 215562, 215684, 323855, 323852, 293736, 282416, 323849, 223814, 204646, 332214, 355229, 323853, 293737, 282417, 323850, 204650, 204163, 204663, 204647, 323854, 292758, 293774, 223739, 323851, 204651, 293735, 293339, 206608, 206609, 206610, 259395, 259394, 259393, 209657, 244774, 265572, 269271, 233281, 268678, 252412, 268448, 241726, 268412, 269278, 241743, 268563, 268544, 268538, 268534, 268532, 268571, 268568, 268567, 268566, 268564, 268561, 268559, 268557, 268555, 268554, 268550, 268540, 268539, 268536, 268535, 268533, 268569, 268565, 268542, 268560, 268551, 268552, 268527, 268553, 268543, 268570, 268546, 268548, 268547, 268572, 268558, 268556, 268549, 268537, 268541, 255344, 234085, 267918, 267912, 267911, 234086, 234084, 271227, 241535, 268703, 269054, 268526, 241523, 252565, 267785, 293837, 268435, 246493, 268706, 269052, 212615, 212620, 212614, 212619, 212618, 268079, 252559, 242507, 268436, 269887, 231252, 231251, 240569, 240567, 250081, 239418, 239419, 240638, 258972, 251829, 241907, 241906, 251144, 240629, 248821, 240646, 240630, 240425, 250092, 239987, 249771, 245574, 239959, 245572, 245573, 251168, 242530, 249211, 312210, 257289, 252198, 242666, 251959, 245650, 243636, 242660, 245843, 247421, 246695, 246692, 246694, 246680, 247396, 240652, 224687, 245637, 242529, 242450, 266417, 249853, 241128, 242347, 244776, 240519, 254128, 252558, 252340, 251831, 249360, 240637, 240112, 258954, 1685, 245473, 266891, 325979, 325978, 254279, 255795, 253549, 253548, 239970, 253552, 253551, 253564, 239338, 241859, 239332, 237017, 246285, 243562, 246352, 246284, 251769, 254246, 190228, 241902, 241909, 241901, 249917, 249916, 254268, 254266, 255342, 254265, 254263, 254264, 254269, 254262, 254267, 254261, 250433, 251784, 244875, 250375, 251574, 251575, 246401, 250269, 245933, 250432, 250266, 250265, 250429, 253538, 250267, 254024, 250593, 250592, 250591, 250603, 252434, 240113, 258983, 244865, 233708, 252563, 240552, 250087, 250088, 239748, 250264, 240644, 238979, 239451, 224375, 250090, 257296, 253555, 240642, 239693, 253556, 248091, 248090, 258323, 239985, 239984, 243563, 243393, 240291, 239452, 236931, 250098, 253542, 253544, 253546, 253545, 253543, 253541, 253547, 251496, 251186, 245862, 245221, 241908, 253280, 240645, 251183, 239122, 253554, 253553, 246206, 239333, 233319, 251958, 246732, 240346, 256790, 246205, 243009, 258325, 249761, 259237, 246488, 251643, 250262);
UPDATE `gameobject_template` SET `ContentTuningId`=80, `VerifiedBuild`=42010 WHERE `entry` IN (209656, 209663, 209661, 209660); -- Defaced Scroll of Wisdom
UPDATE `gameobject_template` SET `ContentTuningId`=862, `VerifiedBuild`=42010 WHERE `entry`=216723; -- Kite Stand
UPDATE `gameobject_template` SET `VerifiedBuild`=41793 WHERE `entry` IN (251991, 245847, 245698, 245697, 245696, 245695, 245699, 246272, 258968, 245700, 246145, 245702, 246144, 244664, 245701, 245884, 255345, 252332, 244902, 251762, 248784, 252824, 254147, 246714, 245573, 245572, 239959, 239987, 240424, 240425, 250092, 249771, 252563, 239693, 244774, 246352, 246284, 241859, 239970, 255795, 253564, 253552, 253551, 253549, 253548, 239338, 239332, 237017, 254279, 251769, 256790, 246488, 325979, 239985, 245473, 1685, 266891, 240291, 239984, 239452, 250262, 325978, 204608, 204205, 204609, 204602, 269949, 206995, 204603, 204209, 204214, 204206, 204210, 204207, 204600, 204601, 204215, 281340, 206725, 206726, 204208, 204201, 206727, 205109, 204211, 204202, 205108, 204213, 204212, 205142, 204662, 204655, 204664, 323855, 323852, 293736, 282416, 323849, 340644, 223814, 204646, 332214, 355229, 323853, 293737, 282417, 323850, 204650, 175080, 204163, 204663, 204647, 208806, 323854, 293774, 292758, 223739, 323851, 204651, 293735, 293339, 206608, 206609, 206610, 259395, 259394, 259393, 244776, 254938, 249853, 257289, 245120, 266737, 266296, 246492, 252448, 252822, 241435, 254063, 241635, 241634, 241633, 241436, 252053, 252052, 252051, 248767, 251738, 255223, 240283, 240282, 240281, 236833, 253578, 266465, 259759, 253580, 253579, 253575, 253577, 253576, 241148, 246870, 245671, 245670, 245669, 253257, 245668, 245667, 241207, 241429, 245672, 241146, 240365, 251257, 246924, 246922, 241149, 259754, 241564, 241665, 253242, 243842, 243814, 242444, 243835, 241705, 243818, 243845, 243817, 251792, 241153, 253279, 241904, 251522, 241680, 244912, 244720, 252163, 244887, 244718, 248775, 244731, 251714, 254021, 244729, 244703, 244681, 252237, 248601, 244704, 244696, 243799, 251188, 251713, 251155, 253244, 251285, 251277, 251276, 251275, 251221, 251220, 251219, 251218, 251189, 266466, 266054, 253250, 244872, 244859, 243062, 253246, 243571, 251571, 244904, 242673, 253247, 243456, 243454, 253574, 253573, 253582, 253581, 252837, 252838, 246493, 268435, 241523, 241535, 268706, 244778, 269054, 267785, 241726, 271227, 212615, 212620, 212614, 212619, 212616, 212618, 206706, 311341, 206381, 204144, 50805, 50804, 50803, 142140, 206585, 206625, 178147, 203823, 142145, 181690, 194615, 194458, 194617, 194997, 194297, 140112, 140109, 6290, 6289, 140111, 140110, 6291, 194482, 6292, 207889, 196837, 58389, 58388, 204732, 204731, 202819, 206734, 205371, 205230, 204728, 281107, 268690, 204625, 204624, 207101, 307614, 298892, 273293, 273286, 243460, 243459, 339344, 207100, 207099, 273300, 206709, 206708, 243462, 243461, 204729, 204620, 278281, 207098, 207097, 207096, 207094, 204730, 204627, 204626, 179707, 204710, 204623, 204611, 202590, 206735, 204723, 204709, 204639, 204628, 204622, 204621, 206732, 204725, 204724, 204640, 197257, 206547, 197307, 206730, 202809, 202808, 202799, 197259, 206740, 197309, 197285, 197311, 197276, 197286, 197315, 197322, 206548, 197314, 197278, 293684, 205056, 197310, 197280, 197207, 197279, 206741, 197312, 202717, 206538, 206529, 197313, 206549, 105576, 197287, 197284, 197323, 206736, 206546, 206545, 206539, 206530, 204634, 204633, 204632, 204631, 204204, 204203, 207414, 206729, 204198, 204197, 204196, 204195, 204194, 204192, 204191, 293851, 293850, 204610, 204607, 204606, 204605, 204200, 175787, 175788, 204199, 204604, 204656, 216057, 248974, 248965, 248969, 248967, 242175, 242507, 269278, 265585, 267040, 268418, 243267, 243247, 250081, 240346, 251186, 251320, 251318, 257984, 257986, 257985, 251310, 235671, 257987, 251144, 240638, 258972, 251829, 241907, 241906, 239122, 233319, 248821, 250080, 239418, 239333, 251958, 246732, 240569, 240567, 239419, 239328, 231252, 231251, 250312, 250303, 250311, 268703, 267918, 267912, 267911, 234084, 234085, 234086, 254237, 249401, 249907, 253044);
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=41793 WHERE `entry`=268759; -- Firmament Stone in Highmountain
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=41793 WHERE `entry`=254125; -- Firmament Stone
UPDATE `gameobject_template` SET `ContentTuningId`=331, `VerifiedBuild`=41793 WHERE `entry`=240033; -- Dim Ley Crystal
UPDATE `gameobject_template` SET `size`=1, `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=240267; -- Cracked Ley Crystal
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=239692; -- Arcane-infused Egg
UPDATE `gameobject_template` SET `ContentTuningId`=339, `VerifiedBuild`=41793 WHERE `entry`=249356; -- Altar of Malorne
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=41793 WHERE `entry`=242644; -- Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=41793 WHERE `entry`=245676; -- Satyr Cage
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=41793 WHERE `entry`=251407; -- Stump
UPDATE `gameobject_template` SET `Data18`=682, `Data19`=2, `ContentTuningId`=335, `VerifiedBuild`=41793 WHERE `entry`=252819; -- Small Treasure Chest
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=335, `VerifiedBuild`=41793 WHERE `entry`=252807; -- Small Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=335, `VerifiedBuild`=41793 WHERE `entry` IN (248977, 248976); -- Exposed Leyline
UPDATE `gameobject_template` SET `size`=0.5, `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=252010; -- Crystallized Bough
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=41793 WHERE `entry`=244853; -- Tharillon's Stash
UPDATE `gameobject_template` SET `ContentTuningId`=335, `VerifiedBuild`=41793 WHERE `entry`=246703; -- Magical Manifest of the Moon
UPDATE `gameobject_template` SET `ContentTuningId`=335, `VerifiedBuild`=41793 WHERE `entry`=246704; -- Aftermath of the Well
UPDATE `gameobject_template` SET `ContentTuningId`=335, `VerifiedBuild`=41793 WHERE `entry`=247044; -- Unfinished Spellwork
UPDATE `gameobject_template` SET `ContentTuningId`=335, `VerifiedBuild`=41793 WHERE `entry`=252260; -- Leyline Feed
UPDATE `gameobject_template` SET `ContentTuningId`=347, `VerifiedBuild`=41793 WHERE `entry`=253163; -- Burial Longboat
UPDATE `gameobject_template` SET `ContentTuningId`=347, `VerifiedBuild`=41793 WHERE `entry`=253094; -- Potent Horn of Mead
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=41793 WHERE `entry`=241585; -- Stormwing Egg
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=241462; -- Oiled Cloak
UPDATE `gameobject_template` SET `ContentTuningId`=347, `VerifiedBuild`=41793 WHERE `entry`=247985; -- Prisoner Cage
UPDATE `gameobject_template` SET `size`=1, `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=244829; -- The Tangled Beard
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=243819; -- Yotnar's Left Arm
UPDATE `gameobject_template` SET `size`=3, `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=243823; -- Yotnar's  Left Foot
UPDATE `gameobject_template` SET `size`=3, `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=243820; -- Yotnar's Right Arm
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=243822; -- Yotnar's Right Foot
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=41793 WHERE `entry`=252239; -- Shipwreck Debris
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=41793 WHERE `entry`=241528; -- Horn of the Helmouth
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=41793 WHERE `entry`=244719; -- Kjell's Requisition
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=41793 WHERE `entry`=244717; -- Sten's Log
UPDATE `gameobject_template` SET `ContentTuningId`=344, `VerifiedBuild`=42010 WHERE `entry`=268813; -- Moon Lily
UPDATE `gameobject_template` SET `Data4`=1628, `ContentTuningId`=860, `VerifiedBuild`=42010 WHERE `entry`=218636; -- Large Pool of Tiger Gourami Slush
UPDATE `gameobject_template` SET `Data4`=1628, `ContentTuningId`=860, `VerifiedBuild`=42010 WHERE `entry`=218635; -- Tiger Gourami Slush
UPDATE `gameobject_template` SET `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=211602; -- Shrine of the Seeker's Heart
UPDATE `gameobject_template` SET `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=211601; -- Shrine of the Seeker's Breath
UPDATE `gameobject_template` SET `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=211597; -- Shrine of the Seeker's Body
UPDATE `gameobject_template` SET `ContentTuningId`=1217, `VerifiedBuild`=42010 WHERE `entry`=259031; -- Portal to Stormwind
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=42434, `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=211967; -- King's Coffer
UPDATE `gameobject_template` SET `Data19`=2, `Data26`=0, `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=213793; -- Rikktik's Tiny Chest
UPDATE `gameobject_template` SET `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=212903; -- Abandoned Wreckage
UPDATE `gameobject_template` SET `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=211171; -- Anvil
UPDATE `gameobject_template` SET `ContentTuningId`=60, `VerifiedBuild`=42010 WHERE `entry`=211170; -- Forge
UPDATE `gameobject_template` SET `size`=0.800000011920928955, `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=211538; -- Stolen Bag of Luckydos
UPDATE `gameobject_template` SET `size`=0.5, `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=211537; -- Stolen Bag of Luckydos
UPDATE `gameobject_template` SET `size`=0.60000002384185791, `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=211536; -- Stolen Bag of Luckydos
UPDATE `gameobject_template` SET `Data26`=0, `VerifiedBuild`=42010 WHERE `entry`=213748; -- Pandaren Ritual Stone
UPDATE `gameobject_template` SET `ContentTuningId`=336, `VerifiedBuild`=42010 WHERE `entry`=268443; -- Substandard Sapper
UPDATE `gameobject_template` SET `ContentTuningId`=336, `VerifiedBuild`=42010 WHERE `entry`=267599; -- Pile of Vanishing Powder
UPDATE `gameobject_template` SET `ContentTuningId`=339, `VerifiedBuild`=42010 WHERE `entry`=258687; -- Fel Wall
UPDATE `gameobject_template` SET `Data1`=0 WHERE `entry`=210005;
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=245791; -- Ancient Chest
UPDATE `gameobject_template` SET `size`=1, `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=240267; -- Cracked Ley Crystal
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=42010 WHERE `entry`=266111; -- Weapon Cache
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=42010 WHERE `entry`=266110; -- Intact Ballista
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=42010 WHERE `entry`=241682; -- Dry Harpy Nest
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=240609; -- Small Treasure Chest
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=242645; -- Small Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=339, `VerifiedBuild`=42010 WHERE `entry`=249356; -- Altar of Malorne
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=42010 WHERE `entry`=245087; -- Stone
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=42010 WHERE `entry`=242279; -- Bramble Wall
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=242328; -- Small Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=42010 WHERE `entry`=242275; -- Nightmare Totem
UPDATE `gameobject_template` SET `size`=1.299999952316284179, `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=248931; -- Smolderhide Firewater
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=250107; -- Glimmering Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=331, `VerifiedBuild`=42010 WHERE `entry`=249380; -- Legion Communicator
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=243564; -- Basket of Dried Herbs
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=254028; -- Small Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=347, `VerifiedBuild`=42010 WHERE `entry`=249704; -- Cliffwing Hippogryph Egg
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=240690; -- Treasure Chest
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=250091; -- Small Treasure Chest
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=245484; -- Tidestone Shard
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=239744; -- Nar'thalas Academy Hat
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=239341; -- Tidestone Shard
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=245485; -- Tidestone Shard
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=245483; -- Tidestone Shard
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=238940; -- Academy Bookshelf
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=239745; -- Nar'thalas Academy Wand
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=245486; -- Tidestone Shard
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=42010 WHERE `entry`=239692; -- Arcane-infused Egg
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=42010 WHERE `entry`=248092; -- Box of Measuring Tools
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=42010 WHERE `entry`=242658; -- Lyndras' Finishing Table
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=42010 WHERE `entry`=242657; -- Lyndras' Runic Catgut
UPDATE `gameobject_template` SET `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=42010 WHERE `entry`=258690; -- Small Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=469, `VerifiedBuild`=42010 WHERE `entry`=268453; -- Highborne Archaeology Find
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=203977; -- Barrel of Darkspear Rice
UPDATE `gameobject_template` SET `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=203979; -- Barrel of Kezan Rice
UPDATE `gameobject_template` SET `size`=1, `Data34`=0, `VerifiedBuild`=41793 WHERE `entry`=203969; -- Prickly Pear Fruit
UPDATE `gameobject_template` SET `ContentTuningId`=331, `VerifiedBuild`=41793 WHERE `entry`=251145; -- Leyrune Scroll
UPDATE `gameobject_template` SET `ContentTuningId`=347, `VerifiedBuild`=41793 WHERE `entry` IN (268458, 267492); -- False Orders
UPDATE `gameobject_template` SET `ContentTuningId`=331, `VerifiedBuild`=41793 WHERE `entry`=251129; -- Frostrune Scroll
UPDATE `gameobject_template` SET `ContentTuningId`=336, `VerifiedBuild`=41793 WHERE `entry`=269125; -- Sentinax Portal

DELETE FROM `gameobject_questitem` WHERE (`Idx`=0 AND `GameObjectEntry` IN (246953,252859,268813,266951));
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(246953, 0, 134005, 41793), -- 奥丁的大锅
(252859, 0, 140107, 41793), -- 亡灵书
(268813, 0, 147313, 42010), -- Moon Lily
(266951, 0, 143731, 42010); -- 一桶风暴蜜酒

UPDATE `gameobject_questitem` SET `VerifiedBuild`=41793 WHERE (`Idx`=9 AND `GameObjectEntry`=245847) OR (`Idx`=8 AND `GameObjectEntry`=245847) OR (`Idx`=7 AND `GameObjectEntry`=245847) OR (`Idx`=6 AND `GameObjectEntry`=245847) OR (`Idx`=5 AND `GameObjectEntry`=245847) OR (`Idx`=4 AND `GameObjectEntry`=245847) OR (`Idx`=3 AND `GameObjectEntry`=245847) OR (`Idx`=2 AND `GameObjectEntry`=245847) OR (`Idx`=1 AND `GameObjectEntry`=245847) OR (`Idx`=0 AND `GameObjectEntry` IN (245847,258968,240033,240267,239692,252010,244853,246703,246704,241635,241634,241633,241462,244829,243819,243823,243820,243822,252239,206706,194997,181686,203977,203979,203969,240346));
UPDATE `gameobject_questitem` SET `ItemId`=138482, `VerifiedBuild`=41793 WHERE (`GameObjectEntry`=258968 AND `Idx`=1); -- Hymdall's Cache
UPDATE `gameobject_questitem` SET `VerifiedBuild`=42010 WHERE (`Idx`=0 AND `GameObjectEntry` IN (210887,211967,211538,211537,211536,210759,268448,245791,240267,245843,248931,243562,243564,251784,250267,249704,245484,239744,239341,245485,245483,238940,239745,245486,239692,248092,248091,248090,243563,236931,245221,240346));

DELETE FROM `page_text` WHERE `ID` IN (4993 /*4993*/, 4982 /*4982*/, 4980 /*4980*/, 4979 /*4979*/, 4978 /*4978*/, 4977 /*4977*/, 4976 /*4976*/, 4975 /*4975*/, 4974 /*4974*/, 4973 /*4973*/);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(4993, '第二十七天\n我们总算回来了。要塞一片混乱。郭雅的补给一直没有抵达。邓布林认为戒严令是个好主意。他现在听命于厄菲阿尔了。拉希奥已经不知所踪，还带走了几个我最好的手下。现在是时候挽起袖子大干一场，让一切重回正轨了。', 0, 0, 0, 41793), -- 4993
(4982, '第二十五天\n赢了！爱德华在竞技场里简直就是个打不死的沙包。', 4993, 0, 0, 41793), -- 4982
(4980, '第二十一天\n今天收到了一封古尔戈索克的来信，邀请我们参加鲜血竞技场的对决。我很想让他们看看联盟的实力。我打算把奖金给郭雅。我已经带着爱德华和克劳迪娅去为了“乌瑞恩国王”而战。邓布林留下负责安保。', 4982, 0, 0, 41793), -- 4980
(4979, '第十六天\n我把一些守卫叫到一边并给了他们极其可观的薪水，让他们24小时盯着拉希奥。但他们却低下了头，说拉希奥给了他们更恐怖的薪水，让他们24小时盯着我。那个狗杂种……', 4980, 0, 0, 41793), -- 4979
(4978, '第十五天\n军营完成了。军械库正在建造当中。早上又来了一大批物资 - 这些都是拉希奥送来的“礼物”，协助我们建造旅店。他是怎么办到的？我去找了拉希奥，他告诉我要盯着点厄菲阿尔。反正他们俩我都不相信。', 4979, 0, 0, 41793), -- 4978
(4977, '第十二天\n爱德华爵士今天来到了城镇中心，和他一起来的还有黑王子拉希奥。很难看出谁抓住了谁。拉希奥希望能在我的要塞里避难，声称他干了一些让食人魔抓狂的事情。爱德华吼叫着说拉希奥是联盟的难民。克劳迪娅女士和她的士兵则举起了枪作为回应。气氛很紧张。我告诉拉希奥，他将受到“客人般”的欢迎，住在有全天守卫监视的屋子里。另外，我也发信给了国王。黑龙现在正乖乖待在我的要塞里——还能出什么乱子呢？', 4978, 0, 0, 41793), -- 4977
(4976, '第七天\n钢铁部落来袭！感谢圣光我们及时造起了城墙。邓布林在战斗中绝对是个怪物。尽管如此，我们还是失去了许多优秀的士兵，许多人都是后背受伤。厄菲阿尔在攻击结束后失踪了几个小时。他似乎有些不太对劲。我给了劳工一天的时间掩埋尸体。建造工作会在明天继续。军营差不多要完成了。还有足够的物资建造一所军械库。', 4977, 0, 0, 41793), -- 4976
(4975, '第四天\n守备官玛尔拉德今天来拜访我们了。他对我们的进度感到很高兴。另外，还建议我们派一些劳工前往一座被称为“艾洛多尔”的德莱尼小镇拿一些食物。我拒绝了 - 我怎么可能派我最好的手下穿过半个世界只不过去拿些吃的呢。我已经有了其他打算。那个友好的熊猫人，郭雅夫人已经把几车的食物便宜卖给了我们。情况似乎越来越好了。', 4976, 0, 0, 41793), -- 4975
(4974, '第二天\n大约十二名伐木工失踪了。唯一一个回来的伐木工肚子上，刺着一根跟我手臂一样长的黄蜂毒刺。邓布林和厄菲阿尔提议带领一支作战小队肃清附近的区域。我派了几个跟班跟他们一起去。我们实在太需要木材了。', 4975, 0, 0, 41793), -- 4974
(4973, '第一天\n刚刚抵达了海岸，大部分装备完好无损。费恩向我保证这儿是个理想的位置。爱德华和克劳迪娅因为最近的一次鸦人袭击而争吵不休。而厄菲阿尔则痴迷于”能量线”（管它是什么呢）。穿过传送门后，我们甚至连时间都不知道 - 感觉已经到了秋天？无论如何，今天是第一天。', 4974, 0, 0, 41793); -- 4973

UPDATE `page_text` SET `VerifiedBuild`=42010 WHERE `ID`=3576;

DELETE FROM `npc_text` WHERE `ID` IN (27997 /*27997*/, 27586 /*27586*/, 29717 /*29717*/, 28276 /*28276*/, 29647 /*29647*/, 28720 /*28720*/, 28718 /*28718*/, 30461 /*30461*/, 31668 /*31668*/, 31412 /*31412*/, 31410 /*31410*/, 31408 /*31408*/, 30595 /*30595*/, 30592 /*30592*/, 30596 /*30596*/, 30594 /*30594*/, 30593 /*30593*/, 27590 /*27590*/, 28122 /*28122*/, 31230 /*31230*/, 31229 /*31229*/, 29731 /*29731*/, 30031 /*30031*/);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(27997, 1, 0, 0, 0, 0, 0, 0, 0, 103321, 0, 0, 0, 0, 0, 0, 0, 42010), -- 27997
(27586, 1, 0, 0, 0, 0, 0, 0, 0, 100538, 0, 0, 0, 0, 0, 0, 0, 42010), -- 27586
(29717, 1, 0, 0, 0, 0, 0, 0, 0, 115826, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29717
(28276, 1, 0, 0, 0, 0, 0, 0, 0, 104883, 0, 0, 0, 0, 0, 0, 0, 42010), -- 28276
(29647, 1, 0, 0, 0, 0, 0, 0, 0, 115595, 0, 0, 0, 0, 0, 0, 0, 41793), -- 29647
(28720, 1, 0, 0, 0, 0, 0, 0, 0, 107825, 0, 0, 0, 0, 0, 0, 0, 41793), -- 28720
(28718, 1, 0, 0, 0, 0, 0, 0, 0, 107824, 0, 0, 0, 0, 0, 0, 0, 41793), -- 28718
(30461, 1, 0, 0, 0, 0, 0, 0, 0, 122292, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30461
(31668, 1, 0, 0, 0, 0, 0, 0, 0, 129869, 0, 0, 0, 0, 0, 0, 0, 42010), -- 31668
(31412, 1, 0, 0, 0, 0, 0, 0, 0, 126217, 0, 0, 0, 0, 0, 0, 0, 42010), -- 31412
(31410, 1, 0, 0, 0, 0, 0, 0, 0, 128194, 0, 0, 0, 0, 0, 0, 0, 42010), -- 31410
(31408, 1, 1, 1, 0, 0, 0, 0, 0, 128192, 128191, 128190, 0, 0, 0, 0, 0, 42010), -- 31408
(30595, 1, 0, 0, 0, 0, 0, 0, 0, 122739, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30595
(30592, 1, 0, 0, 0, 0, 0, 0, 0, 122736, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30592
(30596, 1, 0, 0, 0, 0, 0, 0, 0, 122740, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30596
(30594, 1, 0, 0, 0, 0, 0, 0, 0, 122738, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30594
(30593, 1, 1, 1, 1, 1, 1, 1, 1, 122737, 122747, 122746, 122745, 122744, 122743, 122742, 122741, 42010), -- 30593
(27590, 1, 0, 0, 0, 0, 0, 0, 0, 100546, 0, 0, 0, 0, 0, 0, 0, 42010), -- 27590
(28122, 1, 0, 0, 0, 0, 0, 0, 0, 104042, 0, 0, 0, 0, 0, 0, 0, 42010), -- 28122
(31230, 1, 0, 0, 0, 0, 0, 0, 0, 126548, 0, 0, 0, 0, 0, 0, 0, 41793), -- 31230
(31229, 1, 0, 0, 0, 0, 0, 0, 0, 126546, 0, 0, 0, 0, 0, 0, 0, 41793), -- 31229
(29731, 1, 0, 0, 0, 0, 0, 0, 0, 115938, 0, 0, 0, 0, 0, 0, 0, 41793), -- 29731
(30031, 1, 0, 0, 0, 0, 0, 0, 0, 120320, 0, 0, 0, 0, 0, 0, 0, 41793); -- 30031

UPDATE `npc_text` SET `VerifiedBuild`=42010 WHERE `ID` IN (19889, 19966, 31666, 30587, 14125, 28847);
UPDATE `npc_text` SET `VerifiedBuild`=41793 WHERE `ID` IN (21274, 28134, 27457, 18217, 29696, 28337, 28719, 27426, 5516, 32402, 32983, 28888, 28878);

DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=56169 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=56157 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=56119 AND `BlobIndex`=12 AND `Idx1`=1) OR (`CriteriaTreeID`=56119 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=56086 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(56169, 0, 0, 1693, 872, 0, 2, 0, 0, 42010),
(56157, 0, 0, 961, 874, 0, 2, 0, 0, 42010),
(56119, 12, 1, -782, 1264, 0, -767, 1266, 0, 42010),
(56119, 0, 0, 1693, 873, 0, 2, 0, 0, 42010),
(56086, 0, 0, 1693, 873, 0, 2, 0, 0, 42010);

DELETE FROM `scenario_poi_points` WHERE (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=82) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=81) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=80) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=79) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=78) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=77) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=76) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=75) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=74) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=73) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=72) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=71) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=70) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=69) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=68) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=67) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=66) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=65) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=64) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=63) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=62) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=61) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=60) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=59) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=58) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=57) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=56) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=55) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=54) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=53) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=52) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=51) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=50) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=49) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=48) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=47) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=46) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=45) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=44) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=43) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=42) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=41) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=40) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=39) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=38) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=37) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=36) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=35) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=34) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=33) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=32) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=31) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=30) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=29) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=28) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=27) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=26) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=25) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=24) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=23) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=22) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=21) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=20) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=19) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=18) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=17) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=16) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=15) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=14) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=13) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=12) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=11) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=10) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=9) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=8) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=7) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=6) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=5) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=4) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=3) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=2) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=1) OR (`CriteriaTreeID`=56119 AND `Idx1`=1 AND `Idx2`=0);
INSERT INTO `scenario_poi_points` (`CriteriaTreeID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(56119, 1, 82, 1232, 0, 42010),
(56119, 1, 81, 0, -801, 42010),
(56119, 1, 80, -824, 1276, 42010),
(56119, 1, 79, 1388, 0, 42010),
(56119, 1, 78, 0, -809, 42010),
(56119, 1, 77, -796, 1429, 42010),
(56119, 1, 76, 1438, 0, 42010),
(56119, 1, 75, 0, -760, 42010),
(56119, 1, 74, -733, 1409, 42010),
(56119, 1, 73, 1357, 0, 42010),
(56119, 1, 72, 0, -702, 42010),
(56119, 1, 71, -699, 1350, 42010),
(56119, 1, 70, 1302, 0, 42010),
(56119, 1, 69, 0, -684, 42010),
(56119, 1, 68, -687, 1287, 42010),
(56119, 1, 67, 1231, 0, 42010),
(56119, 1, 66, 0, -749, 42010),
(56119, 1, 65, -777, 1225, 42010),
(56119, 1, 64, 0, 12, 42010),
(56119, 1, 63, 0, 0, 42010),
(56119, 1, 62, 0, 2, 42010),
(56119, 1, 61, 1693, 874, 42010),
(56119, 1, 60, 0, 1, 42010),
(56119, 1, 59, -778, 1266, 42010),
(56119, 1, 58, 1300, 0, 42010),
(56119, 1, 57, 0, -796, 42010),
(56119, 1, 56, -794, 1331, 42010),
(56119, 1, 55, 1344, 0, 42010),
(56119, 1, 54, 0, -776, 42010),
(56119, 1, 53, -749, 1354, 42010),
(56119, 1, 52, 1360, 0, 42010),
(56119, 1, 51, 0, -729, 42010),
(56119, 1, 50, -702, 1356, 42010),
(56119, 1, 49, 1334, 0, 42010),
(56119, 1, 48, 0, -695, 42010),
(56119, 1, 47, -689, 1304, 42010),
(56119, 1, 46, 1290, 0, 42010),
(56119, 1, 45, 0, -690, 42010),
(56119, 1, 44, -722, 1279, 42010),
(56119, 1, 43, 1270, 0, 42010),
(56119, 1, 42, 12, -749, 42010),
(56119, 1, 41, 0, 0, 42010),
(56119, 1, 40, 2, 0, 42010),
(56119, 1, 39, 873, 0, 42010),
(56119, 1, 38, 0, 1693, 42010),
(56119, 1, 37, 56118, 2, 42010),
(56119, 1, 36, 1266, 0, 42010),
(56119, 1, 35, 0, -782, 42010),
(56119, 1, 34, -795, 1290, 42010),
(56119, 1, 33, 1326, 0, 42010),
(56119, 1, 32, 0, -803, 42010),
(56119, 1, 31, -806, 1377, 42010),
(56119, 1, 30, 1426, 0, 42010),
(56119, 1, 29, 0, -795, 42010),
(56119, 1, 28, -754, 1436, 42010),
(56119, 1, 27, 1407, 0, 42010),
(56119, 1, 26, 0, -726, 42010),
(56119, 1, 25, -701, 1360, 42010),
(56119, 1, 24, 1354, 0, 42010),
(56119, 1, 23, 0, -698, 42010),
(56119, 1, 22, -685, 1291, 42010),
(56119, 1, 21, 1276, 0, 42010),
(56119, 1, 20, 0, -708, 42010),
(56119, 1, 19, -754, 1262, 42010),
(56119, 1, 18, 0, 12, 42010),
(56119, 1, 17, 0, 0, 42010),
(56119, 1, 16, 0, 2, 42010),
(56119, 1, 15, 1693, 874, 42010),
(56119, 1, 14, 0, 1, 42010),
(56119, 1, 13, -791, 1281, 42010),
(56119, 1, 12, 1297, 0, 42010),
(56119, 1, 11, 0, -794, 42010),
(56119, 1, 10, -800, 1331, 42010),
(56119, 1, 9, 1339, 0, 42010),
(56119, 1, 8, 0, -782, 42010),
(56119, 1, 7, -720, 1355, 42010),
(56119, 1, 6, 1354, 0, 42010),
(56119, 1, 5, 0, -701, 42010),
(56119, 1, 4, -690, 1320, 42010),
(56119, 1, 3, 1306, 0, 42010),
(56119, 1, 2, 0, -688, 42010),
(56119, 1, 1, -691, 1290, 42010),
(56119, 1, 0, 1268, 0, 42010);




