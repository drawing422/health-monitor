/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : healthmonitor

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 18/06/2022 17:28:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exercise
-- ----------------------------
DROP TABLE IF EXISTS `exercise`;
CREATE TABLE `exercise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运动名称',
  `caloriecon` int(11) NULL DEFAULT NULL COMMENT '消耗卡路里/60min',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '运动介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exercise
-- ----------------------------
INSERT INTO `exercise` VALUES (1, '快走', 116, '报告指出，所谓快走是在12分钟内走完1英里（约1600米）的距离，如果每天快走45分钟到1个小时，那么患中风的概率可以进一步降低40%；而没有运动习惯的人，只要从开始每天快走30分钟，也能达到强身健体的良好效果。');
INSERT INTO `exercise` VALUES (2, '慢走', 54, '走路能够有助于预防许多危险的身体疾病，包括心脏疾病和中风、高血压、骨关节炎、肥胖、精神抑郁、某些类型的糖尿病以及结肠癌等。 ');
INSERT INTO `exercise` VALUES (3, '快跑', 316, '快跑是一种能量的突破、速度的提升、还可以提升人体的爆发力、舒缓压力等。');
INSERT INTO `exercise` VALUES (4, '慢跑', 228, '慢跑可以有效的提高睡眠的质量，长期坚持慢跑可以有效的增强心肺能力、防止肌肉萎缩、不间断的慢跑可以增强肌肉的耐力。');
INSERT INTO `exercise` VALUES (5, '跳绳', 241, '跳绳不但可以帮你减肥瘦身，还可以让全身肌肉匀称有力，同时会让你的呼吸系统、心脏、心血管系统得到充分的锻炼。');
INSERT INTO `exercise` VALUES (6, '游泳', 228, '游泳可帮助燃脂减重 游泳时身体直接浸泡在水中，水不仅阻力大，而且导热性能也非常好，散热速度快，因而消耗热量多。');
INSERT INTO `exercise` VALUES (7, '自行车', 241, '自行车运动是异侧支配运动，所以可以提高神经系统的敏捷性。两腿交替蹬踏可使左、右侧大脑功能同时得以开发，自行车运动也可以有效地锻炼下肢肌力，并且强化全身耐力。');
INSERT INTO `exercise` VALUES (8, '篮球', 228, '经常进行篮球运动，可以增强心脏功能，使每搏输出量增加，能使动脉血管壁的中膜增厚，平滑肌细胞和弹力纤维增加;使骨骼肌肉的毛细血管的分布数量增加，分枝吻合丰富，使冠状动脉口增粗和重量增加;心肌的毛细血管数量增加，这些都有利于包括心脏本身在内的器官供血和机能的提高。');
INSERT INTO `exercise` VALUES (9, '足球', 249, '足球是训练下肢的最佳运动，在不断地踢球过程中，不仅促进了血液循环，还加快了新陈代谢。骨的血液供给得到了改善，骨的形态结构和机能都发生了良好的变化。');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食物名称',
  `calorie` int(11) NULL DEFAULT NULL COMMENT '卡路里/100g',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食物种类',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '食物介绍/优点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '米饭', 116, '主食', '米饭是许多人的主食。 好处，提供能量，白米饭消化分解后产生的碳水化合物，最能被身体转换成能量，而蛋白质与脂肪消化后，还必须与其它器官互相作用后而产生燃料的。 碳水化合物又可称为醣类，消化最快最容易被人体吸收，可以供应活动能量的主要来源。');
INSERT INTO `food` VALUES (2, '苹果', 53, '水果', '苹果富含糖类、酸类、芳香醇类和果胶物质，并含维生素b、c及钙、磷、钾、铁等营养成分。');
INSERT INTO `food` VALUES (3, '热干面', 153, '主食', '热干面色泽黄而油润，味道鲜美，由于热量高，也可以当作主食，营养早餐，补充人体所需的能量。');
INSERT INTO `food` VALUES (4, '酸奶', 70, '奶制品', '调节肠道内益生菌群，提高人体免疫力。');
INSERT INTO `food` VALUES (5, '牛奶', 66, '奶制品', '牛奶中钾、钙、磷等微量元素含量丰富，每升牛奶可提供1200毫克的钙，并且容易被人体吸收利用，多喝牛奶比每天口服钙片更容易被吸收，更能减少对胃肠道的刺激。');
INSERT INTO `food` VALUES (6, '豆浆', 31, '豆制品', '豆浆含有丰富的植物蛋白和磷脂，还含有维生素B1.B2和烟酸。此外，豆浆还含有铁、钙等矿物质，尤其是其所含的钙，非常适合于各种人群，包括老人、成年人、青少年、儿童等等。');
INSERT INTO `food` VALUES (7, '番茄', 15, '蔬菜', '番茄含的“番茄素”，有抑制细菌的作用；含的苹果酸、柠檬酸和糖类，有助消化的功能。番茄含有丰富的营养，又有多种功用被称为神奇的菜中之果。番茄内的苹果酸和柠檬酸等有机酸，还有增加胃液酸度，帮助消化，调整胃肠功能的作用。');
INSERT INTO `food` VALUES (8, '黄瓜', 16, '蔬菜', '黄瓜富含蛋白质、糖类、维生素B2、维生素C、维生素E、胡萝卜素、尼克酸、钙、磷、铁等营养成分。');
INSERT INTO `food` VALUES (9, '樱桃', 46, '水果', '樱桃营养丰富，每100克可食部分中含有水分88克，蛋白质1.1克，脂肪0.2克，膳食维0.3克，碳水化合物9.9克，钙4毫克，磷24毫克。铁0.3毫克。锌0.4毫克。胡萝卜素10微克，维生素B0.03毫克，尼克酸0.3克，维生素C23毫克，还含有柠檬酸、酒石酸等有机酸。');
INSERT INTO `food` VALUES (10, '西瓜', 32, '水果', '西瓜除不含脂肪和胆固醇外，含有大量葡萄糖、苹果酸、果糖、蛋白氨基酸、番茄素及丰富的维生素C等物质，是一种富有很高的营养、纯净、食用安全食品。瓤肉含糖量一般为5-12%，包括葡萄糖、果糖和蔗糖。');
INSERT INTO `food` VALUES (13, '美龄粥', 47, '主食', '美龄粥是南京的传统名菜，属金陵菜、金陵小吃，又名民国美龄粥、豆浆山药粥，是创于民国时期的菜品。美龄粥由豆浆、糯米、粳米、山药、百合、枸杞、冰糖等食材做成，既清淡简朴，又营养丰富。');
INSERT INTO `food` VALUES (14, '鸭血粉丝汤', 113, '主食', '鸭血粉丝汤是南京的传统名菜，属金陵菜、金陵小吃，是金陵菜和金陵小吃中重要的代表，也是久负盛名以鸭为特色的美食之一。鸭血粉丝汤由鸭血、鸭肠、鸭肝等加入鸭汤和粉丝制成，以其口味平和，鲜香爽滑的特点与南北皆宜的口味特色，风靡于全国各地。');
INSERT INTO `food` VALUES (15, '平菇', 17, '蔬菜', '平菇是一种食用菌，含丰富的营养物质，具有追风散寒、舒筋活络的功效。用于治腰腿疼痛、手足麻木，筋络不通等病症。另外，对预防癌症、调节妇女更年期综合征、改善人体新陈代谢、增强体质都有一定的好处。');

-- ----------------------------
-- Table structure for nums
-- ----------------------------
DROP TABLE IF EXISTS `nums`;
CREATE TABLE `nums`  (
  `column_1` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nums
-- ----------------------------
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);
INSERT INTO `nums` VALUES (1);

-- ----------------------------
-- Table structure for recordexercise
-- ----------------------------
DROP TABLE IF EXISTS `recordexercise`;
CREATE TABLE `recordexercise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '运动id',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `exercise` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运动名称',
  `time` int(11) NULL DEFAULT NULL COMMENT '运动时长',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recordexercise
-- ----------------------------
INSERT INTO `recordexercise` VALUES (7, '2022-06-11 00:00:00', '慢走', 60, '111', NULL);
INSERT INTO `recordexercise` VALUES (8, '2022-06-18 00:00:00', '快走', 30, '222', NULL);

-- ----------------------------
-- Table structure for recordfood
-- ----------------------------
DROP TABLE IF EXISTS `recordfood`;
CREATE TABLE `recordfood`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '0早饭1午饭2晚饭',
  `food` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食物名称',
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户名',
  `weigh` int(11) NULL DEFAULT NULL COMMENT '食物重量',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recordfood
-- ----------------------------
INSERT INTO `recordfood` VALUES (34, '2022-06-11 00:00:00', '早饭', '米饭', NULL, 100, '111');
INSERT INTO `recordfood` VALUES (35, '2022-06-11 00:00:00', '午饭', '热干面', NULL, 100, '111');
INSERT INTO `recordfood` VALUES (36, '2022-06-11 00:00:00', '晚饭', '豆浆', NULL, 200, '111');

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NULL DEFAULT NULL,
  `userid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign
-- ----------------------------

-- ----------------------------
-- Table structure for sum
-- ----------------------------
DROP TABLE IF EXISTS `sum`;
CREATE TABLE `sum`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `exercise` int(11) NULL DEFAULT NULL COMMENT '运动消耗',
  `sum` int(11) NULL DEFAULT NULL COMMENT '卡路里总和(食物-运动)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lun` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `din` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sum
-- ----------------------------
INSERT INTO `sum` VALUES (9, 15, '2022-06-18 00:00:00', 0, 0, '222', '0', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `age` int(11) NULL DEFAULT NULL COMMENT '用户年龄',
  `weigh` float NULL DEFAULT NULL COMMENT '用户体重',
  `height` float NULL DEFAULT NULL COMMENT '用户身高',
  `bmi` float NULL DEFAULT NULL,
  `hope` float NULL DEFAULT NULL COMMENT '理想体重',
  `hopebmi` float NULL DEFAULT NULL COMMENT '理想体重bmi',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `pw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '0管理员1用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (11, '111', 18, 50, 170, 19, 55, 20, '女', '111', 1);
INSERT INTO `user` VALUES (14, 'aaa', 0, 60, 1.89, 16.7968, 70, NULL, NULL, 'aaa', 0);
INSERT INTO `user` VALUES (15, '222', 0, 60, 1.8, 18.5185, 56, NULL, NULL, '222', 1);

SET FOREIGN_KEY_CHECKS = 1;
