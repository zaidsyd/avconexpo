-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2025 at 01:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avconexp_avconexpo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_inactive_user`
--

CREATE TABLE `add_inactive_user` (
  `s_no` int(11) NOT NULL,
  `inactive_user_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register` varchar(255) DEFAULT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `game_wallet` varchar(255) DEFAULT NULL,
  `task_wallet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_job`
--

CREATE TABLE `add_job` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `editor` longtext DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_job`
--

INSERT INTO `add_job` (`id`, `name`, `email`, `phone`, `post`, `image_path`, `editor`, `added_date`) VALUES
(1, 'Atif ', 'info@spg.com', '7380873691', 'Web Developer ', 'career_uploads/file_67ff91f51e0e50.67942042.jpg', NULL, '2025-04-16 07:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `add_job_post`
--

CREATE TABLE `add_job_post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `added_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `add_job_post`
--

INSERT INTO `add_job_post` (`id`, `name`, `email`, `phone`, `job_title`, `image_path`, `added_date`) VALUES
(1, 'Naimath Abbas', 'admin@gmail.com', '1234567890', 'Dot Net Developer', 'apply_job/file_67ff92dec1f111.94558066.jpg', '2025-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `add_price`
--

CREATE TABLE `add_price` (
  `s_no` int(11) NOT NULL,
  `testi_id` int(11) NOT NULL,
  `paragraph` text DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_price`
--

INSERT INTO `add_price` (`s_no`, `testi_id`, `paragraph`, `name`, `address`, `image`) VALUES
(6, 1887383, 'AVCONEXPO exceeded our expectations with their turnkey project                                                     solutions. The team\'s technical expertise and attention to detail                                                     made our entire plant setup seamless and efficient.', 'Nandita Rawat', 'Uttar Pradesh', 'reviewer-03.png'),
(7, 5717040, 'Highly professional team with deep knowledge of industrial                                                     solutions. They delivered our boiler installation project before the                                                     deadline with outstanding quality.', 'Tejasv Sahu', 'Lucknow', 'reviewer-03.png'),
(8, 6479696, 'Their piping and utility services played a crucial role in our                                                     factory\'s expansion. The dedication and quality of work truly set                                                     them apart.', 'Ellis William', 'Delhi', 'reviewer-03.png');

-- --------------------------------------------------------

--
-- Table structure for table `add_project`
--

CREATE TABLE `add_project` (
  `id` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `paragraph` text NOT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_project`
--

INSERT INTO `add_project` (`id`, `heading`, `paragraph`, `images`) VALUES
(6, 'Ambikapur Commercial Office', 'A professional space for business operations, meetings, and services.', 'img_67c2b2197570b5.72969706.jpg'),
(7, 'Commercial Development', 'Commercial development refers to the construction, design, and operation of properties used for business purposes', 'img_67c2b24b5b45a3.61705731.jpg'),
(8, 'Deorar Marriage Lawn', 'The Deorar Marriage Lawn is a prominent wedding venue located in Deoria, Uttar Pradesh, India.', 'img_67c2b2666b21a0.98797288.jpg'),
(9, 'Kabra Residence', 'The Kabra Residence is a customized residential project located in Ambedkar Nagar district, Uttar Pradesh.', 'img_67c2b27a31e799.83957382.jpg'),
(10, 'Kalawati Greens', 'Kalawati Greens is a forestry-themed retreat located in Son Gaon, Ambedkar Nagar district, Uttar Pradesh.', 'img_67c2b29627e2b4.25541320.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `add_user`
--

CREATE TABLE `add_user` (
  `s_no` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register` varchar(255) DEFAULT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `resettoken` varchar(255) DEFAULT NULL,
  `resettokenexpire` date DEFAULT NULL,
  `task_wallet` int(100) DEFAULT 0,
  `game_wallet` int(100) DEFAULT 0,
  `BANK_NAME` varchar(100) NOT NULL,
  `IFSC_CODE` varchar(100) NOT NULL,
  `ACC_HOLDER_NM` varchar(100) NOT NULL,
  `ACC_NUMBERS` int(100) NOT NULL,
  `ACC_TYPE` varchar(100) NOT NULL,
  `LAST_LOGIN` varchar(100) NOT NULL,
  `ACC_STATUS` varchar(100) NOT NULL DEFAULT 'active',
  `TYPE` varchar(50) NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_user`
--

INSERT INTO `add_user` (`s_no`, `user_id`, `firstname`, `lastname`, `username`, `email`, `register`, `suggestion`, `mobile_no`, `password`, `confirm_password`, `resettoken`, `resettokenexpire`, `task_wallet`, `game_wallet`, `BANK_NAME`, `IFSC_CODE`, `ACC_HOLDER_NM`, `ACC_NUMBERS`, `ACC_TYPE`, `LAST_LOGIN`, `ACC_STATUS`, `TYPE`) VALUES
(1, '9067706', 'Super', 'Admin', 'shahbaz@123', 'testadmin@demo.com', 'advertiser', '', '7355742333', '123456', '123456', NULL, NULL, 0, 400, '', '', '', 0, '', '', 'active', 'ADMIN'),
(2, '786', 'Zaid', 'Rizvi', 'zaid', 'admin@gmail.com', 'test', '', '9335438189', '1234', '1234', NULL, NULL, 0, 999, '', '', '', 0, '', '', 'active', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `banners_projects`
--

CREATE TABLE `banners_projects` (
  `id` int(11) NOT NULL,
  `type` enum('Banner','Project','Blog') NOT NULL,
  `details` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banners_projects`
--

INSERT INTO `banners_projects` (`id`, `type`, `details`, `image_path`, `created_at`) VALUES
(12, 'Banner', ' Global Business & Technical  <span>Consultancy</span>  ', 'uploads/banner1.png', '2024-10-02 05:47:24'),
(13, 'Banner', 'EPC - Engineering, Procurement & \r\n                                        <span> Construction </span>', 'uploads/banner2.png', '2024-10-02 05:48:21'),
(14, 'Banner', 'Project Feasibility & Market \r\n                                        <span> Research </span>\r\n                                   ', 'uploads/3.jpg', '2025-02-28 05:50:44'),
(15, 'Banner', 'Turnkey Solutions Across \r\n <span>Industries</span>', 'uploads/5.jpg', '2025-03-17 06:30:25'),
(16, 'Banner', 'Greenfield & Brownfield Project <span>Development</span>', 'uploads/6.jpg', '2025-03-17 06:33:15'),
(17, 'Banner', 'Operational & Energy \r\n  <span> Audits</span>', 'uploads/7.jpg', '2025-03-17 06:38:06'),
(18, 'Banner', 'Turning Ideas into Reality  <span>Efficiently</span>', 'uploads/4.jpg', '2025-03-17 06:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `blog_url` varchar(255) NOT NULL,
  `blog_heading` varchar(255) NOT NULL,
  `blog_desc_first` text DEFAULT NULL,
  `blog_desc_second` text DEFAULT NULL,
  `blog_point_one` varchar(255) DEFAULT NULL,
  `blog_point_two` varchar(255) DEFAULT NULL,
  `blog_point_three` varchar(255) DEFAULT NULL,
  `blog_hedng_two` text DEFAULT NULL,
  `blog_desc_two` text DEFAULT NULL,
  `logos` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_url`, `blog_heading`, `blog_desc_first`, `blog_desc_second`, `blog_point_one`, `blog_point_two`, `blog_point_three`, `blog_hedng_two`, `blog_desc_two`, `logos`, `created_at`) VALUES
(26, 'Enhancing-Green-Spaces-for-a-Sustainable-Future', 'Enhancing Green Spaces for a Sustainable Future', 'Designing Sustainable Green Spaces', 'DDiscover the importance of horticulture and landscaping in creating sustainable, aesthetic, and functional outdoor spaces. Learn how it enhances biodiversity, ecological balance, and human well-being.esigning Sustainable Green Spaces', '  Horticulture, Landscaping, Green Spaces, Sustainable Landscaping, Urban Gardens, Park Design, Environmental Sustainability, Landscape Architecture, Garden Design, Biodiversity', 'IMAGES-1', '', '', '<p style=\"text-align: justify; \">Horticulture and landscaping go beyond just planting trees and flowers. They involve a combination of art, science, and environmental planning to create aesthetically pleasing, functional, and sustainable outdoor spaces. Whether itâ€™s a backyard garden, urban park, or commercial landscape, these practices play a crucial role in improving quality of life, enhancing biodiversity, and promoting ecological balance.</p><p style=\"text-align: justify; \"><span style=\"font-size: 18px;\"><b>The Importance of Horticulture &amp; Landscaping</b></span></p><h4 data-start=\"1330\" data-end=\"1370\"><strong data-start=\"1335\" data-end=\"1368\"><span style=\"font-size: 14px;\">1. Enhancing Aesthetic Appeal</span></strong></h4><p data-start=\"1371\" data-end=\"1596\" style=\"text-align: justify; \">A well-designed landscape transforms outdoor spaces into visually appealing areas, making them more inviting and enjoyable. Thoughtful placement of plants, pathways, and decorative elements creates a harmonious environment.</p><h4 data-start=\"1598\" data-end=\"1650\"><strong data-start=\"1603\" data-end=\"1648\"><span style=\"font-size: 14px;\">2. Promoting Environmental Sustainability</span></strong></h4><p data-start=\"1651\" data-end=\"1890\" style=\"text-align: justify;\">Landscaping helps combat climate change by improving air quality, reducing heat islands in urban areas, and conserving water through eco-friendly irrigation systems. Native plant selection and green infrastructure promote sustainability.</p><h4 data-start=\"1892\" data-end=\"1929\"><strong data-start=\"1897\" data-end=\"1927\"><span style=\"font-size: 14px;\">3. Supporting Biodiversity</span></strong></h4><p data-start=\"1930\" data-end=\"2093\" style=\"text-align: justify;\">Green spaces serve as habitats for birds, insects, and other wildlife. Diverse plant species attract pollinators, contributing to ecosystem health and stability.</p><h4 data-start=\"2095\" data-end=\"2135\"><strong data-start=\"2100\" data-end=\"2133\"><span style=\"font-size: 14px;\">4. Enhancing Human Well-being</span></strong></h4><p data-start=\"2136\" data-end=\"2324\" style=\"text-align: justify; \">Access to green spaces has been linked to reduced stress, improved mental health, and increased physical activity. Parks and gardens provide recreational spaces that benefit communities.</p><h4 data-start=\"2326\" data-end=\"2365\"><strong data-start=\"2331\" data-end=\"2363\"><span style=\"font-size: 14px;\">5. Increasing Property Value</span></strong></h4><p style=\"text-align: justify; \">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"2366\" data-end=\"2515\" style=\"text-align: justify;\">Well-maintained landscapes boost curb appeal and property value. Homes and businesses with lush greenery are more attractive to buyers and tenants.</p>', '', '2025-03-12 10:47:49'),
(28, 'Expert-Engineering-Consulting-for-Precision-Innovation', 'Expert Engineering Consulting for Precision & Innovation', 'Expert Engineering Consulting for Precision & Innovation', 'AVCONEXPO provides expert engineering consulting, offering insights on product lifecycle predictions, failure analyses, performance assessments, and process optimization to drive success.', '  Engineering Consulting, Product Lifecycle Prediction, Failure Analysis, Performance Assessment, Process Optimization, Engineering Expertise, Industrial Solutions, AVCONEXPO, Engineering Reports, Technical Consulting', 'IMAGES-2', '', '', '<p style=\"text-align: justify; \">In todayâ€™s fast-paced industrial landscape, precision, reliability, and efficiency define the success of engineering projects. At <strong data-start=\"310\" data-end=\"323\">AVCONEXPO</strong>, we specialize in delivering expert engineering consulting services, backed by years of hands-on experience. Our seasoned engineers and analysts provide comprehensive insights, helping businesses optimize product performance, predict lifecycle trends, and enhance process efficiency.</p><h4 data-start=\"611\" data-end=\"661\"><strong data-start=\"616\" data-end=\"659\"><span style=\"font-size: 18px;\">Why Engineering Consulting is Essential</span></strong></h4><p style=\"text-align: justify; \">\r\n</p><p data-start=\"662\" data-end=\"920\" style=\"text-align: justify; \">Engineering consulting plays a pivotal role in driving innovation, reducing risks, and improving decision-making. Whether itâ€™s product development, failure analysis, or process optimization, expert guidance ensures cost-effective and high-quality outcomes.</p><p data-start=\"662\" data-end=\"920\" style=\"text-align: justify; \">AVCONEXPO is committed to delivering engineering excellence through precise insights and innovative solutions. Whether you need failure analysis, process optimization, or lifecycle predictions, we provide the expertise to drive your success. Partner with us and experience the power of refined engineering intelligence.</p>', '', '2025-03-12 11:11:45'),
(29, 'Driving-Engineering-Excellence-with-AVCONEXPO', 'Driving Engineering Excellence with AVCONEXPO', 'AVCONEXPO | Engineering, Procurement & Construction Solutions for Optimal Performance', 'AVCONEXPO delivers innovative and cost-effective engineering, procurement, construction, and design solutions. Our expertise ensures optimized project execution, efficiency, and long-term sustainability across industries.', '  Engineering Services, Procurement, Construction Solutions, Design Services, Project Optimization, Sustainability, Operational Efficiency, Industrial Solutions, AVCONEXPO, Technical Expertise', 'IMAGES-3', '', '', '<p style=\"text-align: justify; \">In today\'s dynamic industrial landscape, success hinges on the seamless integration of engineering, procurement, construction, and design. At <strong data-start=\"251\" data-end=\"264\">AVCONEXPO</strong>, we combine extensive expertise with cutting-edge technology to deliver innovative, cost-effective, and sustainable solutions across multiple industries. Our commitment to excellence ensures optimized project execution, enhanced operational efficiency, and long-term value creation.</p><h4 data-start=\"551\" data-end=\"597\"><strong data-start=\"556\" data-end=\"595\"><span style=\"font-size: 18px;\">Comprehensive Engineering Solutions</span></strong></h4><p data-start=\"598\" data-end=\"779\" style=\"text-align: justify; \">AVCONEXPO leverages its deep domain knowledge and advanced technical capabilities to offer <strong data-start=\"689\" data-end=\"724\">end-to-end engineering services</strong> that drive business success. Our expertise includes:</p><p style=\"text-align: justify; \">\r\n\r\n</p><ol>\r\n<li data-start=\"781\" data-end=\"904\"><strong data-start=\"783\" data-end=\"808\">Engineering &amp; Design:</strong> We create customized, high-performance designs tailored to meet industry-specific challenges.</li>\r\n<li data-start=\"905\" data-end=\"1033\"><strong data-start=\"907\" data-end=\"934\">Procurement Excellence:</strong> Our strategic sourcing and supply chain management ensure cost efficiency and quality assurance.</li>\r\n<li data-start=\"1034\" data-end=\"1181\"><strong data-start=\"1036\" data-end=\"1064\">Construction Management:</strong> We oversee projects from inception to completion, ensuring timely delivery and compliance with industry standards.</li></ol>', '', '2025-03-12 11:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_images`
--

CREATE TABLE `blogs_images` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `logos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blogs_images`
--

INSERT INTO `blogs_images` (`id`, `blog_id`, `image`, `logos`) VALUES
(4, 25, 'business-consultancy-top.jpg', ''),
(5, 25, '', 'business-consultancy-top.jpg'),
(6, 25, '', 'slide-1-1920x724.jpg'),
(7, 26, 'horticulture.jpg', ''),
(8, 26, '', 'serviceCardThumb1_2.jpg'),
(9, 26, '', 'serviceCardThumb1_3.jpg'),
(13, 28, 'business.jpg', ''),
(14, 28, '', '2.jpg'),
(15, 28, '', '3.jpg'),
(16, 29, 'projectmanagement.jpg', ''),
(17, 29, '', '04.jpg'),
(18, 29, '', 'introBottomThumb3_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `message`, `added_date`) VALUES
(11, 'hbfghf', 'gdfhdx@ggd', '+91465475657', 'architechture & design', 'tjdfgj', '2025-04-07 06:19:28'),
(12, 'Alec Brown', 'csp.digital8@gmail.com', '512-885-8595', 'blast free mining and rock excavation', 'Hey,\r\n\r\n\r\n\r\nThe IRS refund window for self-employed workers closes this week.\r\n\r\n\r\n\r\nIf you were 1099 or Schedule C in 2021 and missed work due to COVID disruptions…\r\n\r\n\r\n\r\n You could still claim up to $32,220\r\n                                                        Takes 5 minutes, no cost\r\n\r\n  No document uploads\r\n                                                        Funds can hit your account  in 5–7 days\r\n\r\n\r\n\r\nCheck to know for sure how much you qualify for here  --->> www.SETCFORME.com\r\n\r\n\r\n\r\nThis isn’t an ad. It’s a closing door. If you miss it, it’s gone--->>  APRIL 15 2025\r\n\r\nAlec\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n10900 Research Blvd. \r\nSte. 160C  #1061\r\nAustin, TX 78759\r\n\r\nTo opt out of future messages go here:\r\nhttp://optoutofmarketing.online/?info=avconexpo.com', '2025-04-07 16:58:17'),
(13, 'Mark Wints', 'markwints39@gmail.com', '734-555-3714', 'startups', 'A lot of good businesses lose money because something small is broken in their system.\r\n\r\n\r\nIt’s like a leaky bucket—you pour in leads, but they drip out.\r\n\r\n\r\nThis free playbook shows how top brands fix that fast and grow big.\r\n\r\n\r\nGrab it here if you want more customers:\r\n\r\nhttps://bit.ly/4hMPCqh\r\n\r\nRegards,\r\nMark\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nYou\'re getting this message because at some point, you let us know that you\'re a business owner looking to get more leads and customers — and that you\'re open to free tools, resources, and tips to help make that happen. We only send this kind of stuff to people who’ve shown interest in growing their business, and we’re here to support you every step of the way.\r\n\r\n169 Homan Ln, Centre Hall, PA 16828\r\nUnsubscribe:\r\nhttps://marketing-out.click/?info=avconexpo.com', '2025-04-07 19:29:57'),
(14, 'Jo Riggs', 'joannariggs02@gmail.com', '729377515', 'trading and sourcing', 'Hi,\r\n\r\nI just visited avconexpo.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195 USD.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJo', '2025-04-07 22:12:53'),
(15, 'Charlotte Nerli', 'charlotte.nerli@gmail.com', '3438467126', 'blast free mining and rock excavation', 'Dan Kennedy often uses a simple analogy to illustrate a common marketing mistake:\r\n\r\nImagine walking into a store and being swarmed by a salesperson who starts pitching everything they sell—refrigerators, running shoes, blenders—without once asking what you’re actually looking for. It’s frustrating, ineffective… and exactly what most businesses do in their marketing.\r\n\r\nInstead of speaking directly to prospects’ specific needs or concerns, most businesses blast the same generic message to everyone. And according to Dan, that’s a surefire way to water down your impact—and your profits.\r\n\r\nHe points to Weight Watchers as a prime example.\r\n\r\nThey serve two distinct types of customers:\r\n\r\nHealth Buyers – motivated by medical reasons, like a doctor’s orders or an upcoming surgery.\r\n\r\nEvent-Driven Buyers – focused on short-term goals, like fitting into a dress for a wedding or looking good for a vacation.\r\n\r\nThese two audiences have completely different motivations. One wants to avoid a health crisis. The other wants to feel confident on the beach. But for years, Weight Watchers hesitated to segment their leads and tailor their message accordingly—despite the fact that segmentation could’ve easily doubled their effectiveness.\r\n\r\nAnd this issue isn’t limited to weight loss companies.\r\n\r\nAt Magnetic Marketing, Dan Kennedy and his team have identified seven distinct interest categories among their audience—from wealth attraction to direct marketing and beyond. If they tried to send one message to all seven groups, they’d fail to deeply connect with any of them.\r\n\r\nDan compares this to politics: voters often care about one primary issue. Your leads are no different. Some are driven by fear. Others by ambition. And others by a very specific short-term goal.\r\n\r\nConsider three different prospects in the finance space:\r\n\r\nOne fears running out of money in retirement.\r\n\r\nAnother wants to protect wealth for their grandchildren.\r\n\r\nA third wants to maximize investment returns.\r\n\r\nA single message trying to appeal to all three ends up resonating with none of them.\r\n\r\nThat’s why segmentation is so powerful—and profitable.\r\n\r\nBy tailoring messages to meet prospects where they are mentally and emotionally, businesses instantly build trust, create relevance, and position themselves as the only solution that truly gets the customer.\r\n\r\nDan outlines a simple framework for doing this:\r\n\r\n1.Use a Self-Select Mechanism\r\nAsk your audience questions like:\r\n“Are you looking to grow your wealth?”\r\n“Do you want to protect your assets for your family?”\r\n\r\n2.Tailor the Follow-Up\r\nOnce they identify their concern, follow up with stories, testimonials, and offers that directly address it.\r\n\r\n3.Watch Response Rates Soar\r\nA personalized message turns cold leads into warm conversations—and buyers.\r\n\r\nDan stresses this strategy works in every industry. He’s seen it boost performance in colleges, financial firms, info-product businesses, and even local service providers.\r\n\r\nTake colleges, for example. A dad wants to know his kid will get a job after graduation. A mom wants safety and solid food options. The student just wants to know they’ll make friends. Smart schools speak directly to each one—and enrollment improves dramatically.\r\n\r\nIf segmentation sounds like a mystery to you, Dan lays it all out in plain English in The No B.S. Guide to Direct Marketing. In it, he reveals:\r\n\r\nThe art of message-to-market match—how to say the right thing to the right people.\r\n\r\nHow to build self-select mechanisms that get prospects to reveal what they want—without a survey.\r\n\r\nHis exact process for creating segmented campaigns that maximize every dollar spent.\r\n\r\n?? Click Here to Claim Your FREE Copy of The No B.S. Guide to Direct Marketing + $6,193 in Exclusive Bonuses:\r\n\r\nhttps://marketersmentor.com/direct-marketing-book.php?refer=avconexpo.com&real=yes\r\n\r\nDan Kennedy has watched businesses transform overnight simply by getting smarter with how they segment and speak to their audience.\r\n\r\nDon’t waste another marketing dollar talking to everyone. Start speaking to someone—the right someone—and watch your results soar.\r\n\r\nDedicated to Multiplying Your Income,\r\n\r\nCharlotte\r\n\r\nP.S. Dan always reminds his clients:\r\nWhoever can spend the most to acquire a customer—wins.Segmentation helps you do just that… profitably.\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=avconexpo.com&real=yes', '2025-04-08 00:56:10'),
(16, 'Mariasticy', 'glenniejohnsonms@gmail.com', '85519982615', 'business and technical consultancy', 'Get the best software for <a href=https://bit.ly/3C6dEOb>solving captchas!</a>', '2025-04-08 01:46:15'),
(17, 'Eric Jones', 'ericjonesmyemail@gmail.com', '555-555-1212', 'business and technical consultancy', 'Hello Avconexpo Owner!\r\n\r\nMy name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at Avconexpo.\r\n- They hang out for a minute to check it out. “I’m interested… but… maybe…”\r\n- And then they hit the back button and check out the other search results instead.\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a lot – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nLeadConnect is a software widget that works on your site, ready to capture any visitor’s Name, Email address and Phone Number. You’ll know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nVisit https://boltleadgeneration.com to try out a Live Demo with LeadConnect now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nVisit https://boltleadgeneration.com to discover what LeadConnect can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\n\r\nPS: LeadConnect offers a complimentary 14-day trial – you could be converting up to 100x more leads immediately!  \r\nIt even includes International Long Distance Calling.  \r\nYou have customers waiting to talk with you right now… don’t keep them waiting.  \r\nVisit https://boltleadgeneration.com to try LeadConnect now.\r\n\r\nIf you\'d like to Want to receive fewer emails, or none whatsoever? Update your email preferences by visiting https://boltleadgeneration.com/unsubscribe.aspx?d=avconexpo.com', '2025-04-09 23:18:43'),
(18, 'Pansy Baskett', 'baskett.pansy@googlemail.com', '7948140746', 'engineering solutions', 'Upgrade Your Life with Tech, Wellness & Home Essentials! Smartphones, \r\n\r\nLaptops, LED Lights, Health Supplements, Kids\' Games & More – All in One \r\n\r\nPlace! Up to 75% OFF + Free Delivery! Limited Time Only!\r\n \r\nShop Now: https://mutualaffiliate.com/U8VME6\r\n\r\nQuality.For.Less', '2025-04-10 02:07:01'),
(19, 'Clarksiste', 'shasemiskh@gazeta.pl', '81334474159', 'business and technical consultancy', '<b> Portable balancer & Vibration analyzer Balanset-1A </b> \r\n \r\n<b> Description: </b> \r\n  <a href=https://allegro.pl/oferta/balanser-dynamiczny-balanset-1a-oem-set-16713019136><img src=\"https://vibromera.eu/wp-content/uploads/2021/11/%D0%91%D0%B0%D0%BB%D0%BA%D0%BE%D0%BC%D0%9A%D0%B8%D1%82-scaled-e1732998877834.jpg\"></a>  \r\n \r\n<b>Price:</b> \r\n7500 PLN / 44250 CZK / <b>1751 EUR</b> / 715000 HUF <b>Full kit</b> <a href=https://allegro.pl/oferta/przenosny-wywazarka-i-analizator-drgan-balanset-1a-kompletny-zestaw-16654413800> Order on Allegro </a> \r\n6700 PLN / 39550 CZK / <b>1561 EUR</b> / 640000 HUF <b>OEM kit</b> <a href=https://allegro.pl/oferta/balanser-dynamiczny-balanset-1a-oem-set-16713019136> Order on Allegro </a> \r\n \r\n Save <b>€100</b> on <a href=https://vibromera.eu/shop/874/>vibromera.eu</a> with promo code <b>VB100!</b>  \r\n \r\n <b>Balanset-1A Device Description</b>  \r\n \r\n The Balanset-1A is a highly portable, dual-channel device tailored for rotor balancing and vibration analysis. It\'s ideally suited for balancing rotors like crushers, fans, mulchers, choppers, shafts, centrifuges, turbines, and other rotating machines.  \r\n \r\n <b>Key Features and Capabilities</b>  \r\n \r\n <b>Vibrometry Mode</b>  \r\n \r\n Tachometer: Exact measurement of rotational speed (RPM).  \r\n Phase: Accurately determines the phase angle of vibration signals for precise analysis.  \r\n 1x Vibration: Analyzes and measures the primary frequency component.  \r\n FFT Spectrum: Comprehensive analysis of the vibration frequency spectrum.  \r\n Overall Vibration: Tracks the overall vibration level.  \r\n Measurement Log: Keeps a record of data for further analysis.  \r\n \r\n <b>Balancing Mode</b>  \r\n \r\n Single-Plane Balancing: Adjusts rotors in one plane to reduce vibration.  \r\n Two-Plane Balancing: Dynamic rotor balancing in two planes.  \r\n Polar Diagram: Displays imbalance on a polar diagram for accurate weight placement.  \r\n Last Session Recovery: Enables continuation of the previous balancing session.  \r\n Tolerance Calculator (ISO 1940): Computes permissible imbalance per ISO 1940 standards.  \r\n Grinding Wheel Balancing: Balances grinding wheels using three counterweights.  \r\n \r\n <b>Charts and Diagrams</b>  \r\n \r\n Overall Graphs: Displays general vibration levels.  \r\n 1x Graphs: Visualizes vibration characteristics at the primary frequency.  \r\n Harmonic Graphs: Analyzes the presence and impact of harmonic frequencies.  \r\n Spectral Graphs: Provides a detailed view of the frequency spectrum for analysis.  \r\n \r\n <b>Extra Features</b>  \r\n \r\n Archive: Store and access previous balancing sessions.  \r\n Reports: Create comprehensive balancing reports.  \r\n Rebalancing: Allows easy rebalancing with archived data.  \r\n Serial Production Balancing: Ideal for rotor balancing in production environments.  \r\n \r\n <b>Included with the Device</b>  \r\n \r\n The Balanset-1A comes with:  \r\n \r\n A measurement block with USB interface.  \r\n Two vibration sensors.  \r\n Optical sensor (laser tachometer) with magnetic base.  \r\n Digital scales.  \r\n Software (laptop sold separately).  \r\n Protective transport case.  \r\n \r\n<b>Price:</b> \r\n7500 PLN / 44250 CZK / <b>1751 EUR</b> / 715000 HUF <b>Full kit</b> <a href=https://allegro.pl/oferta/przenosny-wywazarka-i-analizator-drgan-balanset-1a-kompletny-zestaw-16654413800> Order on Allegro </a> \r\n6700 PLN / 39550 CZK / <b>1561 EUR</b> / 640000 HUF <b>OEM kit</b> <a href=https://allegro.pl/oferta/balanser-dynamiczny-balanset-1a-oem-set-16713019136> Order on Allegro </a> \r\n \r\n Save <b>€100</b> on <a href=https://vibromera.eu/shop/874/>vibromera.eu</a> with promo code <b>VB100!</b>', '2025-04-10 02:23:40'),
(20, 'Kevin Murphy', 'kevinm@nextdayworkingcapital.com', '725-867-2209', 'talent management', 'Looking for working capital? See what you qualify for in 30 seconds—no credit check, no paperwork, no sales calls. \r\n\r\nInstant approvals, next-day funding. It’s fast, free, and fully automated.\r\n\r\nGet started now: www.nextdayworkingcapital.com/approval \r\n\r\nTrusted by thousands of small business owners. Over 600 million funded to businesses like yours!\r\n\r\n\r\n\r\n\r\n\r\n\r\nIf you no longer wish to receive marketing messages from us, you can unsubscribe at  https://nextdayworkingcapital.com/unsubscribe', '2025-04-10 15:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(50) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(20, 'serviceCardThumb1_1.jpg'),
(21, 'serviceCardThumb1_2.jpg'),
(22, 'serviceCardThumb1_3.jpg'),
(23, 'serviceCardThumb1_4.jpg'),
(24, 'serviceCardThumb1_5.jpg'),
(25, 'serviceCardThumb1_6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `short_job_description` text DEFAULT NULL,
  `job_description` longtext DEFAULT NULL,
  `added_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id`, `job_title`, `short_job_description`, `job_description`, `added_date`) VALUES
(2, 'php-Developer', 'PHP (Hypertext Preprocessor) is a server-side scripting language used to develop dynamic websites and web applications. It runs on the server and generates HTML that is sent to the user\'s browser.', 'PHP (Hypertext Preprocessor) is a server-side scripting language used to develop dynamic websites and web applications. It runs on the server and generates HTML that is sent to the user\'s browser.', '2025-04-16'),
(3, 'Dot-Net-Developer', '.NET is a developer platform created by Microsoft used to build a wide variety of applications — web, desktop, mobile, cloud, IoT, AI, and even games.', '.NET is a powerful, open-source, cross-platform developer platform created by Microsoft that provides a comprehensive environment for building, deploying, and running a wide variety of applications. These applications can range from web apps, desktop software, mobile applications, and cloud-based services to Internet of Things (IoT) devices, Artificial Intelligence (AI) solutions, and even video games.', '2025-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `prd_url` varchar(255) NOT NULL,
  `prd_heading` varchar(255) NOT NULL,
  `prd_type` varchar(255) NOT NULL,
  `prd_desc` text NOT NULL,
  `prd_capacity` varchar(255) DEFAULT NULL,
  `prf_info` text DEFAULT NULL,
  `prd_advntage` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `prd_url`, `prd_heading`, `prd_type`, `prd_desc`, `prd_capacity`, `prf_info`, `prd_advntage`, `created_at`) VALUES
(90, 'Stainless-Steel-Glass-Railing', 'Stainless Steel Glass Railing', 'RAILING', 'The SS Glass Railing system consists of stainless steel posts, glass infills, and handrails. The system is designed to provide a sleek, modern, and safe barrier solution for stairs, balconies, and floor edges.', 'Production Capacity: 50', '', '<h6>Specification: SS Glass Railing</h6><h6>Material:</h6><p>- Stainless Steel (SS) - Grade 304 or 316</p><p>- Glass - Toughened, Tempered, or Laminated</p><h6>Description:</h6><p>The SS Glass Railing system consists of stainless steel posts, glass infills, and handrails. The system is designed to provide a sleek, modern, and safe barrier solution for stairs, balconies, and floor edges.</p><h6>Components:</h6><p>- SS Posts: Made from SS 304 or 316, with a brushed or polished finish</p><p>- Glass Infills: Toughened, tempered, or laminated glass, with a minimum thickness of 12mm</p><p>- Handrails: Made from SS 304 or 316, with a brushed or polished finish</p><p>- Fixings: SS screws, bolts, and nuts for secure assembly</p><h6>Dimensions:</h6><p>- Post spacing: Maximum 1 meters</p><p>- Glass infill size: As per design requirements</p><p>- Handrail height: 900mm to 1100mm above the floor level</p><h6>Finishing:</h6><p>- SS components: Brushed or polished finish</p><p>- Glass components: Polished or ground edges</p><h6>Safety Features:</h6><p>- Compliance with building codes and regulations</p><p>- Robust design for maximum safety</p><p>- Secure fixing system to prevent glass displacement</p>', '2024-10-29 10:29:21'),
(93, '-Stainless-Steel-Pipe-Railing', ' Stainless Steel Pipe Railing', 'RAILING', 'Stainless Steel Pipe Railing offers a sleek, modern look combined with durability and strength, making it a popular choice for residential, commercial, and industrial spaces. Typically crafted from high-quality stainless steel, these railings are known for their resistance to corrosion, rust, and weathering, making them ideal for both indoor and outdoor use. They are easy to maintain, requiring only occasional cleaning to maintain their shine and resist tarnishing.', 'Production Capacity: 50', '', '<h6>Specification: SS Pipe Railing</h6><h6>Material:</h6><p>- Pipe: Stainless Steel (SS) 304 or 316 grade</p><p>- Fittings: SS 304 or 316 grade</p><p>- Flanges: SS 304 or 316 grade</p><h6>Dimensions:</h6><p>- Pipe Outer Diameter: 38mm, 42mm, 48mm, 50mm, or as per customer requirement</p><p>- Pipe Thickness: 1.2mm, 1.5mm, 2mm, or as per customer requirement</p><p>- Railing Height: 900mm, 1000mm, 1100mm, or as per customer requirement</p><p>- Baluster Spacing: 150, 300mm, or as per customer requirement</p><h6>Surface Finish:</h6><p>- Polished or Brushed.</p><h6>Fittings:</h6><p>- Elbows: 90 degrees, 45 degrees, or as per customer requirement</p><p>- Flanges: Slip-on, socket weld, or as per customer requirement</p><h6>Assembly:</h6><p>- Pipe and fittings to be assembled using SS screws, nuts, and washers</p><p>- Welding to be done using TIG or MIG process</p><h6>Testing:</h6><p>- Load testing to ensure railing can withstand a load of 1.5 times the designed load</p><p>- Inspection for any defects or damage</p>', '2024-10-29 11:13:38'),
(94, 'Aluminium-Glass-Railing-Powder-Coated', 'Aluminium Glass Railing Powder Coated', 'RAILING', 'The Aluminium Glass Railing system consists of aluminium posts or U channels, glass infills, and handrails. The system is designed to provide a sleek, modern, and safe barrier solution for stairs, balconies, and floor edges.', 'Production Capacity: 50', '', '<h6>Specification: Aluminium Glass Railing</h6><h6>Material:</h6><p>- Aluminium: 6063-T5 alloy</p><p>- Glass: Toughened, tempered, or laminated</p><h6>Description:</h6><p>The Aluminium Glass Railing system consists of aluminium posts or U channels, glass infills, and handrails. The system is designed to provide a sleek, modern, and safe barrier solution for stairs, balconies, and floor edges.</p><h6>Components:</h6><p>- Aluminium Posts or u channels: Made from 6063-T5 alloy, with a powder-coated finish</p><p>- Glass Infills: Toughened, tempered, or laminated glass, with a minimum thickness of 12mm</p><p>- Handrails: Made from aluminium or stainless steel, with a powder-coated or polished finish</p><p>- Fixings: G.I. or Stainless steel screws, bolts, and nuts for secure assembly</p><h6>Dimensions:</h6><p>- Post or Screws spacing: Maximum 18 inches.</p><p>- Glass infill size: As per design requirements</p><p>- Handrail height: 900mm to 1100mm above the floor level</p><h6>Finishing:</h6><p>- Aluminium components: Powder-coated (wooden or anodized finish)</p><p>- Glass components: Polished or ground edges</p><h6>Safety Features:</h6><p>- Compliance with building codes and regulations</p><p>- Robust design for maximum safety</p><p>- Secure fixing system to prevent glass displacement</p><h6>Additional Features:</h6><p>- Optional: LED lighting integration for enhanced visual appeal</p><p>- Optional: Powder coating or anodizing in various colors</p>', '2024-10-29 11:16:37'),
(95, 'PVD-Coated-Stainless-Steel-Glass-Railing', 'PVD Coated Stainless Steel Glass Railing', 'RAILING', 'PVD Coated Stainless Steel Glass Railings combine the strength and elegance of stainless steel with a high-quality, decorative finish achieved through Physical Vapor Deposition (PVD) coating. ', 'Production Capacity: 50', '', '<h6>Specification: PVD Coated Stainless Steel Glass Railing</h6><h6>Material:</h6><p>- Pipe: Stainless Steel (SS) 304 grade</p><p>- Fittings: SS 304 grade</p><p>- Glass: Toughened glass, 12mm thickness</p><p>- Coating: PVD (Physical Vapor Deposition) coating in various colors (e.g. gold, rose gold, black).</p><h6>Dimensions:</h6><p>- Pipe Outer Diameter: 40 x 40mm, 50mm, or as per customer requirement</p><p>- Pipe Thickness: 1.5mm</p><p>- Railing Height: 900mm, 1000mm, 1100mm, or as per customer requirement</p><p>- Baluster Spacing: 300mm</p><p>- Glass Size: As per customer requirement</p><h6>Surface Finish:</h6><p>- PVD Coating: Matte or high-gloss finish</p><h6>Glass Specifications:</h6><p>- Type: Toughened glass</p><p>- Thickness: 12mm or 13.5mm</p><p>- Color: Clear, tinted, or frosted</p><p>- Finish: Polished edges, chamfered edges, or as per customer requirement</p><h6>Assembly:</h6><p>- SS pipes and fittings to be assembled using SS screws, nuts, and washers</p><p>- Glass to be attached using SS glass clamps or adhesive</p><h6>Packaging:</h6><p>- Railing assembly to be packed in a protective covering to prevent damage during transportation.</p>', '2024-10-29 11:25:33'),
(96, 'Stainless-Steel-Bus-Shelter', 'Stainless Steel Bus Shelter', 'URBAN-STREET-FURNITURE', 'Stainless Steel Bus Shelters are a durable and modern solution for providing protection and comfort to passengers waiting for public transportation. Made from high-quality stainless steel, these shelters offer a sleek and corrosion-resistant design.', 'Production Capacity: 50', '', '<h6>Material Specifications:</h6><p>- Frame: Stainless Steel (Grade 304 or 316)</p><p>- Roof and Walls: Stainless Steel (Grade 304 or 316) or Glass</p><p>- Seating: Stainless Steel or Recycled Plastic</p><p>- Flooring: Stainless Steel or Concrete</p><h6>Dimensional Specifications:</h6><p>- Standard Size: 3m x 2m x 2.5m (L x W x H)</p><p>- Custom sizes available</p>', '2024-10-29 11:55:32'),
(97, '-Wall-&-Floor-Mounted-SS-Trolley-Fender', ' Wall & Floor Mounted SS Trolley Fender', 'URBAN-STREET-FURNITURE', 'Wall & Floor Mounted Stainless Steel Trolley Fender is a durable and corrosion-resistant solution for protecting walls and floors from damage caused by trolleys, carts, and other equipment. Made from high-quality stainless steel, this fender provides a sleek and modern design.', 'Production Capacity: 50', '', '<h6>Material Specifications:</h6><p>- Material: Stainless Steel (Grade 304 or 316)</p><p>- Thickness: 1.5mm to 3mm</p><p>- Finish: Brushed or Glossy Polished</p><h6>Dimensional Specifications:</h6><p>- Custom sizes available</p><h6>Features:</h6><p>- Wall &amp; Floor mounted design for maximum protection</p><p>- Easy to clean and maintain</p><p>- Suitable for indoor and outdoor use</p><p>- Customizable to fit specific requirements</p>', '2024-10-29 12:00:58'),
(98, 'Stainless-Steel-Bollards', 'Stainless Steel Bollards', 'URBAN-STREET-FURNITURE', 'Stainless Steel Bollards are a durable and corrosion-resistant solution for providing safety, security, and protection in various applications. Made from high-quality stainless steel, these bollards offer a sleek and modern design.', 'Production Capacity: 50', '', '<h6>Material Specifications:</h6><p>- Material: Stainless Steel (Grade 304 or 316)</p><p>- Thickness: 2mm to 5mm</p><p>- Finish: Brushed or Mirror Polished</p><h6>Dimensional Specifications:</h6><p>- Height: 500mm to 1500mm (standard)</p><p>- Diameter: 50mm to 150mm (standard)</p><p>- Custom sizes available</p><h6>Applications:</h6><p>- Safety and security barriers</p><p>- Traffic control and management</p><p>- Property protection</p><p>- Architectural features</p>', '2024-10-29 12:03:54'),
(99, 'Stainless-Steel-Chamber-Plates', 'Stainless Steel Chamber Plates', 'URBAN-STREET-FURNITURE', 'Stainless Steel Chamber Plates are high-quality, corrosion-resistant plates designed for use in various industrial applications. Made from durable stainless steel, these plates offer excellent resistance to corrosion, erosion, and high temperatures.', 'Production Capacity: 50', '', '<h6>Material Specifications:</h6><p>- Material: Stainless Steel (Grade 304 or 316)</p><p>- Thickness: 3mm to 12mm (standard)</p><p>- Size: Customizable to fit specific requirements</p><h6>Features:</h6><p>- High-strength and durable</p><p>- Excellent corrosion resistance</p><p>- Easy to clean and maintain</p><p>- Customizable to fit specific requirements</p>', '2024-10-29 12:07:20'),
(100, 'Front-Building-CNC-Elevation-or-Partition', 'Front Building CNC Elevation or Partition', 'CNC-LASER-CUTTING-DESIGN', 'CNC Front Building Elevation or Partition Panels provide a modern and customizable facade or interior feature that enhances the architectural appeal of buildings. Made using precision CNC (Computer Numerical Control) cutting technology.', 'Production Capacity: 50', '', '<h6>Material Specifications:</h6><p>- Material: Stainless Steel (Grade 304 or 316) or Mild Steel (ISI Marked)</p><p>- Thickness: Upto 16mm CNC Laser cutting in SS ,&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Upto 25mm CNC Laser cutting in MS</p><p>- Finish: Brushed or Mirror Polished in SS,</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PU Paint or Hot dipped Galvanised in MS</p><h6>Dimensional Specifications:</h6><p>- Custom sizes available</p>', '2024-10-29 12:12:48'),
(101, 'Stainless-Steel-Column-Cladding', 'Stainless Steel Column Cladding', 'CNC-LASER-CUTTING-DESIGN', 'Stainless Steel Column Cladding is a modern architectural solution that enhances the appearance and durability of structural columns in various settings, including commercial, residential, and public spaces.', 'Production Capacity: 50', '', '<h6>Material Specifications:</h6><p>- Material: Stainless Steel (Grade 304 or 316)</p><p>- Thickness: 1.5mm</p><p>- Finish: Brushed or Mirror Polished</p>', '2024-10-29 12:27:06'),
(102, 'Stainless-Steel-Mild-Steel-Pergola-or-Cantilever', 'Stainless Steel/Mild Steel Pergola or Cantilever', 'CNC-LASER-CUTTING-DESIGN', 'Stainless Steel/Mild Steel Pergola or Cantilever structures are modern and stylish architectural elements designed to add both function and aesthetic appeal to outdoor spaces. These structures are ideal for creating shaded areas in gardens, patios, terraces, and even commercial outdoor settings.', 'Production Capacity: 50', '', '<h6>Material Specifications:</h6><p>- Material: Mild Steel (ISI Marked)</p><p>- Thickness: 1.5mm to 4mm</p><p>- Finish: PU Paint</p><p>*HPL Sheets, Glass or Polycarbonate sheets (as per requirement).</p>', '2024-10-29 12:30:21'),
(103, 'TRADING-OF-RAW-MATERIAL', 'TRADING OF RAW MATERIAL', 'TRADING-OF-RAW-MATERIAL', 'We are proud to be an authorized distributor of Jindal Stainless Steel. Jindal Stainless is a leading manufacturer of stainless steel products in India, known for their high-quality and durability. Our product range includes:', 'Production Capacity: 50', '', '<h6>1) SS Pipes &amp; Sheets</h6><p>- High-quality stainless steel pipes for various industrial applications</p><p>- Available in different sizes, thicknesses, and grades</p><h6>2) SS Railing Fittings and Accessories</h6><p>- Stylish and durable railing fittings and accessories for indoor and outdoor use</p><p>- Available in various designs and finishes</p><h6>3) SS Pillars and Mail Pillars</h6><p>- Strong and durable pillars for indoor and outdoor use</p><p>- Available in various designs and finishes</p>', '2024-10-29 12:37:12'),
(105, 'Stainless-Steel-Gate-with-HPL-CNC-Design', 'Stainless Steel Gate with HPL & CNC Design', 'GATE', 'Stainless Steel Gate with HPL and CNC Design combines the durability of stainless steel with the aesthetic appeal of High-Pressure Laminate (HPL) and Computer Numerical Control (CNC) design. This gate offers a unique and modern entrance solution for residential, commercial, or industrial properties.', 'Production Capacity: 50', '', '<h4>Material Specifications:</h4><p>- Frame: Stainless Steel (Grade 304 or 316)</p><p>- Infills: High-Pressure Laminate (HPL) sheets</p><p>- Design: CNC machined stainless steel</p><p>- Finish: Matte.</p><h4>Dimensional Specifications:</h4><p>- Gate Width &amp; Height: Customised</p><p>- CNC (laser cutting design) Sheet Thickness - 1.5mm</p><h4>HPL Specifications:</h4><p>- Brand : Greenlam or Century Exteria</p><p>- Material: High-Pressure Laminate (HPL)</p><p>- Color: Various colors and patterns available</p><p>- Finish: Matte</p><h4>Welding:</h4><p>- Only Argon &amp; Laser Welding</p><h4>Locking System:</h4><p>- Stainless Steel Center locks (Harrison brand or equivalent brand available)</p><p>- Electronic locks or IP VDP</p><h4>Gate Automation: (*Optional)</h4><p>- Capacity - Depends on size and weight</p><h4>Slider Specification: (* For Slider gates)</h4><p>- SS 304 Grade sliding wheels with bearing (SKF brand)</p><p>- Nylon Roller with bearing (SKF brand)</p><p>- SS U Channel with bright bar (Rail track)</p><p>- SS Plate L Connector (Hanging of gate rollers) - 200 x 200 x 8mm Plate.</p><h4>Additional feature:</h4><p>- LED lights can be used as per design.</p>', '2024-11-06 05:39:23'),
(106, 'Aluminium-Louvers-Profile-Gate', 'Aluminium Louvers Profile Gate', 'GATE', 'Aluminium Louvers Profile Gate is a sleek and modern entrance solution featuring horizontal or vertical louvers made from high-quality aluminium profiles. This gate offers excellent ventilation, visibility, and security for residential, commercial, or industrial properties.', 'Production Capacity: 50', '', '<h3>Material Specifications:</h3><p>- Frame: Stainless Steel or Mild Steel (as per requirement)</p><p>- Louvers: Aluminium profiles (140mm to 150mm width &amp; Height - 12 ft and 15 ft)</p><p>- Finish: Powder Coated or PU Paint</p><h3>Dimensional Specifications:</h3><p>- Gate Width &amp; Height: Customised</p><p>- Louver Thickness: 1.5 mm to 3 mm</p><h4>Louvers Finish Specifications:</h4><p>- Color: Various colors available (e.g., anodized or wooden)</p><p>- Finish - Matte</p><h4>Additional feature:</h4><p>- LED lights can be used as per design.</p>', '2024-11-06 06:31:15'),
(107, 'Mild-Steel-Gate-with-HPL--CNC-Design', 'Mild Steel Gate with HPL & CNC Design', 'GATE', 'Mild Steel Gate with HPL and CNC Design combines the strength of mild steel with the aesthetic appeal of High-Pressure Laminate (HPL) and Computer Numerical Control (CNC) design. This gate offers a durable and modern entrance solution for residential, commercial, or industrial properties.', 'Production Capacity: 50', '', '<h3>Material Specifications:</h3><p>- Frame: Mild Steel (MS) - ISI Marked</p><p>- Infills: High-Pressure Laminate (HPL) sheets</p><p>- Design: CNC machined mild steel</p><p>- Finish: PU Paint or hot dip galvanized</p><h4>Dimensional Specifications:</h4><p>- Gate Width &amp; Height: Customised</p><p>- CNC (laser cutting design) Sheet Thickness - 1.5mm to 8mm (as per requirement).</p><h4>HPL Specifications:</h4><p>- Material: High-Pressure Laminate (HPL)</p><p>- Thickness: 6 mm</p><p>- Color: Various colors and patterns available</p><p>- Finish: Matte</p><h4>Welding:</h4><p>- Only Argon &amp; Laser Welding</p><h4>Locking System:</h4><p>- Stainless Steel Center locks (Harrison brand or equivalent brand available)</p><p>- Electronic locks or IP VDP</p>', '2024-11-06 06:45:20'),
(108, '-Mild-Steel-Industrial-Slider-Gate-with-Automation', ' Mild Steel Industrial Slider Gate with Automation', 'GATE', 'Mild Steel Industrial Slider Gate with Automation is a robust and reliable entrance solution designed for industrial applications, featuring a sliding gate made from mild steel, equipped with an automation system for smooth and secure operation.', 'Production Capacity: 50', '', '<h3>Material Specifications:</h3><p>- Frame: Mild Steel (MS) - ISI Marked</p><p>- Finish: PU Paint or hot dip galvanized</p><p>- Automation System:</p><p>&nbsp; &nbsp; - Motor: 3-phase induction motor (415V, 50Hz)</p><p>&nbsp; &nbsp; - Gearbox: Heavy-duty reduction gearbox</p><p>&nbsp; &nbsp; - Control Unit: Programmable logic controller (PLC)</p><p>&nbsp; &nbsp; - Sensors: Infrared or magnetic sensors for safety and security</p><h4>Dimensional Specifications:</h4><p>- Gate Width &amp; Height: Customised</p><h4>Welding:</h4><p>- Only Argon &amp; Laser Welding</p><h4>Locking System:</h4><p>- Stainless Steel Slider Locks</p><p>- Electronic locks or IP VDP</p><h4>Slider Specification:</h4><p>- SS 304 Grade sliding wheels with bearing (SKF brand)</p><p>- Nylon Roller with bearing (SKF brand)</p><p>- MS U Channel with bright bar (Rail track)</p><p>- MS Plate L Connector (Hanging of gate rollers) - 200 x 200 x 8mm Plate.</p>', '2024-11-06 06:49:14'),
(109, 'Stainless-Steel-Powder-Coated-Railings', 'Stainless Steel Powder Coated Railings', 'RAILING', 'Stainless Steel Powder Coated Railings are a durable and corrosion-resistant solution. Made from high-quality stainless steel, these railings are powder coated with a durable and scratch-resistant finish.', 'Production Capacity: 50', '', '<h3>Material Specifications:</h3><p>- Material: Stainless Steel (Grade 304 or 316)</p><p>- Powder Coating: Polyester or Polyurethane based</p><p>- Thickness: 1.5 mm</p><h4>Finish Specifications:</h4><p>- Color Available: Wengy Wood, Oak Wood, Cherry Red.</p><p>- Gloss Level: Matte, Glossy.</p><h5>Dimensional Specifications:</h5><p>- Railing Height: 900 mm (standard)&nbsp;&nbsp;</p><p>- Top Handrail &amp; Mid Rails: Customizable to site requirements</p><p>- Baluster Spacing: 900 mm.</p><p>- Glass Thickness - 12mm Toughened.</p>', '2024-11-08 05:43:39'),
(110, 'Stainless-Steel-Wooden-Railings', 'Stainless Steel Wooden Railings', 'RAILING', 'Stainless Steel Wooden Railings combine the durability of stainless steel with the natural beauty of wood, creating a unique and striking railing system. The stainless steel framework provides strength and corrosion resistance, while the wooden infills add warmth and texture.', 'Production Capacity: 50', '', '<h3>Material Specifications:</h3><p>- Framework: Stainless Steel (Grade 304 or 316)</p><p>- Wooden Infills: High-quality wood (e.g., Teak, Hardwood, or Engineered Wood)</p><p>- Wood Finish: Natural oil-based stain, paint, or varnish.</p><h4>Finish Specifications:</h4><p>- Color Available: Wengy Wood, Oak Wood, Cherry Red.</p><p>- Gloss Level: Matte, Glossy.</p><h4>Dimensional Specifications:</h4><p>- Railing Height: 900 mm.</p><p>- Top Handrail and Mid rails: Customizable to site requirements</p><p>- Baluster Spacing: 900 mm.</p><p>- Wooden Infill Thickness: 20 mm to 40 mm.</p><p>- Glass Thickness - 12mm Toughened.</p>', '2024-11-08 05:51:52'),
(111, 'Stainless-Steel-Mild-Steel-Barricades', 'Stainless Steel/Mild Steel Barricades', 'URBAN-STREET-FURNITURE', 'Stainless Steel/Mild Steel Barricades are robust and corrosion-resistant barriers designed for crowd control, safety, and security applications. Made from high-quality stainless steel/mild steel, these barricades offer excellent durability and resistance to harsh environments.', 'Production Capacity: 50', '', '<h3>Material Specifications:</h3><p>- Material: Stainless Steel (Grade 304 or 316), Mild Steel (ISI Marked)</p><p>- Thickness: 2mm to 5mm</p><p>- Finish: Brushed, Mirror Polished or PU Paint</p><h4>Dimensional Specifications:</h4><p>- Custom sizes available</p><h4>Applications:</h4><p>- Crowd control</p><p>- Safety and security barriers</p><p>- Event management</p><p>- Construction sites</p><p>- Industrial facilities</p>', '2024-11-08 06:02:59'),
(112, 'Stainless-Steel-Fire-Doors', 'Stainless Steel Fire Doors', 'URBAN-STREET-FURNITURE', 'Stainless Steel Fire Doors are designed to provide safety and protection in the event of a fire. Made from high-quality stainless steel, these doors offer excellent durability, corrosion resistance, and fire resistance.', 'Production Capacity: 50', '', '<h3>Material Specifications:</h3><p>- Material: Stainless Steel (Grade 304 or 316)</p><p>- Thickness: 1.2mm to 3mm</p><p>- Finish: Brushed or Mirror Polished</p><h4>Dimensional Specifications:</h4><p>- Custom sizes available</p><h4>Features:</h4><p>- Durable and corrosion-resistant</p><p>- Excellent fire resistance</p><p>- Easy to clean and maintain</p><p>- Customizable to fit specific requirements</p><h4>Applications:</h4><p>- Commercial buildings</p><p>- Industrial facilities</p><p>- Hospitals and healthcare facilities</p><p>- Government buildings</p>', '2024-11-08 06:06:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_inactive_user`
--
ALTER TABLE `add_inactive_user`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `add_job`
--
ALTER TABLE `add_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_job_post`
--
ALTER TABLE `add_job_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_price`
--
ALTER TABLE `add_price`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `add_project`
--
ALTER TABLE `add_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_user`
--
ALTER TABLE `add_user`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `banners_projects`
--
ALTER TABLE `banners_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_images`
--
ALTER TABLE `blogs_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_inactive_user`
--
ALTER TABLE `add_inactive_user`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_job`
--
ALTER TABLE `add_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_job_post`
--
ALTER TABLE `add_job_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_price`
--
ALTER TABLE `add_price`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `add_project`
--
ALTER TABLE `add_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `add_user`
--
ALTER TABLE `add_user`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `banners_projects`
--
ALTER TABLE `banners_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `blogs_images`
--
ALTER TABLE `blogs_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
