/*
 Navicat Premium Data Transfer

 Source Server         : windows_mysql_80
 Source Server Type    : MySQL
 Source Server Version : 80200 (8.2.0)
 Source Host           : localhost:3306
 Source Schema         : steam_store

 Target Server Type    : MySQL
 Target Server Version : 80200 (8.2.0)
 File Encoding         : 65001

 Date: 30/12/2023 00:54:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for steam_cart
-- ----------------------------
DROP TABLE IF EXISTS `steam_cart`;
CREATE TABLE `steam_cart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `game_id` int NULL DEFAULT NULL COMMENT '游戏ID',
  `add_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steam_cart
-- ----------------------------

-- ----------------------------
-- Table structure for steam_comment
-- ----------------------------
DROP TABLE IF EXISTS `steam_comment`;
CREATE TABLE `steam_comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` int NULL DEFAULT NULL COMMENT '游戏ID',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `add_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `user_id` int NULL DEFAULT NULL COMMENT '评论人',
  `rate` int NULL DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steam_comment
-- ----------------------------
INSERT INTO `steam_comment` VALUES (6, 3, '是的发涩发', '2023-12-28 23:31:27', NULL, 1, 4);
INSERT INTO `steam_comment` VALUES (7, 7, '一般不太好玩', '2023-12-28 23:34:06', NULL, 1, 2);
INSERT INTO `steam_comment` VALUES (8, 8, '还行 满分！！！！', '2023-12-28 23:34:19', NULL, 1, 5);

-- ----------------------------
-- Table structure for steam_game
-- ----------------------------
DROP TABLE IF EXISTS `steam_game`;
CREATE TABLE `steam_game`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '游戏名',
  `add_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `origin_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '原始价格',
  `final_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '当前价格',
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '简短描述',
  `long_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '长描述',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'logo图片',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '游戏图片地址',
  `poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '游戏海报',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steam_game
-- ----------------------------
INSERT INTO `steam_game` VALUES (3, 'Counter-Strike 2', '2023-12-28 05:53:46', NULL, 100.00, 1.00, '二十多年来，在全球数百万玩家的共同铸就下，Counter-Strike 提供了精湛绝伦的竞技体验。而如今，CS 传奇的下一章即将揭开序幕，那就是 Counter-Strike 2。', '二十多年来，在全球数百万玩家的共同铸就下，Counter-Strike 提供了精湛绝伦的竞技体验。而如今，CS 传奇的下一章即将揭开序幕，那就是 Counter-Strike 2。\n\nCounter-Strike 2 是 CS:GO 的免费升级版，展现了 Counter-Strike 历史上最大的技术飞跃。Counter-Strike 2 由 Source 2 引擎打造，具备基于物理的逼真渲染、最为先进的网络、经过升级的社区创意工坊工具，令人耳目一新。\n\nCounter Strike 系列于 1999 年开创了以完成目标为重的游戏玩法，而 Counter Strike 2 除了将这一经典元素保留，还会呈现以下特色：\n\n全新 CS 综合得分与经过更新的优先权模式\n全球及区域排行榜\n经过升级和大改的地图\n革命性的动态烟雾弹\n不受刷新频率阻碍的游戏体验\n全新设计的声画效果\nCS:GO 的所有物品均迁移至 CS2', 'https://cdn.akamai.steamstatic.com/steam/apps/730/capsule_sm_120_schinese.jpg?t=1698860631', 'https://cdn.akamai.steamstatic.com/steam/apps/730/ss_d830cfd0550fbb64d80e803e93c929c3abb02056.1920x1080.jpg?t=1698860631,https://cdn.akamai.steamstatic.com/steam/apps/730/ss_796601d9d67faf53486eeb26d0724347cea67ddc.1920x1080.jpg?t=1698860631,https://cdn.akamai.steamstatic.com/steam/apps/730/ss_13bb35638c0267759276f511ee97064773b37a51.1920x1080.jpg?t=1698860631', NULL);
INSERT INTO `steam_game` VALUES (5, 'Garry\'s Mod', '2023-12-28 05:58:31', NULL, 36.00, 18.00, 'Garry\'s Mod is a physics sandbox. There aren\'t any predefined aims or goals. We give you the tools and leave you to play.', 'Garry\'s Mod 是一个物理实验场。 与普通游戏不同，这款游戏并没有预定的目标或目的。 我们给您工具，您决定游戏内容。\n您可以调出各种对象互相组合，创造新的道具，不论汽车、火箭、投石车还是连名字都没有的机器，一切都由您决定。\n如果您对设计工程并不在行，也别担心！ 您还能把许多不同角色放在好笑的地方。', 'https://cdn.akamai.steamstatic.com/steam/apps/4000/capsule_sm_120.jpg?t=1698777053', 'https://cdn.akamai.steamstatic.com/steam/apps/4000/ss_ff27d52a103d1685e4981673c4f700b860cb23de.600x338.jpg?t=1698777053,https://cdn.akamai.steamstatic.com/steam/apps/4000/0000000826.600x338.jpg?t=1698777053,https://cdn.akamai.steamstatic.com/steam/apps/4000/ss_65ec9828538eac8db20efc8149990060911fefc4.600x338.jpg?t=1698777053,https://cdn.akamai.steamstatic.com/steam/apps/4000/ss_c13ffded1d71bedfa7ede94c11cbd21fbd21a32c.600x338.jpg?t=1698777053', NULL);
INSERT INTO `steam_game` VALUES (6, 'PAYDAY3 (收获日3)', '2023-12-28 07:06:45', NULL, 128.00, 96.00, '有史以来最受欢迎的合作射击游戏之一——备受瞩目的续作《PAYDAY 3》火爆归来！自本系列发布以来，PAYDAY玩家一直沉醉在精心计划然后执行劫案的快感中，这也让PAYDAY得以打造出无与伦比的高强度合作型FPS体验。', '有史以来最受欢迎的合作射击游戏之一——备受瞩目的续作《PAYDAY 3》火爆归来！自本系列发布以来，PAYDAY玩家一直沉醉在精心计划然后执行劫案的快感中，这也让PAYDAY得以打造出无与伦比的高强度合作型FPS体验。', 'https://cdn.akamai.steamstatic.com/steam/apps/1272080/capsule_231x87_alt_assets_3.jpg?t=1702547327', 'https://cdn.akamai.steamstatic.com/steam/apps/1272080/ss_c751853378d528dd15c075465d29c99acee5db4a.600x338.jpg?t=1702547327,https://cdn.akamai.steamstatic.com/steam/apps/1272080/ss_af05bb8f8199b48aea40a696031e959ba4842d84.600x338.jpg?t=1702547327,https://cdn.akamai.steamstatic.com/steam/apps/1272080/ss_feab168614803617da20ef134ff05b49692784ba.600x338.jpg?t=1702547327', 'https://cdn.akamai.steamstatic.com/steam/apps/1272080/hero_capsule.jpg?t=1702547327');
INSERT INTO `steam_game` VALUES (7, '沉没之地', '2023-12-28 07:17:17', NULL, 70.00, 56.00, '在被海水淹没的地球上求生。探索沉没的都市，搜集材料，模块化建造基地，制造道具和武器，和海盗争夺有限的陆地资源。单机或者和朋友一起在充满挑战的海洋末世生存下去！', '为何要采用抢先体验这种模式？\n“We want to engage with our community and get valuable feedback and ideas to fuel the future development of this game.”\n这款游戏的抢先体验状态大约持续多久？\n“We are aiming to bring it to completion in one year. But that time frame can vary based on the players\' feedback and possible modifications for improving the game.”\n计划中的完整版本和抢先体验版本到底有多少不同？\n“The full version will contain more locations to explore, new crafting items, buildings, ships and lore/storyline. And community generated ideas, contents in the game.”\n抢先体验版本的现状如何？\n“We have a playable survival game with base building, base defense, crafting, trading, combat, boat driving, underwater adventure and many unique locations to explore.”\n在抢先体验期间和结束之后，游戏价格会有所不同吗？\n“We do plan to gradually increase price as we ship more content.”\n在开发过程中，你们是如何计划让玩家社区参与进来的？\n“We will be active on the steam forum, our Discord server and other social media. We will also frequently publish devlogs on our website and Youtube channel.”', 'https://cdn.akamai.steamstatic.com/steam/apps/2080690/capsule_231x87.jpg?t=1703562037', 'https://cdn.akamai.steamstatic.com/steam/apps/2080690/ss_0d70acebd7b63e3ceb4cf94351b48e115284ac61.600x338.jpg?t=1703562037,https://cdn.akamai.steamstatic.com/steam/apps/2080690/ss_0d70acebd7b63e3ceb4cf94351b48e115284ac61.600x338.jpg?t=1703562037,https://cdn.akamai.steamstatic.com/steam/apps/2080690/ss_411aa5f5fd0a126dacbd17971ae5cca610042898.600x338.jpg?t=1703562037', 'https://cdn.akamai.steamstatic.com/steam/apps/2080690/hero_capsule.jpg?t=1703562037');
INSERT INTO `steam_game` VALUES (8, 'Sons Of The Forest', '2023-12-28 07:18:48', NULL, 108.00, 86.40, '你被派到了一座孤岛上，寻找一位失踪的亿万富翁，结果却发现自己深陷被食人生物占领的炼狱之地。你需要制作工具和武器、建造房屋，倾尽全力生存下去，无论独自一人还是与朋友一起——一切尽在这款新推出的开放世界恐怖生存模拟游戏中。', '你被派到了一座孤岛上，寻找一位失踪的亿万富翁，结果却发现自己深陷被食人生物占领的炼狱之地。你需要制作工具和武器、建造房屋，倾尽全力生存下去，无论独自一人还是与朋友一起——一切尽在这款新推出的开放世界恐怖生存模拟游戏中。', 'https://cdn.akamai.steamstatic.com/steam/apps/1326470/header.jpg?t=1697048131', 'https://cdn.akamai.steamstatic.com/steam/apps/1326470/ss_e6e3ab1badfb287a77fb6eef7b1589a35371496b.600x338.jpg?t=1697048131,https://cdn.akamai.steamstatic.com/steam/apps/1326470/ss_4fa5d260318f0aa37754b00c5dc10d1b7b9b9b1d.600x338.jpg?t=1697048131,https://cdn.akamai.steamstatic.com/steam/apps/1326470/ss_2b67491ca913adea6953429e1a567824aaa0ed54.600x338.jpg?t=1697048131', 'https://cdn.akamai.steamstatic.com/steam/apps/1326470/hero_capsule.jpg?t=1697048131');
INSERT INTO `steam_game` VALUES (9, 'Project Zomboid', '2023-12-28 07:21:39', NULL, 76.00, 50.92, 'Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die? All it takes is a bite..', 'Project Zomboid is an open-ended zombie-infested sandbox. It asks one simple question – how will you die? \n\nIn the towns of Muldraugh and West Point, survivors must loot houses, build defences and do their utmost to delay their inevitable death day by day. No help is coming – their continued survival relies on their own cunning, luck and ability to evade a relentless horde.\nCurrent Features\n\nHardcore Sandbox Zombie Survival Game with a focus on realistic survival.\nOnline multiplayer survival with persistent player run servers.\nLocal 4 player split-screen co-op\nHundreds of zombies with swarm mechanics and in-depth visual and hearing systems.\nFull line of sight system and real-time lighting, sound and visibility mechanics. Hide in the shadows, keep quiet and keep the lights off at night, or at least hang sheets over the windows.\nVast and growing map (loosely based on a real world location) for you to explore, loot and set up your fortress. Check out Blindcoder’s map project: https://map.projectzomboid.com/\nVehicles with full physics and deep and realistic gameplay mechanics.\nUse tools and items to craft weapons, barricade and cook. You can even build zombie proof forts by chopping trees, sawing wood and scavenging supplies.\nDeal with depression, boredom, hunger, thirst and illness while trying to survive.\nDay turns to night. The electricity falters. Hordes migrate. Winter draws in. Nature gradually starts to take over.\nFarming, fishing, carpentry, cooking, trapping, character customization, skills and perks that develop based on what you do in-game.\nProper zombies that don’t run. (Unless you tell them to in the sandbox menu).\nA ton of amazing atmospheric music tracks by the prodigy that is Zach Beever.\nImaginative Challenge scenarios and instant action ‘Last Stand’ mode, on top of regular Sandbox and Survival ', 'https://cdn.akamai.steamstatic.com/steam/apps/108600/header.jpg?t=1691508011', 'https://cdn.akamai.steamstatic.com/steam/apps/108600/ss_eca8be032b3f5508bf5bea74cfbc823a4df047ce.600x338.jpg?t=1691508011,https://cdn.akamai.steamstatic.com/steam/apps/108600/ss_7300ecc70342b6fcbdf39b6f9ff4c408066f8fc2.600x338.jpg?t=1691508011.https://cdn.akamai.steamstatic.com/steam/apps/108600/ss_eb1862af5109e4658e2538d897cbd16b87ad1818.600x338.jpg?t=1691508011', 'https://cdn.akamai.steamstatic.com/steam/apps/108600/hero_capsule.jpg?t=1691508011');
INSERT INTO `steam_game` VALUES (10, 'Red Dead Redemption 2', '2023-12-28 07:23:40', NULL, 279.00, 92.07, 'Red Dead Redemption 2 已荣获超过 175 项年度游戏奖项且获得超过 250 个满分评价，游戏中述说亚瑟·摩根和声名狼藉的范德林德帮派的传奇故事，体验在 19 世纪的最后岁月里横跨美国的亡命之旅。除此之外，还可免费享受 Red Dead 在线模式中与众多玩家共享的逼真世界。', '美国，1899 年。\n\n亚瑟·摩根和范德林德帮众是一群逃亡在外的亡命之徒。联邦侦探和全国顶尖的赏金猎人在他们的身后穷追不舍，亚瑟一行人必须在广袤蛮荒的美国腹地上四处劫掠、挣扎求生。而帮派内部的矛盾分化日渐加深，摆在亚瑟面前的将是他无法避免的抉择：究竟是选择自己的理想，还是选择效忠于抚养了自己的帮派。\n\n现已添加额外故事模式内容和功能齐全的照片模式。除此之外，Red Dead Redemption 2 玩家还可免费享受 Red Dead 在线模式中与众多玩家共享的逼真世界。此模式中，玩家可从事各种不同的职业，在边疆开拓属于自己的独特生涯。您可以成为追捕通缉犯的赏金猎人、经营自己生意的商贩、发掘珍奇宝藏的收藏家或运营地下酿酒厂的私酒贩等等。\n\nRed Dead Redemption 2 PC 版借助全新图形和技术改进以增强沉浸感，并充分利用了电脑强大的性能，使这个庞大、丰富而细致的世界的每个角落都栩栩如生。包括更广的渲染距离；为改良的昼夜照明而提供的更高质量的全局照明和环境光遮蔽；改良的反射和所有距离提供更深、更高分辨率的阴影；细分曲面处理树木纹理并改善草地和毛皮纹理，使所有植物和动物都更加逼真。\n\nRed Dead Redemption 2 PC 版还提供 HDR 支持，可在高端显示设置上以 4K 及更高分辨率运行、多显示器配置、宽屏配置、更快的帧速率及更多。', 'https://cdn.akamai.steamstatic.com/steam/apps/1174180/header.jpg?t=1695140956', 'https://cdn.akamai.steamstatic.com/steam/apps/1174180/ss_bac60bacbf5da8945103648c08d27d5e202444ca.600x338.jpg?t=1695140956,https://cdn.akamai.steamstatic.com/steam/apps/1174180/ss_668dafe477743f8b50b818d5bbfcec669e9ba93e.600x338.jpg?t=1695140956.https://cdn.akamai.steamstatic.com/steam/apps/1174180/ss_66b553f4c209476d3e4ce25fa4714002cc914c4f.600x338.jpg?t=1695140956', 'https://cdn.akamai.steamstatic.com/steam/apps/1174180/hero_capsule.jpg?t=1695140956');
INSERT INTO `steam_game` VALUES (11, 'Red Dead Redemption 3.0', '2023-12-28 21:04:12', NULL, 279.00, 92.07, 'Red Dead Redemption 2 已荣获超过 175 项年度游戏奖项且获得超过 250 个满分评价，游戏中述说亚瑟·摩根和声名狼藉的范德林德帮派的传奇故事，体验在 19 世纪的最后岁月里横跨美国的亡命之旅。除此之外，还可免费享受 Red Dead 在线模式中与众多玩家共享的逼真世界。', '美国，1899 年。\n\n亚瑟·摩根和范德林德帮众是一群逃亡在外的亡命之徒。联邦侦探和全国顶尖的赏金猎人在他们的身后穷追不舍，亚瑟一行人必须在广袤蛮荒的美国腹地上四处劫掠、挣扎求生。而帮派内部的矛盾分化日渐加深，摆在亚瑟面前的将是他无法避免的抉择：究竟是选择自己的理想，还是选择效忠于抚养了自己的帮派。\n\n现已添加额外故事模式内容和功能齐全的照片模式。除此之外，Red Dead Redemption 2 玩家还可免费享受 Red Dead 在线模式中与众多玩家共享的逼真世界。此模式中，玩家可从事各种不同的职业，在边疆开拓属于自己的独特生涯。您可以成为追捕通缉犯的赏金猎人、经营自己生意的商贩、发掘珍奇宝藏的收藏家或运营地下酿酒厂的私酒贩等等。\n\nRed Dead Redemption 2 PC 版借助全新图形和技术改进以增强沉浸感，并充分利用了电脑强大的性能，使这个庞大、丰富而细致的世界的每个角落都栩栩如生。包括更广的渲染距离；为改良的昼夜照明而提供的更高质量的全局照明和环境光遮蔽；改良的反射和所有距离提供更深、更高分辨率的阴影；细分曲面处理树木纹理并改善草地和毛皮纹理，使所有植物和动物都更加逼真。\n\nRed Dead Redemption 2 PC 版还提供 HDR 支持，可在高端显示设置上以 4K 及更高分辨率运行、多显示器配置、宽屏配置、更快的帧速率及更多。', 'https://cdn.akamai.steamstatic.com/steam/apps/1174180/header.jpg?t=1695140956', 'https://cdn.akamai.steamstatic.com/steam/apps/1174180/ss_bac60bacbf5da8945103648c08d27d5e202444ca.600x338.jpg?t=1695140956,https://cdn.akamai.steamstatic.com/steam/apps/1174180/ss_668dafe477743f8b50b818d5bbfcec669e9ba93e.600x338.jpg?t=1695140956.https://cdn.akamai.steamstatic.com/steam/apps/1174180/ss_66b553f4c209476d3e4ce25fa4714002cc914c4f.600x338.jpg?t=1695140956', 'https://cdn.akamai.steamstatic.com/steam/apps/1174180/hero_capsule.jpg?t=1695140956');
INSERT INTO `steam_game` VALUES (12, '赛博朋克 2077', '2023-12-28 21:20:17', NULL, 298.00, 149.00, '《赛博朋克 2077》是一款开放世界动作冒险 RPG 游戏。故事发生在暗黑未来的夜之城，一座五光十色、危机四伏的超级大都会，权力更迭和无尽的身体改造是这里不变的主题。', '《赛博朋克 2077》是一款开放世界动作冒险 RPG 游戏。故事发生在暗黑未来的夜之城，一座五光十色、危机四伏的超级大都会，权力更迭和无尽的身体改造是这里不变的主题。', 'https://cdn.akamai.steamstatic.com/steam/apps/1091500/header_alt_assets_5_schinese.jpg?t=1702306332', 'https://cdn.akamai.steamstatic.com/steam/apps/1091500/ss_7924f64b6e5d586a80418c9896a1c92881a7905b.600x338.jpg?t=1702306332,https://cdn.akamai.steamstatic.com/steam/apps/1091500/ss_4eb068b1cf52c91b57157b84bed18a186ed7714b.600x338.jpg?t=1702306332,https://cdn.akamai.steamstatic.com/steam/apps/1091500/ss_b529b0abc43f55fc23fe8058eddb6e37c9629a6a.600x338.jpg?t=1702306332', 'https://cdn.akamai.steamstatic.com/steam/apps/1091500/hero_capsule_schinese.jpg?t=1702306332');

-- ----------------------------
-- Table structure for steam_my_game
-- ----------------------------
DROP TABLE IF EXISTS `steam_my_game`;
CREATE TABLE `steam_my_game`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `game_id` int NULL DEFAULT NULL COMMENT '游戏ID',
  `add_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steam_my_game
-- ----------------------------
INSERT INTO `steam_my_game` VALUES (10, 1, 7, '2023-12-28 23:33:55', NULL);
INSERT INTO `steam_my_game` VALUES (11, 1, 8, '2023-12-28 23:33:55', NULL);
INSERT INTO `steam_my_game` VALUES (12, 1, 12, '2023-12-28 23:33:55', NULL);
INSERT INTO `steam_my_game` VALUES (13, 1, 10, '2023-12-30 00:15:26', NULL);

-- ----------------------------
-- Table structure for steam_order
-- ----------------------------
DROP TABLE IF EXISTS `steam_order`;
CREATE TABLE `steam_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未付款',
  `user_id` int NOT NULL,
  `add_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '借记卡付款、信用卡、微信支付 支付宝',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steam_order
-- ----------------------------
INSERT INTO `steam_order` VALUES (12, '已完成', 1, '2023-12-28 23:33:46', '3', '不给钱', 291.40);
INSERT INTO `steam_order` VALUES (13, '已完成', 1, '2023-12-30 00:15:22', '3', '', 92.07);
INSERT INTO `steam_order` VALUES (14, '未付款', 1, '2023-12-30 00:15:44', '1', '', 50.92);

-- ----------------------------
-- Table structure for steam_order_item
-- ----------------------------
DROP TABLE IF EXISTS `steam_order_item`;
CREATE TABLE `steam_order_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `game_id` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steam_order_item
-- ----------------------------
INSERT INTO `steam_order_item` VALUES (8, 12, 7, 56.00, 1);
INSERT INTO `steam_order_item` VALUES (9, 12, 8, 86.40, 1);
INSERT INTO `steam_order_item` VALUES (10, 12, 12, 149.00, 1);
INSERT INTO `steam_order_item` VALUES (11, 13, 10, 92.07, 1);
INSERT INTO `steam_order_item` VALUES (12, 14, 9, 50.92, 1);

-- ----------------------------
-- Table structure for steam_user
-- ----------------------------
DROP TABLE IF EXISTS `steam_user`;
CREATE TABLE `steam_user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `login_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `login_pwd` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `add_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_login_name`(`login_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steam_user
-- ----------------------------
INSERT INTO `steam_user` VALUES (1, 'mao', '1cae28c7ef8757b79f1866b83480875f', 'hulue', '2023-12-24 14:51:30', '2023-12-28 01:46:12', NULL, 1);
INSERT INTO `steam_user` VALUES (4, 'mao1', '38aa677d9feb3c9386ec333aec839737', NULL, '2023-12-24 14:59:43', NULL, NULL, 0);
INSERT INTO `steam_user` VALUES (5, 'sdfsefsefse', 'b21a0a95e9ee76a195f460d258d0a8d9', NULL, '2023-12-24 15:02:51', NULL, NULL, 0);
INSERT INTO `steam_user` VALUES (6, 'hulue', 'f7d0ceab1a16713e107ff1c942f7d4ec', NULL, '2023-12-24 15:03:20', NULL, NULL, 0);
INSERT INTO `steam_user` VALUES (8, 'user1', '6b29253c405a8a6f0c221d0960dfaa8b', NULL, '2023-12-28 07:26:45', NULL, NULL, 0);
INSERT INTO `steam_user` VALUES (9, 'user100', '76ecf98df13f9bfda30512f37359d9cf', NULL, '2023-12-30 00:14:36', NULL, NULL, 0);
INSERT INTO `steam_user` VALUES (10, 'user9999', '32596d6a1c53daad90d80bc2e489429c', NULL, '2023-12-30 00:14:58', NULL, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
