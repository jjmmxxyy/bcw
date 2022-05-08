-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2022-04-29 12:52:27
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcw`
--

-- --------------------------------------------------------

--
-- 表的结构 `bcw_address`
--

CREATE TABLE `bcw_address` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `uid` int(11) DEFAULT NULL COMMENT '关联用户编号',
  `consignee` varchar(20) DEFAULT NULL COMMENT '收货姓名',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `county` varchar(20) DEFAULT NULL COMMENT '区/县',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `postal_code` varchar(30) DEFAULT NULL COMMENT '省份邮编',
  `area_code` varchar(30) DEFAULT NULL COMMENT '城区邮编'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货地址表';

--
-- 转存表中的数据 `bcw_address`
--

INSERT INTO `bcw_address` (`id`, `uid`, `consignee`, `tel`, `province`, `city`, `county`, `address`, `postal_code`, `area_code`) VALUES
(1, 1, '申哥', '18888888888', '北京市', '北京市', '朝阳区', '北京市朝阳区广渠路23号珠江帝景E区', '100000', '100020'),
(2, 2, '小艺', '18888888889', '浙江省', '杭州市', '滨江区', '浙江省杭州市滨江区西兴街道滨安路435号', '310000', '310000'),
(3, 4, '阿斯顿', '15878899555', '浙江省', '杭州市', '渝北区', '浙江省,杭州市,渝北区急急急', NULL, '123456'),
(4, 4, '阿斯顿', '15878899555', '', 'undefined', 'undefined', '浙江省,杭州市,渝北区急急急', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `bcw_laptop`
--

CREATE TABLE `bcw_laptop` (
  `lid` int(11) NOT NULL COMMENT '主键ID',
  `fid` int(11) DEFAULT NULL COMMENT '关联商品类别编号',
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `category` varchar(255) DEFAULT NULL COMMENT '商品规格',
  `price` varchar(10) DEFAULT NULL COMMENT '价格',
  `pic` varchar(512) DEFAULT NULL COMMENT '商品主图',
  `pic_path` varchar(512) DEFAULT NULL COMMENT '商品首页显示图片',
  `collect` tinyint(1) DEFAULT NULL COMMENT '是否收藏 1收藏 0不收藏'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品列表';

--
-- 转存表中的数据 `bcw_laptop`
--

INSERT INTO `bcw_laptop` (`lid`, `fid`, `title`, `category`, `price`, `pic`, `pic_path`, `collect`) VALUES
(1, 1, '百草味 巴旦木155g 坚果干果杏仁手剥奶枣原料', '155g', '12.70', 'gmjg/badanmu/item1.jpg', 'gmjg/badanmu/item1.jpg', 0),
(2, 1, '百草味 甘栗仁栗子休闲零食 坚果炒货特产干果果仁', '60g', '14.00', 'gmjg/banli/item1.jpg', 'gmjg/banli/item1.jpg', 0),
(3, 1, '百草味 每日坚果 干果休闲零食 奶油味碧根果', '100g', '27.90', 'gmjg/bigenguo/item1.jpg', 'gmjg/bigenguo/item1.jpg', 0),
(4, 1, '百草味 每日坚果干果 休闲零食特产 开心果盐焗味', '100g', '44.00', 'gmjg/kaixinguo/item1.jpg', 'gmjg/kaixinguo/item1.jpg', 0),
(5, 1, '百草味 休闲零食特产干果坚果炒货每日坚果 奶油味夏威夷果', '100g', '31.00', 'gmjg/xiaweiyiguo/item1.jpg', 'gmjg/xiaweiyiguo/item1.jpg', 1),
(6, 2, '百草味 台式点心饼干糕点休闲零食特产糯米滋手撕面包 芒果味夹心麻薯', '210g', '26.00', 'gdzq/mashu/item1.jpg', 'gdzq/mashu/item1.jpg', 0),
(7, 2, '百草味 休闲零食小吃整箱蛋糕办公室早餐点心传统糕点 原味肉松饼', '1000g', '34.90', 'gdzq/rousongbing/item1.jpg', 'gdzq/rousongbing/item1.jpg', 0),
(8, 2, ' 百草味蛋黄酥300g芋泥味雪媚娘麻薯麻糬传统糕点心网红休闲零食品', '360g', '29.90', 'gdzq/danhuangsu/item1.jpg', 'gdzq/danhuangsu/item1.jpg', 1),
(9, 3, '百草味 蔓越莓干100g/袋 蜜饯果干零食红宝石果肉果脯酸甜休闲食品', '10g', '22.60', 'ggmj/meigan/item1.jpg', 'ggmj/meigan/item1.jpg', 1),
(10, 3, '百草味 真香芒果干120g 休闲网红小吃水果干干果蜜饯果脯零食', '120g', '29.9', 'ggmj/mangguogan/item1.jpg', 'ggmj/mangguogan/item1.jpg', 1),
(11, 4, '百草味 鸭脖猪肉脯休闲小吃礼盒礼物送女友送礼', '1626g', '149.00', 'rphw/hunsu/item1.jpg', 'rphw/hunsu/item1.jpg', 0),
(12, 4, '百草味 麻辣牛肉干100g 牛肉条 休闲零食特产小吃肉脯 内蒙古风味 麻辣牛肉干100g', '100g', '38.70', 'rphw/malaniurou/item1.jpg', 'rphw/malaniurou/item1.jpg', 0),
(13, 5, '百草味 南瓜子160gx3袋 坚果炒货 休闲零食 农家特产 盐焗味', '480g', '22.8', 'xxch/nanguazi/item1.jpg', 'xxch/nanguazi/item1.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bcw_laptop_family`
--

CREATE TABLE `bcw_laptop_family` (
  `fid` int(11) NOT NULL COMMENT '商品分类编号主键自增',
  `fname` varchar(40) DEFAULT NULL COMMENT '商品分类名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类表';

--
-- 转存表中的数据 `bcw_laptop_family`
--

INSERT INTO `bcw_laptop_family` (`fid`, `fname`) VALUES
(1, '国民坚果'),
(2, '糕点专区'),
(3, '果干蜜饯'),
(4, '肉铺海味'),
(5, '休闲炒货');

-- --------------------------------------------------------

--
-- 表的结构 `bcw_laptop_pic`
--

CREATE TABLE `bcw_laptop_pic` (
  `lid` int(11) DEFAULT NULL COMMENT '关联bcw_laptop表的商品编号',
  `pic1` varchar(512) DEFAULT NULL COMMENT '商品图片路径',
  `pic2` varchar(512) DEFAULT NULL COMMENT '商品图片路径',
  `pic3` varchar(512) DEFAULT NULL COMMENT '商品图片路径',
  `pic4` varchar(512) DEFAULT NULL COMMENT '商品图片路径',
  `pic5` varchar(512) DEFAULT NULL COMMENT '商品图片路径',
  `pic6` varchar(512) DEFAULT NULL COMMENT '商品图片路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品图表';

--
-- 转存表中的数据 `bcw_laptop_pic`
--

INSERT INTO `bcw_laptop_pic` (`lid`, `pic1`, `pic2`, `pic3`, `pic4`, `pic5`, `pic6`) VALUES
(1, 'gmjg/badanmu/item1.jpg', 'gmjg/badanmu/item2.jpg', 'gmjg/badanmu/item3.jpg', 'gmjg/badanmu/item4.jpg', '', ''),
(2, 'gmjg/banli/item1.jpg', 'gmjg/banli/item2.jpg', 'gmjg/banli/item3.jpg', 'gmjg/banli/item4.jpg', '', ''),
(3, 'gmjg/bigenguo/item1.jpg', 'gmjg/bigenguo/item2.jpg', 'gmjg/bigenguo/item3.jpg', 'gmjg/bigenguo/item4.jpg', 'gmjg/bigenguo/item5.jpg', ''),
(4, 'gmjg/kaixinguo/item1.jpg', 'gmjg/kaixinguo/item2.jpg', 'gmjg/kaixinguo/item3.jpg', 'gmjg/kaixinguo/item4.jpg', 'gmjg/kaixinguo/item5.jpg', ''),
(5, 'gmjg/xiaweiyiguo/item1.jpg', 'gmjg/xiaweiyiguo/item2.jpg', 'gmjg/xiaweiyiguo/item3.jpg', 'gmjg/xiaweiyiguo/item4.jpg', 'gmjg/xiaweiyiguo/item5.jpg', 'gmjg/xiaweiyiguo/item6.jpg'),
(6, 'gdzq/mashu/item1.jpg', 'gdzq/mashu/item2.jpg', 'gdzq/mashu/item3.jpg', 'gdzq/mashu/item4.jpg', 'gdzq/mashu/item5.jpg', ''),
(7, 'gdzq/rousongbing/item1.jpg', 'gdzq/rousongbing/item2.jpg', 'gdzq/rousongbing/item3.jpg', 'gdzq/rousongbing/item4.jpg', 'gdzq/rousongbing/item5.jpg', ''),
(8, 'gdzq/danhuangsu/item1.jpg', 'gdzq/danhuangsu/item2.jpg', 'gdzq/danhuangsu/item3.jpg', 'gdzq/danhuangsu/item4.jpg', 'gdzq/danhuangsu/item5.jpg', ''),
(9, 'ggmj/meigan/item1.jpg', 'ggmj/meigan/item2.jpg', 'ggmj/meigan/item3.jpg', 'ggmj/meigan/item4.jpg', 'ggmj/meigan/item5.jpg', ''),
(10, 'ggmj/mangguogan/item1.jpg', 'ggmj/mangguogan/item2.jpg', 'ggmj/mangguogan/item3.jpg', 'ggmj/mangguogan/item4.jpg', 'ggmj/mangguogan/item5.jpg', ''),
(11, 'rphw/hunsu/item1.jpg', 'rphw/hunsu/item2.jpg', 'rphw/hunsu/item3.jpg', 'rphw/hunsu/item4.jpg', '', ''),
(12, 'rphw/malaniurou/item1.jpg', 'rphw/malaniurou/item2.jpg', 'rphw/malaniurou/item3.jpg', 'rphw/malaniurou/item4.jpg', '', ''),
(13, 'xxch/nanguazi/item1.jpg', 'xxch/nanguazi/item2.jpg', 'xxch/nanguazi/item3.jpg', 'xxch/nanguazi/item4.jpg', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `bcw_mall_cart`
--

CREATE TABLE `bcw_mall_cart` (
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(64) DEFAULT NULL,
  `freight` decimal(4,2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bcw_order`
--

CREATE TABLE `bcw_order` (
  `oid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `user_address` varchar(64) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `deliver_time` datetime DEFAULT NULL,
  `received` datetime DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `category` varchar(64) DEFAULT NULL,
  `freight` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bcw_order`
--

INSERT INTO `bcw_order` (`oid`, `uid`, `lid`, `user_address`, `status`, `order_time`, `pay_time`, `deliver_time`, `received`, `title`, `price`, `pic`, `num`, `category`, `freight`) VALUES
(251, 4, 35, NULL, 1, NULL, NULL, NULL, NULL, '百草味 蔓越莓干100g/袋 蜜饯果干零食红宝石果肉果脯酸甜休闲食品', '22.60', 'ggmj/meigan/item1.jpg', 1, '10g', NULL),
(252, 4, 36, NULL, NULL, NULL, NULL, NULL, NULL, '百草味 休闲零食特产干果坚果炒货每日坚果 奶油味夏威夷果', '31.00', 'gmjg/xiaweiyiguo/item1.jpg', 1, '100g', NULL),
(253, 4, 37, NULL, 1, NULL, NULL, NULL, NULL, '百草味 每日坚果 干果休闲零食 奶油味碧根果', '27.90', 'gmjg/bigenguo/item1.jpg', 1, '100g', NULL),
(254, 4, 39, NULL, NULL, NULL, NULL, NULL, NULL, '百草味 巴旦木155g 坚果干果杏仁手剥奶枣原料', '12.70', 'gmjg/badanmu/item1.jpg', 0, '155g', NULL),
(255, 4, 40, NULL, NULL, NULL, NULL, NULL, NULL, '百草味 巴旦木155g 坚果干果杏仁手剥奶枣原料', '12.70', 'gmjg/badanmu/item1.jpg', 1, '155g', NULL),
(256, 4, 38, NULL, 2, NULL, NULL, NULL, NULL, '百草味 甘栗仁栗子休闲零食 坚果炒货特产干果果仁', '14.00', 'gmjg/banli/item1.jpg', 1, '60g', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bcw_pay_info`
--

CREATE TABLE `bcw_pay_info` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `pay_platform` int(11) DEFAULT NULL,
  `platform_status` tinyint(1) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `category` varchar(64) DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bcw_pay_info`
--

INSERT INTO `bcw_pay_info` (`id`, `uid`, `title`, `order_id`, `pay_platform`, `platform_status`, `image`, `price`, `category`, `num`) VALUES
(41, 4, '百草味 巴旦木155g 坚果干果杏仁手剥奶枣原料', NULL, NULL, NULL, 'gmjg/badanmu/item1.jpg', '12.70', '155g', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bcw_user`
--

CREATE TABLE `bcw_user` (
  `uid` int(11) NOT NULL COMMENT '主键自增',
  `uname` varchar(40) DEFAULT NULL COMMENT '用户名唯一值',
  `upwd` varchar(255) DEFAULT NULL COMMENT '用户名密码',
  `sex` tinyint(1) DEFAULT '0' COMMENT '0男 1女',
  `phone` varchar(255) DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `avator` varchar(512) DEFAULT NULL COMMENT '用户头像'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `bcw_user`
--

INSERT INTO `bcw_user` (`uid`, `uname`, `upwd`, `sex`, `phone`, `email`, `nickname`, `avator`) VALUES
(1, 'daniu', '123456', 0, '13856564545', 'niuniu@pp.com', '真滴牛', ''),
(4, 'jjmmxxyy', '', 1, '13835350584', '940000413@qq.com', NULL, 'avator1651228237196.jpg'),
(9, '13835454500', '.lalala1006.', 0, '13835454500', '555@dd.f', NULL, NULL),
(11, '15878899555', '.lala456jiji.', 0, '15878899555', '55485@dd.f', NULL, NULL),
(16, '13612045678', '.lalala1006.', 0, '13612045678', '456@ff.com', NULL, NULL),
(17, '15444447777', '1234qwer', 0, '15444447777', '12@168', NULL, 'avator1651227689062.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bcw_address`
--
ALTER TABLE `bcw_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcw_laptop`
--
ALTER TABLE `bcw_laptop`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `bcw_laptop_family`
--
ALTER TABLE `bcw_laptop_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `bcw_mall_cart`
--
ALTER TABLE `bcw_mall_cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `bcw_order`
--
ALTER TABLE `bcw_order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `bcw_pay_info`
--
ALTER TABLE `bcw_pay_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcw_user`
--
ALTER TABLE `bcw_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bcw_address`
--
ALTER TABLE `bcw_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `bcw_laptop`
--
ALTER TABLE `bcw_laptop`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID', AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `bcw_laptop_family`
--
ALTER TABLE `bcw_laptop_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类编号主键自增', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `bcw_mall_cart`
--
ALTER TABLE `bcw_mall_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `bcw_order`
--
ALTER TABLE `bcw_order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- 使用表AUTO_INCREMENT `bcw_pay_info`
--
ALTER TABLE `bcw_pay_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- 使用表AUTO_INCREMENT `bcw_user`
--
ALTER TABLE `bcw_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增', AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
