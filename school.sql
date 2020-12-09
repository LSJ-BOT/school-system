-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-12-04 00:11:57
-- 服务器版本： 5.7.31-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gb2312 */;

--
-- Database: `school`
--

DELIMITER $$
--
-- 存储过程
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `number` ()  READS SQL DATA
begin 
select count(studentid) 男生人数
from student
where sex='男';
select count(studentid) 女生人数
 from student
where sex='女';
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `classes`
--

CREATE TABLE `classes` (
  `classname` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '班级名',
  `college` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '院系',
  `teacher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '辅导员',
  `number` char(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '人数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `classes`
--

INSERT INTO `classes` (`classname`, `college`, `teacher`, `number`) VALUES
('英语', '外语学院', '袁大权', '1'),
('计算机科学与技术', '计算机学院', '张雪峰', '3'),
('软件工程', '计算机学院', '何丽', '1');

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `courseno` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程号',
  `coursename` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程名',
  `coursetype` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程类型',
  `credit` smallint(6) NOT NULL COMMENT '学分',
  `ctime` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '学时',
  `ctest` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '考核方式'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`courseno`, `coursename`, `coursetype`, `credit`, `ctime`, `ctest`) VALUES
('92001', '数据结构', '必修', 4, '64', '笔试'),
('93501', 'C语言', '必修', 4, '64', '笔试'),
('93502', '操作系统', '必修', 3, '64', '笔试'),
('96601', '自然科学', '选修', 2, '32', '线上考试'),
('96602', '中国近代史', '选修', 2, '32', '线上考试');

-- --------------------------------------------------------

--
-- 表的结构 `grade`
--

CREATE TABLE `grade` (
  `studentid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '学号',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `courseno` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程号',
  `fraction` int(11) NOT NULL COMMENT '成绩'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `grade`
--

INSERT INTO `grade` (`studentid`, `name`, `courseno`, `fraction`) VALUES
('10011', '李华', '93501', 92),
('10012', '王园园', '93501', 94);

-- --------------------------------------------------------

--
-- 表的结构 `rewards`
--

CREATE TABLE `rewards` (
  `studentid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '学号',
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `situation` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '奖惩情况'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `rewards`
--

INSERT INTO `rewards` (`studentid`, `name`, `situation`) VALUES
('10011', '李华', '一等奖'),
('10012', '王园园', '特等奖'),
('10013', '王明', '二等奖');

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `studentid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '学号',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `sex` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '性别',
  `college` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '院系',
  `major` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '专业',
  `classname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '班级名',
  `birthday` date NOT NULL COMMENT '出生日期',
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '电话号码',
  `nation` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '民族',
  `origo` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '籍贯',
  `politics` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '政治面貌',
  `idnumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '身份证号码',
  `admissiondate` date NOT NULL COMMENT '入学时间',
  `homeadd` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '家庭地址',
  `zipcode` int(10) NOT NULL COMMENT '邮政编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`studentid`, `name`, `sex`, `college`, `major`, `classname`, `birthday`, `telephone`, `nation`, `origo`, `politics`, `idnumber`, `admissiondate`, `homeadd`, `zipcode`) VALUES
('10011', '李华', '男', '计算机学院', '计算机科学与技术', '计算机科学与技术', '1999-06-01', '18709817933', '汉', '四川', '团员', '511323199906012146', '2018-09-01', '四川省成都市成华区', 637805),
('10012', '王园园', '女', '计算机学院', '计算机科学与技术', '计算机科学与技术', '2000-06-01', '15505613132', '汉', '四川', '团员', '511323200006017879', '2018-09-01', '四川省成都市成华区', 637801),
('10013', '王明', '男', '计算机学院', '软件工程', '软件工程', '1999-04-25', '18709816512', '汉', '四川', '团员', '511323199807246214', '2018-09-01', '四川省成都市武侯区', 637801),
('10014', '刘敏', '女', '外语学院', '英语专业', '英语专业', '1999-11-01', '15462235110', '汉', '四川', '团员', '511323199911015612', '2018-09-01', '四川省南充市顺庆区', 637821),
('10015', '李思', '女', '计算机学院', '计算机科学与技术', '计算机科学与技术', '1999-11-25', '18752364809', '汉', '四川', '团员', '511323199911254563', '0208-09-01', '四川省南充市顺庆区', 638702);

--
-- 触发器 `student`
--
DELIMITER $$
CREATE TRIGGER `number_delete` AFTER DELETE ON `student` FOR EACH ROW begin
update classes set classes.number=classes.number-1 where classname=old.classname;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `number_insert` AFTER INSERT ON `student` FOR EACH ROW begin
update classes set number=number+1 where classname=new.classname;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 替换视图以便查看 `student_view`
-- (See below for the actual view)
--
CREATE TABLE `student_view` (
`studentid` varchar(20)
,`name` varchar(20)
,`sex` char(10)
,`college` varchar(20)
,`major` varchar(20)
,`classname` varchar(20)
,`birthday` date
,`telephone` varchar(20)
,`nation` varchar(10)
,`origo` varchar(10)
,`politics` varchar(10)
,`idnumber` varchar(20)
,`admissiondate` date
,`homeadd` varchar(20)
,`zipcode` int(10)
);

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `teacherid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '职工号',
  `name` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `sex` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '性别',
  `rank` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '职称',
  `faculty` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '院系',
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '电话号码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`teacherid`, `name`, `sex`, `rank`, `faculty`, `telephone`) VALUES
('101', '张雪峰', '男', '教授', '计算机学院', '18283940706'),
('102', '何丽', '女', '副教授', '计算机学院', '18304715216'),
('103', '袁大权', '男', '教授', '外语学院', '13162017891'),
('104', '阳金程', '男', '教师', '计算机学院', '13165280978'),
('105', '刘春燕', '女', '教师', '计算机学院', '18256032456');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` int(11) NOT NULL COMMENT '密码',
  `power` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`username`, `password`, `power`) VALUES
('10011', 123, '学生'),
('10012', 123, '学生'),
('10013', 123, '学生'),
('101', 123, '老师'),
('102', 123, '老师'),
('admin', 123, '管理员');

-- --------------------------------------------------------

--
-- 视图结构 `student_view`
--
DROP TABLE IF EXISTS `student_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_view`  AS  select `student`.`studentid` AS `studentid`,`student`.`name` AS `name`,`student`.`sex` AS `sex`,`student`.`college` AS `college`,`student`.`major` AS `major`,`student`.`classname` AS `classname`,`student`.`birthday` AS `birthday`,`student`.`telephone` AS `telephone`,`student`.`nation` AS `nation`,`student`.`origo` AS `origo`,`student`.`politics` AS `politics`,`student`.`idnumber` AS `idnumber`,`student`.`admissiondate` AS `admissiondate`,`student`.`homeadd` AS `homeadd`,`student`.`zipcode` AS `zipcode` from `student` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classname`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseno`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`studentid`,`courseno`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
