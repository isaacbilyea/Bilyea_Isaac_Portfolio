-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2025 at 04:31 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: portfolio
--

-- --------------------------------------------------------

--
-- Table structure for table contacts
--

CREATE TABLE contacts (
  id int UNSIGNED NOT NULL,
  name varchar(200) NOT NULL,
  email varchar(300) NOT NULL,
  message varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table contacts
--

INSERT INTO contacts (id, name, email, message) VALUES
(1, 'Jacob Bob', 'bobjacob@gmail.com', 'Hello my name is Jacob Bob but you can just call me Bob Jacob.'),
(2, 'Samantha Ross', 'samross122@gmail.com', 'What is your favourite colour?'),
(3, 'Ronny Lee', 'ronnster93@hotmail.ca', 'How about that weather, eh?'),
(20, 'Contact Form', 'contactform@gmail.com', 'This is a test message from the contact form'),
(139, 'TEST', 'test@gmail.com', 'AJAX IS WORKING'),
(140, 'test', 'test@gmail.com', 'Still working'),
(141, 'eeeeeeeeeeeeee', 'isaacbilyea@gmail.com', 'eeeeeeeeeeeeeeeee'),
(142, 'qweqew', 'isaacbilyea@gmail.com', 'qweqew'),
(143, 'qweqew', 'test@gmail.com', 'qewqwe'),
(144, 'qweqwe', 'test@gmail.com', 'ee'),
(145, 'TEST', 'test@gmail.com', 'ttt'),
(146, 'tt', 'test@gmail.com', 'eqwe'),
(147, 'TEST', 'test@gmail.com', 'tt'),
(148, 'TEST', 'test@gmail.com', 'tt'),
(149, 't', 'test@gmail.com', 'tt'),
(150, 'TEST', 'test@gmail.com', 'test'),
(151, 'TEST', 'test@gmail.com', 'tt'),
(152, 'TEST', 'test@gmail.com', 'test'),
(153, 'TEST', 'test@gmail.com', 'test'),
(154, 'TEST', 'test@gmail.com', 'test'),
(155, 'TEST', 'test@gmail.com', 'test'),
(156, 'TEST', 'test@gmail.com', 'test'),
(157, 'TEST', 'test@gmail.com', 'test'),
(158, 'TEST', 'test@gmail.com', 'test'),
(159, 'TEST', 'test@gmail.com', 'test'),
(160, 'TEST', 'test@gmail.com', 'test'),
(161, 'test', 'test@gmail.com', 'test'),
(162, 'TEST', 'test@gmail.com', 's'),
(163, 'TEST', 'test@gmail.com', 'test'),
(164, 'TEST', 'test@gmail.com', 'test'),
(165, 'TEST', 'test@gmail.com', 't'),
(166, 'TEST', 'test@gmail.com', 'test'),
(167, 'TEST', 'test@gmail.com', 't'),
(168, 'TEST', 'test@gmail.com', 'test'),
(169, 'TEST', 'test@gmail.com', 't'),
(170, 'TEST', 'test@gmail.com', 'tesdt'),
(171, 'TEST', 'test@gmail.com', 't'),
(172, 'TEST', 'test@gmail.com', 'test'),
(173, 'TEST', 'test@gmail.com', 'test'),
(174, 'TEST', 'test@gmail.com', 't'),
(175, 'test', 'test@gmail.com', 't'),
(176, 'test', 'test@gmail.com', 't'),
(177, 't', 'test@gmail.com', 't'),
(178, 'TEST', 'test@gmail.com', 't'),
(179, 'TEST', 'test@gmail.com', 't'),
(180, 'TEST', 'test@gmail.com', 'test'),
(181, 'TEST', 'test@gmail.com', 'test'),
(182, 'TEST', 'test@gmail.com', 't'),
(183, 'test', 'test@gmail.com', 't'),
(184, 'tr', 'test@gmail.com', 't'),
(185, 'TEST', 'test@gmail.com', 't'),
(186, 'TEST', 'test@gmail.com', 't'),
(187, 'TEST', 'test@gmail.com', 'te'),
(188, 'TEST', 'test@gmail.com', 't'),
(189, 'TEST', 'test@gmail.com', 't'),
(190, 'TEST', 'test@gmail.com', 't'),
(191, 'TEST', 'test@gmail.com', 't'),
(192, 'TEST', 'test@gmail.com', 't'),
(193, 'TEST', 'test@gmail.com', 'test'),
(194, 'TEST', 'test@gmail.com', 't'),
(195, 'TEST', 'test@gmail.com', 't'),
(196, 'TEST', 'test@gmail.com', 't'),
(197, 'TEST', 'test@gmail.com', 'test'),
(198, 'TEST', 'test@gmail.com', 'test'),
(199, 'test', 'test@gmail.com', 'tes'),
(200, 'TEST', 'test@gmail.com', 't'),
(201, 'TEST', 'test@gmail.com', 't'),
(202, 'TEST', 'test@gmail.com', 't'),
(203, 'TEST', 'test@gmail.com', 't'),
(204, 'ewqeq', 'test@gmail.com', 'qweqwe'),
(205, 'TEST', 'test@gmail.com', 't'),
(206, 'TEST', 'test@gmail.com', 'tqwe'),
(207, 'TEST', 'test@gmail.com', 't'),
(208, 'TEST', 'test@gmail.com', 't'),
(209, 'TEST', 'test@gmail.com', 't'),
(210, 'TEST', 'test@gmail.com', 't'),
(211, 'TEST', 'test@gmail.com', 't'),
(212, 'TEST', 'test@gmail.com', 't'),
(213, 'TEST', 'test@gmail.com', 't'),
(214, 'TEST', 'test@gmail.com', 't'),
(215, 'TEST', 'test@gmail.com', 't'),
(216, 'TEST', 'test@gmail.com', 't'),
(217, 'TEST', 'test@gmail.com', 't'),
(218, 'TEST', 'test@gmail.com', 't'),
(219, 'TEST', 'test@gmail.com', 't'),
(220, 'TEST', 'test@gmail.com', 't'),
(221, 'TEST', 'test@gmail.com', 't'),
(222, 'TEST', 'test@gmail.com', 't'),
(223, 'TEST', 'test@gmail.com', 't'),
(224, 'TEST', 'test@gmail.com', 't'),
(225, 'test', 'test@gmail.com', 'test'),
(226, 'TEST', 'test@gmail.com', 't'),
(227, 'TEST', 'test@gmail.com', 't'),
(228, 'TEST', 'test@gmail.com', 't'),
(229, 'TEST', 'test@gmail.com', 't'),
(230, 'TEST', 'test@gmail.com', 't'),
(231, 'TEST', 'test@gmail.com', 't'),
(232, 'TEST', 'test@gmail.com', 't'),
(233, 'TEST', 'test@gmail.com', 't'),
(234, 'TEST', 'test@gmail.com', 't'),
(235, 'TEST', 'test@gmail.com', 't'),
(236, 'TEST', 'test@gmail.com', 't'),
(237, 'TEST', 'test@gmail.com', 't'),
(238, 'TEST', 'test@gmail.com', 't'),
(239, 'TEST', 'test@gmail.com', 't'),
(240, 'TEST', 'test@gmail.com', 't'),
(241, 'TEST', 'test@gmail.com', 't'),
(242, 'TEST', 'test@gmail.com', 't'),
(243, 'TEST', 'test@gmail.com', 't'),
(244, 'TEST', 'test@gmail.com', 't'),
(245, 'TEST', 'test@gmail.com', 't'),
(246, 'TEST', 'test@gmail.com', 't'),
(247, 'TEST', 'test@gmail.com', 't'),
(248, 'TEST', 'test@gmail.com', 't'),
(249, 'TEST', 'test@gmail.com', 't'),
(250, 'TEST', 'test@gmail.com', 't'),
(251, 'TEST', 'test@gmail.com', 't'),
(252, 'TEST', 'test@gmail.com', 't'),
(253, 'TEST', 'test@gmail.com', 't'),
(254, 'TEST', 'test@gmail.com', 't'),
(255, 'TEST', 'test@gmail.com', 't'),
(256, 'TEST', 'test@gmail.com', 't'),
(257, 'TEST', 'test@gmail.com', 't'),
(258, 'TEST', 'test@gmail.com', 't'),
(259, 'TEST', 'test@gmail.com', 't'),
(260, 'TEST', 'test@gmail.com', 't'),
(261, 'TEST', 'test@gmail.com', 't'),
(262, 'TEST', 'test@gmail.com', 't'),
(263, 'TEST', 'test@gmail.com', 't'),
(264, 'TEST', 'test@gmail.com', 't'),
(265, 'TEST', 'test@gmail.com', 't'),
(266, 'TEST', 'test@gmail.com', 't'),
(267, 'TEST', 'test@gmail.com', 't'),
(268, 'TEST', 'test@gmail.com', 't'),
(269, 'TEST', 'test@gmail.com', 't'),
(270, 'TEST', 'test@gmail.com', 't');

-- --------------------------------------------------------

--
-- Table structure for table media_files
--

CREATE TABLE media_files (
  id int UNSIGNED NOT NULL,
  project_id int UNSIGNED NOT NULL,
  filename varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  type varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  alt varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table media_files
--

INSERT INTO media_files (id, project_id, filename, type, alt) VALUES
(1, 1, 'stride', 'image', 'stride'),
(2, 2, 'industry-night', 'image', 'industry night'),
(3, 3, 'quatro', 'image', 'quatro'),
(6, 4, 'cardinal', 'image', 'cardinal'),
(53, 28, 'image62995', 'image', 'FrameIt'),
(56, 29, 'image56688', 'image', 'Brothers in Arms'),
(57, 1, 'image47008', 'image', 'Stride'),
(58, 2, 'image62429', 'image', 'Industry Night'),
(59, 2, 'image85059', 'image', 'Industry Night'),
(60, 2, 'image46127', 'image', 'Industry Night'),
(61, 2, 'image55177', 'image', 'Industry Night'),
(62, 2, 'image76642', 'image', 'Industry Night'),
(63, 2, 'image80326', 'image', 'Industry Night'),
(64, 1, 'image93046', 'image', 'Stride'),
(65, 2, 'image14006', 'image', 'Industry Night'),
(66, 1, 'image34324', 'image', 'Stride'),
(67, 28, 'image39166', 'image', 'FrameIt'),
(68, 3, 'image25857', 'image', 'Quatro'),
(69, 28, 'image26381', 'image', 'FrameIt'),
(70, 1, 'image56879', 'image', 'Stride'),
(71, 28, 'image26494', 'image', 'FrameIt'),
(72, 28, 'image45096', 'image', 'FrameIt'),
(73, 28, 'image60318', 'image', 'FrameIt'),
(74, 28, 'image60225', 'image', 'FrameIt'),
(75, 28, 'image97769', 'image', 'FrameIt'),
(76, 28, 'image96509', 'image', 'FrameIt'),
(77, 28, 'image84763', 'image', 'FrameIt'),
(78, 28, 'image89225', 'image', 'FrameIt'),
(79, 28, 'image54767', 'image', 'FrameIt'),
(80, 28, 'image73770', 'image', 'FrameIt'),
(81, 28, 'image71513', 'image', 'FrameIt'),
(82, 28, 'image73658', 'image', 'FrameIt'),
(83, 28, 'image33631', 'image', 'FrameIt'),
(84, 28, 'image95181', 'image', 'FrameIt'),
(85, 29, 'image66420', 'image', 'Brothers in Arms'),
(86, 1, 'image99210', 'image', 'Stride'),
(87, 28, 'image47284', 'image', 'FrameIt'),
(88, 29, 'image13286', 'image', 'Brothers in Arms'),
(89, 29, 'image49297', 'image', 'Brothers in Arms'),
(90, 29, 'image13839', 'image', 'Brothers in Arms'),
(91, 2, 'image46712', 'image', 'Industry Night'),
(92, 29, 'image89770', 'image', 'Brothers in Arms'),
(93, 29, 'image78618', 'image', 'Brothers in Arms'),
(94, 29, 'image20075', 'image', 'Brothers in Arms'),
(95, 29, 'image83678', 'image', 'Brothers in Arms'),
(96, 29, 'image72163', 'image', 'Brothers in Arms'),
(97, 29, 'image12029', 'image', 'Brothers in Arms'),
(98, 29, 'image41820', 'image', 'Brothers in Arms'),
(99, 29, 'image33252', 'image', 'Brothers in Arms'),
(100, 29, 'image38598', 'image', 'Brothers in Arms'),
(101, 29, 'image74183', 'image', 'Brothers in Arms'),
(102, 29, 'image41547', 'image', 'Brothers in Arms'),
(103, 29, 'image30377', 'image', 'Brothers in Arms'),
(104, 1, 'image80639', 'image', 'Stride'),
(105, 1, 'image46734', 'image', 'Stride'),
(106, 2, 'image48045', 'image', 'Industry Night'),
(107, 2, 'image61846', 'image', 'Industry Night'),
(108, 3, 'image83283', 'image', 'Quatro'),
(109, 4, 'image39128', 'image', 'Cardinal'),
(110, 29, 'image39880', 'image', 'Brothers in Arms'),
(111, 29, 'image41012', 'image', 'Brothers in Arms'),
(112, 29, 'image74090', 'image', 'Brothers in Arms'),
(115, 1, 'image92810', 'image', 'Stride'),
(116, 2, 'image52130', 'image', 'Industry Night'),
(117, 28, 'image22473', 'image', 'FrameIt'),
(118, 1, 'image36197', 'image', 'Stride'),
(119, 2, 'image96882', 'image', 'Industry Night'),
(120, 28, 'image96014', 'image', 'FrameIt'),
(122, 28, 'image89061', 'image', 'FrameIt'),
(125, 29, 'image13878', 'image', 'Brothers in Arms'),
(128, 1, 'image70296', 'image', 'Stride'),
(129, 1, 'image20235', 'image', 'Stride'),
(130, 30, 'image15234', 'image', 'Dad vs AI'),
(135, 31, 'image32244', 'image', 'GBHH'),
(136, 29, 'image98911', 'image', 'Brothers in Arms'),
(137, 31, 'image73845', 'image', 'GBHH'),
(138, 31, 'image25287', 'image', 'GBHH'),
(139, 31, 'image29194', 'image', 'GBHH'),
(140, 31, 'image25745', 'image', 'GBHH'),
(141, 31, 'image30627', 'image', 'GBHH'),
(142, 1, 'image90561', 'image', 'Stride'),
(143, 28, 'image62396', 'image', 'FrameIt'),
(144, 29, 'image68868', 'image', 'Brothers in Arms'),
(145, 30, 'image15281', 'image', 'Dad vs AI'),
(146, 31, 'image30606', 'image', 'GBHH'),
(147, 31, 'image39437', 'image', 'GBHH'),
(148, 31, 'image20957', 'image', 'GBHH'),
(149, 31, 'image91490', 'image', 'GBHH'),
(150, 31, 'image24139', 'image', 'GBHH'),
(151, 31, 'image94686', 'image', 'GBHH'),
(152, 31, 'image27048', 'image', 'GBHH'),
(153, 31, 'image17196', 'image', 'GBHH'),
(154, 31, 'image97560', 'image', 'GBHH'),
(155, 31, 'image19250', 'image', 'GBHH'),
(156, 31, 'image95087', 'image', 'GBHH'),
(157, 31, 'image91541', 'image', 'GBHH'),
(158, 31, 'image23978', 'image', 'GBHH'),
(159, 31, 'image93979', 'image', 'GBHH'),
(160, 31, 'image34520', 'image', 'GBHH'),
(161, 31, 'image98765', 'image', 'GBHH'),
(162, 1, 'image82829', 'image', 'Stride'),
(163, 30, 'image27344', 'image', 'Dad vs AI'),
(164, 31, 'image90480', 'image', 'GBHH'),
(165, 31, 'image39150', 'image', 'GBHH'),
(166, 29, 'image90366', 'image', 'Brothers in Arms'),
(167, 30, 'image17822', 'image', 'Dad vs AI'),
(168, 30, 'image43136', 'image', 'Dad vs AI'),
(169, 30, 'image82908', 'image', 'Dad vs AI'),
(170, 30, 'image33816', 'image', 'Dad vs AI'),
(171, 30, 'image31068', 'image', 'Dad vs AI');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

CREATE TABLE projects (
  id int UNSIGNED NOT NULL,
  title varchar(150) NOT NULL,
  description varchar(500) NOT NULL,
  cover_image varchar(500) NOT NULL,
  colour varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  overview varchar(2000) NOT NULL,
  summary varchar(1700) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  problems varchar(2500) NOT NULL,
  research varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  process varchar(2500) NOT NULL,
  final_product varchar(2300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  reflection varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  link varchar(200) DEFAULT NULL,
  github_link varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  project_order int NOT NULL,
  visible tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table projects
--

INSERT INTO projects (id, title, description, cover_image, colour, overview, summary, problems, research, process, final_product, reflection, link, github_link, project_order, visible) VALUES
(1, 'Stride', 'Web Development | Design', 'stride.svg', '#afaa47', '<p>For this project, I created a promotional web page for Stride, a conceptual brand of wireless sport earbuds I created. I designed the Stride logo and earbuds and modeled them in Cinema 4D. This project included branding, motion design, 3D modeling, and web development. <br><br>Using the 3D model, I created an X-ray view of the internal components and animations of its functionality. These features were embedded into an interactive 3D AR slider and vertical scrolling animations to make the website engaging and immersive.</p>', '<p><strong>Year:</strong> 2024 <br><strong>Role:</strong> Brand Designer, Product Designer, and Front-End Developer <br><strong>Deliverables:</strong> Logo Design, 3D Models, Animations, AR Object, Promotional Webpage <br><strong>Development Tools:</strong> HTML5, CSS3 (Sass), JavaScript, GSAP&nbsp;<br><strong>Design Tools:</strong> Photoshop, Illustrator, After Effects, Cinema 4D</p>', '<p>1. <strong>Brand Creation:</strong> Stride logo and earbuds design needed to be sleek, sporty, and modern. I went through multiple iterations to design for the target audience. <br><br>2. <strong>3D Model Detailing:</strong> Modeling the earbuds and case with detailed realistic proportions in Cinema 4D was tough. I referenced real earbuds and cases. <br><br>3. <strong>AR Integration:</strong> I used Google&rsquo;s Model Viewer to embed the AR object with interactive hotspots, dynamically adding images and descriptions for key features. <br><br>4. <strong>Animations:</strong> Animations like the dynamic hotspots and scroll-driven effects required the use of GSAP. <br><br>5. <strong>Responsive Design:</strong> I used media queries and CSS Grid to design a webpage that looked and worked the same across all devices.</p>', '<p>I researched brands like AirPods, Jaybird, and Beats to help design the Stride earbuds. I looked at their branding, design elements, and promotional strategies. <br><br>This research inspired Stride&rsquo;s bold athletic branding with a clean modern design that appeals to active users.</p>', '<p>1. <strong>Branding &amp; Concept:</strong> I designed the Stride logo and the earbuds and charging case design. <br><br>2. <strong>3D Modeling &amp; Animation:</strong> I modeled and textured the earbuds and charging case in Cinema 4D. I did an X-ray view to show the internal components and animations to show functionality. <br><br>3. <strong>AR Integration:</strong> Exported 3D models as AR objects with interactive hotspots, dynamically adding content using JavaScript to display feature details on the promotional page. <br><br>4. <strong>Web Development:</strong> I built a responsive promotional page with custom animations using GSAP. Features:</p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"105\">\r\n<p class=\"\" data-start=\"2\" data-end=\"105\"><strong data-start=\"2\" data-end=\"19\" data-is-only-node=\"\">X-ray Slider:</strong> Implemented an interactive slider to reveal the internal components of the earbuds.</p>\r\n</li>\r\n<li class=\"\" data-start=\"106\" data-end=\"237\">\r\n<p class=\"\" data-start=\"108\" data-end=\"237\"><strong data-start=\"108\" data-end=\"136\" data-is-only-node=\"\">AR Object with Hotspots:</strong> Integrated an augmented reality feature with clickable hotspots to highlight key product features.</p>\r\n</li>\r\n<li class=\"\" data-start=\"238\" data-end=\"371\">\r\n<p class=\"\" data-start=\"240\" data-end=\"371\"><strong data-start=\"240\" data-end=\"274\" data-is-only-node=\"\">Vertical Scrolling Animations:</strong> Used image sequences to create smooth, scroll-driven animations for an engaging user experience.</p>\r\n</li>\r\n</ul>', '<p>The Stride project launched a fresh, sporty, and innovative brand with the following deliverables:</p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"80\">\r\n<p class=\"\" data-start=\"2\" data-end=\"80\"><span style=\"font-size: 12pt;\"><strong data-start=\"2\" data-end=\"25\" data-is-only-node=\"\">Responsive Website:</strong> Developed with dynamic animations and interactivity.</span></p>\r\n</li>\r\n<li class=\"\" style=\"font-size: 12pt;\" data-start=\"81\" data-end=\"163\">\r\n<p class=\"\" data-start=\"83\" data-end=\"163\"><span style=\"font-size: 12pt;\"><strong data-start=\"83\" data-end=\"111\" data-is-only-node=\"\">AR Object with Hotspots:</strong> Showcased key features with interactive elements.</span></p>\r\n</li>\r\n<li class=\"\" style=\"font-size: 12pt;\" data-start=\"164\" data-end=\"244\">\r\n<p class=\"\" data-start=\"166\" data-end=\"244\"><span style=\"font-size: 12pt;\"><strong data-start=\"166\" data-end=\"190\" data-is-only-node=\"\">High-Quality Assets:</strong> Included images and media to enhance visual appeal.</span></p>\r\n</li>\r\n<li class=\"\" style=\"font-size: 12pt;\" data-start=\"245\" data-end=\"336\">\r\n<p class=\"\" data-start=\"247\" data-end=\"336\"><span style=\"font-size: 12pt;\"><strong data-start=\"247\" data-end=\"269\" data-is-only-node=\"\">Custom Animations:</strong> Implemented X-ray slider and scroll-driven effects for engagement.</span></p>\r\n</li>\r\n</ul>', '<p>Together all these pieces make a nice promotional page that shows off the Stride brand. The Stride project was a great opportunity to combine branding, 3D modeling, and web development in one project. Key takeaways:&nbsp;</p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"82\">\r\n<p class=\"\" data-start=\"2\" data-end=\"82\">I enhanced my skills in Cinema 4D, creating detailed 3D models and animations.</p>\r\n</li>\r\n<li class=\"\" data-start=\"83\" data-end=\"172\">\r\n<p class=\"\" data-start=\"85\" data-end=\"172\">I improved my proficiency with GSAP for advanced animations and interactive features.</p>\r\n</li>\r\n<li class=\"\" data-start=\"173\" data-end=\"252\">\r\n<p class=\"\" data-start=\"175\" data-end=\"252\">I developed a stronger understanding of balancing branding and functionality.</p>\r\n</li>\r\n</ul>\r\n<p>This project challenged me and I&rsquo;m happy with the result, a nice and professional promotional page that represents the Stride brand.</p>', 'https://stride.isaacbilyea.com/', 'https://github.com/isaacbilyea/Bilyea_Isaac_Earbuds', 5, 1),
(2, 'Industry Night', 'Web Development', 'industry-night.svg', '#B5262D', '<p>For this group project we built a responsive, mobile-first website to promote Industry Night, an event where graduating students from the Web Development and the Interactive Media Design programs at Fanshawe College have the opportunity to show off their skills and achievements to potential employers, industry professionals, and peers. <br><br>We worked together to design, develop, and implement the website. <br>Highlighted features and focus areas included: the About Us page, student portfolios, testimonials, and contact forms. The web development focused on the seamless experience of these features across mobile, tablet, and desktop. <br>We used Trello for task management and Discord for communication.</p>', '<p><strong>Year:</strong> 2024 <br><strong>Team Members:</strong><span style=\"white-space: pre-wrap;\"><span style=\"white-space: pre-wrap;\"><br></span></span></p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"47\">\r\n<p class=\"\" data-start=\"2\" data-end=\"47\"><strong data-start=\"2\" data-end=\"20\" data-is-only-node=\"\">Web Designers:</strong> Bryle Flores, Apapat Juntarattanakamol</p>\r\n</li>\r\n<li class=\"\" data-start=\"48\" data-end=\"91\">\r\n<p class=\"\" data-start=\"50\" data-end=\"91\"><strong data-start=\"50\" data-end=\"70\" data-is-only-node=\"\">Motion Designer:</strong> Bernardo Macapagal</p>\r\n</li>\r\n<li class=\"\" data-start=\"92\" data-end=\"133\">\r\n<p class=\"\" data-start=\"94\" data-end=\"133\"><strong data-start=\"94\" data-end=\"118\" data-is-only-node=\"\">Front-End Developer:</strong> Isaac Bilyea</p>\r\n</li>\r\n</ul>\r\n<p><strong>Development Tools:</strong> HTML5, CSS3, JavaScript, GSAP</p>\r\n<div class=\"notranslate\" style=\"all: initial;\">&nbsp;</div>\r\n<div class=\"notranslate\" style=\"all: initial;\">&nbsp;</div>', '<p>1. <strong>Dynamic Content Rendering:</strong> Dynamically generating student portfolios and testimonials using arrays and objects. <br><br>2. <strong>Consistency Across Deliverables:</strong> Design and functionality across web layouts, motion graphics, and branding required communication and regular reviews. Trello helped us keep track of tasks and consistency. <br><br>3. <strong>Responsive Design Challenges:</strong> Seamless user experience across mobile, tablet, and desktop required lots of testing and optimization of layouts, interactive elements, and animations. <br><br>4. <strong>Time Management:</strong> With video production, layout design, and development all happening at the same time, meeting deadlines required a lot of planning and prioritization.</p>', '<p>To match our design with Fanshawe College&rsquo;s branding, we looked at the Fanshawe College homepage. This helped us stay consistent with the college&rsquo;s visual identity, tone, and user experience guidelines. <br><br>We also researched other event and portfolio showcase websites for layout ideas, interactive features, and ways to present student work.</p>', '<p>1. <strong>Planning &amp; Collaboration:</strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"35\" data-end=\"121\">\r\n<p class=\"\" data-start=\"37\" data-end=\"121\">We used Trello to assign tasks and track progress and Discord for daily check-ins.</p>\r\n</li>\r\n<li class=\"\" data-start=\"122\" data-end=\"197\">\r\n<p class=\"\" data-start=\"124\" data-end=\"197\">Initial brainstorming sessions to outline the site structure and roles.</p>\r\n</li>\r\n</ul>\r\n<p>2. <strong>Design &amp; Motion Graphics:</strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"234\" data-end=\"365\">\r\n<p class=\"\" data-start=\"236\" data-end=\"365\">Web Designers (Bryle, Music) created mobile-first layouts in Adobe XD, focusing on a clear hierarchy and responsive design.</p>\r\n</li>\r\n<li class=\"\" data-start=\"366\" data-end=\"485\">\r\n<p class=\"\" data-start=\"368\" data-end=\"485\">Motion Designer (Bernardo) created a 10&ndash;15 second promo reel to introduce the site and set a professional tone.</p>\r\n</li>\r\n</ul>\r\n<p>3. <strong>Web Development:</strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"513\" data-end=\"582\">\r\n<p class=\"\" data-start=\"515\" data-end=\"582\">As the Web Developer, I built a responsive mobile-first site.</p>\r\n</li>\r\n<li class=\"\" data-start=\"583\" data-end=\"706\">\r\n<p class=\"\" data-start=\"585\" data-end=\"627\">I used JavaScript to dynamically render:</p>\r\n<ul data-start=\"630\" data-end=\"706\">\r\n<li class=\"\" data-start=\"630\" data-end=\"673\">\r\n<p class=\"\" data-start=\"632\" data-end=\"673\">A list of student portfolios with links</p>\r\n</li>\r\n<li class=\"\" data-start=\"676\" data-end=\"706\">\r\n<p class=\"\" data-start=\"678\" data-end=\"706\">Testimonials on page load.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p>4. <strong>Testing &amp; Optimization:</strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"741\" data-end=\"871\">\r\n<p class=\"\" data-start=\"743\" data-end=\"871\">We tested the site for responsiveness and performance on multiple devices and browsers and refined layouts and code as needed.</p>\r\n</li>\r\n<li class=\"\" data-start=\"872\" data-end=\"951\">\r\n<p class=\"\" data-start=\"874\" data-end=\"951\">All files were managed with GitHub for version control and file management.</p>\r\n</li>\r\n</ul>', '<p>The final Industry Night website showcases the skills and achievements of the Interactive Media Design program and its students. Features include:</p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"122\">\r\n<p class=\"\" data-start=\"2\" data-end=\"122\"><strong data-start=\"2\" data-end=\"25\" data-is-only-node=\"\">Responsive Website:</strong> Featured dynamic student portfolios and testimonials and a mobile menu with custom animations.</p>\r\n</li>\r\n<li class=\"\" data-start=\"123\" data-end=\"228\">\r\n<p class=\"\" data-start=\"125\" data-end=\"228\"><strong data-start=\"125\" data-end=\"140\" data-is-only-node=\"\">Promo Reel:</strong> A 10&ndash;15 second video introducing the program and event, integrated into the homepage.</p>\r\n</li>\r\n<li class=\"\" data-start=\"229\" data-end=\"336\">\r\n<p class=\"\" data-start=\"231\" data-end=\"336\"><strong data-start=\"231\" data-end=\"249\" data-is-only-node=\"\">Event Details:</strong> Information about Industry Night, purpose, activities, and networking opportunities.</p>\r\n</li>\r\n<li class=\"\" data-start=\"337\" data-end=\"460\">\r\n<p class=\"\" data-start=\"339\" data-end=\"460\"><strong data-start=\"339\" data-end=\"363\" data-is-only-node=\"\">Program Information:</strong> Highlights of the Interactive Media Design program, client projects, and student achievements.</p>\r\n</li>\r\n</ul>\r\n<p>Together, all these elements create a polished promotional site that effectively showcases the Industry Night event and the Interactive Media Design program.</p>', '<p>This project was a great learning experience in teamwork and collaboration. Key takeaways:</p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"116\">\r\n<p class=\"\" data-start=\"2\" data-end=\"116\">Learned to collaborate efficiently using Trello for task management and Discord for real-time communication.</p>\r\n</li>\r\n<li class=\"\" data-start=\"117\" data-end=\"227\">\r\n<p class=\"\" data-start=\"119\" data-end=\"227\">Gained a deeper understanding of JavaScript for implementing dynamic content and interactive features.</p>\r\n</li>\r\n<li class=\"\" data-start=\"228\" data-end=\"336\">\r\n<p class=\"\" data-start=\"230\" data-end=\"336\">Improved skills in creating responsive, mobile-first websites that function seamlessly across devices.</p>\r\n</li>\r\n</ul>\r\n<p>Working as a team, we created a professional and engaging website for Industry Night, combining our skills and ideas effectively. While aligning design and functionality posed some challenges, communication and teamwork ensured a cohesive result.</p>', 'https://industry-night.isaacbilyea.com/', 'https://github.com/isaacbilyea/FJMB_Student_Showcase', 6, 1),
(3, 'Quatro', 'Web Development | Design', 'quatro.svg', '#DA5A2E', '<p>For this project, I rebranded Quatro, a defunct soda brand, to align with modern design standards. I developed a new brand identity, a responsive three-page website, a promotional video, and a set of branding materials. The goal of the rebrand was to relaunch Quatro as a fun, vibrant brand that resonates with today&rsquo;s audience while preserving the playful and bold energy of its 1980s origins. <br><br>The website was built as a mobile-first, user-friendly platform using semantic HTML, CSS, and JavaScript. It included dynamic content and subtle animations to enhance user engagement. The polished promotional video highlighted Quatro\'s new identity, combining nostalgic energy with a modern look.</p>', '<p><strong>Year:</strong> 2024 <br><strong>Role:</strong> Brand Designer, Product Designer, and Front-End Developer<br><strong>Deliverables:</strong> Logo Design, Three-Page Responsive Website, Promotional Video, Branding Materials <br><strong>Development Tools:</strong> HTML5, CSS3, JavaScript <br><strong>Design Tools:</strong> Adobe XD, Photoshop, Illustrator, After Effects, Cinema4D</p>', '<p><strong>1. Combining Nostalgia with Modern Design:</strong> Capturing the essence of Quatro&rsquo;s 80s history while modernizing the brand required careful design decisions. I balanced bold colors with clean typography to bring out its retro vibe. <br><br><strong>2. Consistency Across Deliverables:</strong> Getting the website, video, and branding materials to work together as one campaign required a unified design with the help of a detailed style guide. <br><br><strong>3. Responsive Design for Dynamic Content:</strong> Getting the three-page website to work across mobile, tablet, and desktop required iterative testing and CSS tweaks.</p>', '<p>To help me with the rebrand, I researched both Quatro&rsquo;s history and current trends in the soda market. I analyzed modern soda companies such as Olipop, Zevia, Poppi, and Culture Pop, drawing inspiration from their vibrant branding and messaging. <br><br>This research helped shape Quatro&rsquo;s new identity. The campaign emphasized playfulness and a fresh, revitalized image for the brand.</p>', '<p><strong>1. Branding &amp; Concept Development:</strong> I redesigned the Quatro logo and brand identity, combining nostalgic colors and design elements with a modern twist to reflect the 1980s but resonate with today&rsquo;s audience. <br><br><strong>2. Wireframing &amp; Prototyping:</strong> Using Adobe XD, I created responsive wireframes and prototypes for the three-page website. <br><br><strong>3. Website Development:</strong> I built a responsive mobile-first website using HTML5, CSS3, and JavaScript, following best practices. <br><br><strong>4. Promotional Video:</strong> Using After Effects and Premiere Pro, I created a commercial video showcasing the new Quatro identity: playful and bold.</p>', '<p>The Quatro rebrand introduced the soda to a modern audience through the following deliverables: </p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"37\">\r\n<p class=\"\" data-start=\"2\" data-end=\"37\">Three-Page Responsive Website</p>\r\n</li>\r\n<li class=\"\" data-start=\"38\" data-end=\"76\">\r\n<p class=\"\" data-start=\"40\" data-end=\"76\">High-Quality Promotional Video</p>\r\n</li>\r\n<li class=\"\" data-start=\"77\" data-end=\"117\">\r\n<p class=\"\" data-start=\"79\" data-end=\"117\">Comprehensive Branding Materials</p>\r\n</li>\r\n</ul>\r\n<p>These deliverables worked together to relaunch Quatro as a vibrant and fun brand, capturing the essence of its nostalgic past while appealing to today&rsquo;s audience.</p>', '<p>The Quatro rebrand was a fun project that forced me to combine branding, web development, and motion design into one campaign. Key takeaways: </p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"75\">\r\n<p class=\"\" data-start=\"2\" data-end=\"75\">Improved my proficiency in Adobe XD, creating responsive prototypes</p>\r\n</li>\r\n<li class=\"\" data-start=\"76\" data-end=\"147\">\r\n<p class=\"\" data-start=\"78\" data-end=\"147\">Advanced my skills in building dynamic and interactive webpages</p>\r\n</li>\r\n<li class=\"\" data-start=\"148\" data-end=\"193\">\r\n<p class=\"\" data-start=\"150\" data-end=\"193\">Enhanced my video production techniques</p>\r\n</li>\r\n</ul>\r\n<p>Overall, this project taught me how to balance aesthetics and functionality while managing multiple deliverables. The result is a polished campaign that modernizes the Quatro brand.</p>', NULL, 'https://github.com/isaacbilyea/Bilyea_Isaac_FIP', 5, 0),
(4, 'Cardinal', 'Design', 'cardinal.svg', '#B97B56', '<p>For this project, I designed a promotional poster for Cardinal, a cabinetry company that specializes in residential and industrial cabinetry. The poster was for designers to use during client meetings with retail and builder clients. It needed to align with Cardinal&rsquo;s brand while appealing to a wide audience, ranging from high-end to mid-range clients. <br><br>Working with brand assets and illustrations from Studio Mondu, I created a design that stayed true to Cardinal&rsquo;s professional brand while being flexible enough to work for a wide range of clients.</p>', '<p><strong>Year:</strong> 2024 <br><strong>Role:</strong> Graphic Designer <br><strong>Deliverables:</strong> Promotional Posters <br><strong>Design Tools:</strong> InDesign, Photoshop, Illustrator</p>', '<p>1. <strong>Balancing Client Demographics:</strong> The poster had to appeal to both high-end and mid-range clients. Achieving this required careful selection of imagery, typography, and design elements to not alienate either group.<br><br>2. <strong>Staying on Brand:</strong> Ensuring the design fit with Cardinal&rsquo;s brand while was a challenge. This required closely referencing existing assets and the company&rsquo;s website for consistency.<br><br>3. <strong>Working with Pre-Existing Assets:</strong> Using assets from Studio Mondu while keeping the design cohesive and unique required creative problem-solving, especially when adapting illustrations and visuals to fit the layout.</p>', '<p>To keep the design on brand, I referenced Cardinal&rsquo;s website and other branding materials. These resources informed the layout, typography, and color palette to ensure consistency with the company&rsquo;s visual identity. <br><br>I also considered Cardinal&rsquo;s target audience, balancing sophistication and approachability to appeal to their wide range of clients.</p>', '<p>1. <strong>Planning &amp; Concept Development:</strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"42\" data-end=\"106\">\r\n<p class=\"\" data-start=\"44\" data-end=\"106\">Reviewed the brand assets and illustrations from Studio Mondu.</p>\r\n</li>\r\n<li class=\"\" data-start=\"110\" data-end=\"144\">\r\n<p class=\"\" data-start=\"112\" data-end=\"144\">Created initial layout concepts.</p>\r\n</li>\r\n</ul>\r\n<p>2. <strong data-start=\"149\" data-end=\"170\" data-is-only-node=\"\">Design Execution:</strong></p>\r\n<ul data-start=\"174\" data-end=\"264\">\r\n<li class=\"\" data-start=\"174\" data-end=\"264\">\r\n<p class=\"\" data-start=\"176\" data-end=\"264\">Used InDesign for the main layout, combining typography, imagery, and branding elements.</p>\r\n</li>\r\n</ul>\r\n<p>3. <strong data-start=\"269\" data-end=\"296\" data-is-only-node=\"\">Feedback &amp; Refinements:</strong></p>\r\n<ul data-start=\"300\" data-end=\"410\" data-is-last-node=\"\">\r\n<li class=\"\" data-start=\"300\" data-end=\"410\">\r\n<p class=\"\" data-start=\"302\" data-end=\"410\">Incorporated feedback to fine-tune the design and ensure it communicated Cardinal&rsquo;s quality and versatility.</p>\r\n</li>\r\n</ul>', '<p>The final poster featured a clean and professional design that reflected the Cardinal brand. It combined modern style with wide appeal, ensuring it resonated with a wide range of clients, from high-end to budget-conscious. The poster highlighted Cardinal&rsquo;s craftsmanship and expertise, serving as an effective tool for designers to promote the company during client meetings.</p>', '<p>This project challenged me to adapt to an established brand identity while ensuring the design resonated with a diverse audience. Key takeaways include: </p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"89\">\r\n<p class=\"\" data-start=\"2\" data-end=\"89\">I improved my InDesign skills, refining my approach to creating professional layouts.</p>\r\n</li>\r\n<li class=\"\" data-start=\"90\" data-end=\"200\">\r\n<p class=\"\" data-start=\"92\" data-end=\"200\">I learned to balance visual consistency with flexibility to appeal to a wide range of client demographics.</p>\r\n</li>\r\n<li class=\"\" data-start=\"201\" data-end=\"294\">\r\n<p class=\"\" data-start=\"203\" data-end=\"294\">I gained experience integrating existing brand assets into a cohesive and impactful design.</p>\r\n</li>\r\n</ul>\r\n<p>This project was a valuable opportunity to apply my design skills in a real-world scenario.</p>', NULL, '', 6, 0),
(28, 'FrameIt', 'Web Development | Design', 'image57123.svg', 'var(--dot-color)', '<p>For this project, I created FrameIt, a dynamic digital memory board that enables users to create personalized memory boards with photos, polaroids, sticky notes, and stickers. This project showcased object-oriented JavaScript implementation, modular development, and bundling with Parcel.js. <br><br>Using a class-based architecture, I developed an intuitive drag-and-drop interface powered by GSAP animations to make the application engaging and interactive. FrameIt demonstrates practical application of OOP principles while offering users a creative and responsive platform for digital memory creation.</p>', '<p data-pm-slice=\"1 1 []\"><strong>Year:</strong> 2025<br><strong>Role:</strong> Front-End Developer<br><strong>Deliverables:</strong> Single-page OOP JavaScript application with responsive UI, modular architecture, and interactive animations<br><strong>Development Tools:</strong> HTML5, CSS3 (Sass), JavaScript (ES6+ OOP), Parcel.js, GSAP</p>', '<p class=\"\" data-start=\"76\" data-end=\"256\">1.<strong data-start=\"76\" data-end=\"95\"> Class Structure</strong>: Creating a Media class that was both flexible and extensible was challenging, as it needed to support multiple media types while keeping the code maintainable.</p>\r\n<p class=\"\" data-start=\"261\" data-end=\"429\"><br>2.<strong data-start=\"261\" data-end=\"283\"> Z-Index Management</strong>: Ensuring draggable elements stacked correctly without interfering with user interactions was tricky, especially when handling overlapping media.</p>\r\n<p class=\"\" data-start=\"434\" data-end=\"605\"><br>3.<strong data-start=\"434\" data-end=\"454\"> Modal Complexity</strong>: Building a reusable modal system that could handle different media types while maintaining smooth animations and transitions required careful design.</p>\r\n<p class=\"\" data-start=\"610\" data-end=\"799\"><br>4.<strong data-start=\"610\" data-end=\"638\"> Responsive Interactivity</strong>: Making sure the interface remained fully interactive and visually consistent across all devices presented challenges in layout adjustments and user experience.&nbsp;</p>', '<p>I studied Canva&rsquo;s interface to understand how it handles element placement, media organization, and user interactions. <br><br>This helped me refine the drag-and-drop functionality and overall user experience for a smoother, more intuitive design.</p>', '<p class=\"\" data-start=\"3\" data-end=\"238\">1.<strong data-start=\"3\" data-end=\"24\" data-is-only-node=\"\"> OOP Architecture:</strong> I designed a base Media class with shared functionality and developed specialized child classes for different media types, including framed photos, polaroids with filters, sticky notes, and draggable stickers.</p>\r\n<p class=\"\" data-start=\"243\" data-end=\"481\"><br>2.<strong data-start=\"243\" data-end=\"268\" data-is-only-node=\"\"> Interactive Features:</strong> I used GSAP Draggable for smooth movement, built a modular modal system for adding new media, and designed custom animations for dynamic media placement.</p>\r\n<p class=\"\" data-start=\"486\" data-end=\"671\"><br>3.<strong data-start=\"486\" data-end=\"510\" data-is-only-node=\"\"> Modular Development:</strong> I structured the JavaScript into reusable modules for media creation, modal controls, and animation utilities. I used Parcel.js for efficient module bundling.</p>\r\n<p class=\"\" data-start=\"676\" data-end=\"806\"><br>4.<strong data-start=\"676\" data-end=\"698\" data-is-only-node=\"\"> Responsive Design:</strong> I took a mobile-first approach using Sass and optimized drag interactions for both touch and desktop users.</p>', '<p class=\"\" data-start=\"0\" data-end=\"67\">FrameIt delivers an engaging and interactive experience with:</p>\r\n<ul data-start=\"69\" data-end=\"711\" data-is-last-node=\"\" data-is-only-node=\"\">\r\n<li class=\"\" data-start=\"69\" data-end=\"178\">\r\n<p class=\"\" data-start=\"71\" data-end=\"178\"><strong data-start=\"71\" data-end=\"99\">Drag-and-Drop Interface:</strong> Users can freely move and position media elements for a personalized layout.</p>\r\n</li>\r\n<li class=\"\" data-start=\"179\" data-end=\"307\">\r\n<p class=\"\" data-start=\"181\" data-end=\"307\"><strong data-start=\"181\" data-end=\"222\">Photo Frames &amp; Polaroid-Style Photos:</strong> Users can add framed images or apply filters for a vintage look.</p>\r\n</li>\r\n<li class=\"\" data-start=\"308\" data-end=\"420\">\r\n<p class=\"\" data-start=\"310\" data-end=\"420\"><strong data-start=\"310\" data-end=\"344\">Customizable Notes &amp; Stickers:</strong> Interactive sticky notes and draggable emoji stickers enhance creativity.</p>\r\n</li>\r\n<li class=\"\" data-start=\"421\" data-end=\"517\">\r\n<p class=\"\" data-start=\"423\" data-end=\"517\"><strong data-start=\"423\" data-end=\"445\">Smooth Animations:</strong> GSAP-powered transitions make interactions feel seamless and dynamic.</p>\r\n</li>\r\n<li class=\"\" data-start=\"518\" data-end=\"615\">\r\n<p class=\"\" data-start=\"520\" data-end=\"615\"><strong data-start=\"520\" data-end=\"548\">Fully Responsive Design:</strong> The interface adapts smoothly across mobile and desktop devices.</p>\r\n</li>\r\n<li class=\"\" data-start=\"616\" data-end=\"711\">\r\n<p class=\"\" data-start=\"618\" data-end=\"711\"><strong data-start=\"618\" data-end=\"644\">Optimized Performance:</strong> Parcel.js ensures efficient module bundling for faster load times.</p>\r\n</li>\r\n</ul>', '<p class=\"\" data-start=\"133\" data-end=\"177\">This project deepened my understanding of:</p>\r\n<ul data-start=\"179\" data-end=\"379\">\r\n<li class=\"\" data-start=\"179\" data-end=\"231\">\r\n<p class=\"\" data-start=\"181\" data-end=\"231\">JavaScript OOP principles and class inheritance.</p>\r\n</li>\r\n<li class=\"\" data-start=\"232\" data-end=\"289\">\r\n<p class=\"\" data-start=\"234\" data-end=\"289\">Module bundling with Parcel.js for maintainable code.</p>\r\n</li>\r\n<li class=\"\" data-start=\"290\" data-end=\"337\">\r\n<p class=\"\" data-start=\"292\" data-end=\"337\">GSAP animations to enhance user experience.</p>\r\n</li>\r\n<li class=\"\" data-start=\"338\" data-end=\"379\">\r\n<p class=\"\" data-start=\"340\" data-end=\"379\">Optimizing cross-device interactions.</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"381\" data-end=\"401\"><strong data-start=\"381\" data-end=\"399\">Key Takeaways:</strong></p>\r\n<ul data-start=\"402\" data-end=\"647\">\r\n<li class=\"\" data-start=\"402\" data-end=\"467\">\r\n<p class=\"\" data-start=\"404\" data-end=\"467\">The importance of a well-structured class inheritance system.</p>\r\n</li>\r\n<li class=\"\" data-start=\"468\" data-end=\"536\">\r\n<p class=\"\" data-start=\"470\" data-end=\"536\">Efficient use of modular JavaScript for clean and reusable code.</p>\r\n</li>\r\n<li class=\"\" data-start=\"537\" data-end=\"574\">\r\n<p class=\"\" data-start=\"539\" data-end=\"574\">Optimizing animation performance.</p>\r\n</li>\r\n<li class=\"\" data-start=\"575\" data-end=\"647\">\r\n<p class=\"\" data-start=\"577\" data-end=\"647\">Balancing design and functionality for an intuitive user experience.</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"649\" data-end=\"884\">FrameIt successfully combines OOP, modular JavaScript, and interactive animations into a polished web application. This project challenged me, and I&rsquo;m proud of how it turned out - an engaging and functional app that I&rsquo;m excited to share.</p>', 'https://frame-it.isaacbilyea.com/', 'https://github.com/isaacbilyea/Bilyea_Isaac_OOP_JS.git', 3, 1),
(29, 'Brothers in Arms', 'Web Development', 'image41035.svg', '#00a563', '<p class=\"\" data-start=\"0\" data-end=\"381\">For this project, we developed a digital campaign and responsive website for the Brothers in Arms Memorial, commissioned by the Srishti Foundation. The site honours the shared sacrifices of Indian and Canadian soldiers during World War I and aims to raise awareness, encourage donations for the construction of a stone memorial, and preserve this important historical collaboration.</p>\r\n<p class=\"\" data-start=\"383\" data-end=\"651\"><br>The website was designed to be mobile-first, with an intuitive interface, compelling visuals, and an engaging narrative. Interactive features, including donation buttons and educational content, were integrated to drive engagement and inspire support for the memorial.</p>', '<p class=\"\" data-start=\"0\" data-end=\"81\"><strong>Year:</strong> 2025<strong data-start=\"0\" data-end=\"11\"><br>Client:</strong> Srishti Foundation<br data-start=\"47\" data-end=\"50\" data-is-only-node=\"\"><strong data-start=\"83\" data-end=\"100\">Deliverables:</strong> Branding, Responsive Website, Promotional Materials<br><strong data-start=\"297\" data-end=\"314\">Team Members:<br></strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"0\" data-end=\"60\">\r\n<p class=\"\" data-start=\"2\" data-end=\"60\"><strong>Timothy Bryle Flores</strong> - Graphic Designer, Motion Designer</p>\r\n</li>\r\n<li class=\"\" data-start=\"61\" data-end=\"138\">\r\n<p class=\"\" data-start=\"63\" data-end=\"138\"><strong>Apapat Juntarattanakamol</strong> - Graphic Designer, Social Media Content Creator</p>\r\n</li>\r\n<li class=\"\" data-start=\"139\" data-end=\"194\">\r\n<p class=\"\" data-start=\"141\" data-end=\"194\"><strong>Bernardo Macapagal</strong> - Graphic Designer, Videographer</p>\r\n</li>\r\n<li class=\"\" data-start=\"195\" data-end=\"254\">\r\n<p class=\"\" data-start=\"197\" data-end=\"254\"><strong>Milana Gabbassova</strong> - Project Manager, Back-End Developer</p>\r\n</li>\r\n<li class=\"\" data-start=\"288\" data-end=\"344\">\r\n<p class=\"\" data-start=\"290\" data-end=\"344\"><strong>Isaac Bilyea</strong> - Front-End Developer, Back-End Developer</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"0\" data-end=\"81\"><strong data-start=\"156\" data-end=\"178\">Development Tools:</strong> HTML5, CSS3 (Sass), JavaScript (Vue.js), PHP (Lumen), MySQL, GSAP</p>', '<p class=\"\" data-start=\"54\" data-end=\"182\">1.<strong data-start=\"54\" data-end=\"78\"> Historical Accuracy:</strong> Ensuring all content was factually correct while maintaining an engaging presentation for the audience.<br><strong data-start=\"187\" data-end=\"216\"><br></strong>2.<strong data-start=\"187\" data-end=\"216\"> Seamless User Experience:</strong> Designing a responsive, mobile-first website with smooth navigation and accessibility features.<br><br>3.<strong data-start=\"317\" data-end=\"342\"> Interactive Features:</strong> Implementing dynamic, engaging content like animations and interactive elements to enhance user interaction.<br><br>4.<strong data-start=\"456\" data-end=\"481\"> Branding Consistency:</strong> Aligning the website and promotional materials with the historical theme and the Srishti Foundation&rsquo;s vision.&nbsp;</p>', '<p class=\"\" data-start=\"0\" data-end=\"62\">To ensure an authentic and compelling campaign, we researched:</p>\r\n<ul data-start=\"64\" data-end=\"510\" data-is-last-node=\"\" data-is-only-node=\"\">\r\n<li class=\"\" data-start=\"64\" data-end=\"205\">\r\n<p class=\"\" data-start=\"66\" data-end=\"205\"><strong data-start=\"66\" data-end=\"89\">Historical Records:</strong> In-depth study of WWI battles where Indian and Canadian soldiers fought together, ensuring accurate representation.</p>\r\n</li>\r\n<li class=\"\" data-start=\"206\" data-end=\"392\">\r\n<p class=\"\" data-start=\"208\" data-end=\"392\"><strong data-start=\"208\" data-end=\"243\">Collaborative History Projects:</strong> Analysis of initiatives like the Chinese Canadian Museum to understand how to balance presenting both sides of a shared history in a meaningful way.</p>\r\n</li>\r\n<li class=\"\" data-start=\"393\" data-end=\"510\">\r\n<p class=\"\" data-start=\"395\" data-end=\"510\"><strong data-start=\"395\" data-end=\"412\">UX/UI Trends:</strong> Exploration of modern trends for history and donation-based websites to optimize user experience.</p>\r\n</li>\r\n</ul>', '<p class=\"\" data-start=\"156\" data-end=\"185\">1.<strong data-start=\"156\" data-end=\"185\"> Wireframes &amp; Prototyping:&nbsp;<br></strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"36\" data-end=\"188\">\r\n<p class=\"\" data-start=\"38\" data-end=\"188\">Bryle, Music, and Bernardo designed the initial wireframes in Figma with Rita&rsquo;s guidance, ensuring a user-friendly structure and flow for the website.</p>\r\n</li>\r\n<li class=\"\" data-start=\"192\" data-end=\"344\">\r\n<p class=\"\" data-start=\"194\" data-end=\"344\">I used these wireframes as the foundation to guide the development of the site, ensuring the design was effectively translated into the final product.<br><br></p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"524\" data-end=\"559\">2.<strong data-start=\"524\" data-end=\"559\"><strong data-start=\"156\" data-end=\"185\">&nbsp;</strong>Mobile-First Responsive Design</strong></p>\r\n<ul data-start=\"388\" data-end=\"511\">\r\n<li class=\"\" data-start=\"388\" data-end=\"511\">\r\n<p class=\"\" data-start=\"390\" data-end=\"511\">Built a mobile-first, responsive website using HTML5, CSS3, and SASS to ensure a seamless user experience across devices.<br><br></p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"691\" data-end=\"724\">3.<strong data-start=\"691\" data-end=\"724\"><strong data-start=\"156\" data-end=\"185\">&nbsp;</strong>Form Integration with Vue.js:</strong></p>\r\n<ul>\r\n<li class=\"\" data-start=\"553\" data-end=\"674\">\r\n<p class=\"\" data-start=\"555\" data-end=\"674\">Implemented a user sign-up form using Vue.js to dynamically handle form submission and display success or error states.</p>\r\n</li>\r\n<li class=\"\" data-start=\"678\" data-end=\"777\">\r\n<p class=\"\" data-start=\"680\" data-end=\"777\">The form communicates with the Lumen API to store user information in an appropriate MySQL table.</p>\r\n</li>\r\n<li class=\"\" data-start=\"781\" data-end=\"896\">\r\n<p class=\"\" data-start=\"783\" data-end=\"896\">Validated form inputs (e.g., emails, usernames, and passwords) and updated the view accordingly using JavaScript.<br><br></p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"1076\" data-end=\"1120\">4.&nbsp;<strong data-start=\"1076\" data-end=\"1120\">Content Management System (CMS):</strong></p>\r\n<ul data-start=\"167\" data-end=\"697\">\r\n<li class=\"\" data-start=\"167\" data-end=\"327\">\r\n<p class=\"\" data-start=\"169\" data-end=\"327\">Designed and styled the CMS interface for content management, ensuring easy updates to text, images, and videos through a user-friendly admin panel.</p>\r\n</li>\r\n</ul>', '<p class=\"\" data-start=\"92\" data-end=\"253\">The<strong> </strong>Brothers in Arms Memorial website combines historical storytelling with interactive features to honour Indian and Canadian soldiers. Key elements include:</p>\r\n<ul data-start=\"255\" data-end=\"825\">\r\n<li class=\"\" data-start=\"255\" data-end=\"340\">\r\n<p class=\"\" data-start=\"257\" data-end=\"340\"><strong data-start=\"257\" data-end=\"292\">Mobile-First Responsive Design:</strong> Ensures seamless navigation across all devices.</p>\r\n</li>\r\n<li class=\"\" data-start=\"344\" data-end=\"465\">\r\n<p class=\"\" data-start=\"346\" data-end=\"465\"><strong data-start=\"346\" data-end=\"379\">Historical Content:</strong> Highlights key battles, awardees, and personal letters from the front lines.</p>\r\n</li>\r\n<li class=\"\" data-start=\"469\" data-end=\"583\">\r\n<p class=\"\" data-start=\"471\" data-end=\"583\"><strong data-start=\"471\" data-end=\"504\">Client Documentary Interview:</strong> A recorded interview offering deeper insight into the memorial&rsquo;s significance.</p>\r\n</li>\r\n<li class=\"\" data-start=\"587\" data-end=\"706\">\r\n<p class=\"\" data-start=\"589\" data-end=\"706\"><strong data-start=\"589\" data-end=\"624\">Branding &amp; Social Media Assets:</strong> Custom branding and social media content to raise awareness and drive engagement.</p>\r\n</li>\r\n<li class=\"\" data-start=\"710\" data-end=\"825\">\r\n<p class=\"\" data-start=\"712\" data-end=\"825\"><strong data-start=\"712\" data-end=\"736\">Marketing Campaigns:</strong> Infographics, print ads, and other materials designed to generate support and donations.</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"827\" data-end=\"957\">Together, these components create an engaging and informative site that commemorates the shared history while promoting awareness.</p>', '<p>This project was a great opportunity for me to learn and grow. Key takeaways:</p>\r\n<ul data-start=\"167\" data-end=\"697\">\r\n<li class=\"\" data-start=\"167\" data-end=\"327\">\r\n<p class=\"\" data-start=\"169\" data-end=\"327\"><strong data-start=\"169\" data-end=\"189\">Learning Vue.js:</strong> This was my first time using Vue.js, and I gained a deeper understanding of how to manage dynamic content and build interactive features.</p>\r\n</li>\r\n<li class=\"\" data-start=\"329\" data-end=\"484\">\r\n<p class=\"\" data-start=\"331\" data-end=\"484\"><strong data-start=\"331\" data-end=\"358\">Working with Lumen API:</strong> I developed my skills in integrating the Lumen API, allowing me to handle data seamlessly between the front-end and back-end.</p>\r\n</li>\r\n<li class=\"\" data-start=\"486\" data-end=\"697\">\r\n<p class=\"\" data-start=\"488\" data-end=\"697\"><strong data-start=\"488\" data-end=\"525\">Collaborating across disciplines:</strong> I learned how to collaborate effectively with motion graphics and design teams to ensure our website\'s design and functionality worked together to tell a compelling story.</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"699\" data-end=\"944\">This project was a challenging yet rewarding experience for our team, and we\'re proud of the final product - a professional, educational, and engaging website that commemorates the shared history of Indian and Canadian soldiers.</p>', 'https://isaacbilyea.ca/', 'https://github.com/isaacbilyea/FiveAlive_client_project.git', 1, 1),
(30, 'Dad vs AI', 'Web Development | Design', 'dadvsai.svg', '#3f87ee', '<p class=\"\" data-start=\"193\" data-end=\"458\">For this project, I created Dad vs AI, an interactive web app where users guess whether a joke was written by a dad or generated by AI. The app combines playful design, frontend development using Vue.js, and backend data management with a custom-built REST API.<br><br>The project focused on delivering a smooth, animated experience with real-time feedback using GSAP and AJAX. Users can browse, and contribute jokes, all within a responsive single-page interface.</p>', '<p><strong data-start=\"686\" data-end=\"695\">Year:</strong> 2025<br data-start=\"700\" data-end=\"703\"><strong data-start=\"703\" data-end=\"712\">Role:</strong> Web Designer, Front-End Developer, API Developer<br data-start=\"760\" data-end=\"763\"><strong data-start=\"763\" data-end=\"780\">Deliverables:</strong> Interactive Web App, Custom REST API<br data-start=\"853\" data-end=\"856\"><strong data-start=\"856\" data-end=\"878\">Development Tools:</strong> HTML5, CSS3 (Sass), JavaScript (Vue.js), PHP (Lumen), MySQL, GSAP</p>', '<p class=\"\" data-start=\"1073\" data-end=\"1229\">1. <strong data-start=\"1073\" data-end=\"1095\">Dynamic Game Flow:</strong> The game needed to smoothly transition between jokes, animate each reveal, and track scoring in real time without reloading the page. <br><br>2.&nbsp;<strong data-start=\"1234\" data-end=\"1265\">Asynchronous Data Handling:</strong> Fetching jokes, loading joke details, and updating the joke list on the fly - all needed to work fluidly without breaking the UI.<br><br>3. <strong data-start=\"1574\" data-end=\"1596\">Responsive Layout:</strong> Designing an interface that worked seamlessly from mobile to desktop required thoughtful layout and interaction planning.<br><br>4. <strong data-start=\"1723\" data-end=\"1746\">User Contributions:</strong> Implementing a joke submission system meant building forms with error handling, validation, and instant database updates via the API.</p>', '<p>I researched casual game interfaces like Sporcle to shape the interactive flow. I also reviewed joke formats and tone, comparing AI-generated humor with dad jokes to ensure the jokes felt believable and the game was challenging.</p>', '<p class=\"\" data-start=\"2322\" data-end=\"2506\">1. <strong data-start=\"2322\" data-end=\"2357\">Planning &amp; Concept Development: </strong>I mapped out the game flow and UI components using Figma. I also set up the project structure for Vue and designed the backend database schema.<br><br>2. <strong data-start=\"2511\" data-end=\"2536\">Frontend Development: </strong>Built the guessing game in Vue.js using the Options API. Used GSAP&rsquo;s TextPlugin to animate joke delivery and transitions. Developed a responsive layout with Sass, with visual feedback for game results and scoring.<br><br>3. <strong data-start=\"2760\" data-end=\"2784\">Backend Development: </strong>Created a custom Lumen REST API with endpoints to fetch jokes, get joke details, and submit new entries. Populated the MySQL database with a mix of dad jokes and AI-generated content.<br><br>4. <strong data-start=\"2978\" data-end=\"3006\">AJAX &amp; State Management: </strong>Used Fetch API to handle asynchronous data retrieval and updates. Managed component states like loading, score tracking, and modal displays for joke details.<br><br>5. <strong data-start=\"3174\" data-end=\"3200\">Animations &amp; Feedback: </strong>Implemented GSAP for smooth entrance/exit animations and joke reveal effects. Included loading states and error messages for better UX.</p>', '<p class=\"\" data-start=\"3370\" data-end=\"3463\">The final Dad vs AI project resulted in a playful, engaging app with these core features:</p>\r\n<ul data-start=\"3465\" data-end=\"4103\">\r\n<li class=\"\" data-start=\"3465\" data-end=\"3606\">\r\n<p class=\"\" data-start=\"3467\" data-end=\"3606\"><strong data-start=\"3467\" data-end=\"3501\">Responsive Joke Guessing Game:&nbsp;</strong>Users guess the origin of jokes, get immediate feedback, and watch their scores update in real time.</p>\r\n</li>\r\n<li class=\"\" data-start=\"3608\" data-end=\"3759\">\r\n<p class=\"\" data-start=\"3610\" data-end=\"3759\"><strong data-start=\"3610\" data-end=\"3635\">Dynamic Joke Library:&nbsp;</strong>Browse jokes in a responsive grid layout, with animated modals to view joke details.</p>\r\n</li>\r\n<li class=\"\" data-start=\"3761\" data-end=\"3872\">\r\n<p class=\"\" data-start=\"3763\" data-end=\"3872\"><strong data-start=\"3763\" data-end=\"3790\">User Submission System:&nbsp;</strong>Visitors can add new jokes via a form that connects directly to the database.</p>\r\n</li>\r\n<li class=\"\" data-start=\"3874\" data-end=\"3997\">\r\n<p class=\"\" data-start=\"3876\" data-end=\"3997\"><strong data-start=\"3876\" data-end=\"3896\">Custom REST API:&nbsp;</strong>API endpoints support dynamic content fetching and updates, enabling a seamless user experience.</p>\r\n</li>\r\n<li class=\"\" data-start=\"3999\" data-end=\"4103\">\r\n<p class=\"\" data-start=\"4001\" data-end=\"4103\"><strong data-start=\"4001\" data-end=\"4027\">Polished Interactions:&nbsp;</strong>GSAP-enhanced animations bring energy to the interface and transitions.</p>\r\n</li>\r\n</ul>', '<p class=\"\" data-start=\"0\" data-end=\"244\">The Dad vs AI project was a great chance to combine my technical skills and creativity. It gave me the opportunity to work with Vue.js, build a custom API, and handle real-time data, all while making the game fun and interactive. Key takeaways:</p>\r\n<ul data-start=\"246\" data-end=\"517\">\r\n<li class=\"\" data-start=\"246\" data-end=\"314\">\r\n<p class=\"\" data-start=\"248\" data-end=\"314\">Gained hands-on experience with Vue.js and its reactive features</p>\r\n</li>\r\n<li class=\"\" data-start=\"315\" data-end=\"363\">\r\n<p class=\"\" data-start=\"317\" data-end=\"363\">Built a custom REST API with Lumen and MySQL</p>\r\n</li>\r\n<li class=\"\" data-start=\"364\" data-end=\"431\">\r\n<p class=\"\" data-start=\"366\" data-end=\"431\">Improved my real-time data handling with AJAX and the Fetch API</p>\r\n</li>\r\n<li class=\"\" data-start=\"432\" data-end=\"517\">\r\n<p class=\"\" data-start=\"434\" data-end=\"517\">Overcame challenges in synchronizing dynamic content and ensuring smooth gameplay</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"519\" data-end=\"654\">This project pushed me to apply what I&rsquo;ve learned and I&rsquo;m proud of the polished, fun result that blends both frontend and backend work.</p>', 'https://jokes.isaacbilyea.com/', 'https://github.com/isaacbilyea/Bilyea_Isaac_Vue_AJAX.git', 3, 1);
INSERT INTO projects (id, title, description, cover_image, colour, overview, summary, problems, research, process, final_product, reflection, link, github_link, project_order, visible) VALUES
(31, 'GBHH', 'Web Development | Design', 'image98570.svg', '#E88F00', '<p class=\"\" data-start=\"191\" data-end=\"465\">For this project, I was commissioned by Sheila, a long-time client for whom I had previously maintained two WordPress sites, to create a dedicated promotional website for her cottage rental.<br><br>The project began as a Squarespace build in July 2023, just before I started the IDP program. It was my first fully client-led freelance project and played a major role in sparking my interest in web development. In April 2025, I rebuilt the entire site from scratch, coding it manually to give it more flexibility, performance, and control over deployment.<br><br>I handled the full scope of the project - from branding and layout design to coding, deployment, hosting, and DNS configuration.</p>', '<p><strong data-start=\"984\" data-end=\"996\">Year(s):</strong> 2023 (Squarespace), 2025 (Custom-coded)<br data-start=\"1036\" data-end=\"1039\"><strong data-start=\"1039\" data-end=\"1048\">Role:</strong> Web Designer, Front-End Developer<br data-start=\"1115\" data-end=\"1118\"><strong data-start=\"1118\" data-end=\"1135\">Deliverables:</strong> Fully Responsive Website, Hosting + DNS Setup, Ongoing Maintenance<br data-start=\"1202\" data-end=\"1205\"><strong data-start=\"1205\" data-end=\"1227\">Development Tools:</strong> HTML5, CSS3 (Sass), JavaScript (Vue.js), PHP, MySQL<br data-start=\"1258\" data-end=\"1261\"><strong data-start=\"1261\" data-end=\"1278\">Design Tools:</strong> Figma, Squarespace (initial version)<br data-start=\"1315\" data-end=\"1318\"><strong data-start=\"1318\" data-end=\"1339\">Deployment Tools:</strong> DirectAdmin, Porkbun, Cyberduck</p>', '<p>1.<strong data-start=\"1434\" data-end=\"1472\"> Platform Limitation (Squarespace):&nbsp;</strong>The original site needed to be up quickly, but Squarespace&rsquo;s template limitations made it difficult to implement certain features Sheila wanted, such as a custom image gallery and calendar.<br><br>2. <strong>No Previous Website for the Cottage:</strong>&nbsp;GBHH didn&rsquo;t have an online presence prior to this. I had to create everything from scratch including the layout, structure, content flow, and visual identity.<br><br>3. <strong data-start=\"1905\" data-end=\"1928\">Technical Management:&nbsp;</strong>Sheila didn&rsquo;t have experience managing domains or hosting, so I took full responsibility for the technical side of the project. This included purchasing the domain, setting up DNS records, and configuring hosting to ensure a smooth and reliable experience.<br><br>4. <strong data-start=\"2132\" data-end=\"2154\">Responsive Design:&nbsp;</strong>The site needed to work well across devices for both older users and young vacationers - requiring a clean, intuitive, mobile-friendly design.</p>', '<p>To help GBHH stand out, I checked out other Ontario cottage rental sites, mainly cottagesincanada.com,&nbsp;to see how they showcased photos and listed features. I also looked at Airbnb and VRBO to get a feel for the kind of wording and vibe that connects with people looking for a cozy getaway.</p>', '<p>1.<strong data-start=\"2797\" data-end=\"2836\"> Initial Build (2023 &ndash; Squarespace):</strong></p>\r\n<ul>\r\n<li style=\"line-height: 2;\" data-start=\"2844\" data-end=\"2913\">\r\n<p style=\"line-height: 1.4;\">Designed and launched a multi-page promotional site using Squarespace&nbsp;</p>\r\n</li>\r\n<li style=\"line-height: 1.4;\" data-start=\"2919\" data-end=\"3000\">\r\n<p>Focused on quick deployment to get the site live before peak rental season</p>\r\n</li>\r\n<li style=\"line-height: 2;\" data-start=\"3006\" data-end=\"3081\">\r\n<p style=\"line-height: 1.4;\">Created clear sections: Amenities, Rates, Gallery, Availability and Contact</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"3086\" data-end=\"3133\">2. <strong data-start=\"3086\" data-end=\"3131\">Full Custom Rebuild (2025 &ndash; Manual Code):</strong></p>\r\n<ul>\r\n<li style=\"line-height: 2;\" data-start=\"3139\" data-end=\"3221\">\r\n<p style=\"line-height: 1.4;\">Rebuilt the site from the ground up with a focus on performance and full control</p>\r\n</li>\r\n<li style=\"line-height: 1.4;\" data-start=\"3227\" data-end=\"3321\">\r\n<p>Designed a flexible layout in Figma, then developed using HTML, CSS, and JavaScript</p>\r\n</li>\r\n<li style=\"line-height: 2;\" data-start=\"3327\" data-end=\"3398\">\r\n<p style=\"line-height: 1.4;\">Implemented image optimization and lazy loading to improve load times</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"3473\" data-end=\"3500\">3. <strong data-start=\"3473\" data-end=\"3498\">Deployment &amp; Hosting:</strong></p>\r\n<ul>\r\n<li style=\"line-height: 2;\" data-start=\"3506\" data-end=\"3546\">\r\n<p style=\"line-height: 1.4;\">Registered and managed Sheila&rsquo;s domain</p>\r\n</li>\r\n<li style=\"line-height: 1.4;\" data-start=\"3552\" data-end=\"3627\">\r\n<p>Configured DNS records and migrated to a shared hosting provider</p>\r\n</li>\r\n<li style=\"line-height: 2;\" data-start=\"3633\" data-end=\"3697\">\r\n<p style=\"line-height: 1.4;\">Deployed using DirectAdmin and monitored for uptime and performance</p>\r\n</li>\r\n</ul>', '<p class=\"\" data-start=\"3726\" data-end=\"3852\">The new Grand Bend Holiday House website is a polished and professional online presence for the cottage rental, featuring:</p>\r\n<ul data-start=\"3854\" data-end=\"4460\">\r\n<li class=\"\" data-start=\"3854\" data-end=\"3984\">\r\n<p class=\"\" data-start=\"3856\" data-end=\"3984\"><strong data-start=\"3856\" data-end=\"3884\">Fully Responsive Design:&nbsp;</strong>Works smoothly on phones, tablets, and desktops, offering a modern experience for all visitors.</p>\r\n</li>\r\n<li>\r\n<p><strong data-start=\"3988\" data-end=\"4013\">Custom Booking Calendar: </strong>Integrated with Google Calendar, allowing Sheila to easily manage bookings and availability in real-time.</p>\r\n</li>\r\n<li class=\"\" data-start=\"3986\" data-end=\"4103\">\r\n<p class=\"\" data-start=\"3988\" data-end=\"4103\"><strong data-start=\"3988\" data-end=\"4013\">Custom Photo Gallery:&nbsp;</strong>Highlighting the charm of the cottage and surrounding area through optimized imagery.</p>\r\n</li>\r\n<li class=\"\" data-start=\"4105\" data-end=\"4229\">\r\n<p class=\"\" data-start=\"4107\" data-end=\"4229\"><strong data-start=\"4107\" data-end=\"4147\">Clear Booking Info &amp; Amenities List:&nbsp;</strong>Easy-to-scan layout that helps guests find the information they need quickly.</p>\r\n</li>\r\n<li class=\"\" data-start=\"4231\" data-end=\"4337\">\r\n<p class=\"\" data-start=\"4233\" data-end=\"4337\"><strong data-start=\"4233\" data-end=\"4256\">Optimized Codebase:&nbsp;</strong>Lightweight, fast-loading site with improved SEO</p>\r\n</li>\r\n</ul>', '<p class=\"\" data-start=\"0\" data-end=\"297\">This project was a pivotal moment in my web development journey. What started as a quick job building a site on Squarespace eventually sparked my interest in developing websites, leading me to pursue the IDP program. Key takeaways:&nbsp;</p>\r\n<ul data-start=\"329\" data-end=\"672\">\r\n<li class=\"\" data-start=\"329\" data-end=\"412\">\r\n<p class=\"\" data-start=\"331\" data-end=\"412\">Gained a solid understanding of full-stack development, from design to deployment</p>\r\n</li>\r\n<li class=\"\" data-start=\"413\" data-end=\"503\">\r\n<p class=\"\" data-start=\"415\" data-end=\"503\">Strengthened my client communication skills while managing an independent freelance role</p>\r\n</li>\r\n<li class=\"\" data-start=\"504\" data-end=\"598\">\r\n<p class=\"\" data-start=\"506\" data-end=\"598\">Gained hands-on experience managing DNS, hosting environments, and performance optimizations</p>\r\n</li>\r\n<li class=\"\" data-start=\"599\" data-end=\"672\">\r\n<p class=\"\" data-start=\"601\" data-end=\"672\">Reinforced the importance of responsive design and clean, semantic HTML</p>\r\n</li>\r\n</ul>\r\n<p class=\"\" data-start=\"674\" data-end=\"1017\">I&rsquo;m really proud of how this project grew with me, evolving into a polished and professional web presence for Sheila&rsquo;s rental property. It perfectly reflects her personality and the warm, inviting atmosphere of the cottage. Going forward, I plan to build a backend and CMS, allowing Sheila to easily upload and manage her photos independently.</p>', 'https://www.grandbendholidayhouse.ca/', 'https://github.com/isaacbilyea/Grand-Bend-Holiday-House.git', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table users
--

CREATE TABLE users (
  id int UNSIGNED NOT NULL,
  username varchar(125) NOT NULL,
  password varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table users
--

INSERT INTO users (id, username, password) VALUES
(1, 'isaac', 'Human66');

--
-- Indexes for dumped tables
--

--
-- Indexes for table contacts
--
ALTER TABLE contacts
  ADD PRIMARY KEY (id);

--
-- Indexes for table media_files
--
ALTER TABLE media_files
  ADD PRIMARY KEY (id);

--
-- Indexes for table projects
--
ALTER TABLE projects
  ADD PRIMARY KEY (id);

--
-- Indexes for table users
--
ALTER TABLE users
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table contacts
--
ALTER TABLE contacts
  MODIFY id int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table media_files
--
ALTER TABLE media_files
  MODIFY id int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table projects
--
ALTER TABLE projects
  MODIFY id int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table users
--
ALTER TABLE users
  MODIFY id int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
