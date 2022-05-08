/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : coursedesign

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 06/05/2022 15:44:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品ID',
  `pay_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付ID',
  `value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文字信息',
  `feedbacks_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `feedbacks_status` int NULL DEFAULT NULL COMMENT '类型（1投诉、0建议、-1反馈）',
  `orders_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单ID',
  `feedbacks_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '投诉、建议、反馈信息ID（主键、随机码）',
  `solve_status` int NULL DEFAULT NULL COMMENT '管理员处理状态（1已处理、0未处理、-1不予处理）',
  `solve_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员处理结果信息',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  PRIMARY KEY (`feedbacks_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------
INSERT INTO `feedbacks` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '2a7fad7e-4624-4fbc-b186-b16a628236d7', '2a7fad7e-4624-4fbc-b186-b16a628236d7', '123', '2019/12/19 下午8:23:12', 3, '080e38f7-f422-4979-946b-d82167139248', '3709d98c-7d0b-44bc-8197-fb61aba39c7b', 1, '嗯', '匡威低帮男鞋');
INSERT INTO `feedbacks` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '2a7fad7e-4624-4fbc-b186-b16a628236d7', '2a7fad7e-4624-4fbc-b186-b16a628236d7', '这鞋坏了还拿出来卖', '2019/12/19 下午5:12:22', 1, '080e38f7-f422-4979-946b-d82167139248', 'dfc64137-9d03-4664-b811-5d86de5afb47', 0, '', '匡威低帮男鞋');
INSERT INTO `feedbacks` VALUES ('79831d90-4f7b-440b-b6e7-bc7766c2edb7', '8c5b5a4c-0728-4775-9c3a-3bebd210a698', '8c5b5a4c-0728-4775-9c3a-3bebd210a698', '商讨如何认识哇', '2019/12/19 下午5:31:48', 1, 'f56a0405-a0e0-4a1b-9332-df084598b2c2', 'eed92d92-3a8c-4d3c-bd7c-18c46ad73e66', 1, '', 'excelsior 饼干鞋');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品ID（主键，随机码）',
  `dscrip` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品介绍信息',
  `price` double NULL DEFAULT NULL COMMENT '商品价格',
  `goods_level` double NULL DEFAULT NULL COMMENT '商品新旧程度',
  `up_status` int NULL DEFAULT NULL COMMENT '上架状态',
  `use_status` int NULL DEFAULT NULL COMMENT '可用状态',
  `hot` double NULL DEFAULT NULL COMMENT '热度信息',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '0d9160f9-bcc1-4e07-bed0-1809be3fafbf', '多姿多彩的瓷器是中国古代的伟大发明之一，\"瓷器\"与\"中国\"在英文中同为一词，充分说明中国瓷器的精美绝伦完全可以作为中国的代表。 ', 25, 92, 1, 1, 0, '陶瓷碗');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '2a7fad7e-4624-4fbc-b186-b16a628236d7', '集复古、流行、环保于一身的ALL STAR帆布鞋，是美国文化的精神象征，以其随心所欲，自由自在没有约束的穿着形态，更成为追求自我时尚的青年人的忠实拍档。', 450, 96, 1, 1, 0, '匡威低帮男鞋');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '5a8dc2e8-666b-48f4-90d4-96999d7a5e1a', '我不喜欢这个世界我只喜欢你 乔一青春暖心故事集暖萌甜宠恋爱 都市爱情青春小说暖心故事 恋爱成长回忆', 28, 80, 1, 1, 0, '不喜世界 只喜欢你');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '7e82e230-ceac-488e-bd84-22999b268c2c', 'iPhone 11 Pro是美国Apple（苹果公司）第一支命名为Pro的手机，采用后置三摄设计，配色有暗夜绿、太空灰、银白色和金色四款。售价8699起。二手91新7800，赶快行动。', 7800, 91, 1, 1, 0, 'Iphone 11 Pro');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '8a5cc3bc-3469-40d9-8f96-f4e38094a8d2', 'Steam平台是Valve公司聘请BitTorrent(BT下载)发明者布拉姆·科恩亲自开发设计的游戏平台。Steam平台是目前全球最大的综合性数字发行平台之一。', 206, 99, 1, 1, 0, 'Steam 特卖');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '8a60cde4-8fa4-4d61-b7c7-3594825fe459', '立马车业集团有限公司是专业从事新能源交通工具产品研发、生产制造、应用推广于一体的大型集团化高新技术企业。是中国电动车行业最具影响力的品牌。', 1500, 75, 1, 1, 0, '立马摩托车');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '8c5b5a4c-0728-4775-9c3a-3bebd210a698', '源起于最初的硫化鞋工业，但为了展现“比高还要更高”的热情与希望，这样的硫化鞋品牌成为“EXCELSIOR”。', 349, 95, 1, 1, 0, 'excelsior 饼干鞋');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '96f03b18-b293-4122-b929-3160ec3a0e58', '自1854年以来，代代相传至今的路易威登，以卓越品质、杰出创意和精湛工艺成为时尚旅行艺术的象征 。产品包括手提包，旅行用品，小型皮具，配饰，鞋履，成衣，腕表，高级珠宝及个性化订制服务等。', 19988, 95, 1, 1, 0, 'LV 手提包');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'a984563b-e7af-4161-bfae-e4c04c7e8f76', '棉衣女2019冬季新款韩版短款面包服宽松加厚学生羽绒棉服小棉袄潮', 168, 95, 1, 1, 0, '棉衣女');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'ac787ebb-95f4-410b-ba12-8b65f1749af7', '张羽涵本人，请酌情下单', 999999, 99, 1, 1, 0, '张羽涵');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'adf374a4-4833-48b8-a56d-c0501a5418fe', '工装裤本来是男装，但时装化后却更受女孩子的喜爱。工装裤是休闲的、青春的、男孩子气的。', 98.99, 96, 1, 1, 0, '休闲工装裤男');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'c265cdfe-3d0e-4368-b44a-1401546b8396', 'Converse诞生于1908年。创办以来Converse坚持品牌的独立性设计，不追随。最初只生产“橡胶鞋”，但很快就开始做网球和篮球鞋。匡威全球总部正式落地美国波士顿。', 345, 91, 1, 1, 0, '匡威高帮帆布鞋');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'c28992ba-823f-43c8-a0f9-82fac4271c4a', '华为P30，是华为公司旗下一款手机。手机搭载海思Kirin 980处理器，屏幕为6.1英寸，分辨率2340*1080像素。 摄像头最大30倍数码变焦。', 3000, 95, 1, 1, 0, 'HUAWEI华为P30');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'd71920f7-2c18-4758-92c0-d0285d56bad6', '百褶裙蝴蝶结打底裙秋冬内搭复古碎花连衣裙长袖修身显瘦a字裙潮', 189, 97, 1, 1, 0, '日系轻熟女装');
INSERT INTO `goods` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'dd879579-4ca8-451b-93c9-b00929633b49', '回忆森林春秋日系文艺复古学生工装夹克白色牛仔宽松短外套女上衣', 108, 99, 1, 1, 0, '学生工装女上衣');
INSERT INTO `goods` VALUES ('edcabd99-a96b-45ec-a8f9-2d5dd35bbbc8', 'e35f635c-e03e-4094-9bae-c5c0a06990c4', '货真价实的张羽涵，请谨慎下单', 999999, 99, 1, 1, 0, '张羽涵');

-- ----------------------------
-- Table structure for goodsurl
-- ----------------------------
DROP TABLE IF EXISTS `goodsurl`;
CREATE TABLE `goodsurl`  (
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品ID',
  `img_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片URL信息',
  `img_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`img_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodsurl
-- ----------------------------
INSERT INTO `goodsurl` VALUES ('7b901fe3-25e4-40b5-aafe-8a84fb8e525d', 'H:/imgUpload/7b901fe3-25e4-40b5-aafe-8a84fb8e525d57b44927-600b-4b55-8d01-fa9935899623.jpg', '038d81e7-dfa7-44be-997c-be5e3ea530fc');
INSERT INTO `goodsurl` VALUES ('d71920f7-2c18-4758-92c0-d0285d56bad6', 'H:/imgUpload/d71920f7-2c18-4758-92c0-d0285d56bad63b494e40-ceac-4c75-b8e2-b2762580ac51.jpg', '05da8dcb-c576-4b02-94da-b1cc7a518ba3');
INSERT INTO `goodsurl` VALUES ('a984563b-e7af-4161-bfae-e4c04c7e8f76', 'H:/imgUpload/a984563b-e7af-4161-bfae-e4c04c7e8f76c8eaf0af-fd5e-4541-af61-8924ac11eeec.jpg', '0a3ee26d-3889-41d3-b72c-2b18dfd8f8b9');
INSERT INTO `goodsurl` VALUES ('8c5b5a4c-0728-4775-9c3a-3bebd210a698', 'H:/imgUpload/src=http___img9.doubanio.com_view_group_topic_l_public_p450011574.jpg&refer=http___img9.doubanio.jpg', '141293cc-7e37-4dee-b409-fa14d2d24875');
INSERT INTO `goodsurl` VALUES ('a984563b-e7af-4161-bfae-e4c04c7e8f76', 'H:/imgUpload/a984563b-e7af-4161-bfae-e4c04c7e8f761dd421f5-a278-4cfd-a61c-de4b41ed494f.jpg', '176b9770-65ab-43c3-9f87-10f4cc28bb1b');
INSERT INTO `goodsurl` VALUES ('01ce7ae0-dae6-4095-87e9-b03609f84e56', 'H:/imgUpload/01ce7ae0-dae6-4095-87e9-b03609f84e56a7d0704b-2571-409a-984b-f287acd9b207.jpg', '2811d580-94c9-4244-bf75-1ccea2cd16f8');
INSERT INTO `goodsurl` VALUES ('8a60cde4-8fa4-4d61-b7c7-3594825fe459', 'H:/imgUpload/src=http___img2.autotimes.com.cn_news_2021_06_0621_185417799617.jpg&refer=http___img2.autotimes.com.jpg', '28b292c1-f527-4643-b310-cfddf2943703');
INSERT INTO `goodsurl` VALUES ('0d9160f9-bcc1-4e07-bed0-1809be3fafbf', 'H:/imgUpload/u=1217205979,2967879373&fm=224&app=112&f=JPEG.jpg', '29cedd43-5d6e-43b0-ace4-ba4ddace9384');
INSERT INTO `goodsurl` VALUES ('dd879579-4ca8-451b-93c9-b00929633b49', 'H:/imgUpload/dd879579-4ca8-451b-93c9-b00929633b49ddb69078-66c6-4b77-b6d7-91a6fa226e09.jpg', '2bd354f9-d8d3-450b-b8ad-cebb2b8dc883');
INSERT INTO `goodsurl` VALUES ('8a60cde4-8fa4-4d61-b7c7-3594825fe459', 'H:/imgUpload/src=http___img2.autotimes.com.cn_news_2021_06_0621_185417799617.jpg&refer=http___img2.autotimes.com.jpg', '33d02bd4-fa5a-454c-a85a-12b0d99346f8');
INSERT INTO `goodsurl` VALUES ('816edfe2-ce20-449f-b8f1-57787111e967', '../images/816edfe2-ce20-449f-b8f1-57787111e967f6026f38-720e-4dcc-a26f-f6b62add3b02.jpg', '3956e0bd-3487-48a7-b98e-14ba1cef351a');
INSERT INTO `goodsurl` VALUES ('ac787ebb-95f4-410b-ba12-8b65f1749af7', '../images/ac787ebb-95f4-410b-ba12-8b65f1749af73bab9c93-0943-4e71-a01e-4d4da14f7615.jpg', '39f44148-c270-40f1-b5ef-c0f59fea2cf6');
INSERT INTO `goodsurl` VALUES ('8a5cc3bc-3469-40d9-8f96-f4e38094a8d2', 'H:/imgUpload/src=http___img.alicdn.com_bao_uploaded_i2_2210900455566_O1CN01HuOLSh1DEJYd4csia_!!184-0-lubanu.jpg&refer=http___img.alicdn.jpg', '3b69f77d-0fc1-4397-87b3-da640248386c');
INSERT INTO `goodsurl` VALUES ('8a5cc3bc-3469-40d9-8f96-f4e38094a8d2', 'H:/imgUpload/src=http___img.alicdn.com_bao_uploaded_i2_2210900455566_O1CN01HuOLSh1DEJYd4csia_!!184-0-lubanu.jpg&refer=http___img.alicdn.jpg', '41acfa80-6727-4c9c-ae2d-e68e2f550309');
INSERT INTO `goodsurl` VALUES ('8a60cde4-8fa4-4d61-b7c7-3594825fe459', 'H:/imgUpload/src=http___img2.autotimes.com.cn_news_2021_06_0621_185417799617.jpg&refer=http___img2.autotimes.com.jpg', '4246c6a6-55d6-4437-b531-3b6138765ffb');
INSERT INTO `goodsurl` VALUES ('7e82e230-ceac-488e-bd84-22999b268c2c', 'H:/imgUpload/0.png', '44c0a685-6226-46ae-826a-679b1da6b5f9');
INSERT INTO `goodsurl` VALUES ('dd879579-4ca8-451b-93c9-b00929633b49', 'H:/imgUpload/dd879579-4ca8-451b-93c9-b00929633b49a66b4f2a-f8f3-4d63-9c94-4ed534befe38.jpg', '460f5ac1-e102-4601-939d-6564ec10884b');
INSERT INTO `goodsurl` VALUES ('c265cdfe-3d0e-4368-b44a-1401546b8396', 'H:/imgUpload/high1.jpg', '4be2964b-7096-47f9-91a4-ffaa8b14965f');
INSERT INTO `goodsurl` VALUES ('5a8dc2e8-666b-48f4-90d4-96999d7a5e1a', 'H:/imgUpload/55c40015N75db9293.jpg', '5009703e-2674-422a-9a24-72ff518e35e5');
INSERT INTO `goodsurl` VALUES ('c28992ba-823f-43c8-a0f9-82fac4271c4a', 'H:/imgUpload/c28992ba-823f-43c8-a0f9-82fac4271c4a3822d84a-db40-477d-8271-c710da1a444e.jpg', '51003712-e998-4ca9-bcfa-1675cadb3e6d');
INSERT INTO `goodsurl` VALUES ('2a7fad7e-4624-4fbc-b186-b16a628236d7', 'H:/imgUpload/u=2369077961,3523225204&fm=224&app=112&f=JPEG.jpg', '51a0d408-8de5-414c-b79e-f900a384b1b9');
INSERT INTO `goodsurl` VALUES ('7b901fe3-25e4-40b5-aafe-8a84fb8e525d', 'H:/imgUpload/7b901fe3-25e4-40b5-aafe-8a84fb8e525d5b0db1c2-7ba4-47c9-b6e3-707a40379b86.jpg', '574df010-882c-4ad0-9bc9-79143ce67b6e');
INSERT INTO `goodsurl` VALUES ('c265cdfe-3d0e-4368-b44a-1401546b8396', 'H:/imgUpload/high2.jpg', '624ce2d3-2fe4-4087-89e2-02d9d70b3bdb');
INSERT INTO `goodsurl` VALUES ('7e82e230-ceac-488e-bd84-22999b268c2c', 'H:/imgUpload/0.png', '6740d865-5d26-48c3-831b-81fe559ba4ae');
INSERT INTO `goodsurl` VALUES ('7e82e230-ceac-488e-bd84-22999b268c2c', 'H:/imgUpload/0.png', '67a7152b-08fb-4ae8-93f8-9a7616907be6');
INSERT INTO `goodsurl` VALUES ('021adf57-81d6-4410-9680-b98202e16a02', 'C:\\Users\\zhangyuhan\\Desktop\\SchoolCampusUsed\\images/021adf57-81d6-4410-9680-b98202e16a0293935b15-6fdb-4230-ac70-6b099d5dd982.jpg', '6888cd70-86bf-400e-8f8d-685d7a173e72');
INSERT INTO `goodsurl` VALUES ('c265cdfe-3d0e-4368-b44a-1401546b8396', 'H:/imgUpload/c265cdfe-3d0e-4368-b44a-1401546b83963f811b48-a7b1-497c-ac4e-91ffd42b98cb.jpg', '6c62a0e8-32bb-4000-aadb-26dd66ebb7a5');
INSERT INTO `goodsurl` VALUES ('dd879579-4ca8-451b-93c9-b00929633b49', 'H:/imgUpload/dd879579-4ca8-451b-93c9-b00929633b49b3c4af51-ba31-4b46-ba38-4c2af7aba172.jpg', '70bb657a-f5a1-488f-9a89-30e1ebdb5e75');
INSERT INTO `goodsurl` VALUES ('a984563b-e7af-4161-bfae-e4c04c7e8f76', 'H:/imgUpload/a984563b-e7af-4161-bfae-e4c04c7e8f76462f0d57-7d33-4839-a6dd-e74599d15d5a.jpg', '72854d7e-782e-485e-9707-4ae1963e6441');
INSERT INTO `goodsurl` VALUES ('a984563b-e7af-4161-bfae-e4c04c7e8f76', 'H:/imgUpload/a984563b-e7af-4161-bfae-e4c04c7e8f76f98ef433-4826-43d4-abcd-63e62a06c2ab.jpg', '729a8d48-7741-4d48-88e6-67e14af633fc');
INSERT INTO `goodsurl` VALUES ('7b901fe3-25e4-40b5-aafe-8a84fb8e525d', 'H:/imgUpload/7b901fe3-25e4-40b5-aafe-8a84fb8e525d559987fc-f453-4aeb-ae1b-8c854d9f286d.jpg', '729e8534-fb83-452e-81bf-f60ad5b41a84');
INSERT INTO `goodsurl` VALUES ('2a7fad7e-4624-4fbc-b186-b16a628236d7', 'H:/imgUpload/u=2369077961,3523225204&fm=224&app=112&f=JPEG.jpg', '7866e69f-3713-448b-8a19-59419d32df27');
INSERT INTO `goodsurl` VALUES ('7b901fe3-25e4-40b5-aafe-8a84fb8e525d', 'H:/imgUpload/7b901fe3-25e4-40b5-aafe-8a84fb8e525d165e43c2-6155-47fd-8524-4a11a345bbd5.jpg', '7c08931b-beb3-4bf4-8664-79ad9be015d7');
INSERT INTO `goodsurl` VALUES ('adf374a4-4833-48b8-a56d-c0501a5418fe', 'H:/imgUpload/adf374a4-4833-48b8-a56d-c0501a5418fef0148a18-3037-4873-8bc6-073f3c2ce34a.jpg', '8e2c26bf-5b7f-444e-bb8d-e9c237f8d2e0');
INSERT INTO `goodsurl` VALUES ('0d9160f9-bcc1-4e07-bed0-1809be3fafbf', 'H:/imgUpload/u=1217205979,2967879373&fm=224&app=112&f=JPEG.jpg', '906fb3f1-c17a-400c-b37f-b0eb255f6158');
INSERT INTO `goodsurl` VALUES ('2a7fad7e-4624-4fbc-b186-b16a628236d7', 'H:/imgUpload/u=2369077961,3523225204&fm=224&app=112&f=JPEG.jpg', '9781caaa-4d98-4b27-bf7b-3bffc7168a49');
INSERT INTO `goodsurl` VALUES ('8c5b5a4c-0728-4775-9c3a-3bebd210a698', 'H:/imgUpload/src=http___img9.doubanio.com_view_group_topic_l_public_p450011574.jpg&refer=http___img9.doubanio.jpg', '9843bd29-ef77-40f6-89a2-5e4bb41f6a5a');
INSERT INTO `goodsurl` VALUES ('96f03b18-b293-4122-b929-3160ec3a0e58', 'H:/imgUpload/10001.jpg', '9b288641-4b60-42d3-bc86-0a19f6e24375');
INSERT INTO `goodsurl` VALUES ('5a8dc2e8-666b-48f4-90d4-96999d7a5e1a', 'H:/imgUpload/55c40015N75db9293.jpg', 'a1129923-b0ea-47fa-92e8-e68aa2d659d1');
INSERT INTO `goodsurl` VALUES ('96f03b18-b293-4122-b929-3160ec3a0e58', 'H:/imgUpload/10001.jpg', 'a246b388-c616-4545-8289-7ce1a5c5ccf4');
INSERT INTO `goodsurl` VALUES ('96f03b18-b293-4122-b929-3160ec3a0e58', 'H:/imgUpload/10001.jpg', 'ab130a7a-837b-49f8-9fe4-297a4b423876');
INSERT INTO `goodsurl` VALUES ('c265cdfe-3d0e-4368-b44a-1401546b8396', 'H:/imgUpload/high4.jpg', 'ad6e1ac1-6a0c-4a13-aae8-9200eea9e899');
INSERT INTO `goodsurl` VALUES ('d71920f7-2c18-4758-92c0-d0285d56bad6', 'H:/imgUpload/d71920f7-2c18-4758-92c0-d0285d56bad673a1881e-3cd0-446f-8867-3d74cbd31147.jpg', 'b088b073-89fd-420c-832c-4f1981d8cf7e');
INSERT INTO `goodsurl` VALUES ('e35f635c-e03e-4094-9bae-c5c0a06990c4', 'C:\\Users\\zhangyuhan\\Desktop\\SchoolCampusUsed\\images/e35f635c-e03e-4094-9bae-c5c0a06990c41dd13c4a-b382-4cab-8f9e-bbf177569431.jpg', 'b5519988-76f0-4693-949e-5abf40d2ab70');
INSERT INTO `goodsurl` VALUES ('01ce7ae0-dae6-4095-87e9-b03609f84e56', 'H:/imgUpload/01ce7ae0-dae6-4095-87e9-b03609f84e56568f6f85-b8f7-47f0-83d1-5ea0f6fe660a.jpg', 'bbd27e72-73d6-4740-94f9-7a569a2521a2');
INSERT INTO `goodsurl` VALUES ('c28992ba-823f-43c8-a0f9-82fac4271c4a', 'H:/imgUpload/c28992ba-823f-43c8-a0f9-82fac4271c4ad8c84f81-0a59-492a-81ae-8deebc03a3a7.jpg', 'c036c94c-cc29-451d-8ffa-7fff1077a639');
INSERT INTO `goodsurl` VALUES ('adf374a4-4833-48b8-a56d-c0501a5418fe', 'H:/imgUpload/adf374a4-4833-48b8-a56d-c0501a5418feca824a2b-2f37-496a-a687-5828c0b00e36.jpg', 'c07e7b3d-d665-41ac-a7c9-04099b6a6061');
INSERT INTO `goodsurl` VALUES ('8a60cde4-8fa4-4d61-b7c7-3594825fe459', 'H:/imgUpload/src=http___img2.autotimes.com.cn_news_2021_06_0621_185417799617.jpg&refer=http___img2.autotimes.com.jpg', 'c3cf754e-87c5-4999-9c33-cc41ba3c93ed');
INSERT INTO `goodsurl` VALUES ('d71920f7-2c18-4758-92c0-d0285d56bad6', 'H:/imgUpload/d71920f7-2c18-4758-92c0-d0285d56bad64b574715-2722-4f2b-be9e-06ca69e8065c.jpg', 'c55b1beb-54ff-4fdb-bccc-fb3f88c0e043');
INSERT INTO `goodsurl` VALUES ('dd879579-4ca8-451b-93c9-b00929633b49', 'H:/imgUpload/dd879579-4ca8-451b-93c9-b00929633b49ea9dab03-924b-4323-b62a-829df02b951b.jpg', 'd6424669-c0e7-4dc1-8976-2f74b25daa6f');
INSERT INTO `goodsurl` VALUES ('5a8dc2e8-666b-48f4-90d4-96999d7a5e1a', 'H:/imgUpload/55c40015N75db9293.jpg', 'd75b3023-bad0-4311-a390-121bc6756acf');
INSERT INTO `goodsurl` VALUES ('d71920f7-2c18-4758-92c0-d0285d56bad6', 'H:/imgUpload/d71920f7-2c18-4758-92c0-d0285d56bad676bbc98a-9a8f-46ba-83d2-c66a296c5bac.jpg', 'd8b04034-2c62-41c5-9e8c-c4ca8d8b1856');
INSERT INTO `goodsurl` VALUES ('adf374a4-4833-48b8-a56d-c0501a5418fe', 'H:/imgUpload/adf374a4-4833-48b8-a56d-c0501a5418fe3093bb97-908b-4a7e-b7a7-3abcaca8a00c.jpg', 'dbc79233-7526-47d8-ab6f-805089e62c66');
INSERT INTO `goodsurl` VALUES ('8c5b5a4c-0728-4775-9c3a-3bebd210a698', 'H:/imgUpload/src=http___img9.doubanio.com_view_group_topic_l_public_p450011574.jpg&refer=http___img9.doubanio.jpg', 'e0ff2fdc-7843-43c2-93ab-df3ed5cd908a');
INSERT INTO `goodsurl` VALUES ('8c5b5a4c-0728-4775-9c3a-3bebd210a698', 'H:/imgUpload/src=http___img9.doubanio.com_view_group_topic_l_public_p450011574.jpg&refer=http___img9.doubanio.jpg', 'e27dbff5-0119-4eef-b10c-88b034f2666d');
INSERT INTO `goodsurl` VALUES ('adf374a4-4833-48b8-a56d-c0501a5418fe', 'H:/imgUpload/adf374a4-4833-48b8-a56d-c0501a5418feac4045ca-6b96-48b2-a722-7217dc9d289a.jpg', 'e4cea2db-47c4-4ea5-9587-ca3c95e7173e');
INSERT INTO `goodsurl` VALUES ('01ce7ae0-dae6-4095-87e9-b03609f84e56', 'H:/imgUpload/01ce7ae0-dae6-4095-87e9-b03609f84e56a83fad89-7db9-41fb-9763-192e7e13ac97.jpg', 'e53a5977-49e9-438a-b4f3-9b7793e6995f');
INSERT INTO `goodsurl` VALUES ('c28992ba-823f-43c8-a0f9-82fac4271c4a', 'H:/imgUpload/c28992ba-823f-43c8-a0f9-82fac4271c4af8607ac2-c03d-4842-a75a-f585346b9ef2.jpg', 'e581054f-d4e6-4e43-8d50-9c0bf49b3e78');
INSERT INTO `goodsurl` VALUES ('96f03b18-b293-4122-b929-3160ec3a0e58', 'H:/imgUpload/10001.jpg', 'e8241af8-bd21-4c53-aaaa-22a6620579c0');
INSERT INTO `goodsurl` VALUES ('01ce7ae0-dae6-4095-87e9-b03609f84e56', 'H:/imgUpload/01ce7ae0-dae6-4095-87e9-b03609f84e5663ed7a75-2626-4cca-a688-fbe50bc2273c.jpg', 'ebe5ea67-f851-485b-b24e-7984a88b0df7');
INSERT INTO `goodsurl` VALUES ('2a7fad7e-4624-4fbc-b186-b16a628236d7', 'H:/imgUpload/u=2369077961,3523225204&fm=224&app=112&f=JPEG.jpg', 'fdb09616-67c1-45fa-bea7-89459deb4dba');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品ID',
  `orders_status` int NULL DEFAULT NULL COMMENT '订单状态（1已完成、0未完成、-1有异议）',
  `price` double NULL DEFAULT NULL COMMENT '商品价格',
  `pay_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付ID',
  `orders_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单ID（主键、随机码）',
  `admin_status` int NULL DEFAULT NULL COMMENT '处理状态（1已处理、0未处理）',
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orders_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '2a7fad7e-4624-4fbc-b186-b16a628236d7', 0, 450, 'ffbce577-6388-4445-af44-81c911c8c6e4', '080e38f7-f422-4979-946b-d82167139248', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '5a8dc2e8-666b-48f4-90d4-96999d7a5e1a', 0, 28, '08b68b5e-9cc3-4c41-af10-48e340a949cb', '14339f48-d0ea-4fbe-a883-ccd4a0953cd5', 0, '2022年05月02日');
INSERT INTO `orders` VALUES ('79831d90-4f7b-440b-b6e7-bc7766c2edb7', 'dd879579-4ca8-451b-93c9-b00929633b49', 0, 108, '6a77f7b2-4602-4e8c-9214-3ccd1a65edbc', '2184d944-4d7a-408d-9886-202ead91dcc3', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('79831d90-4f7b-440b-b6e7-bc7766c2edb7', 'adf374a4-4833-48b8-a56d-c0501a5418fe', 0, 98.99, 'a2e276d1-5f24-4faa-bee7-542b3e0494be', '2a35d530-26cb-410c-98aa-b016fede4700', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '5a8dc2e8-666b-48f4-90d4-96999d7a5e1a', 0, 28, 'ea34b746-0d1d-4150-8bd6-62698f59a79a', '3eb671df-768f-4eb0-80ed-b63e23c4bd41', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '8a5cc3bc-3469-40d9-8f96-f4e38094a8d2', 0, 206, '60ea4a9e-9700-4cbb-8a06-ab8d5bbccb2c', '64af1308-3b1d-4b4d-992e-f25b5c8d27f9', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '8c5b5a4c-0728-4775-9c3a-3bebd210a698', 0, 349, '6952a7d7-aea0-4a2e-b89a-45eaa56d9678', '7167cc99-666f-4a1c-94fc-e4bac62cc386', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'c265cdfe-3d0e-4368-b44a-1401546b8396', 0, 345, '57150ba1-dff4-423d-a2bc-58f0e9226eb5', '87c971b0-bd59-49a0-9d64-ccbaaf6fc79e', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '96f03b18-b293-4122-b929-3160ec3a0e58', 0, 19988, '0b11ca11-0e07-4006-8003-457c0ebf1d18', '954afa6d-5d25-4406-9d71-043a27dd6539', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '8c5b5a4c-0728-4775-9c3a-3bebd210a698', 0, 349, 'c1cbbfbe-58d4-4690-b468-bf54b0805e37', 'a4ccaf70-edea-4609-a19a-3475a6f21058', 0, '2022年05月02日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '2a7fad7e-4624-4fbc-b186-b16a628236d7', 0, 450, '36c57c41-5188-4f4c-860e-87b723b7c342', 'b3cb4a4d-2848-40bd-823c-0893e9921b0c', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '7e82e230-ceac-488e-bd84-22999b268c2c', 0, 7800, 'cb134a65-bc8f-40cc-b462-9fb76d260879', 'c3d8d426-749e-48a9-ad9c-dfe4a1203914', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('edcabd99-a96b-45ec-a8f9-2d5dd35bbbc8', 'ac787ebb-95f4-410b-ba12-8b65f1749af7', 0, 999999, 'ff4cc668-ecfd-4e16-ad55-ea8a1c7f60c0', 'd88d9a9f-08f4-4fde-a5f9-e71f2cb37bdd', 0, '2022年05月05日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', 'adf374a4-4833-48b8-a56d-c0501a5418fe', 0, 98.99, 'c6c43f97-0342-4bbc-8db1-19ed6f62efa6', 'dc5c1c43-d7f2-48c0-baf7-5ae89ed03ac0', 0, '2022年05月02日');
INSERT INTO `orders` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '8c5b5a4c-0728-4775-9c3a-3bebd210a698', 0, 349, '88fb59a4-4714-45a0-8dbd-8dc9c4bbe602', 'e5b6dc27-b637-48f0-9cfe-5522df8338f5', 0, '2022年05月02日');
INSERT INTO `orders` VALUES ('79831d90-4f7b-440b-b6e7-bc7766c2edb7', '5a8dc2e8-666b-48f4-90d4-96999d7a5e1a', 0, 28, '834176e7-4f59-405a-8d71-678358f3254a', 'e7fa7fca-7db7-40cb-aaed-0d20f4a96e41', 0, '2019年12月19日');
INSERT INTO `orders` VALUES ('79831d90-4f7b-440b-b6e7-bc7766c2edb7', '8c5b5a4c-0728-4775-9c3a-3bebd210a698', 0, 349, '3820efe0-9fd6-43a2-bfa9-a4054fa90195', 'f56a0405-a0e0-4a1b-9332-df084598b2c2', 0, '2019年12月19日');

-- ----------------------------
-- Table structure for ordersback
-- ----------------------------
DROP TABLE IF EXISTS `ordersback`;
CREATE TABLE `ordersback`  (
  `orders_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单ID',
  `feedbacks_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉、建议、反馈信息ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ordersback
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `pay_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付ID（主键，随机码）',
  `price` double NULL DEFAULT NULL COMMENT '费用',
  `status` int NULL DEFAULT NULL COMMENT '费用状态（已经转给卖家1，费用在平台0，已经退回给买家-1）',
  `pay_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付时间',
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品ID',
  `pay_status` int NULL DEFAULT NULL COMMENT '支付状态（已完成1、未完成0、有异议-1）',
  PRIMARY KEY (`pay_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID，主键（随机码）',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` int NULL DEFAULT NULL COMMENT '性别（1男，2女）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` int NULL DEFAULT NULL COMMENT '账户启用状态',
  `admin` int NULL DEFAULT NULL COMMENT '是否管理员账户',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('07149a73-bb83-48e5-8722-3d51b3e949a4', 'ahdsiuhuiah', 'nioasnd', 'nioadn', 1, 'hiuoahsd@anuid.cnin', 0, 0);
INSERT INTO `users` VALUES ('12ebbb3f-4df4-47c7-92ee-e6988db478c1', 'kkk', 'jdassdddd', '123456a!', 0, 'asd@asd.c', 1, 0);
INSERT INTO `users` VALUES ('1977d46b-8b56-49dd-815f-3a28196dd631', 'abiusduas', 'asdasdas', 'uiasbndna', 1, 'nioansdo@ciasdo.como', 0, 0);
INSERT INTO `users` VALUES ('324021bf-aa22-4388-b442-b034a8b6123a', '闫孟君', 'jdassd', 'jdassd1!', 1, 'jdassd@163.com', 1, 1);
INSERT INTO `users` VALUES ('61f225aa-4089-48df-af9b-646c61b7c8da', 'aiushdiuhasd', 'nuanduona', 'njoansdoiasd', 1, 'asiod@nuasnd.cbuin', 0, 0);
INSERT INTO `users` VALUES ('79831d90-4f7b-440b-b6e7-bc7766c2edb7', '御风', 'hhhhh', '123456789@hyw', 1, '1773261858@qq.com', 1, 0);
INSERT INTO `users` VALUES ('8c243217-99d7-4038-aebd-3121910239d1', 'asdasdas', 'asdfddf', 'asdasda', 1, 'asdashiu@asdnbuiand.como', 0, 0);
INSERT INTO `users` VALUES ('92bae3b4-0e1b-44a4-b5ab-eb55310341b0', 'jdasd', 'jdassdd', 'jasda1!', 2, 'asd@asd.c', 1, 0);
INSERT INTO `users` VALUES ('94e3d441-3a7b-441d-aee7-eed9807108e2', 'asdasbui', 'nuiasdina', 'nionioasnd', 1, 'nioasnoi@nuasd.com', 0, 0);
INSERT INTO `users` VALUES ('9f9a3e3f-ffa2-43ce-bcb1-c922aeb0e977', 'asdnansdasd', 'jasidjioasasd', 'asdadsd', 1, 'naiosndasdioas@asuaasd.com', 0, 0);
INSERT INTO `users` VALUES ('a399f7fe-e963-4c6c-981e-8e70521afac8', '哇哈哈', 'jdassddd', 'adsd12!@#!', 0, 'asdas@asdnu.casd', 0, 0);
INSERT INTO `users` VALUES ('c2c0d448-607e-4b8d-9a5e-f18f9c12291c', 'aaa', 'aaa', 'aaa', 2, '', 1, 1);
INSERT INTO `users` VALUES ('e7805d36-e2bc-4b81-a4e1-7dae629c6887', 'asdasdas', 'asnduiasndna', 'nioasndoasd', 1, 'asda@cin.asdn', 0, 0);
INSERT INTO `users` VALUES ('e7c8e0bb-7a47-4e17-a9ff-2f2f941efc14', 'asdnansd', 'jasidjioas', 'ansiodhioa', 1, 'naiosndioas@asuaasd.com', 0, 0);
INSERT INTO `users` VALUES ('ec6b94fc-dc8e-425c-bed4-df195cd99d58', 'nioadnian', 'uiasbdi', 'niunasd', 1, 'ninasd@nuiasnd.com', 0, 0);
INSERT INTO `users` VALUES ('edcabd99-a96b-45ec-a8f9-2d5dd35bbbc8', '张羽涵', 'frifth', 'Zyh200128', 0, '1793578929@qq.com', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
