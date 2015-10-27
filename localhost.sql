-- phpMyAdmin SQL Dump
-- version 4.3.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-10-19 19:28:31
-- 服务器版本： 5.5.44-MariaDB-1ubuntu0.14.04.1-log
-- PHP Version: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sdysports`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) unsigned NOT NULL,
  `username` char(30) NOT NULL,
  `password` char(32) NOT NULL,
  `pri` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `pri`) VALUES
(1, 'root', '63a9f0ea7bb98050796b649e85481845', 7);

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) unsigned NOT NULL COMMENT '文章id',
  `cid` int(11) NOT NULL COMMENT '所属栏目id',
  `content` text NOT NULL COMMENT '文章内容',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='所有新闻、活动等文章类型栏目的存储表';

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `cid`, `content`, `title`, `time`) VALUES
(1, 7, '&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;			&lt;img src=&quot;/sdysports/Public/images/club.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;育星篮球俱乐部是一个以篮球训练为主，专注于青少年全面发展的综合性提高项目。&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;/p&gt;&lt;p&gt;俱乐部位于西城区体育运动学校，是西城区体校下属专业的篮球培训机构。拥有西城区体育中心内的24小时专业室内篮球馆。在这里，我们将根据每个学员的自身特点，定制先进、科学的篮球训练课程，极大的提高学员自身素质。&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;/p&gt;&lt;p&gt;除专业的篮球训练外，俱乐部同时注重学员综合能力的培养，学员们将在这里领悟体育精神、学会沟通和团队协作，享受篮球带来的无与伦比的快乐。&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;/p&gt;&lt;p&gt;育星的口号是：专业的指导，多元化的培训，打造属于你的明天。&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;br/&gt; &amp;nbsp;	&lt;/p&gt;&lt;p&gt;招生对象：&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;/p&gt;&lt;p&gt;热爱篮球，年龄在7-18岁之间的青少年（有无篮球基础不限，男女不限）&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;br/&gt; &amp;nbsp;	&lt;/p&gt;&lt;p&gt;地址：&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;/p&gt;&lt;p&gt;西城区广安门桥南登莱胡同26号&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;img src=&quot;/sdysports/Public/images/map.jpg&quot;/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;', '育星篮球俱乐部介绍', '2015-10-03 03:44:47'),
(3, 8, '&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;			&lt;img src=&quot;/sdysports/Public/images/club.jpg&quot;/&gt; &amp;nbsp;	&lt;/p&gt;&lt;p&gt;招生范围（4—6岁）&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;br/&gt; &amp;nbsp;	&lt;/p&gt;&lt;p&gt;让热爱篮球的青少年儿童更深切的体会篮球这项运动，提高自身的身体素质，同时孩子在成长期促进身体发育，也为今后的体育运动打下良好的基础。快乐篮球会根据孩子的具体情况进行量身打造训练计划，在孩子青少年阶段主要提高孩子的球性、协调性、柔韧性、灵活性等为主。&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;br/&gt; &amp;nbsp;	&lt;/p&gt;&lt;p&gt;卡次介绍：&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;br/&gt; &amp;nbsp;	&lt;/p&gt;&lt;p&gt;1、季卡： &amp;nbsp; 能够熟练进行原地、行进间运球、运球变向、上三步篮以及身体素质的提高。&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;/p&gt;&lt;p&gt;2、半年卡：在以上基础上更加深化的进行练习，如四项基本运球、三步上篮、传接球以及投篮，同时更加细致的进行身体方面的练习。&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;/p&gt;&lt;p&gt;3、全年卡：能够熟练进行原地以及行进间的运球、上篮、投篮、同时可以适当进行篮球对抗赛&lt;/p&gt;&lt;p&gt;&amp;nbsp;	&lt;img src=&quot;/sdysports/Public/images/map.jpg&quot;/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;', '快乐篮球', '2015-10-13 00:34:07'),
(4, 15, '思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day', '思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE A', '2015-08-27 14:36:15'),
(5, 15, '思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day思迪亚与NBA的故事：2012 NBA China Games 2012 BIG IS HERE Andre Iguodala Fan Day', '思迪亚团队成功举办中国医学集团2012年职工运动会', '2015-08-27 14:37:49'),
(6, 15, '思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会思迪亚团队成功举办中国医学集团2012年职工运动会', '思迪亚团队成功举办中国医学集团2012年职工运动会', '2015-08-27 14:37:59');

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL COMMENT '轮播图序号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `intro` text NOT NULL COMMENT '内容',
  `path` char(50) NOT NULL COMMENT '路径'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='首页轮播图';

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`id`, `title`, `intro`, `path`) VALUES
(1, '标题文字1', '这是描述这一张图片的文字，后台上传时添加', '/sdysports/Public/images/banner_1.jpg'),
(2, '标题文字1', '这是描述这一张图片的文字，后台上传时添加', '/sdysports/Public/images/banner_1.jpg'),
(3, '标题文字1', '这是描述这一张图片的文字，后台上传时添加', '/sdysports/Public/images/banner_1.jpg'),
(4, '标题文字1', '这是描述这一张图片的文字，后台上传时添加', '/sdysports/Public/images/banner_1.jpg'),
(5, '标题文字1', '这是描述这一张图片的文字，后台上传时添加', '/sdysports/Public/images/banner_1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `coach`
--

CREATE TABLE IF NOT EXISTS `coach` (
  `id` int(10) unsigned NOT NULL COMMENT '教练id',
  `name` varchar(15) NOT NULL COMMENT '教练姓名',
  `rank` int(3) unsigned NOT NULL COMMENT '教练评级',
  `intro` text NOT NULL COMMENT '教练介绍',
  `pic` char(50) NOT NULL COMMENT '教练图'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='教练数据表';

--
-- 转存表中的数据 `coach`
--

INSERT INTO `coach` (`id`, `name`, `rank`, `intro`, `pic`) VALUES
(1, '陈朝亮：思迪亚篮球教练', 4, '			<p>国家一级篮球运动员、国家一级篮球裁判。</p>\r\n			<p>山东省优秀运动员，拥有社会体育指导员证书。</p>\r\n			<ul>\r\n				<li>2013-2014年在华北电力大学担任篮球任课教师</li>\r\n				<li>2014年在北京外国语学校小学及初中部担任体育教师</li>\r\n				<li>2011-2014年在东方启明星篮球训练营担任篮球培训教练</li>\r\n			</ul>', '/sdysports/Public/images/news1.jpg'),
(2, '陈朝亮：思迪亚篮球教练', 3, '			<p>国家一级篮球运动员、国家一级篮球裁判。</p>\r\n			<p>山东省优秀运动员，拥有社会体育指导员证书。</p>\r\n			<ul>\r\n				<li>2013-2014年在华北电力大学担任篮球任课教师</li>\r\n				<li>2014年在北京外国语学校小学及初中部担任体育教师</li>\r\n				<li>2011-2014年在东方启明星篮球训练营担任篮球培训教练</li>\r\n			</ul>', '/sdysports/Public/images/news1.jpg'),
(3, '陈朝亮：思迪亚篮球教练', 2, '			<p>国家一级篮球运动员、国家一级篮球裁判。</p>\r\n			<p>山东省优秀运动员，拥有社会体育指导员证书。</p>\r\n			<ul>\r\n				<li>2013-2014年在华北电力大学担任篮球任课教师</li>\r\n				<li>2014年在北京外国语学校小学及初中部担任体育教师</li>\r\n				<li>2011-2014年在东方启明星篮球训练营担任篮球培训教练</li>\r\n			</ul>', '/sdysports/Public/images/news1.jpg'),
(4, '陈朝亮：思迪亚篮球教练', 1, '			<p>国家一级篮球运动员、国家一级篮球裁判。</p>\r\n			<p>山东省优秀运动员，拥有社会体育指导员证书。</p>\r\n			<ul>\r\n				<li>2013-2014年在华北电力大学担任篮球任课教师</li>\r\n				<li>2014年在北京外国语学校小学及初中部担任体育教师</li>\r\n				<li>2011-2014年在东方启明星篮球训练营担任篮球培训教练</li>\r\n			</ul>', '/sdysports/Public/images/news1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `column`
--

CREATE TABLE IF NOT EXISTS `column` (
  `cid` int(11) NOT NULL COMMENT '栏目id',
  `fid` int(11) NOT NULL COMMENT '栏目父id',
  `name` varchar(20) NOT NULL COMMENT '栏目名',
  `type` int(11) DEFAULT '1' COMMENT '栏目类型',
  `path` char(50) NOT NULL DEFAULT 'article' COMMENT '模板位置',
  `table` char(20) NOT NULL DEFAULT 'article' COMMENT '内容存储表名'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='栏目';

--
-- 转存表中的数据 `column`
--

INSERT INTO `column` (`cid`, `fid`, `name`, `type`, `path`, `table`) VALUES
(2, 0, '思迪亚体育联盟', 0, '', 'article'),
(3, 0, '思迪亚课程计划', 2, 'course', 'course'),
(4, 0, '思迪亚梦工厂', 0, '', 'article'),
(5, 0, '思迪亚在中国', 1, 'news', 'article'),
(6, 0, '关于思迪亚', 0, '', 'article'),
(7, 2, '育星篮球俱乐部', 0, 'club', 'article'),
(8, 3, '快乐篮球', 0, 'happy_basket', 'article'),
(9, 3, '激情篮球', 0, 'happy_basket', 'article'),
(10, 3, '中考篮球', 0, 'happy_basket', 'article'),
(11, 3, '定向篮球', 0, 'happy_basket', 'article'),
(12, 4, '学员天地', 2, 'member', 'member'),
(14, 5, '韦德训练营', 0, 'article', 'article'),
(15, 5, '思迪亚活动', 1, 'news', 'article'),
(16, 6, '师资力量', 2, 'coach', 'coach'),
(17, 6, '联系我们', 0, 'contact', 'article'),
(18, 6, '招贤纳士', 0, 'wanted', 'article'),
(19, 6, '常见问题解答', 0, '', 'article'),
(20, 6, '公司介绍', 0, 'aboutus', 'article');

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `cid` int(11) NOT NULL COMMENT '对应栏目id',
  `path` char(50) NOT NULL COMMENT '展示图',
  `poster` char(50) NOT NULL COMMENT '海报图',
  `name` varchar(40) NOT NULL COMMENT '课程名',
  `intro` text NOT NULL COMMENT '课程说明'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程表';

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`cid`, `path`, `poster`, `name`, `intro`) VALUES
(8, '/sdysports/Public/images/set1.gif', '/sdysports/Public/images/show1.jpg', '快乐篮球', '		<h2>招生范围：4 - 6岁</h2>\r\n		<p> 让热爱篮球的青少年儿童更深切的体会篮球这项运动，提高自身的身体素质，同时孩子在成长期促进身体发育，也为今后的体育运动打下良好的基础。快乐篮球会根据孩子的具体情况进行量身打造训练计划，在孩子青少年阶段主要提高孩子的球性、协调性、柔韧性、灵活性等为主。让热爱篮球的青少年儿童更深切的体会篮球这项运动，提高自身的身体素质，</p>'),
(9, '/sdysports/Public/images/set1.gif', '/sdysports/Public/images/show2.jpg', '幼儿篮球', '		<h2>招生范围：4 - 6岁</h2>\r\n		<p> 让热爱篮球的青少年儿童更深切的体会篮球这项运动，提高自身的身体素质，同时孩子在成长期促进身体发育，也为今后的体育运动打下良好的基础。快乐篮球会根据孩子的具体情况进行量身打造训练计划，在孩子青少年阶段主要提高孩子的球性、协调性、柔韧性、灵活性等为主。让热爱篮球的青少年儿童更深切的体会篮球这项运动，提高自身的身体素质，</p>');

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(10) unsigned NOT NULL COMMENT '学员id',
  `name` varchar(30) NOT NULL COMMENT '学员名字',
  `content` text NOT NULL COMMENT '学员描述',
  `pic` char(40) NOT NULL COMMENT '学员个人图片'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学员表';

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `name`, `content`, `pic`) VALUES
(1, '张继科', '是球场上的精灵，穿梭在球场的每一个角落，他是偶像学员，也是我最喜欢 的学员，我把他比作艾弗森，娴熟的运球、灵巧的转身、犀利的传球，出色的爆发力，造就了这个球场上无敌的王者，他可以砍瓜切菜般的去得分，但 是他从来不会这样去做，他更愿意去帮助队友得分，他是真正意义上的组织后卫。私下来他是一个安静的小男孩，有着腼腆的笑容，可是到了球场那就是另外一个样子了，球风凶狠训练刻苦，已经完全不像一个孩子了。', '/sdysports/Public/images/header_sam.png'),
(2, '张继科', '是球场上的精灵，穿梭在球场的每一个角落，他是偶像学员，也是我最喜欢 的学员，我把他比作艾弗森，娴熟的运球、灵巧的转身、犀利的传球，出色的爆发力，造就了这个球场上无敌的王者，他可以砍瓜切菜般的去得分，但 是他从来不会这样去做，他更愿意去帮助队友得分，他是真正意义上的组织后卫。私下来他是一个安静的小男孩，有着腼腆的笑容，可是到了球场那就是另外一个样子了，球风凶狠训练刻苦，已经完全不像一个孩子了。', '/sdysports/Public/images/header_sam.png'),
(3, '张继科', '是球场上的精灵，穿梭在球场的每一个角落，他是偶像学员，也是我最喜欢 的学员，我把他比作艾弗森，娴熟的运球、灵巧的转身、犀利的传球，出色的爆发力，造就了这个球场上无敌的王者，他可以砍瓜切菜般的去得分，但 是他从来不会这样去做，他更愿意去帮助队友得分，他是真正意义上的组织后卫。私下来他是一个安静的小男孩，有着腼腆的笑容，可是到了球场那就是另外一个样子了，球风凶狠训练刻苦，已经完全不像一个孩子了。', '/sdysports/Public/images/header_sam.png');

-- --------------------------------------------------------

--
-- 表的结构 `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `id` int(11) NOT NULL COMMENT '照片id',
  `path` char(50) NOT NULL COMMENT '存储路径',
  `thumb` char(50) NOT NULL COMMENT '缩略图路径',
  `title` varchar(30) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '描述',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上传时间'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='图片存储表';

--
-- 转存表中的数据 `picture`
--

INSERT INTO `picture` (`id`, `path`, `thumb`, `title`, `content`, `time`) VALUES
(1, '/sdysports/Public/show_pics/01.jpg', '/sdysports/Public/show_pics/1s.jpg', '图片介绍1', NULL, '2015-08-28 10:15:38'),
(2, '/sdysports/Public/show_pics/02.jpg', '/sdysports/Public/show_pics/2s.jpg', '图片介绍1', NULL, '2015-08-28 10:15:38'),
(3, '/sdysports/Public/show_pics/03.jpg', '/sdysports/Public/show_pics/3s.jpg', '图片介绍1', NULL, '2015-08-28 10:15:38'),
(4, '/sdysports/Public/show_pics/04.jpg', '/sdysports/Public/show_pics/4s.jpg', '图片介绍1', NULL, '2015-08-28 10:15:38'),
(5, '/sdysports/Public/show_pics/05.jpg', '/sdysports/Public/show_pics/5s.jpg', '图片介绍1', NULL, '2015-08-28 10:15:38'),
(6, '/sdysports/Public/show_pics/06.jpg', '/sdysports/Public/show_pics/6s.jpg', '图片介绍1', NULL, '2015-08-28 10:15:38');

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(10) unsigned NOT NULL COMMENT '视频id',
  `cid` int(11) NOT NULL COMMENT '栏目id',
  `title` varchar(50) NOT NULL COMMENT '视频标题',
  `path` char(100) NOT NULL COMMENT '视频地址',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `intro` text NOT NULL COMMENT '视频简介',
  `hit` int(11) NOT NULL COMMENT '点击量'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='视频存储表';

--
-- 转存表中的数据 `video`
--

INSERT INTO `video` (`id`, `cid`, `title`, `path`, `time`, `intro`, `hit`) VALUES
(1, 13, '思迪亚与NBA巨星的邂逅：巨星教你打篮球', '/sdysports/Public/videos/video_demo1.mp4', '2015-08-27 17:12:31', '新手在场上如何做好防守？最后三分钟应如何调节心态？如何避免被绝杀?', 0),
(2, 13, '思迪亚与NBA巨星的邂逅：巨星教你打篮球', '/sdysports/Public/videos/video_demo1.mp4', '2015-08-27 17:12:40', '新手在场上如何做好防守？最后三分钟应如何调节心态？如何避免被绝杀?', 0),
(3, 13, '思迪亚与NBA巨星的邂逅：巨星教你打篮球', '/sdysports/Public/videos/video_demo1.mp4', '2015-08-27 17:12:43', '新手在场上如何做好防守？最后三分钟应如何调节心态？如何避免被绝杀?', 0),
(4, 13, '思迪亚与NBA巨星的邂逅：巨星教你打篮球', '/sdysports/Public/videos/video_demo1.mp4', '2015-08-27 17:12:45', '新手在场上如何做好防守？最后三分钟应如何调节心态？如何避免被绝杀?', 0),
(5, 13, '思迪亚与NBA巨星的邂逅：巨星教你打篮球', '/sdysports/Public/videos/video_demo1.mp4', '2015-08-27 17:13:03', '新手在场上如何做好防守？最后三分钟应如何调节心态？如何避免被绝杀?', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`), ADD KEY `title` (`title`), ADD KEY `cid` (`cid`), ADD FULLTEXT KEY `content` (`content`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `column`
--
ALTER TABLE `column`
  ADD PRIMARY KEY (`cid`), ADD KEY `fid` (`fid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`), ADD KEY `name` (`name`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图序号',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `coach`
--
ALTER TABLE `coach`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '教练id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `column`
--
ALTER TABLE `column`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目id',AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '学员id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '照片id',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '视频id',AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
