/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : dongman

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-12-24 10:48:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `guochuang`
-- ----------------------------
DROP TABLE IF EXISTS `guochuang`;
CREATE TABLE `guochuang` (
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `drama` varchar(255) NOT NULL,
  `information` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guochuang
-- ----------------------------
INSERT INTO `guochuang` VALUES ('一人之下', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('全职高手', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('凹凸世界', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('少年锦衣卫', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('武庚纪', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('狐妖小红娘', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('理想禁区', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('画江湖之换世门主', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('秦时明月', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('罗小黑战记', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('那年那兔那些事', null, '', '', null, null);
INSERT INTO `guochuang` VALUES ('镇魂街', null, '', '', null, null);

-- ----------------------------
-- Table structure for `movie`
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `drama` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('你的名字', 'images/main/ming.jpg', '2017', '120分钟', '简介:在远离大都会的小山村,住着巫女世家出身的高中女孩宫水三叶。校园和家庭的...', '导演：新海诚');
INSERT INTO `movie` VALUES ('刀剑神域：序列之争', 'images/main/xuliezhizheng.jpg', '2017', '120分钟', '简介：《刀剑神域：序列之争》是根据日本轻小说家川原砾创作的轻小说《刀剑神域》所改编的动画电影。由原作者川原砾担任剧本的原创剧情', '导演：伊藤智彦');
INSERT INTO `movie` VALUES ('名侦探柯南：唐红的恋歌', 'images/main/tanghongdeliange.jpg', '2017', '120分钟', '简介：《名侦探柯南：唐红的恋歌》是电视动画《名侦探柯南》系列的第21部动画电影，由静野孔文执导。影片以大阪和京都为舞台，讲述了江户川柯南和服部平次挑战与百人一首相关的案件的... ', '导演：静野孔文');
INSERT INTO `movie` VALUES ('声之形', 'images/main/shengzhixing.jpg', '2017', '120分钟', '简介：《声之形》是由山田尚子指导，吉田玲子剧本，京都动画制作的动画电影。影片于2016年9月17日在日本上映，并先后引进中国台湾、香港、大陆。该作改编自大今良时原作的同名漫画。作品以主人公的石田将也和先天性听觉障碍的西宫硝子为中心，讲述了人与人之间的复杂联系和交流。作品的宣传口号是：“帮你活下去”', null);
INSERT INTO `movie` VALUES ('妖精的尾巴：龙之泪', 'images/main/dragoncry.jpg', '2017', '120分钟', '', '');
INSERT INTO `movie` VALUES ('寻梦环游记', 'images/main/meng.jpg', '2017', '120分钟', '简介：《寻梦环游记》是皮克斯动画工作室的第19部动画长片，由华特·迪士尼电影工作室、皮克斯动画工作室联合出品，李·昂克里奇、阿德里安.莫利纳执导，安东尼·冈萨雷斯、本杰明·... ', '导演：李·昂克里奇、阿德里安.莫利纳');
INSERT INTO `movie` VALUES ('烟花', 'images/main/huahuo.jpg', '2017', '120分钟', '简介：【内容】2017年时,距离电视剧《升起的烟花,从下面看?还是从侧面看?》的播出已经过去了24年。伴随着电视剧的动画化,岩井俊二依据剧场版的动画的故事构成,再次创作... ', '导演：新房昭之，武内宣之');
INSERT INTO `movie` VALUES ('银魂真人版', 'images/main/yinhunzhenrenban.jpg', '2017', '120分钟', '简介：《银魂》是由福田雄一执导，小栗旬、菅田将晖、桥本环奈、长泽雅美等联合主演的一部喜剧片。该片于2017年7月14日在日本上映，同年9月1日在中国大陆上映。该片根据日本漫画家空知英秋的同名漫画作品改编，讲述了江户时代末期，一群武士与同伴之间异想天开的故事。', '导演：福田雄一');

-- ----------------------------
-- Table structure for `recommend`
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `drama` varchar(255) NOT NULL,
  `information` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('RE：从零开始的异世界', 'images/main/re0.jpg', '2016', '1-25', '简介：走出便利店要回家的高中生‧菜月昴突然被召唤到异世界。这莫非就是很流行的异世界召唤？可是眼前没有召唤者就算了，还遭遇强盗迅速面临性命危机。这时，一名神秘银发美少女和猫精灵拯救了一筹莫展的他。以报恩为名义，昴自告奋勇要帮助少女找东西。', '长月达平');
INSERT INTO `recommend` VALUES ('埃罗芒阿老师', 'images/main/Eromanga-Sensei.jpg', '2017', '1-12', '简介：高中生兼小说作家的“和泉正宗”（笔名：和泉征宗）有个家里蹲的妹妹“和泉纱雾”。一年前才成为家人的她，却完全不走出居室，并也用力踩踏地板，要...', '伏见司');
INSERT INTO `recommend` VALUES ('宝石之国', 'images/main/baoshizhiguo.jpg', '2017', '1-8', '简介：以遥远的未来为舞台，地上的生物沉入了海底，被微生物吃掉成为无机物体。由于长时间的结晶变成宝石生命体的存在。那个拥有宝石身体的28人，与袭击他们打算将其作为装饰品的月人展开了一场又一场的战斗', null);
INSERT INTO `recommend` VALUES ('少女终末旅行', 'images/main/shonvzhongmolvxing.jpg', '2017', '1-9', '简介：本作舞台在人类繁华的文明迎来终结的很久以后，人类基本灭绝，甚至生物都不再存在的末日世界。复杂够高的都市成为迷宫般的废墟，得不到维护的机械渐渐停止运转。连何时终结了，何时开始终结的思考都不复存在的这个世界，2名少女继续着她们的旅行。', null);
INSERT INTO `recommend` VALUES ('少年锦衣卫', 'images/main/jinyiwei.jpg', '2016', '1-25', '简介：大明初起，明太祖朱元璋设锦衣卫亲军指挥使，后分设南北镇府司，稽查百官，权势煊赫。锦衣卫沿袭百年，南北镇抚司水火不容，外寇虎视中原，江湖烽烟...', null);
INSERT INTO `recommend` VALUES ('干物妹小埋第二季', 'images/main/xiaomai.jpg', '2017', '1-8', '简介：小埋，复活！在房间无限展开的宇宙，再临……！ 在外人人称羡的才色兼备“美妹”，一回到家，就变身成不为人知的一心犯懒“干物妹”……！？', null);
INSERT INTO `recommend` VALUES ('欢迎来到实力至上主义教室', 'images/main/classroom.jpg', '2017', '1-12', '简介：（又名：欢迎来到实力至上主义教室）——真正的实力，平等究竟是什么？几乎百分之百实现升学、就业目标的全国首屈一指的名门校──高度育成高等学校。...', '衣笠彰梧');
INSERT INTO `recommend` VALUES ('狐妖小红娘', 'images/main/huyao.jpg', '2015', '1-64', '简介：根据古典小说记载，世上有人有妖，妖会与人相恋，妖寿命千年，人的寿命有限，人死了，妖活着。人会投胎转世，但投胎以后不记得上辈子的爱。妖如果痴情的话，就去找狐妖“购买”一项服务，让投胎转世的人回忆起前世的爱……', '小新');
INSERT INTO `recommend` VALUES ('血色苍穹', 'images/main/xuesecangqiong.jpg', '2017', '1-26', '简介：李鸣洋原本是一名平凡上班族，因为一个奇怪的二维码而陷入一个巨大的废弃都市“血色苍穹”。在这里所有人都被迫参与一场追杀与被杀的生存游戏中。在找寻逃出这个城市的出路的过程中，整个事件的幕后黑手也一步步浮出水面。', null);

-- ----------------------------
-- Table structure for `riman`
-- ----------------------------
DROP TABLE IF EXISTS `riman`;
CREATE TABLE `riman` (
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `drama` varchar(255) NOT NULL,
  `information` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of riman
-- ----------------------------
INSERT INTO `riman` VALUES ('AngelBeats', 'images/main/AngelBeats.jpg', '2010', '1-13', '简介：作品主题围绕着“人生”展开，以死后的世界为舞台，讲述了反抗着命运的少男少女们的故事。作品中的“人生哲理”与“战斗要素”（虽然战斗要素是看点，但是战斗并不会让剧中的人物消失，也不会让他们受伤，当剧中的人物完成生前的遗憾后便会解脱，就是所谓的投胎转世，所以作品中心是围绕其对人性的体现）是其精彩看点', '麻枝准');
INSERT INTO `riman` VALUES ('Another', 'images/main/Another.jpg', '2014', '1-12', '简介： 早在去年年尾便宣告动画化，取材于日本知名的悬疑小说作家绫辻行人老师于09年推出的长篇推理小说「Another」，继漫画化及真人剧场化后，有关动画化的真面目也终于披露了。', '绫辻行人');
INSERT INTO `riman` VALUES ('Charlotte', 'images/main/Charlotte.jpg', '2015', '1-13', '简介：乙坂有宇拥有着只在极少一部分的青春期少年少女身上诱发产生的罕见特殊能力，依靠这份能力度过着一帆风顺的学园生活的他，经由与神秘少女友利奈绪的邂逅，揭开了特殊能力者们身上的宿命', '麻枝准');
INSERT INTO `riman` VALUES ('Clannad', 'images/main/Charlotte.jpg', '2014', '1-24', '简介： 在某个小镇，主角冈崎朋也因为家庭的因素成为不良少年。某一天，他在学校坡道前发现了一个止步不前的女孩，在朋也认识了这个名为「古河渚」的女孩后，他的生活开始有了重大的变化。 前半为主角和女主角们之间所发生的事件，后半AFTER STORY为主角和古河渚共同生活的日子，其中还穿插了理论中的世界「被封闭...', null);
INSERT INTO `riman` VALUES ('Fate Zero', 'images/main/Fate-Zero.jpeg', '2014', '1-25', '简介： 传说中，圣杯是能够实现拥有者愿望的宝物。为了追求圣杯的力量，7位魔术师各自召唤英灵，展开争夺圣杯的战斗，这就是圣杯战争。时间退回到第五次圣杯战争的10年前，第四次圣杯战争，参与者正是士郎他们的父辈。为了得到圣杯不择手段的卫宫切嗣，年轻时代的言峰绮礼，间桐家与远坂家的关系，同样身为王 […]', null);
INSERT INTO `riman` VALUES ('一拳超人', 'images/main/yiquan.jpg', '2016', '1-12', '简介：《一拳超人》讲述的是主人公埼玉原本是一名整日奔波于求职的普通人。3年之前的一天偶然遇到了要对淘气少年下杀手的异变螃蟹人后，回忆起年少年时“想要成为英雄”的梦想，最终拼尽全力救下了淘气少年。重拾对于成为英雄的兴趣之后，通过拼命锻炼，埼玉终于脱胎换骨获得了最强的力量，但同时失去了头发成了光头，似乎还失去了某些感情。', '村田雄介');
INSERT INTO `riman` VALUES ('刀剑神域第一季', 'images/main/sword.jpg', '2014', '1-25', '简介： 「這雖然是遊戲，但可不是鬧著玩（これは、ゲームであっても、遊びではない）」 2022年，大廠牌電子機械製造商「ARGUS」開發出－「NERvGear」－能連結虛擬世界的機器。完全的虛擬實境終於能夠實現。 主人公桐谷和人是使用NERvGear遊玩VRMMORPG「Sword Art Online」的玩家。 很幸運的參與過封閉測試，並買下正...', null);
INSERT INTO `riman` VALUES ('反叛的鲁鲁修第一季', 'images/main/codeceass.jpg', '2014', '1-25', '简介： 2010年，超级大国布里塔尼亚帝国Britannia为了夺取日本的地下资源而侵略日本，在布里塔尼亚帝国强大的兵器Knightmare进攻下，日本在不到一个月的时间内被征服。日本被剥夺了自由、权利甚至是国家的名字，布里塔尼亚帝国将“日本”改称为“11区”，“日本人”这名词则被11这数字所取代。表面上看来布里塔尼亚帝国的...', '大河内');
INSERT INTO `riman` VALUES ('名侦探柯南', 'images/main/kenan.jpg', '1996', '1-800', '简介： 《名侦探柯南》（日文：名探侦コナン；英文：Detective Conan；美版英文：Case Closed）是日本漫画家青山刚昌的一部以侦探推理情节为主题的漫画作品，讲述了高中生侦探工藤新一被神秘的黑衣组织灌下代号为APTX4869的毒药后身体缩小为小学生，因此隐瞒身份，调查组织的 […]', null);
INSERT INTO `riman` VALUES ('夏目友人帐', 'images/main/xiamu.png', '2014', '6季全', '简介： 夏目友人帳 夏目贵志生来拥有强大的灵力，能看到妖怪和神明的存在。因其父母双亡，常年辗转于互相推卸责任的亲戚之间，并受到同龄人的欺负。同时被其能力影响，未曾与任何人深交，造成性格一定程度上的孤僻。本性和善，宽厚，踏实。对于自身的不幸，无论是对人类还是妖怪都未曾抱怨过。被藤原夫妇收养后 […]', null);
INSERT INTO `riman` VALUES ('妖精的尾巴', 'images/main/Fairy-Tail.jpg', '2009', '1-175', '简介： 少女露西一直希望能加入云集众多厉害魔法师的名为“妖精尾巴”的公会，在纳兹的引导下，露西终于得偿所愿，随后，露西跟纳兹、格雷、艾尔莎和哈比组成“最强！？”队伍，二男二女一猫的旅程就此展开…… ', '真岛浩');
INSERT INTO `riman` VALUES ('我的英雄学院', 'images/main/hreo.jpg', '2016', '无资源', '简介：大部分的人类，在这个时代里都拥有名为“个性”的力量，但有力量之人却不一定都属於正义的一方。只要邪恶出现的地方，必定会有英雄挺身而出拯救众人。一名天生没有力量的少年——绿谷出久从小就憧憬一位顶尖英雄，而他的梦想就是成为伟大的英雄，可是，没有力量的他能实现自己的梦想吗？虽然困难重重，少年却依旧不放弃，朝著自己的目标勇往前进', '崛越耕平');
INSERT INTO `riman` VALUES ('某科学的超电磁炮', 'images/main/paojie.jpg', '2009', '1-24', '简介：在面积占据东京都西部的三分之一，居住着230万名人口，其中八成人口是学生的巨大都市“学园都市”中，学园都市和外部隔离，研究最尖端科技。所有学生都接受超能力开发，并大都借由药物、催眠术与通电刺激等方式取得超能力。有各种类型不同能力，以范围和威力分为无能力者、低能力者、异能力者、强能力者、大能力者和超能力者。故事从学园都市最强的电击公主“超电磁炮”御坂美琴，某天认识了和白井黑子一样担任风纪委员的初春饰利开始……', '冬川基 ');
INSERT INTO `riman` VALUES ('死神', 'images/main/death.jpg', '2004', '1-800', '简介：故事的主角黑崎一护是个看似暴力、单薄，实质上善良、勇敢、爱护家庭的少年，并且拥有能看见灵的体质。家里有一个开诊所的老爸和两个性格正常的妹妹夏梨和游子，一护每天七点必须按时回家,否则老爸便会使用“身体语言教训”的家规。吵闹的父子，懂事的妹妹以及与其他普通人并无大异的普通生活，直到女死神朽木露琪亚被他一脚踢到墙角并满脸惊疑地望着他问“你能看见我？”时漫画的序幕才这样被正式地揭开。 从此黑崎一护身边所有的事物都产生了翻天覆地的变化', '久保带人');
INSERT INTO `riman` VALUES ('海贼王', 'images/main/onepiece.jpg', '1999', '1-726', '简介： 传奇海贼哥尔·D·罗杰在临死前曾留下关于其毕生的财富“One Piece”的消息，由此引得群雄并起，众海盗们为了这笔传说中的巨额财富展开争夺，各种势力、政权不断交替，整个世界进入了动荡混乱的“大海贼时代”。　生长在东海某小村庄的路飞受到海贼香克斯的精神指引，决定成为一名出色的海盗。为了达成这个目标...', null);
INSERT INTO `riman` VALUES ('火影忍者', 'images/main/naruto.jpg', '2002', '1-720', '简介： 十多年前一只拥有巨大威力的妖兽“九尾妖狐”袭击了木叶忍者村，当时的第四代火影拼尽全力，以自己的生命为代价将“九尾妖狐”封印在了刚出生的鸣人身上。木叶村终于恢复了平静，但村民们却把鸣人当成像“九尾妖狐”那样的怪物看待，所有人都疏远他。无可奈何，鸣人用各种恶作剧试图吸引大家的注意力。在伊鲁卡...', null);
INSERT INTO `riman` VALUES ('进击的巨人', 'images/main/juren.jpg', '2016', '1-12', '简介：107年前（743年），世界上突然出现了人类的天敌“巨人”。面临着生存危机而残存下来的人类逃到了一个地方，盖起了三重巨大的城墙。人们在这隔绝的环境里享受了一百多年的和平，直到艾伦·耶格尔十岁那年，60米高的“超大型巨人”突然出现，以压倒性的力量破坏城门，其后瞬间消失，凶残的巨人们成群的冲进墙内捕食人类。', null);
INSERT INTO `riman` VALUES ('钢之炼金术师03版', 'images/main/FullmetalAlchemist.jpg', '2009', '1-51', '简介： 由荒川弘老师原著的少年冒险漫画「钢之炼金术师」钢炼，自2001年开始在月刊「少年GANGAN」(SQUARE ENIX刊)连载至今，一共发行了21卷单行本，是一部累计销售量达3300万部的人气作品。本作曾在2003年由骨头社改编为全51话的年番动画，使其人气更上一层楼。犹记得当荧幕最后停顿在艾尔利克兄弟同时举手向天那一...', null);
INSERT INTO `riman` VALUES ('魔法禁书目录', 'images/main/mofa.jpg', '2008', '1-24', '简介：自己的阳台栏杆上出现了像被单一样挂在上面的少女，这种非现实的情节出现在了上条当麻的眼前。虽然在这个城市——最先进科学引导的学院都市中，超能…', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('Charlotte', 'qaz', '42890@qq.com', '165651336', null, null);
INSERT INTO `user` VALUES ('dragon', '', '', '', null, '');
INSERT INTO `user` VALUES ('EdwardElirc', '123', 'fasda@mail.com', '12468156615', null, null);
INSERT INTO `user` VALUES ('qaz', '123', '', '', null, 'images/user/shonvzhongmolvxing.jpg');
INSERT INTO `user` VALUES ('SoulKnight', '123', '', '', null, 'images/user/');
INSERT INTO `user` VALUES ('wang', '123', '', '', null, 'images/user/xiaomai.jpg');
INSERT INTO `user` VALUES ('杰拉尔', '123', '', '', null, 'images/user/shonvzhongmolvxing.jpg');
