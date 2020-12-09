-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-12-04 00:11:57
-- �������汾�� 5.7.31-log
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
-- �洢����
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `number` ()  READS SQL DATA
begin 
select count(studentid) ��������
from student
where sex='��';
select count(studentid) Ů������
 from student
where sex='Ů';
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- ��Ľṹ `classes`
--

CREATE TABLE `classes` (
  `classname` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�༶��',
  `college` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ժϵ',
  `teacher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '����Ա',
  `number` char(3) COLLATE utf8_unicode_ci NOT NULL COMMENT '����'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- ת����е����� `classes`
--

INSERT INTO `classes` (`classname`, `college`, `teacher`, `number`) VALUES
('Ӣ��', '����ѧԺ', 'Ԭ��Ȩ', '1'),
('�������ѧ�뼼��', '�����ѧԺ', '��ѩ��', '3'),
('�������', '�����ѧԺ', '����', '1');

-- --------------------------------------------------------

--
-- ��Ľṹ `course`
--

CREATE TABLE `course` (
  `courseno` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�γ̺�',
  `coursename` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '�γ���',
  `coursetype` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�γ�����',
  `credit` smallint(6) NOT NULL COMMENT 'ѧ��',
  `ctime` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ѧʱ',
  `ctest` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '���˷�ʽ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- ת����е����� `course`
--

INSERT INTO `course` (`courseno`, `coursename`, `coursetype`, `credit`, `ctime`, `ctest`) VALUES
('92001', '���ݽṹ', '����', 4, '64', '����'),
('93501', 'C����', '����', 4, '64', '����'),
('93502', '����ϵͳ', '����', 3, '64', '����'),
('96601', '��Ȼ��ѧ', 'ѡ��', 2, '32', '���Ͽ���'),
('96602', '�й�����ʷ', 'ѡ��', 2, '32', '���Ͽ���');

-- --------------------------------------------------------

--
-- ��Ľṹ `grade`
--

CREATE TABLE `grade` (
  `studentid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ѧ��',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
  `courseno` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�γ̺�',
  `fraction` int(11) NOT NULL COMMENT '�ɼ�'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- ת����е����� `grade`
--

INSERT INTO `grade` (`studentid`, `name`, `courseno`, `fraction`) VALUES
('10011', '�', '93501', 92),
('10012', '��԰԰', '93501', 94);

-- --------------------------------------------------------

--
-- ��Ľṹ `rewards`
--

CREATE TABLE `rewards` (
  `studentid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ѧ��',
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
  `situation` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�������'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- ת����е����� `rewards`
--

INSERT INTO `rewards` (`studentid`, `name`, `situation`) VALUES
('10011', '�', 'һ�Ƚ�'),
('10012', '��԰԰', '�صȽ�'),
('10013', '����', '���Ƚ�');

-- --------------------------------------------------------

--
-- ��Ľṹ `student`
--

CREATE TABLE `student` (
  `studentid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ѧ��',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
  `sex` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '�Ա�',
  `college` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ժϵ',
  `major` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'רҵ',
  `classname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�༶��',
  `birthday` date NOT NULL COMMENT '��������',
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�绰����',
  `nation` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
  `origo` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
  `politics` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '������ò',
  `idnumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '���֤����',
  `admissiondate` date NOT NULL COMMENT '��ѧʱ��',
  `homeadd` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '��ͥ��ַ',
  `zipcode` int(10) NOT NULL COMMENT '��������'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- ת����е����� `student`
--

INSERT INTO `student` (`studentid`, `name`, `sex`, `college`, `major`, `classname`, `birthday`, `telephone`, `nation`, `origo`, `politics`, `idnumber`, `admissiondate`, `homeadd`, `zipcode`) VALUES
('10011', '�', '��', '�����ѧԺ', '�������ѧ�뼼��', '�������ѧ�뼼��', '1999-06-01', '18709817933', '��', '�Ĵ�', '��Ա', '511323199906012146', '2018-09-01', '�Ĵ�ʡ�ɶ��гɻ���', 637805),
('10012', '��԰԰', 'Ů', '�����ѧԺ', '�������ѧ�뼼��', '�������ѧ�뼼��', '2000-06-01', '15505613132', '��', '�Ĵ�', '��Ա', '511323200006017879', '2018-09-01', '�Ĵ�ʡ�ɶ��гɻ���', 637801),
('10013', '����', '��', '�����ѧԺ', '�������', '�������', '1999-04-25', '18709816512', '��', '�Ĵ�', '��Ա', '511323199807246214', '2018-09-01', '�Ĵ�ʡ�ɶ��������', 637801),
('10014', '����', 'Ů', '����ѧԺ', 'Ӣ��רҵ', 'Ӣ��רҵ', '1999-11-01', '15462235110', '��', '�Ĵ�', '��Ա', '511323199911015612', '2018-09-01', '�Ĵ�ʡ�ϳ���˳����', 637821),
('10015', '��˼', 'Ů', '�����ѧԺ', '�������ѧ�뼼��', '�������ѧ�뼼��', '1999-11-25', '18752364809', '��', '�Ĵ�', '��Ա', '511323199911254563', '0208-09-01', '�Ĵ�ʡ�ϳ���˳����', 638702);

--
-- ������ `student`
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
-- �滻��ͼ�Ա�鿴 `student_view`
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
-- ��Ľṹ `teacher`
--

CREATE TABLE `teacher` (
  `teacherid` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ְ����',
  `name` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '����',
  `sex` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '�Ա�',
  `rank` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ְ��',
  `faculty` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ժϵ',
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�绰����'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- ת����е����� `teacher`
--

INSERT INTO `teacher` (`teacherid`, `name`, `sex`, `rank`, `faculty`, `telephone`) VALUES
('101', '��ѩ��', '��', '����', '�����ѧԺ', '18283940706'),
('102', '����', 'Ů', '������', '�����ѧԺ', '18304715216'),
('103', 'Ԭ��Ȩ', '��', '����', '����ѧԺ', '13162017891'),
('104', '�����', '��', '��ʦ', '�����ѧԺ', '13165280978'),
('105', '������', 'Ů', '��ʦ', '�����ѧԺ', '18256032456');

-- --------------------------------------------------------

--
-- ��Ľṹ `user`
--

CREATE TABLE `user` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '�û���',
  `password` int(11) NOT NULL COMMENT '����',
  `power` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ȩ��'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- ת����е����� `user`
--

INSERT INTO `user` (`username`, `password`, `power`) VALUES
('10011', 123, 'ѧ��'),
('10012', 123, 'ѧ��'),
('10013', 123, 'ѧ��'),
('101', 123, '��ʦ'),
('102', 123, '��ʦ'),
('admin', 123, '����Ա');

-- --------------------------------------------------------

--
-- ��ͼ�ṹ `student_view`
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
