/*
 Navicat Premium Data Transfer

 Source Server         : library_use
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : smart_medicine

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 25/07/2024 21:44:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '反馈用户',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '反馈标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '反馈内容',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (6, '路人甲', '31952874@qq.com', '测试一号', '测试这个系统有问题吗？', '2024-05-03 16:13:59', '2024-05-03 16:13:59');
INSERT INTO `feedback` VALUES (7, '路人乙', '31952874@qq.com', '测试二号', '惆怅长岑长错错错错错错', '2024-05-03 16:14:20', '2024-05-03 16:14:20');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户搜索历史主键id',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '搜索关键字',
  `operate_type` int NULL DEFAULT NULL COMMENT '类型：1搜索，2科目，3药品',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (126, 4, '10,无', 1, '2024-07-18 16:09:34', '2024-07-18 11:48:28');
INSERT INTO `history` VALUES (127, 4, '10,无', 1, '2024-05-03 16:09:40', '2024-05-03 16:09:40');
INSERT INTO `history` VALUES (128, 4, '病毒性感冒', 2, '2024-05-03 16:09:48', '2024-05-03 16:09:48');
INSERT INTO `history` VALUES (129, 4, '10,无', 1, '2024-05-03 16:09:52', '2024-05-03 16:09:52');
INSERT INTO `history` VALUES (130, 4, '湿疹', 2, '2024-05-03 16:12:15', '2024-05-03 16:12:15');
INSERT INTO `history` VALUES (131, 4, '偏头痛', 2, '2024-05-03 16:12:49', '2024-05-03 16:12:49');
INSERT INTO `history` VALUES (132, 5, '7,无', 1, '2024-05-03 16:17:41', '2024-05-03 16:17:41');
INSERT INTO `history` VALUES (133, 5, '湿疹', 2, '2024-05-03 16:17:53', '2024-05-03 16:17:53');
INSERT INTO `history` VALUES (134, 5, '感冒', 2, '2024-05-03 16:18:08', '2024-05-03 16:18:08');
INSERT INTO `history` VALUES (135, 5, '17,无', 1, '2024-05-03 16:18:22', '2024-05-03 16:18:22');
INSERT INTO `history` VALUES (136, 5, '17,溃疡', 1, '2024-05-03 16:18:28', '2024-05-03 16:18:28');
INSERT INTO `history` VALUES (137, 5, '溃疡', 2, '2024-05-03 16:18:28', '2024-05-03 16:18:28');
INSERT INTO `history` VALUES (138, 5, '17,溃疡', 1, '2024-05-03 16:26:48', '2024-05-03 16:26:48');
INSERT INTO `history` VALUES (139, 5, '溃疡', 2, '2024-05-03 16:26:48', '2024-05-03 16:26:48');
INSERT INTO `history` VALUES (140, 5, '17,溃疡', 1, '2024-05-03 16:28:20', '2024-05-03 16:28:20');
INSERT INTO `history` VALUES (141, 5, '溃疡', 2, '2024-05-03 16:28:20', '2024-05-03 16:28:20');
INSERT INTO `history` VALUES (142, 5, '17,溃疡', 1, '2024-05-03 16:33:52', '2024-05-03 16:33:52');
INSERT INTO `history` VALUES (143, 5, '溃疡', 2, '2024-05-03 16:33:52', '2024-05-03 16:33:52');
INSERT INTO `history` VALUES (144, 5, '溃疡', 2, '2024-05-03 16:34:08', '2024-05-03 16:34:08');
INSERT INTO `history` VALUES (145, 5, '7,无', 1, '2024-05-03 16:37:57', '2024-05-03 16:37:57');
INSERT INTO `history` VALUES (146, 5, '9,无', 1, '2024-05-03 16:38:34', '2024-05-03 16:38:34');
INSERT INTO `history` VALUES (147, 5, '9,无', 1, '2024-05-03 16:41:59', '2024-05-03 16:41:59');
INSERT INTO `history` VALUES (148, 5, '9,无', 1, '2024-05-03 16:42:14', '2024-05-03 16:42:14');
INSERT INTO `history` VALUES (149, 5, '9,无', 1, '2024-05-03 16:42:45', '2024-05-03 16:42:45');
INSERT INTO `history` VALUES (150, 5, '9,无', 1, '2024-05-03 16:43:54', '2024-05-03 16:43:54');
INSERT INTO `history` VALUES (151, 5, '9,无', 1, '2024-05-03 16:44:26', '2024-05-03 16:44:26');
INSERT INTO `history` VALUES (152, 5, '9,无', 1, '2024-05-03 16:44:45', '2024-05-03 16:44:45');
INSERT INTO `history` VALUES (153, 5, '2,无', 1, '2024-05-03 16:44:51', '2024-05-03 16:44:51');
INSERT INTO `history` VALUES (154, 5, '2,无', 1, '2024-05-03 16:45:46', '2024-05-03 16:45:46');
INSERT INTO `history` VALUES (155, 5, '1', 3, '2024-05-07 15:34:34', '2024-05-07 15:34:34');
INSERT INTO `history` VALUES (156, 4, '牙周炎', 2, '2024-07-14 19:32:05', '2024-07-14 19:32:05');
INSERT INTO `history` VALUES (157, 4, '9,无', 1, '2024-07-14 19:32:52', '2024-07-14 19:32:52');
INSERT INTO `history` VALUES (158, 4, '1,无', 1, '2024-07-14 19:32:56', '2024-07-14 19:32:56');
INSERT INTO `history` VALUES (159, 4, '17,无', 1, '2024-07-14 19:32:59', '2024-07-14 19:32:59');
INSERT INTO `history` VALUES (160, 6, '病毒性感冒', 2, '2024-07-20 02:33:23', '2024-07-20 02:33:23');
INSERT INTO `history` VALUES (161, 6, '湿疹', 2, '2024-07-20 02:33:28', '2024-07-20 02:33:28');
INSERT INTO `history` VALUES (162, 6, '湿疹', 2, '2024-07-20 04:00:32', '2024-07-20 04:00:32');
INSERT INTO `history` VALUES (163, 6, '扁桃体炎', 2, '2024-07-24 00:47:03', '2024-07-24 00:47:03');
INSERT INTO `history` VALUES (164, 6, '急性胰腺炎', 2, '2024-07-24 00:47:07', '2024-07-24 00:47:07');
INSERT INTO `history` VALUES (165, 6, '慢性鼻窦炎', 2, '2024-07-24 00:47:12', '2024-07-24 00:47:12');
INSERT INTO `history` VALUES (166, 6, '百日咳', 2, '2024-07-24 00:47:15', '2024-07-24 00:47:15');
INSERT INTO `history` VALUES (167, 6, '急性胰腺炎', 2, '2024-07-24 00:47:29', '2024-07-24 00:47:29');
INSERT INTO `history` VALUES (168, 6, '扁桃体炎', 2, '2024-07-24 01:56:08', '2024-07-24 01:56:08');
INSERT INTO `history` VALUES (169, 6, '扁桃体炎', 2, '2024-07-24 01:56:14', '2024-07-24 01:56:14');
INSERT INTO `history` VALUES (170, 6, '急性胰腺炎', 2, '2024-07-24 23:29:01', '2024-07-24 23:29:01');
INSERT INTO `history` VALUES (171, 6, '百日咳', 2, '2024-07-24 23:29:06', '2024-07-24 23:29:06');
INSERT INTO `history` VALUES (172, 6, '急性心肌梗死', 2, '2024-07-24 23:29:09', '2024-07-24 23:29:09');
INSERT INTO `history` VALUES (173, 6, '银屑病', 2, '2024-07-24 23:29:15', '2024-07-24 23:29:15');
INSERT INTO `history` VALUES (174, 6, '急性胰腺炎', 2, '2024-07-24 23:31:00', '2024-07-24 23:31:00');
INSERT INTO `history` VALUES (175, 6, '高血压', 2, '2024-07-24 23:31:11', '2024-07-24 23:31:11');
INSERT INTO `history` VALUES (176, 6, '病毒性感冒', 2, '2024-07-24 23:31:15', '2024-07-24 23:31:15');
INSERT INTO `history` VALUES (177, 6, '病毒性感冒', 2, '2024-07-24 23:31:39', '2024-07-24 23:31:39');

-- ----------------------------
-- Table structure for illness
-- ----------------------------
DROP TABLE IF EXISTS `illness`;
CREATE TABLE `illness`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '疾病id',
  `kind_id` int NULL DEFAULT NULL COMMENT '疾病分类ID',
  `illness_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病名字',
  `include_reason` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '诱发因素',
  `illness_symptom` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '疾病症状',
  `special_symptom` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '特殊症状',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of illness
-- ----------------------------
INSERT INTO `illness` VALUES (1, 10, '病毒性感冒', '各种导致全身或呼吸道局部防御功能降低的原因，如受凉、淋雨、气候突变、过度疲劳等均可诱发本疲', '急性起病，患者主要表现为鼻塞、流涕、咽痛、咳嗽等症状。部分患者可有发热、乏力、头痛、周身酸痛、\n食欲减退、腹胀、便秘或腹泻等全身症状。', '急性起病，患者主要表现为鼻塞、流涕、咽痛、咳嗽等症状。部分患者可有发热、乏力、头痛、周身酸痛、\n食欲减退、腹胀、便秘或腹泻等全身症状。', '2024-05-01 11:31:10', '2024-05-03 16:00:41');
INSERT INTO `illness` VALUES (2, 10, '风寒感冒', '身体免疫力低下的情况下，体内有寒气入侵，导致感冒', '恶寒重、发热轻、无汗、头痛身痛、鼻塞流清涕、咳嗽吐稀白痰、口不渴或渴喜热饮、苔薄白', '恶寒重、发热轻、无汗、头痛身痛、畏寒', '2024-05-01 11:31:10', '2024-05-03 16:01:51');
INSERT INTO `illness` VALUES (3, 2, '扁桃体发炎', '扁桃体炎形成的原因与多种因素有关，包括感染因素、免疫因素、邻近器官的急性炎症等，细菌和病毒积存\n于扁桃体窝引起该病。扁桃体炎还可继发于某些急性传染病，如猩红热、麻疹、流感等。', '发热、咽部不适、咽部疼痛，甚至吞咽、呼吸困难、局部可有咽痛，吞咽时尤为明显，甚至因畏惧疼痛不敢吞咽，疼痛可放射至耳部，幼儿常因不能吞咽而拒食哭闹。', '咽痛、咽部不适', '2024-05-01 11:31:10', '2024-05-01 17:49:05');
INSERT INTO `illness` VALUES (4, 3, '偏头痛', '偏头痛的病因尚不明确，可能与遗传、内分泌代谢、环境因素、精神因素有关。', '偏头痛的常见症状包括：头痛，开始常为隐约疼痛，逐渐变为搏动性疼痛，活动时加重，还可从头的一侧转\n移至另一侧，累及头前部或整个头部；对光线、噪音和气味敏感；伴有恶心、呕吐，胃部不适，腹部疼痛；\n食欲差；感觉非常的暖或冷；肤色苍白；疲劳；头晕；视野模糊；腹泻。比较军见的症状包括发烧、影响正\n常的肢体活动。', '左侧疼痛、右侧疼痛、单侧疼痛、一阵一阵的疼痛、像针扎一样', '2024-05-01 11:31:10', '2024-05-01 17:49:06');
INSERT INTO `illness` VALUES (5, 2, '便秘', '便秘通常是由于美便在消化道中移动太慢，或无法从直肠中有效清除时，导致类便脱水、变硬和干燥，从而引发的便秘。', '排便次数减少、一周内小于3次、粪便干燥或结块、如羊粪、排便因难，如排便时间长、排便时感觉有阻碍、排便后仍有粪便未排尽的感觉、需手按腹部帮助排便等', '大便困难、拉不出来', '2024-05-01 11:31:10', '2024-05-03 16:03:44');
INSERT INTO `illness` VALUES (6, 3, '骨折', '骨折是由创伤或骨骼痪病所导致，大部分骨折都是由于直接或间接暴力引起。跌倒、撞击、交通意外等暴力因素是导致骨折的常见原因。积累性劳损及骨骼痪病也会增加骨折发生几率，骨骼痪病（如骨髓炎、骨肿瘤）导致骨质破坏，患者受到轻微外力就可能发生骨折。', '骨折特有特征为畸形、异常活动和骨擦音（感）。大部分骨折一般只引起局部症状，最常见的症状就是局部\n疼痛、肿胀及功能障碍。严重骨折和多发性骨折可伴随全身症状（如休克、发热）。', '骨折的一般表现为局部疼痛、肿胀及功能障碍', '2024-05-01 11:31:10', '2024-05-03 16:04:23');
INSERT INTO `illness` VALUES (7, 17, '牙周炎', '牙周炎是一种破坏性庆病，与微生物、宿主反应有关，是导致我国成人牙齿丧失的主要原因，严重影响患者的口腔健康。在局部致病因素中，牙菌斑是最主要的致病因素，而在全身因素中吸烟是高危因素。', '健康的牙龈应该呈粉红色，边缘薄且紧贴牙面，质坚韧，探诊不出血。牙周災的主要症状是牙龈红肿、质地\n松软、探诊出血、牙周袋溢脓和牙齿松动。', '牙龈出血、牙齿松动、牙龈肿', '2024-05-01 11:31:10', '2024-05-03 16:04:43');
INSERT INTO `illness` VALUES (8, 2, '胃溃疡', '胃溃疡是一种常见的消化痪病，任何年龄的人都可能患病。在全球范围内，约占10%的人群一生中都会患有消化性渍疡。在患病人群中，40-60岁的中老年患者最为多见，而且男性多于女性。', '胃溃疡的症状较多，包括胃部疼痛、食欲不振、餐后腹胀或胃部不适、体重减轻等等。这些症状的严重程度\n取决于溃疡的严重程度。有些患者可能没有任何症状（如“无症状性溃疡\"），或者是以胃出血、胃穿孔等并\n发症为首发症状。', '餐后腹胀、体重减轻、食欲不振', '2024-05-01 11:31:10', '2024-05-03 16:05:16');
INSERT INTO `illness` VALUES (9, 17, '口腔溃疡', '口腔渍疡的致病原因尚不明确，多种因素可诱发，包括遗传因素、饮食因素、免疫因素等，且具有明显的个体差异。口腔渍疡经常、反复发作时，严重影响患者的日常生活和工作。', '口腔溃疡常见于口腔的唇、脸颊、软腭或牙龈等处的黏膜上，溃疡面一般呈圆形或椭圆形，溃疡面凹陷、有\n白色或黄色的中心、周围充血微红肿，有明显疼痛感。', '口腔溃疡常见于口腔的唇、脸颊、软腭或牙龈等处的黏膜上，溃疡面一般呈圆形或椭圆形，溃疡面凹陷、有\n白色或黄色的中心、周围充血微红肿，有明显疼痛感。', '2024-05-01 11:31:10', '2024-05-03 16:05:51');
INSERT INTO `illness` VALUES (13, 7, '湿疹', '湿疹的病因目前尚不明确，与机体内因、外因、社会心理因素等都有关。机体内因包括免疫功能异常和系统性痪病（如内分泌痪病、营养障碍、慢性感染等）以及遗传性或获得性 皮肤屏障功能障碍。', '急性期表现为红斑、水肿、粟粒大小的丘疹、丘疱疹、水疱，糜烂及渗出；亚急性期表现为红肿和渗出减\n轻，糜烂面结痂、脱屑；慢性期主要表现为粗糙肥厚、苔藓样变。湿疹容易复发，严重影响患者的生活质\n量。', '起病较急、发病较快，瘙痒剧烈。', '2024-05-03 16:08:58', '2024-05-03 16:09:11');
INSERT INTO `illness` VALUES (14, 4, '乳腺癌', ' 遗传、激素水平、生活方式、环境因素。', '乳房肿块、乳房疼痛、乳头溢液、乳房皮肤变化。', '乳房皮肤呈橘皮样改变、腋下淋巴结肿大。', '2024-07-20 17:52:35', '2024-07-20 17:52:35');
INSERT INTO `illness` VALUES (15, 2, '糖尿病', '糖尿病是一种由胰岛素分泌不足或胰岛素作用缺陷引起的代谢性疾病，主要原因包括遗传因素、肥胖、不健康的饮食习惯、缺乏运动、胰岛素抵抗等。', '多尿、多饮、多食、体重减轻、乏力、视力模糊。', '感染易发、伤口愈合缓慢、皮肤瘙痒、手脚麻木、糖尿病足。', '2024-07-20 17:54:19', '2024-07-20 17:54:19');
INSERT INTO `illness` VALUES (16, 2, '高血压', '高血压的原因多种多样，包括遗传因素、饮食高盐、高脂肪、缺乏运动、过度饮酒、吸烟、压力过大、年龄增长等。', '头痛、头晕、耳鸣、心悸、胸闷、乏力。', '视力模糊、鼻出血、耳鸣、恶心呕吐、失眠、烦躁。', '2024-07-20 17:54:57', '2024-07-20 17:54:57');
INSERT INTO `illness` VALUES (17, 2, '哮喘', '哮喘的原因包括遗传因素、过敏原（如花粉、尘螨、宠物毛发等）、空气污染、吸烟、感染、运动、气候变化、情绪波动等。', '呼吸困难、喘息、胸闷、咳嗽。', '夜间或早晨症状加重、运动诱发的喘息、持续性咳嗽。', '2024-07-20 17:55:25', '2024-07-20 17:55:25');
INSERT INTO `illness` VALUES (18, 4, '子宫内膜异位症', '子宫内膜异位症的确切病因尚不明确，主要理论包括：1）月经逆流学说：经血通过输卵管逆流进入盆腔，子宫内膜细胞在异位部位生长。2）免疫学说：机体免疫系统无法清除异位的子宫内膜细胞。3）遗传学说：有家族史的患者发病率更高。4）其他因素：激素水平异常、手术创伤等。', '月经疼痛（痛经）、经量增多、性交疼痛、不孕、骨盆区域疼痛。', '排便疼痛、尿频或尿急、腰背部疼痛、慢性疲劳、恶心呕吐。', '2024-07-20 17:58:51', '2024-07-20 17:58:51');
INSERT INTO `illness` VALUES (19, 5, '百日咳', '百日咳由百日咳杆菌（Bordetella pertussis）感染引起。传播途径主要是通过空气中的飞沫传播，感染源为患者或带菌者。婴幼儿免疫系统不完善，易感性较高。环境因素如拥挤、不通风的生活条件也增加了感染风险。', '持续性剧烈咳嗽、咳嗽伴随呕吐、呼吸急促、咳嗽频繁、夜间咳嗽加重。', '咳嗽末尾发出“鸡鸣”声、面色发绀、疲乏无力、食欲不振、体重下降。', '2024-07-20 17:59:20', '2024-07-20 17:59:20');
INSERT INTO `illness` VALUES (20, 6, '前列腺炎', '前列腺炎的原因包括：1）细菌感染：常见致病菌为大肠杆菌、克雷伯菌、假单胞菌等，通过尿道逆行感染。2）尿液返流：尿液进入前列腺导管引起炎症。3）长期憋尿：导致前列腺液积聚，细菌繁殖。4）饮食刺激：辛辣食物、酒精等刺激前列腺。5）其他：如前列腺充血、免疫反应等。', '会阴部疼痛或不适、尿频、尿急、尿痛、夜尿增多。', '性功能障碍（如阳痿、早泄）、排尿困难、下腹部不适、腰痛、发热（急性前列腺炎）。', '2024-07-20 17:59:44', '2024-07-20 17:59:44');
INSERT INTO `illness` VALUES (21, 7, '银屑病', '银屑病的病因尚不明确，可能与遗传、免疫系统异常、感染和环境因素有关。1）遗传学说：家族聚集性较强。2）免疫学说：T细胞介导的自身免疫反应。3）感染学说：如链球菌感染。4）其他因素：精神压力、药物（如锂盐、β受体阻滞剂）、气候变化、外伤等。', '皮肤红斑、银白色鳞屑、斑块、皮肤干燥。', '皮肤瘙痒、疼痛、指甲改变（如凹陷、增厚、变色）、关节疼痛、严重者可出现关节畸形（银屑病关节炎）。', '2024-07-20 18:00:19', '2024-07-20 18:00:19');
INSERT INTO `illness` VALUES (22, 9, '乙型肝炎', '乙型肝炎由乙型肝炎病毒（HBV）感染引起。传播途径包括：1）血液传播：如输血、血液制品、共用针具等。2）母婴传播：感染母亲在分娩时传染给婴儿。3）性传播：通过性接触传播。4）日常接触：通过共用剃须刀、牙刷等传播。感染风险增加的因素包括：免疫力低下、生活环境差、不安全性行为、共用针具等。', '疲乏、食欲减退、恶心、呕吐、黄疸（皮肤和眼白发黄）、右上腹疼痛。', '肝区疼痛、肝脾肿大、腹水、肝功能异常、慢性乙型肝炎患者可能无明显症状但具有传染性。', '2024-07-20 18:00:52', '2024-07-20 18:00:52');
INSERT INTO `illness` VALUES (23, 16, '慢性鼻窦炎', '慢性鼻窦炎是由于鼻窦粘膜长期炎症引起的，常见原因包括：1）感染：细菌、病毒和真菌感染。2）过敏：过敏性鼻炎引起的持续炎症。3）结构异常：鼻中隔偏曲、鼻息肉等阻碍鼻窦引流。4）免疫系统异常：免疫功能低下或疾病（如艾滋病）。5）环境因素：空气污染、粉尘、烟雾等。', '持续性鼻塞、鼻涕增多（可为脓性）、头痛、面部疼痛或压力感、嗅觉减退。', '慢性咳嗽、咽喉不适、口臭、疲劳、发热（在急性加重期）。', '2024-07-22 23:26:17', '2024-07-22 23:26:17');
INSERT INTO `illness` VALUES (24, 1, '急性心肌梗死', ' 急性心肌梗死（AMI）是由于冠状动脉急性闭塞导致部分心肌严重缺血和坏死。主要原因包括：1）冠状动脉粥样硬化：是导致AMI最常见的原因。2）血栓形成：在动脉粥样硬化斑块破裂后，血栓形成导致血流阻断。3）血管痉挛：冠状动脉突然收缩也可导致血流中断。4）高血压、高脂血症、糖尿病、吸烟等危险因素。', '突发剧烈胸痛（可放射至左臂、下颌、背部）、大汗淋漓、呼吸急促、乏力。', ' 恶心呕吐、心悸、晕厥、低血压、休克、焦虑不安。', '2024-07-22 23:28:14', '2024-07-22 23:28:14');
INSERT INTO `illness` VALUES (25, 1, '急性胰腺炎', '急性胰腺炎是由于胰腺酶的异常激活导致胰腺组织的自我消化和炎症反应。主要原因包括：1）胆道疾病：胆结石是最常见的病因。2）酗酒：长期大量饮酒可引起胰腺损伤。3）高脂血症：血脂水平过高可导致胰腺炎。4）药物：某些药物如利尿剂、抗生素等可能诱发胰腺炎。5）感染：病毒性或细菌性感染。6）其他：创伤、手术、遗传因素等。', '上腹部剧烈疼痛（常向背部放射）、恶心、呕吐、腹胀、发热。', '黄疸、低血压、休克、呼吸困难、皮肤青紫斑（Grey-Turner征和Cullen征）、严重者可出现多器官功能衰竭。', '2024-07-22 23:28:47', '2024-07-22 23:28:47');

-- ----------------------------
-- Table structure for illness_kind
-- ----------------------------
DROP TABLE IF EXISTS `illness_kind`;
CREATE TABLE `illness_kind`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of illness_kind
-- ----------------------------
INSERT INTO `illness_kind` VALUES (1, '急诊科', '急诊科疾病', '2024-05-01 11:57:39', '2024-05-01 12:01:00');
INSERT INTO `illness_kind` VALUES (2, '内科', '内科疾病', '2024-05-01 11:57:57', '2024-05-01 12:00:59');
INSERT INTO `illness_kind` VALUES (3, '外科', '外科疾病', '2024-05-01 11:58:26', '2024-05-01 12:00:57');
INSERT INTO `illness_kind` VALUES (4, '妇产科', '妇产科疾病', '2024-05-01 11:58:36', '2024-05-01 12:00:56');
INSERT INTO `illness_kind` VALUES (5, '儿科', '儿科疾病', '2024-05-01 11:58:49', '2024-05-01 12:00:54');
INSERT INTO `illness_kind` VALUES (6, '男科', '男科疾病', '2024-05-01 11:58:59', '2024-05-01 12:00:53');
INSERT INTO `illness_kind` VALUES (7, '皮肤科', '皮肤科疾病', '2024-05-03 16:07:12', '2024-05-03 16:07:12');
INSERT INTO `illness_kind` VALUES (9, '肝病', '肝病疾病', '2024-05-01 11:59:27', '2024-05-01 12:00:49');
INSERT INTO `illness_kind` VALUES (10, '传染科', '传染科疾病', '2024-05-01 11:59:35', '2024-05-01 12:00:48');
INSERT INTO `illness_kind` VALUES (16, '耳鼻喉科', '耳鼻喉科疾病', '2024-05-01 12:00:23', '2024-05-01 12:00:41');
INSERT INTO `illness_kind` VALUES (17, '口腔科', '口腔科疾病', '2024-05-01 12:00:31', '2024-05-01 12:00:39');

-- ----------------------------
-- Table structure for illness_medicine
-- ----------------------------
DROP TABLE IF EXISTS `illness_medicine`;
CREATE TABLE `illness_medicine`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '病和药品关联id',
  `illness_id` int NULL DEFAULT NULL COMMENT '病id',
  `medicine_id` int NULL DEFAULT NULL COMMENT '药品id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of illness_medicine
-- ----------------------------
INSERT INTO `illness_medicine` VALUES (6, 3, 1, '2024-05-03 16:10:35', '2024-05-03 16:10:35');
INSERT INTO `illness_medicine` VALUES (7, 2, 1, '2024-05-03 16:10:37', '2024-05-03 16:10:37');
INSERT INTO `illness_medicine` VALUES (8, 1, 1, '2024-05-03 16:10:38', '2024-05-03 16:10:38');
INSERT INTO `illness_medicine` VALUES (9, 4, 1, '2024-05-03 16:10:42', '2024-05-03 16:10:42');
INSERT INTO `illness_medicine` VALUES (10, 7, 1, '2024-05-03 16:10:44', '2024-05-03 16:10:44');
INSERT INTO `illness_medicine` VALUES (11, 1, 2, '2024-05-03 16:10:59', '2024-05-03 16:10:59');
INSERT INTO `illness_medicine` VALUES (12, 2, 2, '2024-05-03 16:11:01', '2024-05-03 16:11:01');
INSERT INTO `illness_medicine` VALUES (13, 5, 3, '2024-05-03 16:11:16', '2024-05-03 16:11:16');
INSERT INTO `illness_medicine` VALUES (14, 13, 5, '2024-05-03 16:11:29', '2024-05-03 16:11:29');
INSERT INTO `illness_medicine` VALUES (15, 8, 4, '2024-05-03 16:11:39', '2024-05-03 16:11:39');
INSERT INTO `illness_medicine` VALUES (16, 7, 6, '2024-05-03 16:11:50', '2024-05-03 16:11:50');
INSERT INTO `illness_medicine` VALUES (17, 4, 7, '2024-05-03 16:12:01', '2024-05-03 16:12:01');
INSERT INTO `illness_medicine` VALUES (18, 2, 7, '2024-05-03 16:12:03', '2024-05-03 16:12:03');
INSERT INTO `illness_medicine` VALUES (19, 1, 7, '2024-05-03 16:12:04', '2024-05-03 16:12:04');
INSERT INTO `illness_medicine` VALUES (20, 3, 7, '2024-05-03 16:12:05', '2024-05-03 16:12:05');
INSERT INTO `illness_medicine` VALUES (21, 6, 7, '2024-07-24 22:00:25', '2024-07-24 22:05:05');
INSERT INTO `illness_medicine` VALUES (22, 9, 7, '2024-07-24 22:01:43', '2024-07-24 22:05:06');
INSERT INTO `illness_medicine` VALUES (23, 10, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:07');
INSERT INTO `illness_medicine` VALUES (24, 11, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:07');
INSERT INTO `illness_medicine` VALUES (25, 12, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:08');
INSERT INTO `illness_medicine` VALUES (26, 14, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:08');
INSERT INTO `illness_medicine` VALUES (27, 15, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:09');
INSERT INTO `illness_medicine` VALUES (28, 16, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:09');
INSERT INTO `illness_medicine` VALUES (29, 17, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:10');
INSERT INTO `illness_medicine` VALUES (30, 18, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:10');
INSERT INTO `illness_medicine` VALUES (31, 19, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:10');
INSERT INTO `illness_medicine` VALUES (32, 20, 7, '2024-07-24 22:01:55', '2024-07-24 23:30:35');
INSERT INTO `illness_medicine` VALUES (33, 21, 7, '2024-07-24 22:01:55', '2024-07-24 23:30:37');
INSERT INTO `illness_medicine` VALUES (34, 22, 7, '2024-07-24 22:01:55', '2024-07-24 23:30:39');
INSERT INTO `illness_medicine` VALUES (35, 23, 7, '2024-07-24 22:01:55', '2024-07-24 23:30:41');
INSERT INTO `illness_medicine` VALUES (36, 24, 7, '2024-07-24 22:01:55', '2024-07-24 23:30:44');
INSERT INTO `illness_medicine` VALUES (37, 25, 7, '2024-07-24 22:01:55', '2024-07-24 22:05:10');

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '药品主键ID',
  `medicine_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药的名字',
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键字搜索',
  `medicine_effect` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '药的功效',
  `medicine_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药的品牌',
  `interaction` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '药的相互作用',
  `taboo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '禁忌',
  `us_age` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '用法用量',
  `medicine_type` int NULL DEFAULT NULL COMMENT '药的类型，0西药，1中药，2中成药',
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关图片路径',
  `medicine_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '药的价格',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicine
-- ----------------------------
INSERT INTO `medicine` VALUES (1, '阿莫西林胶囊', '消炎药、感冒药', '本品尚可用于治疗伤寒、伤寒带菌者及钩端螺旋体病；阿莫西林亦可与克拉霉素、兰索拉唑三联用药根除胃、十二指肠幽门螺杆菌，降低消化道溃疡复发率。', '仁和', '1．丙磺舒竞争性地减少本品的肾小管分泌，两者同时应用可引起阿莫西林血浓度升高、半衰期延长。\n2．氯霉素、大环内酯类、磺胺类和四环素类药物在体外干扰阿莫西林的抗菌作用，但其临床意义不明。', '1. 青霉素类口服药可引起过敏性休克，有多见于青霉素或头孢菌素过敏史的患者。用药前必须详细询问药物过敏史并做青霉素皮肤试验。如发生过敏性休克，应就地抢救，予以保持气道畅通、吸氧及应用肾上腺素、糖皮质激素等治疗措施。\n2.传染性单核细胞增多症患者应用本品易发生皮疹，应避免使用。\n3.疗程较长患者应检查肝、肾功能和血常规。\n4.阿莫西林可导致采用Benedict或Fehling试剂的尿糖试验出现假阳性。\n5.下列情况应慎用：\n(1)有哮喘、枯草热等过敏性疾病史者。\n(2)老年人和肾功能严重损害时可能须调整剂量。', '成人的具体使用剂量为0.5g/次，每6-8小时重复用药，24小时内服用剂量不能超过4g。儿童一日用药剂量按照患者实际体重为20-40mg/kg，重复用药间隔时长为8h/次。', 1, 'assets/images/medicine/阿莫西林胶囊.png', 14.00, '2024-05-02 11:46:00', '2026-07-20 02:29:24');
INSERT INTO `medicine` VALUES (2, '999感冒灵颗粒', '感冒药、流鼻涕、发烧', '解热镇痛功效，用于因感冒引起的头痛，发热，鼻塞，流涕，咽痛等症状。', '999', '三九感冒灵颗粒是复方药，里面含有中西药成分，不宜和西药感冒药同服。如果两种药中含有同一种成分，就只能选择服用其中一种，以免使摄入药量加倍，增加毒性，成为重复用药 [3]  。比如，三九感冒灵颗粒和西药泰诺，都含有解热镇痛效果的“扑热息痛”成分，若是两种药一起吃，过量的“扑热息痛”会对人体肝脏造成损害。', '1.忌烟，酒及辛辣，生冷，油腻食物。\n2.不宜在服药期间同时服用滋补性中成药\n3. 高血压、心脏病、肝病、肾病等慢性病严重者应在医师指导下服用。\n4.本品含对乙氨基酚，马来酸氨苯那敏，咖啡因。服用本品期间不得饮酒或含有酒精的饮料；不能同时服用与本品成分相似的其它抗感冒药；肝，肾功能不全者慎用；膀胱颈梗阻，甲状腺功能亢进，青光眼，高血压和前列腺肥大者慎用；孕妇及哺乳期妇女慎用；服药期间不得驾驶机，车，船，从事高空作业，机械作业及操作精密仪器。\n5.脾胃虚寒，症见腹痛，喜暖，泄泻者慎用。\n6.糖尿病患者、消化道溃疡患者、膀胱颈梗阻、幽门十二指肠梗阻、甲状腺机能亢进、青光眼以及前列腺肥大等患者慎用。\n7.儿童，年老体弱者应在医师指导下使用。\n8.服药3天后症状无改善，或症状加重，或出现新的严重症状如胸闷，心悸等应立即停药，并去医院就诊。\n9.对本药过敏者禁用，过敏体质者慎用。\n10. 本品性状发生改变时禁止使用。\n11.儿童必须在成人监护下使用。\n12.请将本品放在儿童不能接触的地方。\n13.如正在使用其他药品，使用本品前请咨询医师或药师.', '开水冲服，一次1袋，一日3次。小儿减量或遵医嘱。', 2, 'assets/images/medicine/999感冒灵颗粒.png', 39.80, '2024-05-02 11:50:13', '2026-07-20 02:28:56');
INSERT INTO `medicine` VALUES (3, '开塞露', '便秘', '都是利用甘油或山梨醇的高浓度，即高渗作用，软化大便，刺激肠壁，反射性地引起排便反应，再加上其具有润滑作用，能使大便容易排出', '信龙', NULL, '1.刺破或剪开后的注药导管的开口应光滑，以免擦伤肛门或直肠。\n2.对本品过敏者禁用，过敏体质者慎用。\n3.本品性状发生改变时禁止使用。\n4.请将本品放在儿童不能接触的地方。\n5.儿童必须在成人监护下使用。\n6.如正在使用其他药品，使用本品前请咨询医师或药师。', '将容器顶端刺破或剪开，涂以油脂少许，缓慢插入肛门，然后将药液挤入直肠内，成人一次1支，儿童一次\n0.5支。', 0, 'assets/images/medicine/开塞露.png', 18.00, '2024-05-02 12:52:13', '2026-07-20 02:30:01');
INSERT INTO `medicine` VALUES (4, '三九胃泰颗粒', '胃胀、胃痛、胃不舒服', '清热祛湿，消炎止痛，理气除胀，养胃益肠。', '999', NULL, '1． 服药期间，忌食辛辣，油炸，过酸食物及酒类等刺激性食品。\n2． 十五天为一疗程，初显疗效后不宜立即停药，建议再服3—4个疗程以巩固疗效。\n3．胃寒患者慎用。', '开水冲服。一次1袋，一日2次。', 0, 'assets/images/medicine/三九胃泰颗粒.png', 15.00, '2024-05-02 12:58:32', '2026-07-20 02:30:37');
INSERT INTO `medicine` VALUES (5, '999皮炎平', '皮肤瘙痒', '用于局限性瘙痒症、神经性皮炎、接触性皮炎、脂溢性皮炎以及慢性湿疹。', '999', NULL, '1.患处已破溃、化脓或有明显渗出者禁用。\n2.病毒感染者（如有疱疹、水痘）禁用。\n3.对本品成分过敏者禁用。', '皮肤外用。取少量涂于患处，并轻揉片刻；一日1~2次，病情较重或慢性炎症患者，每日5-8次或遵医嘱。', 0, 'assets/images/medicine/999皮炎平.png', 15.21, '2024-05-02 13:01:34', '2026-07-20 02:29:18');
INSERT INTO `medicine` VALUES (6, '甲硝唑', '牙痛', '适应症为用于治疗肠道和肠外阿米巴病（如阿米巴肝脓肿、胸膜阿米巴病等）。还可用于治疗阴道滴虫病、小袋虫病和皮肤利什曼病、麦地那龙线虫感染等。目前还广泛用于厌氧菌感染的治疗', '奥可安', '本品能增强华法林等抗凝药物的作用。与土霉素合用可干扰甲硝唑清除阴道滴虫的作用。', '有活动性中枢神经系统疾患和血液病者禁用。', '成人一次两片，一日三次', 0, 'assets/images/medicine/甲硝唑片.png', 28.50, '2024-05-02 13:03:27', '2026-07-20 02:31:03');
INSERT INTO `medicine` VALUES (7, '布洛芬缓释胶囊', '头疼、缓解痛', '用于缓解轻至中度疼痛如头痛、偏头痛、牙痛、痛经、关节痛、肌肉痛、神经痛，也用于普通感冒或流行性感冒引起的发热', '芬必得', '.本品与其他解热、镇痛、抗炎药物同用时可增加胃肠道不良反应，并可能导致溃疡。 2.本品与肝素、双香豆素类(如华法林)等抗凝药 同用时，可导致凝血酶原时间延长，增加出血倾向。 3.本品与地高辛、甲氨蝶呤、口服降血糖药物同用 时，能使这些药物的血药浓度增高，不宜同用。 ', '1.对其他非甾休抗炎药过敏者禁用。 2.孕妇及晡乳期妇女禁用。 3.对阿司匹林过敏的哮喘患者禁用。 4.严重肝肾功能不全者或严重心力衰竭者禁用。 5.正在服用其他含有布洛芬或其他非甾休抗炎药， 包括服用已知是特异性环氧化酶-2抑制剂药物的患者禁用。除非医生建议使用。 6.既往有与使用非甾体类抗炎药治疗相关的上消化道出血或穿孔史者禁用。 7.活动性或既往有消化性溃疡史，胃肠道出血或穿孔的患者禁用。', '口服。成人，一次1片，一日2次（早晚各一次）。', 1, 'assets/images/medicine/布洛芬缓释胶囊.png', 1.00, '2024-05-02 13:10:47', '2026-07-20 02:30:07');
INSERT INTO `medicine` VALUES (8, '扑热息痛片', '解热，镇痛', '用于普通感冒或流感引起的发热，也可用于缓解轻至中度的疼痛，如头痛、关节痛、偏头痛、牙痛、肌肉痛、神经痛、痛经', '特一', '本品与其他解热、镇痛、抗炎药物同用时可增加胃肠道不良反应，并可能导致溃疡。与华法林等抗凝药物同用时，可增强抗凝效果。', '1. 对本品及其他解热镇痛药过敏者禁用。2. 严重肝肾功能不全者禁用。3. 孕妇及哺乳期妇女慎用。4. 不宜长期或大量使用，以免引起肝肾损害。5. 服用期间不得饮酒或含有酒精的饮料。', '口服。成人一次1片，一日3次。', 1, 'assets/images/medicine/扑热息痛片.png', 6.90, '2024-07-20 17:44:29', '2024-07-20 17:45:17');
INSERT INTO `medicine` VALUES (9, '蒲地蓝消炎片', '消炎药、抗菌药', '用于疖肿、扁桃体炎、咽炎、腮腺炎、中耳炎等。', '云南白药', '本品含有蒲公英、苦地丁、板蓝根和黄芩，可能与某些药物产生相互作用。如与其他解热镇痛药物、抗生素同用时需注意药物之间的相互作用。', '1. 对本品成分过敏者禁用。\\n2. 孕妇慎用，哺乳期妇女应在医生指导下使用。\\n3. 用药期间避免食用辛辣、油腻食物。\\n4. 服用本品期间不得饮酒或含有酒精的饮料。\\n5. 若症状未见改善或出现新的严重症状，应立即停药并就医。\\n6. 儿童应在成人监护下使用。\\n7. 如正在使用其他药品，使用本品前请咨询医师或药师。\', ', '口服。成人一次4片，一日3次。儿童用量酌减，或遵医嘱', 1, 'assets/images/medicine/蒲地蓝消炎片.png', 25.00, '2024-07-23 00:11:58', '2024-07-23 00:22:11');
INSERT INTO `medicine` VALUES (10, '藿香正气水', '解暑药、感冒药', '用于外感风寒、内伤湿滞所致的感冒。症见头痛昏重、胸膈痞闷、腹痛吐泻、肠鸣泄泻等。', '葵花', '藿香正气水含有多种中药成分，可能与其他药物产生相互作用。如与解热镇痛药物、抗生素同用时需注意药物之间的相互作用。', '1. 对本品成分过敏者禁用。\n2. 孕妇慎用，哺乳期妇女应在医生指导下使用。\n3. 用药期间避免食用辛辣、油腻食物。\n4. 服用本品期间不得饮酒或含有酒精的饮料。\n5. 高血压、心脏病患者应在医师指导下使用。\n6. 若症状未见改善或出现新的严重症状，应立即停药并就医。\n7. 儿童应在成人监护下使用。\n8. 如正在使用其他药品，使用本品前请咨询医师或药师。', '口服。成人一次10毫升，一日2次。儿童用量酌减，或遵医嘱。', 2, 'assets/images/medicine/藿香正气水.png', 18.00, '2024-07-23 00:31:18', '2024-07-23 00:32:33');

-- ----------------------------
-- Table structure for pageview
-- ----------------------------
DROP TABLE IF EXISTS `pageview`;
CREATE TABLE `pageview`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pageviews` int NULL DEFAULT NULL COMMENT '浏览量',
  `illness_id` int NULL DEFAULT NULL COMMENT '病的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pageview
-- ----------------------------
INSERT INTO `pageview` VALUES (5, 9, 1);
INSERT INTO `pageview` VALUES (6, 6, 13);
INSERT INTO `pageview` VALUES (7, 3, 4);
INSERT INTO `pageview` VALUES (8, 1, 2);
INSERT INTO `pageview` VALUES (9, 2, 3);
INSERT INTO `pageview` VALUES (10, 1, 5);
INSERT INTO `pageview` VALUES (11, 2, 6);
INSERT INTO `pageview` VALUES (12, 3, 7);
INSERT INTO `pageview` VALUES (13, 1, 8);
INSERT INTO `pageview` VALUES (14, 2, 9);
INSERT INTO `pageview` VALUES (15, 3, 16);
INSERT INTO `pageview` VALUES (16, 7, 26);
INSERT INTO `pageview` VALUES (17, 5, 25);
INSERT INTO `pageview` VALUES (18, 1, 23);
INSERT INTO `pageview` VALUES (19, 3, 19);
INSERT INTO `pageview` VALUES (20, 1, 15);
INSERT INTO `pageview` VALUES (21, 1, 22);
INSERT INTO `pageview` VALUES (22, 1, 18);
INSERT INTO `pageview` VALUES (23, 1, 24);
INSERT INTO `pageview` VALUES (24, 1, 21);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `user_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户的真实名字',
  `user_pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_age` int NULL DEFAULT NULL COMMENT '用户年龄',
  `user_sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户性别',
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `role_status` int NULL DEFAULT NULL COMMENT '角色状态，1管理员，0普通用户',
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `create_time`(`create_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, 'admin', '管理员', '123456', 23, '男', '2678788262@qq.com', '17746678954', 1, 'assets/images/team/user-1.jpg', '2024-05-03 15:55:41', '2026-07-20 02:22:57');
INSERT INTO `user` VALUES (5, 'zhangsan', '张三', '123456', 23, '女', 'isxuewei@qq.com', '17879544343', 0, 'assets/images/team/user-4.jpg', '2024-05-03 16:15:53', '2026-07-20 02:22:50');
INSERT INTO `user` VALUES (6, 'hhh', '耶耶耶', '123456', 45, '女', '3137676235@qq.com', '15646562689648', 0, 'assets/images/team/user-4.jpg', '2024-07-20 02:01:29', '2024-07-20 02:25:01');

SET FOREIGN_KEY_CHECKS = 1;
