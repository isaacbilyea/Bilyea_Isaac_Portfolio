-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2025 at 03:37 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table contacts
--

INSERT INTO contacts (id, name, email, message) VALUES
(1, 'Jacob Bob', 'bobjacob@gmail.com', 'Hello my name is Jacob Bob but you can just call me Bob Jacob.'),
(2, 'Samantha Ross', 'samross122@gmail.com', 'What is your favourite colour?'),
(3, 'Ronny Lee', 'ronnster93@hotmail.ca', 'How about that weather, eh?'),
(20, 'Contact Form', 'contactform@gmail.com', 'This is a test message from the contact form'),
(139, 'TEST', 'test@gmail.com', 'AJAX IS WORKING'),
(140, 'test', 'test@gmail.com', 'Still working');

-- --------------------------------------------------------

--
-- Table structure for table media_files
--

CREATE TABLE media_files (
  id int UNSIGNED NOT NULL,
  project_id int UNSIGNED NOT NULL,
  filename varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  type varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  alt varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table media_files
--

INSERT INTO media_files (id, project_id, filename, type, alt) VALUES
(1, 1, 'stride', 'image', 'stride'),
(2, 2, 'industry-night', 'image', 'industry night'),
(3, 3, 'quatro', 'image', 'quatro'),
(6, 4, 'cardinal', 'image', 'cardinal');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

CREATE TABLE projects (
  id int UNSIGNED NOT NULL,
  title varchar(150) NOT NULL,
  description varchar(500) NOT NULL,
  cover_image varchar(500) NOT NULL,
  colour varchar(500) NOT NULL,
  overview varchar(2000) NOT NULL,
  summary varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  problems varchar(2500) NOT NULL,
  research varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  process varchar(2500) NOT NULL,
  final_product varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  reflection varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  link varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table projects
--

INSERT INTO projects (id, title, description, cover_image, colour, overview, summary, problems, research, process, final_product, reflection, link) VALUES
(1, 'Stride', 'Web Development | Design', 'stride.svg', '#AFAA47', 'For this project, I created a promotional web page for Stride, a conceptual brand of wireless sport earbuds I created. I designed the Stride logo and earbuds and modeled them in Cinema 4D. This project included branding, motion design, 3D modeling, and web development. <br><br>Using the 3D model, I created an X-ray view of the internal components and animations of its functionality. These features were embedded into an interactive 3D AR slider and vertical scrolling animations to make the website engaging and immersive.', '<strong>Year:</strong> 2024 <br><strong>Role:</strong> Brand Designer, Product Designer, and Web Developer <br><strong>Deliverables:</strong> Logo Design, 3D Models, Animations, AR Object, Promotional Webpage <br><strong>Development Tools:</strong> HTML5, CSS3, JavaScript, SCSS, GSAP <br><strong>Design Tools:</strong> Photoshop, Illustrator, Premiere Pro, After Effects, Cinema 4D', '1. <strong>Brand Creation:</strong> Stride logo and earbuds design needed to be sleek, sporty, and modern. I went through multiple iterations to design for the target audience. <br><br>2. <strong>3D Model Detailing:</strong> Modeling the earbuds and case with detailed realistic proportions in Cinema 4D was tough. I referenced real earbuds and cases. <br><br>3. <strong>AR Integration:</strong> I used Google&rsquo;s Model Viewer to embed the AR object with interactive hotspots, dynamically adding images and descriptions for key features. <br><br>4. <strong>Animations:</strong> Animations like the dynamic hotspots and scroll-driven effects required the use of GSAP. <br><br>5. <strong>Responsive Design:</strong> I used media queries and CSS Grid to design a webpage that looked and worked the same across all devices.', 'I researched brands like AirPods, Jaybird, and Beats to help design the Stride earbuds. I looked at their branding, design elements, and promotional strategies. <br><br>This research inspired Stride&rsquo;s bold athletic branding with a clean modern design that appeals to active users.', '1. <strong>Branding &amp; Concept:</strong> I designed the Stride logo and the earbuds and charging case design. <br><br>2. <strong>3D Modeling &amp; Animation:</strong> I modeled and textured the earbuds and charging case in Cinema 4D. I did an X-ray view to show the internal components and animations to show functionality. <br><br>3. <strong>AR Integration:</strong> Exported 3D models as AR objects with interactive hotspots, dynamically adding content using JavaScript to display feature details on the promotional page. <br><br>4. <strong>Web Development:</strong> I built a responsive promotional page with custom animations using GSAP. Features: <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; X-ray slider to show the internal components of the earbuds. <br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; AR object with hotspots to showcase the features. <br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; Vertical scrolling animations using image sequences.', 'The Stride project launched a fresh, sporty, and innovative brand with the following deliverables: <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; A responsive website with dynamic animations and interactivity powered by GSAP. <br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; AR object with interactive hotspots. <br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; High-quality assets, images, and a promotional video to show off the earbuds\' features. <br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; Custom animations like X-ray slider and scroll-driven effects.', 'Together all these pieces make a nice promotional page that shows off the Stride brand. The Stride project was a great opportunity to combine branding, 3D modeling, and web development in one project. Key takeaways: <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; I enhanced my skills in Cinema 4D, creating detailed 3D models and animations. <br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; I improved my proficiency with GSAP for advanced animations and interactive features. <br>&nbsp;&nbsp;&nbsp;&nbsp;&bull; I developed a stronger understanding of balancing branding and functionality.<br><br>This project challenged me and I&rsquo;m happy with the result, a nice and professional promotional page that represents the Stride brand.', 'https://github.com/isaacbilyea/Bilyea_Isaac_Earbuds'),
(2, 'Industry Night', 'Web Development', 'industry-night.svg', '#B5262D', 'For this group project we built a responsive, mobile-first website to promote Industry Night, an event where graduating students from the Web Development and the Interactive Media Design programs at Fanshawe College have the opportunity to show off their skills and achievements to potential employers, industry professionals, and peers. <br><br>\r\nWe worked together to design, develop, and implement the website. <br>\r\nHighlighted features and focus areas included: the About Us page, student portfolios, testimonials, and contact forms. The web development focused on the seamless experience of these features across mobile, tablet, and desktop. <br>\r\nWe used Trello for task management and Discord for communication.', '<b>Year:</b> 2024 <br>\r\n<b>Team Members:</b> Isaac Bilyea <br>\r\n<b>Web Designers:</b> Bryle Flores, Music Jun <br>\r\n<b>Motion Designer:</b> Bernardo Macapagal <br>\r\n<b>Development Tools:</b> HTML5, CSS3, JavaScript', '1. <b>Dynamic Content Rendering:</b> Dynamically generating student portfolios and testimonials using arrays and objects. <br><br>\r\n2. <b>Consistency Across Deliverables:</b> Design and functionality across web layouts, motion graphics, and branding required communication and regular reviews. Trello helped us keep track of tasks and consistency. <br><br>\r\n3. <b>Responsive Design Challenges:</b> Seamless user experience across mobile, tablet, and desktop required lots of testing and optimization of layouts, interactive elements, and animations. <br><br>\r\n4. <b>Time Management:</b> With video production, layout design, and development all happening at the same time, meeting deadlines required a lot of planning and prioritization.\r\n', 'To match our design with Fanshawe College’s branding, we looked at the Fanshawe College homepage. This helped us stay consistent with the college’s visual identity, tone, and user experience guidelines. <br><br>\r\nWe also researched other event and portfolio showcase websites for layout ideas, interactive features, and ways to present student work.', '1. <b>Planning & Collaboration:</b><br> \r\n   &nbsp;&nbsp;&nbsp;&nbsp;• We used Trello to assign tasks and track progress and Discord for daily check-ins. <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• Initial brainstorming sessions to outline the site structure and roles.<br><br>\r\n\r\n2. <b>Design & Motion Graphics:</b><br> \r\n   &nbsp;&nbsp;&nbsp;&nbsp;• Web Designers (Bryle, Music) created mobile-first layouts in Adobe XD, focusing on a clear hierarchy and responsive design. <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• Motion Designer (Bernardo) created a 10–15 second promo reel to introduce the site and set a professional tone.<br><br>\r\n\r\n3. <b>Web Development:</b><br> \r\n   &nbsp;&nbsp;&nbsp;&nbsp;• As the Web Developer, I built a responsive mobile-first site. <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• I used JavaScript to dynamically render: <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• A list of student portfolios with links <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Testimonials on page load.<br><br>\r\n\r\n4. <b>Testing & Optimization:</b><br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• We tested the site for responsiveness and performance on multiple devices and browsers and refined layouts and code as needed. <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• All files were managed with GitHub for version control and file management.', 'The final Industry Night website showcases the skills and achievements of the Interactive Media Design program and its students. Features include: <br><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• <b>Responsive Website:</b> Featured dynamic student portfolios and testimonials and a mobile menu with custom animations. <br><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• <b>Promo Reel:</b> A 10-15 second video introducing the program and event, integrated into the homepage. <br><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• <b>Event Details:</b> Information about Industry Night, purpose, activities, and networking opportunities. <br><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• <b>Program Information:</b> Highlights of the Interactive Media Design program, client projects, and student achievements.<br><br>\r\n\r\nTogether, all these elements create a polished promotional site that effectively showcases the Industry Night event and the Interactive Media Design program.\r\n', 'This project was a great learning experience in teamwork and collaboration. Key takeaways: <br><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• Learned to collaborate efficiently using Trello for task management and Discord for real-time communication. <br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• Gained a deeper understanding of JavaScript for implementing dynamic content and interactive features. <br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• Improved skills in creating responsive, mobile-first websites that function seamlessly across devices.<br><br>\r\n\r\nWorking as a team, we created a professional and engaging website for Industry Night, combining our skills and ideas effectively. While aligning design and functionality posed some challenges, communication and teamwork ensured a cohesive result.', 'https://github.com/isaacbilyea/FJMB_Student_Showcase'),
(3, 'Quatro', 'Web Development | Design', 'quatro.svg', '#DA5A2E', 'For this project, I rebranded Quatro, a defunct soda brand, to align with modern design standards. I developed a new brand identity, a responsive three-page website, a promotional video, and a set of branding materials. The goal of the rebrand was to relaunch Quatro as a fun, vibrant brand that resonates with today’s audience while preserving the playful and bold energy of its 1980s origins. <br><br>\r\nThe website was built as a mobile-first, user-friendly platform using semantic HTML, CSS, and JavaScript. It included dynamic content and subtle animations to enhance user engagement. The polished promotional video highlighted Quatro\'s new identity, combining nostalgic energy with a modern look.\r\n', '<b>Year:</b> 2024 <br>\r\n<b>Role:</b> Brand Designer, Product Designer, and Web Developer <br>\r\n<b>Deliverables:</b> Logo Design, Three-Page Responsive Website, Promotional Video, Branding Materials <br>\r\n<b>Development Tools:</b> HTML5, CSS3, JavaScript <br>\r\n<b>Design Tools:</b> Adobe XD, Photoshop, Illustrator, Premiere Pro, After Effects, Cinema4D', '<b>1. Combining Nostalgia with Modern Design:</b> Capturing the essence of Quatro’s 80s history while modernizing the brand required careful design decisions. I balanced bold colors with clean typography to bring out its retro vibe. <br><br>\r\n\r\n<b>2. Consistency Across Deliverables:</b> Getting the website, video, and branding materials to work together as one campaign required a unified design with the help of a detailed style guide. <br><br>\r\n\r\n<b>3. Responsive Design for Dynamic Content:</b> Getting the three-page website to work across mobile, tablet, and desktop required iterative testing and CSS tweaks.\r\n', 'To help me with the rebrand, I researched both Quatro’s history and current trends in the soda market. I analyzed modern soda companies such as Olipop, Zevia, Poppi, and Culture Pop, drawing inspiration from their vibrant branding and messaging. <br><br>\r\nThis research helped shape Quatro’s new identity. The campaign emphasized playfulness and a fresh, revitalized image for the brand.', '<b>1. Branding & Concept Development:</b> I redesigned the Quatro logo and brand identity, combining nostalgic colors and design elements with a modern twist to reflect the 1980s but resonate with today’s audience. <br><br>\r\n\r\n<b>2. Wireframing & Prototyping:</b> Using Adobe XD, I created responsive wireframes and prototypes for the three-page website. <br><br>\r\n\r\n<b>3. Website Development:</b> I built a responsive mobile-first website using HTML5, CSS3, and JavaScript, following best practices. <br><br>\r\n\r\n<b>4. Promotional Video:</b> Using After Effects and Premiere Pro, I created a commercial video showcasing the new Quatro identity: playful and bold.', 'The Quatro rebrand introduced the soda to a modern audience through the following deliverables: <br><br>\r\n    &nbsp;&nbsp;&nbsp;&nbsp;• Three-Page Responsive Website <br>\r\n    &nbsp;&nbsp;&nbsp;&nbsp;• High-Quality Promotional Video <br>\r\n    &nbsp;&nbsp;&nbsp;&nbsp;• Comprehensive Branding Materials <br><br>\r\n\r\nThese deliverables worked together to relaunch Quatro as a vibrant and fun brand, capturing the essence of its nostalgic past while appealing to today’s audience. \r\n\r\n', 'The Quatro rebrand was a fun project that forced me to combine branding, web development, and motion design into one campaign. Key takeaways: <br><br>\r\n    &nbsp;&nbsp;&nbsp;&nbsp;• Improved my proficiency in Adobe XD, creating responsive prototypes <br>\r\n    &nbsp;&nbsp;&nbsp;&nbsp;• Advanced my skills in building dynamic and interactive webpages <br>\r\n    &nbsp;&nbsp;&nbsp;&nbsp;• Enhanced my video production techniques <br><br>\r\n\r\nOverall, this project taught me how to balance aesthetics and functionality while managing multiple deliverables. The result is a polished campaign that modernizes the Quatro brand.', 'https://github.com/isaacbilyea/Bilyea_Isaac_FIP'),
(4, 'Cardinal', 'Design', 'cardinal.svg', '#B97B56', 'For this project, I designed a promotional poster for Cardinal, a cabinetry company that specializes in residential and industrial cabinetry. The poster was for designers to use during client meetings with retail and builder clients. It needed to align with Cardinal’s brand while appealing to a wide audience, ranging from high-end to mid-range clients. <br><br>\r\nWorking with brand assets and illustrations from Studio Mondu, I created a design that stayed true to Cardinal’s professional brand while being flexible enough to work for a wide range of clients.', '<b>Year:</b> 2024 <br>\r\n<b>Role:</b> Graphic Designer <br>\r\n<b>Deliverables:</b> Promotional Posters <br>\r\n<b>Design Tools:</b> InDesign, Photoshop, Illustrator', '1. <b>Balancing Client Demographics:</b>\r\nThe poster had to appeal to both high-end and mid-range clients. Achieving this required careful selection of imagery, typography, and design elements to not alienate either group.<br><br>\r\n\r\n2. <b>Staying on Brand:</b> \r\nEnsuring the design fit with Cardinal’s brand while was a challenge. This required closely referencing existing assets and the company’s website for consistency.<br><br>\r\n\r\n3. <b>Working with Pre-Existing Assets:</b> \r\nUsing assets from Studio Mondu while keeping the design cohesive and unique required creative problem-solving, especially when adapting illustrations and visuals to fit the layout.', 'To keep the design on brand, I referenced Cardinal’s website and other branding materials. These resources informed the layout, typography, and color palette to ensure consistency with the company’s visual identity. <br><br>\r\nI also considered Cardinal’s target audience, balancing sophistication and approachability to appeal to their wide range of clients.', '1. <b>Planning & Concept Development:</b><br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• I reviewed the brand assets and illustrations from Studio Mondu. <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• Created initial layout concepts.<br><br> \r\n\r\n2. <b>Design Execution:</b> <br>\r\n   &nbsp;&nbsp;&nbsp;&nbsp;• Used InDesign for the main layout, combining typography, imagery, and branding elements.<br><br> \r\n\r\n3. <b>Feedback & Refinements:</b> <br> \r\n   &nbsp;&nbsp;&nbsp;&nbsp;• Incorporated feedback to fine-tune the design and make sure it communicated Cardinal’s quality and versatility.\r\n', 'The final poster featured a clean and professional design that reflected the Cardinal brand. It combined modern style with wide appeal, ensuring it resonated with a wide range of clients, from high-end to budget-conscious. The poster highlighted Cardinal’s craftsmanship and expertise, serving as an effective tool for designers to promote the company during client meetings.\r\n', 'This project challenged me to adapt to an established brand identity while ensuring the design resonated with a diverse audience. Key takeaways include: <br><br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• I improved my InDesign skills, refining my approach to creating professional layouts. <br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• I learned to balance visual consistency with flexibility to appeal to a wide range of client demographics. <br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;• I gained experience integrating existing brand assets into a cohesive and impactful design.<br><br>\r\n\r\nThis project was a valuable opportunity to apply my design skills in a real-world scenario.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table users
--

CREATE TABLE users (
  id int UNSIGNED NOT NULL,
  username varchar(125) NOT NULL,
  password varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
