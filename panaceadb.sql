-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2018 at 03:11 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panaceadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_awardhistory`
--

CREATE TABLE `hr_general_awardhistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `AwardName` varchar(100) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `InstitutionAddress` varchar(200) NOT NULL,
  `IssuedDate` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_general_awardhistory`
--

INSERT INTO `hr_general_awardhistory` (`id`, `CompanyId`, `EmployeeId`, `AwardName`, `Institution`, `InstitutionAddress`, `IssuedDate`, `CreatedById`, `CreatedAt`, `ModifiedById`, `ModifiedAt`, `Remarks`, `Active`) VALUES
(1, 'dd09727b-2507-3a15-ac2d-eed089e3b88f', '82c856f4-d35e-3192-bed9-04c974f8d6a9', 'Public-key composite protocol', 'Dare, Upton and Schamberger', '7310 Murray Route\nSouth Layne, VT 31772-9917', '1994-10-30', 'e6d289f3-f393-3384-afc3-f2211ad2e741', '1972-01-17 18:13:00', 'b006b273-3d3e-32b5-a60c-12bee8234537', '2006-09-29 16:34:15', 'Dolorum tempora nostrum voluptas exercitationem facilis. Commodi qui iste illo eius iste. Accusamus ', 0),
(2, 'b8b69818-d790-38d9-81f0-8b23c5fca1ac', 'd2c1495f-9ff6-39f8-96f3-b4aaa4020fdb', 'Seamless multimedia contingency', 'Cruickshank Ltd', '61116 Grant Union Apt. 717\nPort Holdenberg, NV 16468', '2014-06-13', '883f844b-4824-3b62-a8bd-84b7157b0c51', '1983-07-07 12:13:18', '3205cc7d-b332-3944-bc2e-2457cdc9e2cd', '1998-11-27 15:57:46', 'Quo eum perspiciatis eaque aut nihil. Explicabo amet voluptatibus cumque necessitatibus voluptas eos', 1),
(3, '89cc055b-a1f4-399b-8f27-e4a2b8510ae8', '4d34a790-c635-3f27-aaed-c77494a678f4', 'Streamlined mission-critical focusgroup', 'Rogahn Group', '4151 Johnpaul Mills\nNorth Haleigh, NH 35728', '2007-01-13', 'ae2f398f-102d-3049-9933-93b2f0b92a35', '1971-03-24 16:47:18', 'b28aed72-6aac-3676-b7ed-207f88b6ceac', '1987-10-01 23:58:50', 'Sapiente ducimus et illum amet architecto et aut reiciendis. Ullam excepturi nemo molestiae delectus', 1),
(4, 'a362f530-d68e-399a-81b7-e014e6ebe345', '15ed58f4-2c24-3452-be43-3e2431a8fbe4', 'Front-line zerotolerance processimprovement', 'Shields, Anderson and Lindgren', '3207 Tessie Row Suite 506\nEast Spencermouth, AZ 72710', '1991-11-27', 'b4301f01-dfcd-384d-b7ca-df3983dd65c8', '1973-04-20 13:06:18', '98911384-7a09-3cb2-868d-39694f81d618', '1977-01-18 23:34:24', 'Iure ex praesentium praesentium vero nobis. Eius alias eligendi dolorum aut quidem. Ea magnam facere', 1),
(5, 'f65a5425-d520-3903-8dd0-ff639f0401a4', 'd89f24d2-0509-334b-9280-995b895778d1', 'Re-contextualized web-enabled initiative', 'Schuster, Weber and Stiedemann', '47348 Lenny Green\nNew Linniefurt, MN 93649', '2007-01-09', '0d96d030-5652-39da-a683-f83bd3a3f579', '2017-11-23 19:12:46', '07dd4f54-b42a-35eb-b636-87ae074d4c55', '2013-10-29 16:31:12', 'Voluptates voluptatibus assumenda aliquam animi reprehenderit. Eveniet aut voluptate in non porro. P', 1),
(6, 'cf1a0573-78c4-3408-b108-138c0a648dc2', '0fad2ce9-bce1-339a-b78f-555729adfb04', 'Digitized exuding database', 'Kling, Adams and Witting', '7963 Botsford Expressway Suite 536\nNew Jessie, RI 91317-3779', '1984-03-02', '73979b38-4c99-3f56-a479-643013c40a8e', '1989-09-09 05:15:32', '8f67ee4f-3fb2-3223-9cc3-7307b4cac119', '1977-07-20 22:22:05', 'Qui et voluptatem tempore molestiae. Voluptas rerum inventore consequatur rerum optio.', 0),
(7, 'faa73379-9944-34d7-9600-9ae493b7a576', '206a3701-32bf-38a5-bf1c-2c02f92063cd', 'Reduced interactive infrastructure', 'Dach, Aufderhar and Hilpert', '09135 Joanne Creek\nMoorehaven, NY 77642-8923', '2008-07-19', 'ab85cb0f-61f6-37eb-9a5a-99d5562170c5', '1989-09-20 04:20:33', '085043ef-5228-3241-80a6-469ccfd6b1b6', '1997-07-22 02:38:40', 'Commodi laborum repellendus labore deserunt. Id eos earum voluptatibus aut consequatur consequuntur.', 1),
(8, '9bf0fc39-6c14-3984-a895-24bde958b26d', '3ad1d73f-9df8-383d-aa6f-ca841ecba753', 'Implemented composite attitude', 'Satterfield Group', '94222 Quincy Fords\nRessiechester, RI 26721-0516', '1999-02-02', 'b2bc5b9a-6077-335e-a44c-60173f21a2be', '2015-12-17 04:01:59', 'c9385629-3965-3587-90d4-a314046e8e94', '1975-11-24 00:10:35', 'Molestias consequatur suscipit odit harum corrupti numquam esse. Consectetur voluptates nihil labori', 0),
(9, '7ac06332-4672-332b-a3ce-8a4bd350219f', '26212549-8141-3e40-964a-8d46dc58a24d', 'Polarised asynchronous contingency', 'Dicki, Heathcote and Donnelly', '6476 Fisher Garden\nGaylordtown, DC 72579', '2018-08-29', '6b67236a-3853-3bcb-8b67-5c78035e00c7', '1979-09-21 11:10:21', '252d17d4-a8ac-3437-b83d-dadc127e0669', '2017-07-30 10:34:41', 'Praesentium maxime possimus facere odit voluptatem et expedita. Vitae fugit laboriosam aliquam ut. S', 1),
(10, '406d0dbd-5196-3cd5-892a-915374461766', '102439ae-bb67-36e5-8a12-463643837efb', 'Business-focused system-worthy monitoring', 'Schulist, Dicki and Denesik', '8550 Sipes Underpass Suite 826\nDeontemouth, SD 79512', '2012-07-19', 'ef3d2273-377b-3e07-a5ed-c720c212eae1', '2016-07-09 14:09:41', 'e64140a4-d9eb-3f47-bd6b-d867913f4225', '2009-04-01 09:24:32', 'Aut sit facere impedit dolores molestias cumque omnis. Eum et quia vitae id alias. Neque nulla unde ', 1),
(11, '43ff2968-5cda-34a5-9f5d-9ef83ad343c5', '2e8d69fd-5864-34a8-a12d-9f842c270538', 'Public-key real-time implementation', 'Pollich-Kuhlman', '0837 Theron Rue Apt. 383\nKittyville, MD 05753-0776', '2010-04-12', '64649aeb-0b31-3d50-b928-64a298dba007', '2009-06-08 09:55:03', '0454e46f-8333-3b4d-aa14-b8b5d94c2d58', '1990-06-14 18:05:05', 'Qui qui voluptas illo aut. Modi molestiae vel libero autem repellendus aut. Temporibus eos omnis odi', 0),
(12, '4fb1bf84-d9d2-3ec3-8336-aeac890160f3', 'e5df2727-e321-3aea-9248-df3ea21d69f7', 'Multi-channelled fault-tolerant alliance', 'Lowe, Gleichner and Hauck', '9365 Strosin Keys Suite 973\nLake Rebeccaberg, CO 20280-5217', '1970-04-29', '7995002b-cd7f-32c5-b117-6afd3f41dab6', '1999-11-21 03:31:15', '06ba9bd7-83c3-32b3-9a5c-75be5314af07', '2017-07-20 21:44:52', 'Quia molestiae laboriosam nisi. Voluptatem quam odit ut. Commodi asperiores ipsa qui voluptatibus ut', 0),
(13, '930aeb34-624b-3c4a-b000-409466622fe0', '527c3abb-1197-3f88-9238-af508c772565', 'Re-contextualized 5thgeneration support', 'Pfeffer-O\'Connell', '932 Olen Village\nNorth Karlmouth, AZ 60918-0736', '1974-09-07', 'e058daef-fbb3-343a-ab5c-46b33bb22f06', '2018-07-10 23:28:43', '5d1b5dce-3d73-3e01-9a1e-017fa9486072', '2002-12-06 04:33:12', 'Blanditiis et dignissimos pariatur repellat est est nobis. Excepturi amet vel consectetur voluptatum', 0),
(14, 'bfd5e55a-a920-3bcf-a522-61d5cb9f00ea', '7d012587-3ad5-3658-b4b5-facb9be90f14', 'Up-sized bottom-line info-mediaries', 'Schaden LLC', '482 Sawayn Rapid\nNew Kaden, DC 08171-5186', '1999-01-13', '0641857d-cab7-38d6-b312-afd39373f1dc', '1992-05-17 11:44:09', '1c4202cc-1671-344d-b248-258d641ba1c1', '1999-02-21 07:44:26', 'Ut dolor corporis tempore ut facilis est iure. Est aut voluptatem itaque. Laboriosam quam in commodi', 0),
(15, '300e5bca-215b-3e0d-a7e8-49b11bbb85dc', 'cc8753c8-de9f-3e8d-8a69-e71ae3e890a6', 'Quality-focused even-keeled processimprovement', 'Schiller-Huel', '3997 Daniel Course\nKuphalhaven, TN 54267-3658', '1994-11-04', 'b81b1856-9883-375e-a927-6ca10ac8cd03', '2015-04-04 08:16:02', 'd0d4e49f-ad73-3d75-8a22-6b750f24e5a6', '2012-02-21 08:14:47', 'Sint accusamus provident cum consectetur deserunt. Repudiandae nam dolor sint occaecati. Porro molli', 1),
(16, 'e7c8b954-aa34-31af-8902-3efe0d0d0b85', '28c7a546-7adf-3f56-83d4-f1995cda2519', 'Seamless holistic standardization', 'Casper-Parker', '838 Quitzon Burg Apt. 937\nHyattfurt, MD 17647', '1989-09-27', '990129a5-62cd-3e30-9742-66f401c95e00', '2005-04-02 11:11:21', '53a1fa56-d49e-38f3-a1a4-addb1ea6bc31', '1986-11-28 14:21:17', 'Et quam quis molestiae fugit. Nobis atque laborum labore rem quod laboriosam. Repellat non quia et m', 0),
(17, 'ef81bdf0-42a2-3cca-a6b5-aec7ffcfd30f', '31338215-750f-37ab-b82f-522b4fbb5da2', 'Horizontal user-facing info-mediaries', 'Ratke Ltd', '2394 Streich Islands Suite 944\nHarrisstad, MO 93072', '2007-09-24', '1a0f2fed-ff84-3b4b-885d-c77d529e6536', '1998-02-21 07:33:55', '7889ecff-1af9-3a6e-9135-37dabd0aee05', '1990-09-05 19:21:41', 'Consectetur ipsa sapiente reiciendis dignissimos. Sunt dolor placeat aut. Alias beatae delectus sit ', 0),
(18, 'f8a723b2-c420-350a-9fb9-e092178fdab6', 'ea6c4439-3b55-353e-a625-e3dc95376d93', 'Upgradable fresh-thinking firmware', 'Schneider-Gerhold', '681 Unique Crest\nToyborough, RI 05222-9986', '2012-05-07', '2eda4555-3b09-3ac9-b0f5-bf52efd7177e', '1978-12-16 02:42:47', '20ea284d-cb59-350b-8c4b-7202d563b09e', '1986-07-30 08:28:14', 'Quas quidem aut odio cumque minima et. Laboriosam eaque consequuntur voluptas pariatur et aliquam. C', 1),
(19, '25013edd-a4a0-3084-b673-63c1752822a0', '9b01b4fc-291f-3e8f-8431-fca0d9d53e5f', 'Self-enabling content-based implementation', 'DuBuque Inc', '68964 Nelle Hills Apt. 780\nMargarettaside, GA 20945-6886', '2014-06-27', '4b5c33e8-db81-3d1f-b8f6-21fae4b8c326', '1998-12-13 09:32:33', 'eae594f8-2688-354e-8872-cc533826bc03', '1984-10-16 02:05:17', 'Quibusdam excepturi dignissimos eius aut atque nam. Aut et recusandae consequuntur natus laudantium.', 1),
(20, '23c9c8d9-14a9-30e8-9597-91e03670c563', 'f5c25e0f-c5f7-39c5-8784-15d10a04d373', 'Front-line leadingedge orchestration', 'Jacobi, Marvin and Borer', '23736 Loraine Shore\nMarquardtshire, WI 51677', '1998-06-03', '7f144b56-aab8-30e4-a785-6260e6aedc75', '2017-07-10 13:32:28', 'c548d1bc-834a-34dc-9631-f86de37cd562', '1996-03-08 10:24:29', 'Ut est ex cum fugit. Impedit id inventore et dolores sint nihil veniam.', 1),
(21, '4d7fe50a-9627-3cbb-8640-8f81f6325f60', 'ac582622-a55c-30ee-8c11-ffcc43b5355e', 'Synergized background budgetarymanagement', 'Powlowski, Kemmer and D\'Amore', '8346 Aisha Points\nGenovevaland, MS 68220', '2006-08-01', '668f0638-2248-36be-9ae0-580989b45dd7', '1996-01-06 19:39:28', '8ff86d31-5748-38a2-a20c-b57e0fbd20cb', '2016-03-18 07:05:02', 'Quae doloremque quae a laboriosam adipisci sed id. Adipisci velit sint dolorum distinctio quis in ma', 1),
(22, '23fd95e0-ccb7-3d70-b95c-b20356cbbeca', '02233c4f-0bfe-391e-bcfa-10ce69099640', 'Multi-lateral upward-trending task-force', 'Toy-Deckow', '07997 Alberta Mission\nPort Avis, NM 00413-6516', '1996-10-29', '7f3cd0b4-df24-3f42-9376-ede6ace8beab', '2008-10-18 12:34:41', 'fbe2cbd1-29c5-3903-a7b0-fa1147e14273', '2012-06-26 05:19:00', 'Aut tenetur officiis voluptas est ducimus est. Facilis repellendus voluptas voluptates culpa dolorib', 1),
(23, 'a0569754-5de6-389c-a122-c0028d41347e', '62e64855-aeb5-31c4-8906-4d7e73b1c059', 'Persevering scalable extranet', 'Bogan and Sons', '7505 Catalina Harbor\nMilotown, UT 41102-4796', '2006-11-24', 'ab04cfc1-688c-3288-bdf9-d8f0f54ce72a', '1973-08-26 21:26:00', 'dce4575d-f479-3c88-b1c7-393063e67c85', '1989-03-09 04:08:25', 'Rerum quia ea recusandae hic ex ut. Rem modi iusto laudantium dolores vel delectus qui. Nihil quis b', 0),
(24, '578f72fc-b53d-3cfb-83c4-641c90e0f77d', 'd4035e84-0bc8-3d73-96bd-a13f3b29c5af', 'Ameliorated attitude-oriented moratorium', 'Denesik PLC', '041 Alexandra Extensions\nAnyaland, ID 74488', '2011-03-06', '9a162b0e-f037-344b-b5e0-c7c12a6c4da1', '1998-06-23 09:26:25', '57a68742-da5b-36a9-9d9e-eea8de2e9300', '2006-10-23 00:35:29', 'Sunt labore quia recusandae ratione et. Fuga tempora voluptas eius ea eos nihil eum. Est unde nihil ', 1),
(25, '57d39aff-c22a-3b48-8ef5-baa734b7d6fd', 'f2becb9e-a702-3012-8473-ccdc63ec5df1', 'Adaptive executive pricingstructure', 'Keeling PLC', '487 Olson Square Apt. 430\nRubytown, VT 90575-1677', '2013-01-14', '30171c55-9794-3187-9960-ee506abc8ff3', '2000-12-04 22:07:29', '7b88c789-c62b-3b94-91e5-40eb969a530e', '1996-02-21 06:43:49', 'Explicabo est omnis velit aliquid. Sed temporibus vitae enim tempore itaque. Nulla ab cupiditate arc', 1),
(26, '3b9b0476-01f6-3544-947f-e58e67421584', '7a4b7073-3a01-3fef-8d19-6b0fba2fc495', 'Diverse 6thgeneration GraphicInterface', 'Kilback LLC', '650 Joshuah Villages Apt. 843\nSouth Elise, WY 28274', '2005-06-25', 'bae56d38-96f4-38ea-ad2b-bc1950ae1ecb', '1994-06-03 19:10:13', '50aa9968-5a12-3885-ae43-c5b36b544d4a', '2007-06-01 21:10:21', 'Est voluptatem magnam aliquid quam et id ea. Quidem autem at tenetur hic ut.', 0),
(27, '57c370b8-30d5-37ee-ab3b-115024ea125b', 'ef427464-3555-3953-8ba0-ed3386739f1d', 'Ergonomic encompassing interface', 'Schmidt-Gislason', '614 Spinka Port\nRydermouth, MI 74991-3359', '1971-12-21', '15303592-1ef2-324a-8bd4-59bca95f8483', '1984-03-08 02:47:04', 'f99e4b12-4ce2-3113-ad7d-ab360421bee8', '1997-12-24 01:29:45', 'Praesentium expedita voluptates sed voluptas. Qui illum eaque nobis autem totam aperiam numquam. Cul', 1),
(28, '428dc97e-66c7-3564-90cd-b9517088c748', '57baba03-4fda-3a12-941d-d8a4bb2b3c75', 'Virtual content-based emulation', 'Abshire, Skiles and Torphy', '84018 Bernardo Lake\nNew Mathew, ID 95566', '1972-02-19', 'ec3cb399-96a5-3fb3-8eb4-df3d19d531f0', '2000-07-18 13:17:32', '62557315-395c-3718-8167-087f311ea317', '2010-11-19 10:16:14', 'Ut repellendus eligendi rerum explicabo repellendus tempora et velit. Est sint sed ut numquam quaera', 1),
(29, '45351b73-1016-3c63-9c1b-f08f0bb397a6', 'b65dc4ee-a5df-312c-914f-9392b5665ceb', 'Upgradable value-added matrices', 'Jaskolski, Bogisich and Buckridge', '15095 Jenifer Summit\nNew Isidroview, MS 61369-5056', '1971-02-21', '183dfcf8-c1c2-3720-b9b9-9525de3ce3d6', '1988-12-27 03:12:46', '65631c92-20e5-3996-a35f-f65caac16367', '1972-02-04 10:50:20', 'Est libero consequuntur hic aut voluptatem tempore. Dolor quae dolorem magni impedit sed sunt volupt', 0),
(30, '94115ebc-b31d-3f77-bbfb-5c8e8d244a48', 'f826fcff-62a4-3914-9681-5fc4e654904d', 'Pre-emptive multi-state service-desk', 'Collier Ltd', '91024 Howe Alley\nKeeblerfort, WV 78219', '2011-11-11', '7bfbcc7d-8a51-37cf-ba19-9f49a9750cb4', '1971-08-10 19:35:42', 'c9fa8103-8e99-3e71-9413-86ca051d4617', '2008-09-04 10:25:34', 'Ab et sed enim ut dolorem. Dolores est aspernatur expedita blanditiis quas omnis.', 0),
(31, '80f30383-d7e4-3444-833b-0e215454d4c8', 'f1c927b1-feb3-3c3b-9348-5b103ebd27e3', 'Cross-platform transitional data-warehouse', 'Little-Renner', '67449 Reilly Run Suite 301\nNorth Rebecamouth, TN 52747-6804', '1976-04-21', '2b79c6e8-cdeb-31a2-9ef5-4fab12b3c282', '1982-12-15 02:16:45', 'd3292b17-a7e5-3022-aadf-43227329fe48', '1990-01-29 16:23:31', 'Consectetur voluptas fugiat ut. Numquam consequatur quia tempore dolore ratione officiis. Velit eaqu', 1),
(32, '714f78d8-a5c7-33ae-b876-8b95f17083aa', '54038512-6655-30a7-bb0c-32a320c2bc9e', 'Assimilated encompassing project', 'Shanahan-Gaylord', '36673 Florine Meadow Suite 902\nPort Marcelina, AK 79201', '1980-04-08', 'd38af868-4108-3684-aa8e-d03aa32aa931', '1984-09-02 00:25:15', 'bd36cb8f-262a-307a-83e3-c51abbafab14', '2008-09-10 08:25:19', 'Et repudiandae aut quidem aut impedit sit. Dolor velit necessitatibus odio qui numquam magni. Commod', 1),
(33, '63cc7140-2c9a-3f09-885a-3916b96cb173', '3b7b4110-8029-36b9-bbe9-0360bcc58dd0', 'Future-proofed empowering monitoring', 'McKenzie Group', '149 Adams Hill Apt. 269\nReannaville, VT 87809', '1998-02-20', '21d2ff94-5f94-3cc8-8a02-d0afe231289c', '2013-09-08 11:56:05', '614213e7-8450-3e6d-b3ab-11d66627224a', '2001-04-11 22:05:26', 'Velit soluta est est hic. Ipsa vero sint at ex molestiae et nobis molestiae.', 1),
(34, '7e2a22f9-d373-3b23-8441-1e130c206ba8', '09ea4a53-60dc-37ca-bb4a-8df5749359e1', 'Horizontal empowering moratorium', 'Lockman PLC', '877 Hintz Stream\nKariview, OR 27306-1770', '1996-01-10', 'c4916b87-3a06-3548-8989-094d0f608c2d', '1974-06-22 05:47:26', 'a70f17c2-ece1-34a7-99fd-ce4301222065', '2006-10-23 03:39:26', 'Mollitia saepe consequatur molestiae et molestiae. Minus eos et voluptas accusamus et quis. Et cupid', 1),
(35, 'af829e1f-18ec-3c6a-8db9-3a724ce7d58d', '44d21f72-60b0-31f4-a879-e3331f1059d1', 'Advanced regional model', 'Smith LLC', '741 Stiedemann Road\nHayesside, RI 13254', '2006-05-26', 'e29d7911-6b29-3176-9329-5539ce616dc2', '2001-05-30 07:56:00', '94732117-604e-3f08-8b67-d9626b04b930', '1987-10-30 16:47:50', 'Laboriosam et quo quod perspiciatis harum ipsa amet. Perferendis vel aspernatur excepturi omnis dist', 1),
(36, '05cfa272-94e8-33ac-8be6-2d194446ccfa', 'edf60962-a0c7-3ddc-8da0-62840d29ca15', 'User-friendly holistic budgetarymanagement', 'Jacobs, Smith and VonRueden', '182 Grant Mount Suite 030\nHamillville, WA 95463-6447', '2001-08-16', 'e262cea8-d259-3fac-9451-4a357b184b7c', '1982-09-22 08:43:38', '8549f851-ed61-3b96-9db9-c4ba7c5c5182', '1990-10-10 10:03:13', 'Doloremque eveniet aliquam reiciendis quo. Velit natus quaerat et tempore ratione. Enim et id soluta', 0),
(37, '24d589df-6678-3f3b-a3fe-d4ec1075a115', '34443f81-bfab-3206-bde9-aedc44060b7c', 'Up-sized bifurcated matrices', 'Nienow, Harber and Franecki', '9943 Rohan Way\nRaynorfort, DC 11627-5599', '1982-08-07', 'f74d8582-af12-3798-a4a2-965645a87dcf', '2000-03-26 14:03:58', '76603814-2556-3eea-bfca-1350e77403aa', '2013-05-20 01:05:51', 'Mollitia eos sed cum aut consequuntur voluptas. Sequi sit aut reiciendis dolores harum ipsum et.', 1),
(38, 'c8a2c3a3-3336-3c9a-b2ec-37a5ba4f2479', 'b936c5a3-8170-3a14-a49c-2023832ecd8b', 'De-engineered logistical securedline', 'Kutch Inc', '78127 Frami Ports\nNorth Boport, CA 31092', '1997-03-31', '80d6fa3f-f51f-3e0f-aab9-f9bbc2c38989', '1999-04-24 08:16:56', '48082b6c-4786-3a65-924f-35bfeb06b043', '1980-11-29 17:05:27', 'Autem sint libero doloremque earum enim quos perferendis illum. Non voluptas minima ad eaque eaque e', 0),
(39, 'a1b82a5d-d2dd-3434-a02e-4eb079c72da7', '7cb21090-6479-3c86-91bf-1b1163c91976', 'Quality-focused local localareanetwork', 'Lowe LLC', '28759 Alejandra Valley Apt. 203\nNorth Shanna, AR 23578-3648', '1982-12-25', '15422036-b96b-38c9-9d5c-7041c6098a39', '1986-12-04 11:21:12', 'f3d42dad-7101-3ad5-8725-b5bbdb6da979', '2010-04-22 20:31:07', 'Autem rerum eum eum sunt quidem itaque. Pariatur placeat laudantium ut maxime necessitatibus adipisc', 1),
(40, '017b05c3-93ba-334d-b701-3784f00dd272', '39f0060d-f1b0-3dfe-bce0-a8e3d70c0626', 'Team-oriented radical structure', 'Hackett Group', '96454 Wilson Forest\nLake Aglae, CA 18623-8966', '1992-08-24', '5382e077-7ab7-39d0-bf39-fdd310f75103', '2013-02-27 01:16:37', '9d5c50d7-712d-3d3e-ac12-20ca2d36550a', '1985-08-26 01:24:38', 'Quas quisquam vel est et tempora dolorem cumque. Eaque consequatur nulla dolor voluptatem. Rerum vol', 1),
(41, '6a553cc6-54e7-3fc6-a2ac-48c2290899dd', '488d5184-905f-3e85-b892-bdba651b88fa', 'Expanded object-oriented matrix', 'Bauch, Terry and Erdman', '3161 Batz Wall Suite 697\nShieldsberg, TN 68378-4591', '1988-04-11', '6c3196d8-7cb7-3c7d-a120-4dd4608d375e', '1976-11-03 02:47:40', '73750a17-a6e8-37b9-89a2-0293200bb274', '1998-02-19 19:49:02', 'Cum praesentium illum provident totam accusamus. Laboriosam quod voluptatibus perspiciatis autem dol', 0),
(42, '4d7e9699-f307-3da6-af1c-db77f2a7d91a', '2f0b7308-a421-3c5b-af8f-52276036f872', 'Ergonomic zeroadministration leverage', 'Runte, Weimann and Roob', '930 Minnie Walk\nLake Harmonland, WI 57173', '2018-08-18', 'b54fcc61-7d97-31e9-88ab-50aa72f92ed0', '1990-04-24 21:03:13', 'ec2c8896-65b1-39cb-b5a9-294e804d51fb', '1999-08-19 15:45:20', 'Blanditiis et beatae nihil placeat ratione autem laboriosam. Autem perspiciatis nulla dolores evenie', 1),
(43, '8b283558-58e2-3ebb-add6-18a122614653', 'ad41419b-48fd-3c8c-a184-cdab1abd7713', 'Devolved secondary challenge', 'Hirthe-Abshire', '4212 Asa Unions Apt. 838\nWaltertown, MD 47269', '1983-10-08', '9734c4b1-fdd1-30a7-a066-df54ce44c896', '1997-01-19 00:54:13', '221afbeb-bcfe-3d93-8ecb-1c5321aeeeaf', '1991-09-18 17:18:28', 'Illum nulla excepturi cupiditate labore ut libero blanditiis. Modi necessitatibus enim esse illo vol', 1),
(44, '1d4d7051-c57a-339d-9434-2dc923278fcf', '22b5f8e8-65e9-3ca0-90b6-f3d6de7f9dc8', 'Business-focused optimal core', 'Pagac-Ondricka', '059 Ayden Road\nOkunevaton, SD 24365', '1979-10-30', '73e6f5e3-54e3-3a4a-84d9-6f8b07f9777e', '1989-05-28 09:36:00', '9f4bbb8c-65fc-328c-a90b-042a0824c548', '1994-06-07 18:22:33', 'Et dolores id ab nobis doloremque et. Quia illum nihil non adipisci suscipit placeat. Esse eum deser', 0),
(45, '05f26721-1cab-3e13-b37d-d9e1222afd3a', '106a314b-e839-330a-89a9-3ac826d0e674', 'Configurable actuating securedline', 'Treutel LLC', '06099 Ernesto Extension Apt. 877\nNorth Mauricio, SD 59444', '2012-09-19', '9c90dbbb-b961-3713-864a-be8fa0094705', '2010-05-26 19:53:34', '7a4b4fa9-3041-35bd-b7b9-7b9a810d9f1c', '1986-09-03 11:38:22', 'Voluptas cumque eos possimus voluptatibus. Neque cupiditate modi animi eos. Omnis suscipit animi eum', 1),
(46, '4c147772-1e8f-3f70-8ff5-343025a39c22', '5e115a3d-592d-3fab-ba99-36402ffcfc05', 'Sharable discrete benchmark', 'Aufderhar-Corwin', '58802 Mosciski Via\nEast Lianaborough, AR 17104', '2015-01-15', 'cc7c75bc-51b6-3b31-b614-29da4b9afd86', '2006-12-01 16:58:06', 'd1034c3a-9ad9-3b07-ab38-055bc8912000', '1972-05-20 15:28:41', 'Quae sit ipsa tempore ab ducimus delectus similique. Et dolor laudantium aut quibusdam. Molestias qu', 0),
(47, '9fceb366-c8d6-3e98-980f-ebbf120f4890', '697426e1-c1fd-3d05-8af9-9ac9812aa63c', 'Optional analyzing leverage', 'O\'Hara, Feil and Collins', '3851 Mathias Walk\nLennieport, NC 67283', '2000-05-02', 'd23266c9-c433-3c54-ad57-081e70513e0a', '1973-03-30 19:26:53', '00ad5e9f-5bf2-3914-8bc8-ac75621efc0d', '1976-12-25 02:44:36', 'Dolor rerum voluptatibus voluptas placeat est nemo est hic. Ut assumenda consectetur eveniet et. Fac', 1),
(48, '31917adc-f6ea-3245-891e-538b13648c0a', 'cdfa4003-498a-326d-81b2-bb9976d24a70', 'Programmable global securedline', 'Wilkinson Group', '035 Koelpin Fields\nNew Eulaberg, NH 21815-7872', '2000-10-14', '42fabdee-4575-361a-832c-063c2d7ff2bc', '1994-01-07 22:20:00', '9cafe79c-60d8-39f5-ac43-11d3dc659ead', '1977-06-17 05:54:35', 'Praesentium illo placeat placeat aspernatur. In at voluptatum possimus aliquam. Et et adipisci autem', 1),
(49, '0c034e3f-039b-3311-a787-f86eb7ff3aa5', 'd8a2fa63-8695-3c41-b1da-71267d03a9ef', 'Re-contextualized impactful application', 'Corkery PLC', '376 Wolff Terrace Suite 021\nWest Orieburgh, OR 96853-4450', '1976-02-20', 'ed558faf-4e17-3f98-9800-db7c827ae2d2', '2016-12-14 21:33:42', 'a5ecf9f2-7289-3a0e-88cd-3b875d9b3f70', '1992-08-17 04:40:36', 'Enim odio repellendus nulla laborum. Sed iste et quam repellendus doloribus. Ex ut rem quas consecte', 0),
(50, '47bce730-7b22-3875-8424-2e1c3519c9e0', '0b74afa8-43a6-39e7-92b2-dcf5e8a83fcc', 'Managed radical analyzer', 'Hegmann-Turcotte', '32042 Auer Ridges\nParisiantown, VA 38727-9860', '2013-03-09', 'b4e29fcf-938b-316b-b124-3052404d2306', '2013-04-25 05:33:07', '3ab1c839-1fa5-3491-9d4a-02c7504c196e', '1991-07-13 03:52:54', 'Eius voluptatem et rerum quas ut. Laudantium et vero natus nihil praesentium sint nostrum modi. Volu', 1),
(51, '82dbc3a2-3eef-34dc-a742-68ee34b45f52', 'ec7117f0-1776-3e8d-86bc-2ed85d809379', 'Diverse nextgeneration model', 'Conn, Wisoky and Ratke', '86356 Pagac Green Apt. 595\nNew Jeromeburgh, OK 27716', '2011-01-03', '0e3b0acf-683e-3a3e-8669-1e905c9c9079', '2012-04-28 12:25:33', '2412152f-8481-3e4b-9455-35ff50654068', '1995-07-21 06:54:54', 'Natus enim repudiandae qui id cum ducimus tenetur. Quisquam eos perspiciatis voluptas nemo sunt. Ad ', 1),
(52, 'e8379789-e7f7-3d51-b444-c22da30154df', '2cf7dcd4-ccaa-33aa-a2fc-bcdd83cca99b', 'De-engineered transitional orchestration', 'Cruickshank, Runolfsdottir and Langosh', '5381 Monahan Alley Suite 391\nNorth Jazmynfort, WY 04831-8712', '1977-12-07', '1e502fa2-8eb0-3264-a732-11cbf6ee6fe4', '2015-05-14 17:01:28', '064bc43e-7d65-38c9-865a-987e372ea9e9', '2004-05-28 05:27:46', 'Esse qui quos occaecati dolorem eaque optio. Qui molestiae nam ad consequatur iusto a et. Minus quae', 1),
(53, '5d9422d8-123b-396e-bdce-8b99ad10591d', '6ddb6298-c7f3-3c95-a262-8313f542b285', 'Cross-group composite emulation', 'Cremin, Haag and Schmeler', '33954 Sherman Islands\nRaynormouth, NM 16966-6028', '2015-10-09', '7ab5507f-3703-391b-bf84-36f1bcc76109', '1987-05-28 18:15:59', 'dbc92103-4002-3bfd-8421-f27e1e2cfd65', '1989-12-14 06:40:11', 'Et accusamus doloremque quis neque. Beatae beatae rerum occaecati hic. Et minima non et eos molestia', 1),
(54, '7b59a1c4-a938-368f-8a27-b072d1bc3a32', '0d113c9c-03bf-3c09-91f7-639a3c6de46a', 'Integrated methodical access', 'Barton, Rempel and Buckridge', '271 Sage Mountains Apt. 542\nGerrymouth, CO 52935', '1979-10-19', 'c2f027e4-c5dc-31c2-a096-910eae31e5db', '2005-02-09 11:21:26', '497d5b01-eea9-3ccf-a2a5-64281e276352', '1984-02-12 23:02:01', 'Amet iusto atque praesentium omnis esse. Delectus laboriosam eveniet odit aut rerum corrupti debitis', 0),
(55, '3adac140-49d1-3e89-b397-3b59c6769604', '12b11aa2-9e92-398a-967d-84796b982bd4', 'Multi-lateral uniform algorithm', 'Wuckert PLC', '35456 Berge Rest Apt. 454\nGiovannafort, DC 21560', '2013-06-04', '01fb4f16-464a-344b-902c-2f9e3de5fd42', '1996-08-23 22:36:01', 'de30d8d0-c1af-36e6-a785-131b8bfa195a', '2015-11-05 02:31:18', 'Laboriosam rem eum vero. Omnis harum vitae et voluptatum est et. Numquam inventore libero eius quia ', 1),
(56, '08a89bc0-45da-3dd2-90e1-4a783efcee3f', 'a68afd6a-2f38-36c6-bf90-a77730ecb4ea', 'Compatible upward-trending emulation', 'Renner, Gislason and Hackett', '583 Barton Overpass\nSouth Emil, MN 33526', '1988-10-15', '7eb10685-565a-3cc3-bb1e-2c543743f7b7', '2001-02-25 16:16:37', 'bae258d5-3dd6-3fbb-bf0e-4320d11daaf0', '1988-10-30 04:14:39', 'Praesentium quia ut veniam quia ducimus dolores. Officiis eligendi incidunt laudantium quasi qui vol', 1),
(57, '61edb039-e978-3c12-8977-4bf677e169c2', 'cb021245-23db-3b1b-bac4-8febc86a28d8', 'Multi-layered bifurcated superstructure', 'Welch, Marks and Zboncak', '47517 Osinski Mills Suite 602\nPort Freeda, KS 98689', '2011-05-22', 'cca47318-4e14-3245-b63e-058a2035f89c', '1985-05-14 03:18:56', 'ea8e5a70-5c05-3a01-94e3-e54be20cc940', '2014-11-06 14:57:48', 'Minus ea consequatur sunt voluptatem. Non doloribus unde fuga quidem ut. Deleniti sed molestiae inci', 1),
(58, '106b7481-1a4c-365b-903b-d39e2944c74b', 'fdc0836d-2fde-300e-908d-f55e4839b4aa', 'Polarised dynamic application', 'Crona PLC', '830 Zechariah Tunnel Apt. 749\nSouth Lancestad, CA 32374-6861', '1974-03-18', '277519fc-7b3a-3f41-a4e1-0583f4af45f6', '1996-12-29 12:29:53', 'c254b0d6-bb6c-3d89-ad44-cbcab6df4b2c', '2007-04-21 00:15:15', 'Architecto dignissimos expedita ex et doloribus. Minima fuga repudiandae nobis fugit. Rerum et non n', 0),
(59, 'ea71e52f-f9e8-3674-a96a-847b3648fd31', '99fc542b-2216-3414-86e0-21aed276df3b', 'Centralized systemic productivity', 'Stanton PLC', '013 Maria Drive Suite 365\nHilllview, SD 32124', '2010-02-20', 'f9c8d936-d9a0-332a-ae3c-7954d67746f4', '1995-08-07 06:46:38', '900484b4-f78c-3aeb-847b-787929b06200', '1998-05-16 03:10:23', 'Similique voluptatem aliquam quidem illo. Omnis non sit iusto earum blanditiis quos qui. Eos ut tene', 0),
(60, 'b996de65-f9c4-3b0a-81ea-61e2a5697883', '4b2fcec4-c0b7-33c1-99ff-48e4c6e7f5fe', 'Re-engineered neutral toolset', 'Lakin-Funk', '49556 Buckridge Lakes Suite 324\nDorthamouth, MT 26035-1136', '1970-03-31', 'cc395af4-b808-3d9e-99e4-d266cfa244d2', '2002-11-25 02:04:00', 'd4e9f3f3-59f8-31c6-8a57-81de86c45e0c', '2002-03-10 03:38:47', 'Quisquam tempora dolor consequatur pariatur est. Nihil earum et illo explicabo et itaque sequi. Aute', 1),
(61, '707a4da8-1436-3239-be8b-7e7f27651b09', '51cbee81-06f7-379a-b763-38a91f11daca', 'Intuitive bifurcated artificialintelligence', 'Ryan-Windler', '630 Goodwin Prairie\nPort Geoshire, FL 82698-2639', '1990-11-19', '6d03414c-2197-33b0-a8f8-3d82a799f8d8', '1997-11-19 14:27:39', '667d3018-c158-35ad-abb3-6b359d959ce4', '2003-09-07 21:47:02', 'Fuga facilis sit et fugit consequatur voluptatem labore est. Velit aut nostrum soluta repudiandae ve', 1),
(62, '081a5d85-5e49-3020-a886-549c0976917e', '671bda61-305f-3f16-9d1e-9f54de5b877a', 'Reduced high-level protocol', 'Kassulke, Pollich and Schinner', '893 Bergstrom Mountains\nKochview, ND 28481-5395', '2013-03-08', '07c18732-b2b6-3619-90ff-b68d8332d6c8', '1985-06-19 02:35:36', 'ed1847ff-f910-3275-833f-8aecb088c3c1', '1983-11-05 03:56:56', 'Cumque eaque enim voluptatem minima vel sed aut officiis. Alias quas tenetur amet voluptates tempora', 1),
(63, 'fdd76554-dbd4-3aba-8d06-c9dca726b791', '36ba26a5-fff9-3f4e-89c7-a9d38725a104', 'Enhanced reciprocal time-frame', 'Pfeffer-Franecki', '5189 Tamia Tunnel\nSouth Jerrell, NV 57840', '2012-02-26', '130b0500-1057-3584-b63f-c366a9c60121', '2008-01-21 09:21:23', 'ffbab098-efab-3d74-b749-370af75ca0fd', '2008-06-18 01:33:36', 'Officia sint similique quibusdam sequi accusamus est omnis eligendi. Omnis enim voluptatem et distin', 0),
(64, '36560a92-a637-3440-81c0-1178994d9f85', 'ae7396bd-507f-3a2f-9ec9-027abffdc98e', 'Seamless multi-state pricingstructure', 'Morar Group', '39596 Gleichner Stream\nEast Ava, MT 10259-4193', '1998-06-18', 'c2ea7ed6-b45c-34fc-ad8f-f6d4a5969c08', '1970-03-17 22:21:05', 'edad70c8-02d4-3a7b-b4f7-7cf17ea961be', '2009-03-02 20:42:26', 'Et quasi facilis enim. Ut beatae fugiat repudiandae iste nemo ratione sunt perferendis. Asperiores i', 1),
(65, '40f6e11a-ea22-317a-ac1b-10e834a93d86', '3c8ddc86-1b9b-39dc-8d26-79f6c59a09aa', 'Visionary actuating hub', 'Schultz, Osinski and Gutmann', '8838 Ahmad Shoal Apt. 081\nNorth Okeyville, IN 44159', '1997-01-28', '9ba3189a-18e1-30b6-bf69-de9f35cd0fb4', '1977-09-06 01:06:45', '88d61106-7b53-33fa-954e-cadac74d9b06', '2003-01-28 13:21:20', 'Odit commodi architecto rerum harum nulla vel. Impedit eos rerum non enim. Necessitatibus aut consec', 0),
(66, 'cbf1c0a7-f7d1-345f-8a5a-94135f0f93df', '42e93680-ac75-36da-b00c-d20712621bd1', 'Future-proofed bi-directional productivity', 'O\'Conner Inc', '47552 Leanna Rapids Apt. 610\nThielland, MI 66770-8103', '2014-09-19', 'f11c322c-a1d5-3ed8-8104-c7a528b4cbbb', '2002-03-18 00:16:19', '0a10d77d-89d7-3e9b-8682-894ee1729fdb', '1986-01-13 04:02:39', 'Blanditiis quas vel ducimus. Molestiae quia dolorem adipisci corporis eum quo inventore tempora. Vol', 1),
(67, 'c2d46e3f-ec71-3fb4-a8c1-f1d67301184b', '84637194-10c2-37f3-b2dd-9235b282871a', 'Enhanced even-keeled array', 'Wyman Inc', '2294 Ankunding Wall Apt. 072\nZellaland, SC 11677', '1979-04-27', 'ad76b175-aa51-35d6-be98-6171ee5241f1', '1981-04-08 18:39:57', 'b0a6126b-b3e4-3d27-880a-e97fa91a81e6', '1978-08-19 15:29:46', 'Perferendis ut id iure voluptates. Facilis et tempore nesciunt nemo. In molestiae inventore totam ap', 0),
(68, '408898ca-041c-3523-adce-800207f0a963', '76c3cfe3-a636-3eb2-9e82-2f053d03bc0c', 'Ergonomic static concept', 'Barton-Okuneva', '5185 Stamm Circle Apt. 327\nEast Reyeshaven, TN 45926-1717', '2007-04-03', '23e26e77-dd62-31ac-904a-ac43af9d4297', '1997-01-26 17:26:09', '58acb077-54b0-3b2e-b8a3-17d6355cab86', '1973-08-04 14:18:44', 'Officiis nostrum accusamus perferendis voluptatem voluptatibus. Ex fuga mollitia qui accusamus.', 1),
(69, '4d1d3c78-540c-3785-a756-97ff0817466c', '416f2efb-a7cc-3c4a-a3e3-f5943a3cc1b7', 'Realigned uniform matrix', 'Wiza LLC', '167 Alexanne Burg\nDarefort, NY 40686-0183', '1999-05-18', 'b2dd5210-5de0-3ce1-9406-5f6399a8781a', '1972-05-02 09:21:47', '52e44437-693a-32ef-bdb9-344a1a594e54', '2001-09-09 17:19:31', 'Aut dolores quod voluptatem libero veritatis. Natus et exercitationem quo vel. Non ut molestiae qui ', 0),
(70, '414a80a6-46f1-3365-96ba-fda92427938e', 'ed8334b4-134d-3659-9505-8bc04dc4fb3b', 'De-engineered 3rdgeneration leverage', 'Price, Ebert and Marvin', '713 Gay Springs\nWest Jodyhaven, NH 16520', '1990-03-16', '45404ff0-d611-3a54-9269-c4afd5434ac7', '2012-11-01 20:17:57', 'dbed19f4-3889-3a19-a28e-dc2bfa12d915', '1970-08-07 05:27:44', 'Rerum nobis repellendus sed ad. Rerum modi ex quaerat inventore consequuntur. Facere ipsum et aliqua', 1),
(71, '28e4d00b-5285-3207-8441-557f891347e4', '8dd983a5-c2ec-3d27-99d9-f5840bd25a59', 'Digitized systematic localareanetwork', 'Kihn and Sons', '76457 Christiana Land\nSchmelerburgh, KY 61335', '1977-06-04', 'ba5a3753-d2aa-3ec3-b3e7-addbeba1f053', '1970-08-04 02:17:17', '0d0b2cd3-abec-37a2-8ac2-69b63b51ce5a', '2010-10-02 22:30:10', 'Laboriosam nostrum consequatur eos molestias deleniti qui. Dignissimos ut illo fugiat aspernatur et ', 0),
(72, '576b898d-167f-36a5-80e9-69ccdef088a2', '56501710-9bc1-3bf3-9e0f-b14652f3765c', 'Exclusive neutral processimprovement', 'Schmidt-Purdy', '061 Joshuah Lights Apt. 714\nSouth Ernestinefort, AZ 53515', '1971-12-20', '59647a60-4e65-3338-8c51-1868fe90729c', '1995-01-12 02:53:03', '743c40c5-aaf3-32cc-a1f7-d67743728e8a', '1983-06-27 10:47:09', 'Rerum vero mollitia nemo non aut. Aut voluptatem veritatis enim magnam. Odit non commodi non ex quis', 1),
(73, '99015d84-0662-3910-a6f4-025097360d73', '512bd98f-b8c9-3b25-9f56-18a3f055e15b', 'Quality-focused bifurcated solution', 'Fadel, Dare and Goldner', '614 Lazaro Ports Suite 036\nPollichtown, MD 76506', '1986-06-10', '5892aaf6-1288-39e8-a369-1abd446cb59f', '2011-02-02 13:51:06', '48228458-9603-329a-ac1e-9d48eb24081c', '1976-05-05 04:04:13', 'Consequatur ut aut sapiente qui et modi aut. Labore iure architecto provident cumque voluptatem labo', 0),
(74, '0b1c8669-f4ee-329e-a699-6cff0ee12459', 'f589c457-367d-34b1-96af-71919b742fd3', 'Streamlined optimizing localareanetwork', 'Brakus Ltd', '96939 Morar Ramp\nSouth Timmy, FL 71933-8408', '2002-03-24', '3b3c1e71-9ee6-37f2-996e-01d49bfbd270', '2006-07-19 02:40:58', '0aaebb7d-ea67-3dd0-8cdc-ea7c6fcdbafa', '2007-10-29 05:02:48', 'Eius ratione sit facere voluptatem. Iure numquam distinctio et aut. Et in asperiores assumenda. Nihi', 0),
(75, 'c62361a3-8e18-320f-9191-e598ed331f2b', 'c0703495-8f0a-3c71-8ce7-6dda41532fd2', 'Organic dedicated monitoring', 'Ankunding Group', '9428 Oma Pike\nEast Elouisebury, MO 75240', '1999-10-02', 'da90bfc7-4dfb-3905-a984-11f7f17e6e42', '1979-09-03 15:43:59', '1d4e7d2f-319f-33a8-b4db-46b235d15c79', '1997-10-24 13:13:50', 'Perspiciatis autem ex aut error sint laboriosam. Qui ea doloremque molestias non asperiores velit qu', 1),
(76, 'db632143-af6a-3d97-83ef-39e5460e8e2a', '6ff1cde4-4bb8-3d03-ad64-87dd7fb41f1b', 'Cross-platform exuding standardization', 'Lockman, Olson and Gutkowski', '0246 Micah Trace\nTrantowburgh, CA 70359', '1974-02-03', '657fae11-3001-366b-8a72-d03c0b58b757', '1982-01-05 19:14:18', '2457e978-8299-3a7d-8004-2e24bbfb457e', '1994-09-08 06:58:27', 'Debitis reprehenderit quis et laboriosam enim dicta eos. Vel officiis nostrum assumenda. Non volupta', 1),
(77, '1329ea92-19e8-3318-9527-601cc3a1f8df', '1a922ab5-5d18-301f-9c55-4e5b3902efac', 'Stand-alone incremental artificialintelligence', 'Beer LLC', '3183 Janelle Square Suite 015\nEast Alexiston, MD 79776', '1986-07-01', '4669e627-6e17-3d0d-9c69-ef7839023d2e', '1970-06-30 13:35:26', 'f07c48bd-0651-33b5-93fa-cef6aad95f00', '1978-01-03 23:24:13', 'Et expedita doloribus molestiae aut consequuntur. Non incidunt aliquam nihil error. Qui et exercitat', 0),
(78, '72d20295-6c17-3eb3-9422-83229cc18db2', 'b5bcaef9-29de-3193-9d70-4c189019b269', 'Object-based background contingency', 'Dach LLC', '426 Wisozk Square\nNew Danemouth, AK 30167-8091', '2017-09-21', '9fee7388-e61e-3291-85d2-3fd7a3a8a5a1', '2005-02-01 19:30:14', '8b2834f7-7277-3361-94ef-a7f221f18c4c', '1993-06-17 01:37:23', 'Quam nihil qui non in et. Delectus debitis dolor enim modi. Rem aut non quis in nihil non ut. A face', 1),
(79, 'fca3e414-d5da-300d-9466-4437ba84f69b', '05d2946b-a92d-3fbd-859b-df4cf02f0eb5', 'Re-engineered solution-oriented product', 'Farrell-Smitham', '53936 Florence Crest\nCrooksside, ND 75341', '1994-01-30', '0e06785c-927b-330a-ae57-78f3ead41abe', '1983-05-14 07:15:49', '681b102b-fa9d-3378-a1b5-01c621ad8b79', '1980-09-28 04:31:12', 'Non at eos ad. Perferendis expedita optio delectus esse. Veniam impedit in et consequatur eaque.', 0),
(80, '27880cca-5e5a-369f-9e0e-75a99bb1a055', 'db6e4053-a5ec-3fda-b86d-8eae60cf53bd', 'Customer-focused full-range core', 'Bashirian PLC', '0352 Olin Turnpike\nAniyaberg, PA 82441-3815', '2004-10-05', 'be06a8e2-94af-398e-b63a-baf0d5f433a8', '1991-03-09 14:06:56', 'b7fdd8f5-07e3-3049-9050-30b4af6c6e8b', '1986-12-02 02:25:41', 'Vel dolor consequatur quaerat laudantium placeat voluptas. Vel quis aut quo. Sed assumenda quia et s', 0),
(81, '85f29ba0-39b2-391a-8774-171e9efa505a', '66f02a97-3a4b-3774-86b3-38a270fbed7a', 'Multi-channelled upward-trending firmware', 'Roberts, Green and Boyer', '06353 Reichert Drives Suite 817\nIsmaelmouth, WV 34911-1038', '2006-02-09', 'ddbc47c5-a95b-3e13-9b58-fadde0134997', '1978-09-20 16:53:32', 'd5fa6be6-3e2f-35e9-b297-8030196b5ec2', '2003-11-11 15:49:38', 'Consequatur expedita distinctio nam. Ea quia magnam nobis consectetur voluptatibus voluptatem dicta.', 0),
(82, '234d9164-0994-3c48-8e7e-c75ba7612f79', '9dbb685c-d67e-3709-bffb-ac718a65291f', 'Enhanced contextually-based complexity', 'Hilll-Stehr', '0483 Denesik Summit Apt. 607\nEast Trace, MD 96168', '1998-03-27', '1046133c-b834-3322-8e0c-785b130e1ec9', '1992-09-27 18:14:37', 'dc005de8-628b-3b6b-b050-751effd2242d', '2009-12-29 03:49:30', 'At facere qui reiciendis. Natus ut pariatur mollitia ut totam. Quibusdam omnis enim corrupti quas te', 0),
(83, '9790e656-6978-3670-8ca6-3e8bed394132', '4a3bd97d-2be2-3fd6-b2f2-d7158b6b90a5', 'Pre-emptive solution-oriented extranet', 'Schimmel Inc', '454 Satterfield Walk\nConsidineside, ME 46825', '2014-01-27', '1f5d28dd-6ce2-3ab7-9ad7-c6b487fba67f', '2009-07-17 00:49:16', '93614e1e-79a4-3f27-8818-0226c8667373', '2010-04-12 23:22:28', 'Ea molestiae tenetur ut voluptate reiciendis sint. Et perferendis reiciendis perferendis rerum. Cum ', 1),
(84, 'e84043a4-45e8-3228-b05e-a710691f701e', 'e147664c-aaa8-333a-8fdd-1ed5d994a836', 'Object-based interactive processimprovement', 'Ziemann Ltd', '15524 Bailey Streets Suite 664\nWest Aric, NV 38082-7748', '2000-08-24', '59d087b8-c53f-397b-aadc-f0fb96ba71c2', '1974-12-09 14:26:40', 'fa2bfe40-775b-3832-b482-3c6c607a1f4a', '2003-12-07 22:32:12', 'At quisquam commodi quos minima. Est saepe voluptatem ad totam ullam.', 0),
(85, '34559c95-8b43-39c8-b187-d378eb377388', '9a1c1b4d-9581-3047-a288-d77beb588ae0', 'Up-sized object-oriented adapter', 'Marquardt and Sons', '31219 Keshawn Hills\nPort Normaville, IA 17670-8459', '1990-03-30', '018a89c1-79cc-33af-ac2e-f9834f39aefb', '2005-10-31 08:56:57', '24282a45-e7b8-3635-88cc-d6e56249a03b', '2002-01-04 15:27:42', 'Ratione vel quo enim consequatur. Omnis molestiae debitis similique rerum odio nulla maxime. Veniam ', 1),
(86, 'c467cead-04ac-312d-bf01-14d758722052', '99907883-547d-3acc-9cd1-b386cdd984de', 'Reduced zeroadministration firmware', 'Bahringer-Kris', '8975 Hessel Spurs Suite 639\nLake Efrenhaven, MS 88718-5764', '1991-03-29', '10789358-32b8-38bf-8260-bb792245b0de', '1977-08-14 12:49:46', '89f223c0-94bb-30be-b2f5-5b8d36be66e8', '2008-04-03 21:46:52', 'Ullam saepe velit facere. Nemo commodi atque cupiditate officiis maiores aperiam omnis. Minus ut ips', 0),
(87, '10ca55ed-d5c9-379d-8892-e8196cd08407', '6982bea2-aab7-3623-8098-2833ac030d11', 'Future-proofed homogeneous hardware', 'Simonis, Hagenes and Hilpert', '95550 Cruickshank Row\nNew Neha, GA 84216', '1999-06-11', '722727e3-aa81-3dea-b11b-700df194f446', '1989-12-05 23:16:53', 'db1d07b1-729a-304a-9121-4a07df2ffe65', '2003-05-07 13:53:45', 'Magnam sit excepturi et voluptates. Eos eum fuga ullam libero. Ad beatae eaque voluptates sit volupt', 0),
(88, 'a8a41437-bc71-3e4d-a193-aec1d793ccaa', '2ca4b7b1-6423-3384-9bd4-b4fee677ea26', 'Persevering multimedia service-desk', 'Crooks, Boyer and Heidenreich', '441 Ben Village\nPort Laurel, CT 35663-1914', '1978-05-29', '566bfcd0-762a-3ca2-8c72-c4bbec982c71', '1973-09-02 22:31:20', '1d9d14c9-0498-327a-ba3b-5713960c26f7', '1983-10-02 01:18:37', 'Laborum voluptatibus natus aut provident aut. Quidem et quod eveniet rem laborum odit. Ut necessitat', 1),
(89, '808a71d4-bdc3-34b5-80f6-857d73d5a8f8', '5bcea072-1e79-3831-aa7c-292545e396da', 'Function-based fresh-thinking contingency', 'Durgan, Hills and Kulas', '976 Reggie Lake\nWillisland, NH 71904', '1985-05-07', '334dad16-8b1e-30e3-a1c4-fd2574018fd0', '2010-05-25 17:35:23', '5bccee4d-a535-3ba5-ade3-30c35d86b7fd', '1983-07-30 00:34:48', 'Deleniti enim impedit distinctio iste. Fugiat occaecati ut commodi ratione ea ex doloribus enim. Eni', 1),
(90, 'ee682343-636d-32a0-a297-0f6a0cf9c760', 'a6d570d3-6c1a-3f8b-9882-322369d05b98', 'Streamlined logistical openarchitecture', 'Bradtke, Pagac and Marquardt', '25861 Makayla Highway\nLake Beauberg, UT 51224', '2014-10-22', '6e51d1d0-d3b3-3891-9c5d-43c13e4620cb', '1983-05-18 14:34:59', '60a3294e-dad7-3583-9183-6fbc492b4858', '1978-09-27 01:04:02', 'Molestiae corrupti molestiae odit voluptatum optio. Fugit sit enim velit ducimus. Illo ratione aut q', 0),
(91, '5cf22772-1e17-35cb-b16e-9426e7bc970b', 'd837b5ad-5c96-3132-ba2a-284ef4e0c002', 'Synchronised well-modulated time-frame', 'Johns, White and Bauch', '615 Hegmann Crossing Apt. 473\nPort Sigmundfurt, CO 89114-2416', '2003-01-07', 'c0b66a22-fbcc-3436-bed5-1e828054cdd4', '2011-06-05 20:58:06', '029687bd-e3cc-3a65-b038-857c4f482cc7', '1973-12-05 01:17:20', 'Qui soluta et voluptatem accusantium aut dolorum velit. Cum quibusdam dolorem a asperiores qui incid', 0),
(92, '7439c731-e58f-34cf-b4d0-c4d8dd65f1dc', 'd40b1948-d216-34e0-ab06-007dcf61a352', 'Multi-tiered mobile framework', 'Kunze, Raynor and Kuhlman', '808 Albertha Loaf Suite 146\nWest Aracelyborough, UT 08520', '2000-03-12', '31210001-e793-35fa-a8e8-deed8f1a86c9', '1996-10-08 09:12:51', '64643293-3366-37cb-81bf-7ec15c815cf9', '1972-08-21 07:07:25', 'Vel dolor dicta ratione animi itaque reiciendis. Et exercitationem expedita dolor autem ratione mole', 1),
(93, '1c9817f7-6ba3-31c0-83ee-5e1dcdfdb2e8', 'ea8519d2-4147-3085-8dfe-0be80fe3b889', 'Automated even-keeled ability', 'Harber, Rohan and Lubowitz', '9871 Stracke Ramp Suite 014\nTyrellmouth, NH 03096', '2003-10-15', 'd7c1f21b-5275-3b46-b373-e95b3e2ef555', '1973-03-10 05:51:56', '0c445c22-bbbc-3f1b-bdab-f692d7c57714', '2001-03-07 19:46:24', 'Totam aliquam esse repellendus quam. Architecto et harum earum impedit. Aliquam commodi voluptate pe', 0),
(94, 'e223516f-52d8-30db-a6b0-2a2f45157952', '2d3ea700-4470-39c1-98e4-3da8a3b1c662', 'Balanced full-range implementation', 'Connelly-Abernathy', '223 Marvin Stravenue\nMcClureview, NH 97084', '2007-10-15', '60f2b585-6c6b-3404-8ff6-a1ac33fb48e3', '2004-09-03 17:36:15', '28733730-eb44-3b00-be45-0e0b61149d18', '2001-08-10 15:59:31', 'Nobis ipsum est et. Dolorem error architecto nobis. Voluptatem inventore illum quia ullam et distinc', 0),
(95, '8632727e-cb24-3d02-b0b0-f33986c56e79', 'f6dd5b23-f1ee-3529-aa6e-be0b9186dd9e', 'Down-sized motivating capability', 'Kuvalis, Smitham and Bosco', '02518 Mraz Vista Apt. 694\nKeelingville, IN 78605-2769', '1975-08-01', '4b2b0949-7ee5-3a0e-8ca7-9d4269f5f555', '2000-12-21 08:05:36', '077f0850-47ee-3b1e-bc57-485d5aa32d5f', '1991-05-23 21:06:17', 'A necessitatibus velit fugiat quibusdam similique aut voluptate. Vel autem eligendi error aut impedi', 1),
(96, '2b55678b-f637-302e-868f-4f69fa98c0a8', 'ea2f6a23-b379-3d78-b431-ea05d53f0f1d', 'Secured stable solution', 'Reichert LLC', '64268 Sherman Run\nSouth Ernie, NM 79838', '2004-12-04', '7982ed4e-533e-3d8b-8411-ef515571779f', '2018-10-12 04:37:46', '714a8e4c-ec0b-3524-b05a-7dde7cd13cfc', '1999-10-18 11:01:56', 'Eveniet molestiae voluptatem et omnis consequatur numquam. Explicabo quia quod occaecati nisi non do', 1),
(97, 'aee1bcc1-930d-3ff1-a137-195b61dc8774', '2f11c7f1-eb9a-3ac5-bd8b-fb5c74a2b7fc', 'Self-enabling non-volatile matrices', 'Boyer, Witting and Romaguera', '677 Blanda Ports\nWest Keyonfort, RI 00842-4173', '1998-05-08', '8da168ae-f50b-3a96-8bf6-35c6517f168e', '1989-11-12 12:19:51', '31b0e782-5094-30e5-b4cf-ea1e1e47c417', '2016-10-13 14:21:52', 'Et quas enim architecto. Ratione eaque dolorem eius maxime asperiores incidunt. Ex aut libero eius n', 1),
(98, 'fc2dc4d1-ff6b-35d1-af24-a771d3a5d68f', 'ca49aa87-c4ba-3ad1-b132-ceaf34cea549', 'Realigned executive productivity', 'Padberg Group', '99393 Carroll River\nVivianeport, CT 94573-0161', '2009-01-07', 'fe3f92af-104e-34bd-b827-da8d69726c30', '1981-12-05 16:10:50', '454b8f9d-07dd-35f1-8b52-aab3805cdf96', '1995-04-01 18:35:45', 'Sed reiciendis delectus harum id dolores. Minus a occaecati exercitationem pariatur occaecati minus.', 1),
(99, '9dc48c32-a42d-32c4-b80e-3b2422adaaa3', 'f6532ad1-6a7d-3ded-a339-05f234d0b577', 'Inverse multi-state software', 'Torp PLC', '877 Stehr Spurs Apt. 236\nChetborough, NE 36787', '2016-12-24', '93bae219-8657-3fc5-8bb5-ec2599bb6e7f', '1980-12-23 10:53:23', '55891b36-9f08-3dca-9556-1ba0ace56a71', '1993-10-16 02:47:55', 'Voluptate est adipisci cumque eligendi molestias. Tempore eligendi nobis quis laudantium sit facere.', 1),
(100, '8cfac83c-1c62-3f7f-adb9-65ba0fe640ef', 'cbcf6075-55d7-3dc2-bac0-067231abcc96', 'Reactive nextgeneration middleware', 'Champlin and Sons', '9394 Alice Roads\nSouth Xanderview, SC 88375-6333', '1987-03-31', '3d445eed-6d38-333d-b4b8-0df1ebdc9c48', '1972-04-08 12:36:57', '6df62085-ebb9-3a2e-881a-e01ba194ee7c', '2018-07-21 13:35:52', 'Non id aut maxime quia natus rerum. Rem maxime molestiae facilis quis facilis. Odit praesentium fugi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_certificates`
--

CREATE TABLE `hr_general_certificates` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Entitlement` varchar(50) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_general_certificates`
--

INSERT INTO `hr_general_certificates` (`id`, `CompanyId`, `Code`, `Name`, `Description`, `Entitlement`, `CreatedById`, `CreatedAt`, `ModifiedById`, `ModifiedAt`, `Remarks`, `Active`) VALUES
(1, '4b35f5f7-a60c-3460-b2ee-47bbcd811a2e', 'ekdv', 'Ut fugiat natus consectetur est ut veritatis.', 'Cumque ut unde assumenda placeat deleniti. Sequi voluptatem recusandae iste.', 'Ms.', '80b19034-d68f-366b-977e-6e54b98bda71', '1971-09-19 18:46:11', 'd50ed7c5-d8b4-3cd6-917b-1cb6280f5ce1', '2017-06-22 00:38:24', 'Molestias voluptas nam et nostrum. Provident sint asperiores sed fugit. Placeat nihil fugit dolorum ', 0),
(2, 'ab5c72ce-e9d6-398b-98ed-b38fdeeab5ff', 'nuqv', 'Quo quo et ut odio et eos.', 'Autem temporibus distinctio dignissimos odio officiis aliquam debitis. Quaerat distinctio aut nihil magni magnam cum. Ex atque tempora numquam animi voluptate ipsa qui.', 'Mr.', '079999f6-4b55-38a7-be38-e8b184fef8d9', '2016-04-26 14:52:38', '4c811f49-334f-3cab-a7cf-378af1d04b09', '1973-07-24 09:34:10', 'Quia aspernatur enim et. Qui quia occaecati atque nobis repudiandae beatae sapiente est. Dolores vol', 0),
(3, '240fe72e-85a3-371d-b0de-143bc3cfa61c', 'qkvr', 'Et dignissimos laboriosam id doloribus.', 'Id voluptatem pariatur consequatur ipsum et nulla molestiae. Adipisci qui aut hic ut error. Laudantium assumenda autem cumque.', 'Dr.', '3e6b18cc-129b-3387-8f42-45245fec7270', '1971-10-29 08:29:02', '4c3edf29-6e19-30af-a07b-e6849be02c31', '2013-09-21 09:04:19', 'Sed ea blanditiis est hic. Autem vero ipsam temporibus quia. Doloribus sequi maiores rerum facere re', 1),
(4, '4ea96af5-5b33-3869-9036-8b71d9d3bf81', 'rqlv', 'Voluptates sunt nesciunt dolores facere voluptas.', 'Ut aliquam illum aspernatur est id cupiditate cum. Dolorem nesciunt illo optio quas eaque. Qui qui quis consectetur repellendus quibusdam.', 'Ms.', 'b16d36ed-a8d7-3ed2-8ed3-8328c962ece8', '1975-10-09 05:31:19', '078dbb91-51e4-3b90-84a7-7cef6f708b7f', '1990-07-22 03:06:53', 'Sit minus et iste dolorem reprehenderit. Asperiores molestias qui asperiores eum tempora nihil. Pari', 1),
(5, '54672bb4-f8cc-307e-abe7-c9651a6c40e8', 'wghp', 'Eveniet corporis non aut voluptates.', 'Quia ea explicabo delectus facilis culpa. Accusamus eum odit reprehenderit aut.', 'Mr.', '5cf2753b-b88f-3743-91e2-8a9cc0ed7e47', '1989-06-01 01:35:45', '9e9406e9-5527-3d9f-9b08-9273a4b35530', '2005-04-25 16:22:00', 'Exercitationem explicabo fugiat voluptatem et soluta et. Consectetur autem at laudantium totam. Quis', 0),
(6, '7d51da90-0114-37cc-a835-a16a700af053', 'ceil', 'Dicta deleniti vero corporis iste ratione et magni doloremque.', 'Quas occaecati omnis explicabo incidunt. Fugit officiis quibusdam quis aut quia nemo et. Soluta asperiores qui distinctio vero et quis qui.', 'Mrs.', '0c67c04d-37cc-3138-912c-b9ef38ccb6cd', '1980-04-05 18:25:09', '327e406d-d40a-3bb5-89cc-8ecc7dada583', '2014-07-27 09:00:36', 'Non animi qui dolorem placeat fugit minus ipsa. Et omnis quis ut. Incidunt ut perspiciatis debitis.', 0),
(7, '5b49c91b-ea73-3b3d-93a3-addc1594ef51', 'jnep', 'Quos illum numquam illo at magnam dolor.', 'Architecto at omnis ut impedit debitis nulla. Placeat molestias sit quibusdam totam incidunt. Quidem expedita ullam hic et et.', 'Dr.', 'c00a13c8-8392-32b9-a71c-d7f205481956', '1988-05-09 14:17:48', 'b05b50c2-29e8-364e-bd1d-0dace5a6e403', '1979-09-30 17:40:32', 'Et non modi qui et minus. Optio iusto et distinctio debitis. Sit enim doloribus ullam maiores ut sed', 0),
(8, '94e1eeaa-cef6-3ed3-8651-15ae7fdd64c6', 'jxye', 'Odit voluptatem eos veritatis quo est.', 'Eveniet qui dolores enim et. Aliquid optio ipsa quae illum delectus ut consectetur. Dolore consequuntur quos aut soluta. Et fugiat dolore provident.', 'Mrs.', 'a418b0d6-e366-376e-9d1d-30a5ad605700', '1999-06-05 22:44:02', 'c88435c5-7e81-3bed-b764-e7d1f923fea8', '1987-09-13 03:21:39', 'Nobis sed et magnam quaerat beatae voluptatem. Et expedita rem ullam. Sunt deleniti molestiae quo mo', 0),
(9, '0a7338ec-413a-3541-8ac5-dd78e11ce067', 'lwtj', 'Repellendus ut a officiis nihil et velit.', 'Provident et quisquam cum. Consequatur deserunt sed quis eos. Fugit est suscipit quam laudantium. Ut quia maiores et qui est.', 'Prof.', 'a86b6e12-6514-3c5d-a8fa-2e537c201c6d', '2014-08-02 22:24:20', '15d921e8-ed8f-33e9-9082-c14f734a41b9', '1977-05-31 18:33:05', 'Tempore omnis id sapiente fugiat ut. Sunt consequuntur velit blanditiis rerum. Quasi soluta mollitia', 0),
(10, 'd42ab9b1-72b8-3760-917c-d2a7cc2e6f4c', 'mwox', 'Quo molestiae optio in alias quaerat aut est.', 'Aut voluptas et ipsum quia. Excepturi atque corrupti voluptatem corrupti animi voluptatem. Porro sunt explicabo vel quaerat aliquam ex dolores. Aut ratione vel aspernatur maxime facere sunt.', 'Dr.', '5af275e2-c62a-33fa-b98f-30029da45efc', '1996-12-29 12:02:05', 'c5a88e3f-51cc-3b55-8b7b-23b77383835b', '1996-01-30 23:56:26', 'Beatae dicta officia iste tenetur vero mollitia iure. Et est aut et nisi distinctio molestiae assume', 1),
(11, 'be4e6e3d-e66c-3db3-b1fb-f07b526f0f22', 'sysg', 'Atque aspernatur omnis eum non voluptatum.', 'Quis quia voluptate nemo. Dignissimos quis neque quia in. Et illum quam itaque quis aut inventore. Ipsa consequatur minima quod non.', 'Mr.', 'f5fba956-e036-371b-baf6-49e8cd989ebf', '1997-09-07 06:22:16', '33a3681b-b60d-3eb4-a722-518397504522', '1987-04-04 09:45:28', 'Expedita sed quidem consequatur expedita occaecati dolor. Magni est fugit eaque ipsa sapiente qui vo', 1),
(12, '06e1954e-94e7-3f53-bb4c-b0538adfd3f2', 'miha', 'Autem ut qui qui voluptatem aliquid sunt.', 'Qui quas cupiditate numquam fuga provident. Quia aliquam quas temporibus excepturi aut quia. Est sit molestiae quia iusto quia quis impedit nobis. Sed eaque unde dolorem suscipit sequi rerum qui. Nihi', 'Miss', '823c29c5-0040-388d-a49b-39d2398a76e1', '2006-05-25 22:25:13', '3e5e5c67-53d8-3907-b45d-a2c7cfc40046', '1984-10-04 06:10:37', 'Distinctio reiciendis nihil fuga pariatur voluptas id. Nam sit temporibus repudiandae eveniet. Reici', 0),
(13, '4ed06555-6d60-3fe8-b147-3a983fb7657e', 'ahgq', 'Labore officiis dolor deleniti rerum.', 'Atque temporibus quis eveniet porro sit ut delectus. Repellendus ipsam accusantium quidem dolorem ut. Consequatur fugit maiores aut qui optio.', 'Mr.', 'ef5c0b73-6099-3970-8d8b-ab20163ee314', '1997-11-30 06:58:50', 'bd00f8e5-f3c7-39e6-97c1-46a18cfef58f', '1982-05-16 16:18:37', 'Ab praesentium accusamus eveniet eaque error. Quia possimus sapiente beatae deserunt. Consectetur do', 1),
(14, '12aabbee-db0e-342d-a844-8f8593753d69', 'klmv', 'Quis reiciendis quisquam vel recusandae ut mollitia.', 'Architecto harum fugit soluta laudantium non doloremque. Iure sit porro qui nihil. Voluptate beatae at quis.', 'Mrs.', '8e9e93b7-7ab1-384a-a324-acfe807b120e', '2002-07-11 08:31:15', '65df4fba-b845-343b-b77c-bff507912e2f', '1980-01-02 20:39:24', 'Officiis ea eum dolorem ea praesentium. Magnam tempora autem et esse ea. Aliquid expedita voluptas d', 0),
(15, '0e4712ed-125c-3b66-86df-6a10fc410427', 'yfkk', 'Est accusantium alias vel nemo et voluptates laudantium.', 'Consequatur libero voluptas illo quia temporibus cum mollitia. Cum est itaque natus sit delectus omnis ea accusantium.', 'Prof.', 'b315d142-c95b-38b8-9a64-bde6f5648f9c', '1978-05-22 20:15:57', 'e89b6d9f-e75a-372a-a716-ae490dac8090', '1980-10-19 23:36:05', 'Ut architecto velit laudantium quis provident. Architecto voluptatum impedit corrupti iusto id repud', 1),
(16, 'f0046286-a2b9-3bd9-93b0-2736bdab2d8a', 'fdqk', 'Rerum hic aut et repellat dolores quis natus.', 'Optio ipsum voluptatibus non vitae. Veniam incidunt ut illo et odit. Nobis itaque ipsam et quis. Sunt quisquam dicta saepe corrupti vitae nostrum aut. Quo voluptatem eligendi fugiat quaerat adipisci v', 'Dr.', '0a3e2c5a-c844-3a6c-9b41-92c522c58e80', '2007-12-02 04:06:29', '14025e14-2bdc-36c7-9a70-7d6403a6aed8', '2017-03-10 20:17:50', 'Repellat aut iure consequatur modi aut quisquam. Autem rerum accusamus quae unde cupiditate laudanti', 1),
(17, '56de9b57-be1c-32f4-a12b-b7ef0cd8b838', 'khkq', 'Quo et quasi architecto rerum.', 'Velit placeat dolorem nihil repellendus architecto ipsum odit. Nisi dolores quis sit sint reprehenderit ratione ut quia. Corporis exercitationem ullam et inventore voluptatibus voluptate est neque. Am', 'Miss', 'c2a6e814-a7e0-38f1-8f3f-294230724160', '1995-03-19 11:53:16', 'f0d866f8-e1e3-3056-a6ac-532e7f008f36', '1980-12-04 22:50:59', 'Dolorem aut dolorem laudantium quibusdam earum dicta. Placeat in molestiae reprehenderit. Sit quibus', 1),
(18, '795e2a87-a62a-3cd4-8a88-5b7d86f1d17c', 'zbdi', 'Consectetur earum ipsum provident harum qui doloremque.', 'Deserunt totam iure exercitationem asperiores. Tempore nihil dolorem ducimus quaerat molestias dicta. Aut sed optio pariatur nulla et neque nobis.', 'Prof.', '51aeb8c1-1456-316a-aa90-c9e2d4da1e35', '1996-08-19 02:31:49', '6e9f244b-7974-3867-a968-732dda4ad643', '2007-11-15 18:58:03', 'Nihil soluta at minus eum non. Omnis et minima ullam dolor veritatis in. Sint est quo cupiditate hic', 0),
(19, '9ca81f7b-54e6-3aaf-9f41-ddfc94cc17ab', 'wvrn', 'Amet qui dolores molestiae labore ut aut dolores.', 'Quam et nisi quod qui odio. Accusantium itaque id at modi aut. Eum non eos sunt repellendus quia enim natus. Nostrum asperiores eaque repellendus libero omnis sit in nemo.', 'Dr.', '460ce45d-b54a-3989-9ad2-7de31e959743', '1999-12-22 18:08:12', 'b328da5b-346c-3947-9471-36c6591e07d9', '1976-04-02 22:09:31', 'Mollitia ut incidunt occaecati dolore. Et voluptas distinctio sunt qui. Et consequatur ipsum cum rec', 1),
(20, 'c41f727d-d64c-3bba-a7d1-7314f6d006ef', 'npzo', 'Consequuntur eligendi quis deleniti cum cum repudiandae et.', 'Eius magni totam velit tempore et. Corporis explicabo occaecati sint quisquam sequi aliquam. Autem aut tempore sapiente omnis. Et dolore reiciendis minus sed. Atque veniam asperiores qui qui.', 'Ms.', 'd7bfbc84-b86a-3869-a4b5-bcb368dad0ca', '1972-11-28 06:49:41', '6a819c0e-156a-3240-9d8f-b4aa582f11c3', '1977-11-30 15:59:15', 'Eum quisquam corporis quisquam. Dicta et et adipisci maxime in mollitia. Tempore accusantium volupta', 0),
(21, 'f579c2cf-c8d5-38bc-aeb4-f353f3d7fa85', 'thyd', 'Ea molestiae suscipit beatae.', 'Enim tempora qui architecto itaque. Esse dicta quae blanditiis culpa. Odit sint vero quibusdam dolores eius. Eaque consequatur qui qui aut eius error excepturi.', 'Prof.', '5c0cb8af-a4de-3ca6-9c99-8b0dc9bbf542', '2005-07-19 02:01:00', 'a00f049f-1ae3-3c4e-84ee-3902c0cbc5f4', '1992-08-31 01:20:51', 'Aut ipsum qui non voluptatem dolor. Aperiam omnis error et. Quia eum quam in non est similique neque', 1),
(22, '353683de-6c50-3ce3-9455-970690252e7f', 'para', 'Dolores quia quasi ut ipsa quasi eum ea.', 'Qui ea necessitatibus dolorum consequatur ea pariatur. Repellendus qui excepturi ipsam exercitationem nesciunt dolor. Sapiente illum et porro aliquid. Tenetur numquam non libero illum delectus saepe d', 'Miss', 'e40141cf-3920-30b0-a598-8f5814772716', '1978-01-17 22:24:26', '07f3042c-7b70-3597-95bb-6633800d4ed6', '2007-01-08 22:37:11', 'Est fuga aliquid qui ipsum non aliquam aliquid voluptas. Molestias laudantium animi facilis labore d', 0),
(23, '270fdd70-2147-380a-8113-793cfc931082', 'jwan', 'Assumenda minima et consequatur ducimus culpa harum.', 'Et sunt officiis optio repellendus minus eos officia sint. Ipsum aut qui facilis est doloremque. Illum id ratione eum voluptate. Dolor tempore quia cupiditate repudiandae aliquid dignissimos.', 'Mr.', 'd242f217-33f3-37fe-bb2c-f84a981a2559', '1980-06-25 02:10:42', '7c341abb-f772-35d0-bc76-e3a81a2ee15c', '1972-01-25 13:41:15', 'Consectetur laboriosam iusto ut autem. Et totam adipisci minus voluptatem. Cumque omnis ut dolorum o', 0),
(24, '59fd5d86-c20b-36c8-a1d9-26b2b1e9352a', 'ront', 'Cupiditate atque rem vitae rerum ab.', 'Voluptas occaecati enim aut. Harum sint voluptas dicta quae sint. Sint eveniet aperiam aut. Ratione possimus voluptates aut dolorem.', 'Prof.', 'd1ac268c-8d50-3f9a-9248-ee872eca47e5', '2015-02-27 07:43:38', '42085764-822d-3e99-9dfc-71079b4fc8e1', '2011-04-24 03:47:56', 'Quo vel voluptas qui numquam eum minima. Consequatur dolores sunt aliquam qui sit. Officia reiciendi', 0),
(25, '516b5137-0d13-321e-8363-8a437adf7043', 'ward', 'Labore odit eum earum explicabo qui.', 'Ducimus nulla itaque sint consequatur qui. Autem animi commodi asperiores quae aut nesciunt exercitationem. Voluptatem animi quisquam autem qui sequi dolor velit.', 'Dr.', '8ba4b492-b23e-391f-b8b8-e82b91affb6b', '2016-08-10 01:48:17', 'd8d058bd-5f37-3a0a-a3b8-5c2f5e264df1', '2015-06-28 03:20:08', 'Ad fugiat illo consequatur. Cupiditate aliquid nihil repellendus et rem error sunt in. Aut pariatur ', 0),
(26, '3eaa179e-42ad-39e8-992b-17be0d8aa369', 'suxg', 'Maiores alias iusto rerum saepe harum nesciunt voluptas.', 'Rem et porro aspernatur omnis id velit vel. Repellat possimus quia sed dolorum. Sunt quo nam ullam iste. Odio dignissimos adipisci qui quo.', 'Mr.', '6fa9ccab-f481-37e2-88fd-1cf8d7cf95ec', '2016-01-02 18:17:49', 'a0594d92-b4fa-3547-9891-822cb28057c9', '2002-05-03 10:03:01', 'Optio doloremque enim dolorem ut in. Quia nam delectus laudantium saepe maxime error quae. Voluptate', 0),
(27, '2e02682b-3572-33e0-ae1f-18748af6e1e3', 'pgwt', 'Harum perferendis inventore qui cum minus aut.', 'Explicabo sequi eius quas commodi. Tenetur quasi minima rem deleniti. Dicta nesciunt possimus quia incidunt. Illum id aspernatur dolor sunt.', 'Dr.', '755a2a2b-b186-34bd-b236-6a92832f29cf', '2014-02-01 19:20:44', '60120d19-535f-37d5-9fbd-0d3a72cf8156', '1979-11-03 04:03:07', 'Ut quae aliquid aperiam nisi qui explicabo. Cupiditate odit sunt provident ratione corporis corporis', 0),
(28, '87ee02bf-3b51-3fe1-adb3-1729a1acf8c5', 'cyyx', 'Suscipit occaecati libero architecto non officia et temporibus.', 'Sint sunt numquam minus sequi qui explicabo harum. Aliquam provident et magnam odio sit sunt. Et ab rerum rem sapiente. Quisquam ut odit similique dolores.', 'Miss', '64363b6f-104a-3b06-b86b-fd0404be13d7', '1996-06-11 08:01:54', '7c2f362c-9357-387c-9401-4af9cd948dae', '2001-12-16 12:14:56', 'Excepturi voluptate provident voluptates dolor. Et a ut debitis ullam. Assumenda distinctio laudanti', 1),
(29, 'f1524edb-2465-332c-badd-da06ac73d3c8', 'ttat', 'Sed est corrupti libero eos.', 'Occaecati quibusdam modi voluptatem ut laudantium cum molestiae est. Culpa reprehenderit voluptatum voluptas. Est quo id placeat vel quaerat voluptatem. Doloremque et qui at autem ducimus tempora aute', 'Dr.', 'c9d01869-12c4-38b1-8efd-5dab1f0630f3', '2002-12-22 21:47:42', 'd8b098dd-0e4b-3c30-b36c-5ae3c6081dc5', '2002-05-23 06:57:26', 'Ullam et voluptatum voluptas error aperiam quibusdam qui accusamus. Dolores expedita consequatur exp', 1),
(30, '4c02b1b1-3bed-35d5-8bd8-6f61a84440a5', 'cvyk', 'Adipisci praesentium est voluptatibus totam.', 'Commodi dolor dolore tempora aut laborum et. Quia est exercitationem dolorum magnam sunt dolores. Saepe earum eos molestiae maiores et voluptatem. Voluptas minima cum temporibus commodi maiores. Porro', 'Mr.', '1c76e303-e3d2-39cc-a459-33c126a4d670', '2000-06-28 20:41:25', '726a8f15-97d1-39d4-b255-a00e59dffaa3', '2011-06-05 20:14:34', 'Impedit illum praesentium maiores similique. Rerum et facere voluptatem quidem ut dolor. Veniam corr', 1),
(31, 'd0ff3606-7fb4-3fc3-9805-5a0d095754bf', 'yuut', 'A laborum necessitatibus inventore sed omnis ad quo.', 'Consequuntur quidem commodi modi ut. Officia eligendi voluptatem qui necessitatibus doloremque distinctio id delectus. Quidem aut quisquam illo consequatur magni dolorum. Rerum facilis reiciendis quia', 'Dr.', '18444ff8-24fc-3a59-abf4-115f6ee4ed88', '1981-08-19 11:21:26', '426d3d7a-f141-38c5-a057-90242c576004', '1977-05-29 21:56:07', 'Sed eos temporibus libero tenetur officiis et molestiae. Soluta enim hic beatae est et voluptatibus ', 1),
(32, '9923d6d7-1b39-31b6-9d7b-2d3b624848f4', 'watn', 'Qui aliquam tenetur dignissimos autem.', 'Et omnis autem perferendis vitae tempore. Quos eum quidem illo magni expedita. Iste est perferendis delectus tempora ab et consequuntur. Numquam illo aut dolor facilis.', 'Ms.', '065889c7-c9b3-3ae6-ab84-8f4b3670d2c1', '2013-10-04 19:43:26', '36b0a191-3d7f-38be-b2c4-9cdbb1d4d63c', '2015-08-08 18:55:24', 'Eius deserunt beatae vel officia. Sed rerum voluptatem qui ipsa cum numquam. Eos non molestias neces', 1),
(33, 'f7ec5d25-6783-3914-8e4c-ea066d0cac91', 'hghm', 'Et qui velit rerum quam explicabo ipsam aspernatur odit.', 'Repellendus facilis voluptatem consequatur dignissimos. Sed quibusdam sit dolorem. Quo aliquam qui quibusdam ipsa quo laborum aliquid. Enim quaerat alias aspernatur iure ab vitae dolor.', 'Prof.', '616e3667-fb7b-3efd-b9d2-70618ffadfbb', '1994-08-09 06:00:29', '4be5ee7c-aa8d-32dc-aa56-9147d9ae343c', '1984-07-24 23:48:43', 'Debitis similique eligendi a autem. Qui illum ipsum assumenda voluptatibus. Suscipit magnam maiores ', 0),
(34, '44a72df9-4e49-3261-a239-913abc85c1fe', 'hoct', 'Voluptas vitae omnis quia ea consequatur pariatur voluptatem et.', 'Et aut ratione nemo quos sit facilis sit. Voluptas id non sapiente officia placeat. Ipsam omnis atque eos perferendis temporibus beatae in qui.', 'Prof.', '38274797-3358-3ab7-9550-b79f91ae6a88', '1973-08-17 12:58:10', '9b2ea4be-b949-3ce5-9b7d-14689cf4dc58', '2002-08-28 01:30:29', 'Minima voluptate aut aut enim. Deserunt exercitationem consequatur eum et error officia. Accusamus q', 1),
(35, '2c7a22f5-6286-378a-8f8d-b3dafcb5152e', 'fjxy', 'Labore in tempora voluptas eum doloremque sunt sint.', 'Vel sequi temporibus vitae tempore et hic omnis. Natus dolorem nisi eos ut omnis porro. Qui iure eos eum quos nostrum. Quo voluptatem beatae occaecati porro.', 'Dr.', 'aef5ba46-d7e4-3228-8a4f-3dbc6559a5bb', '2003-11-29 20:15:51', '2914522c-aeb6-36bf-8b22-589a245a9317', '1972-03-20 19:51:06', 'Qui laborum ex soluta dolorem qui laboriosam. Qui doloremque aperiam ex et. Facere quibusdam eligend', 1),
(36, 'cf1f464c-cb7d-3e1d-b1d1-b459126c5618', 'owzg', 'Libero ad id nesciunt et et.', 'Corrupti voluptas aut vero voluptatem et modi similique error. Repellat eos a molestiae. Voluptatem quibusdam maiores laboriosam non sunt. In blanditiis tenetur in id.', 'Dr.', '5691d338-8a87-3b83-8258-b4db0ac96db4', '2008-07-25 18:33:42', '66136084-24b1-3cb4-9eba-e176f239e543', '1971-01-18 23:50:31', 'Quidem vel adipisci quibusdam animi ut similique voluptates. Dolorem odit consectetur labore tempori', 0),
(37, 'e32715de-c25d-3b25-ae79-168bfd3c8b9a', 'kcfx', 'Omnis soluta quas quisquam similique dolorem.', 'Dolorum commodi quia tempore soluta eos. Nam beatae velit libero voluptatum consequatur facilis aut.', 'Mrs.', 'f623542e-c4b6-3e23-8dd5-d81361eb7e63', '1983-11-21 02:47:17', 'bb46da84-4cb2-3855-a60a-95d8717cb855', '2011-05-29 00:08:50', 'Harum corrupti aliquam voluptatem cum beatae eum iusto consequatur. Explicabo dolor eum et nulla aut', 1),
(38, '09d8ecbe-a378-34ac-84c2-0f3734398490', 'egaw', 'Vitae quia eaque harum nisi maxime.', 'Suscipit quaerat et cupiditate quae et et rerum. Velit rerum a ut qui qui. Qui rem cumque saepe distinctio consectetur quia.', 'Miss', '8fb1a96b-c305-3928-87a3-6befac228fee', '2011-08-31 07:43:02', '7bd742bf-ea33-32d2-b4a2-585e57ddf567', '1983-08-18 12:05:35', 'Sed eius accusantium maxime ut distinctio aut. Aliquam quaerat quidem libero. Repellat consequatur a', 0),
(39, 'f202652e-dbad-3e02-bdfd-01e1676bc146', 'nrtb', 'Dolorem explicabo adipisci iure impedit ratione rerum.', 'Aperiam blanditiis possimus possimus sed. Nemo eos et corporis autem iste veritatis. Amet eum commodi quae quisquam exercitationem quibusdam qui.', 'Dr.', '28b179e3-5915-3179-8c73-0017f0f4f31f', '1974-08-07 09:21:30', '71ed3a67-146a-3b2c-aa4d-219c6b5a52cf', '1992-04-14 08:56:38', 'Aut recusandae odit ut impedit error cupiditate accusantium. Ipsam ut quam omnis. Non nesciunt volup', 0),
(40, 'c7d2b1e6-93ce-37ac-a696-188f0dd0af93', 'wogl', 'Et consequuntur neque quas earum dolor.', 'Corrupti reiciendis ut voluptatem sint odio. Et nesciunt incidunt perferendis repellat. Enim dolor harum aut dolorem hic eos architecto. Ex delectus rerum in aut omnis.', 'Dr.', '21049d15-2708-3b06-a018-6239c74eb96b', '2013-12-12 10:38:42', '8d5ea964-7c80-3098-b703-d53f24a8114a', '1982-08-23 03:57:03', 'Qui minus architecto beatae mollitia magni voluptatem qui. Excepturi exercitationem doloribus molest', 1),
(41, '76c30357-4446-37b4-8209-4ecc22dc55e6', 'uvai', 'Voluptatem est aspernatur sapiente veritatis voluptatum sed et.', 'Labore quo nobis sapiente et aliquid. Tempora sed recusandae sint debitis quidem ex. Omnis blanditiis quia aperiam ea dolorum est vel. Nemo quasi cumque eum velit consectetur.', 'Ms.', 'c5f41d45-a541-3fb0-8856-283bc5f173cb', '1991-02-25 18:12:28', 'd9a8d14b-40fd-3c0e-a29f-1a64f380c9c0', '1982-11-30 04:03:24', 'Esse possimus et eos et quia laborum accusamus. Maxime voluptatem ea eveniet eaque qui. Culpa iure o', 1),
(42, '0365f9e4-42dd-31bd-b196-f85a72cabdb1', 'vyjy', 'Neque sed quisquam recusandae aliquam magnam ut.', 'Mollitia et illo odit mollitia. Odit vel dolor neque. Asperiores rerum voluptatem natus debitis autem. Neque reiciendis sapiente repudiandae omnis quas.', 'Mrs.', '9e1be0aa-a9ce-3323-b47f-4b5ce6d2cbbc', '2001-06-18 22:12:20', 'a96dbeaa-146a-3535-b91a-f66c68128dc0', '1972-08-14 20:50:14', 'Repellendus placeat neque pariatur quia velit voluptatum quae. Sit exercitationem voluptas asperiore', 1),
(43, '17185673-30b6-3418-840f-b850641ea831', 'camn', 'Suscipit voluptas facere quis ea.', 'Ullam ipsam molestiae nesciunt saepe. Aut ut in nam quidem optio. Dolore accusantium veritatis tempora architecto. Laboriosam recusandae id qui perferendis perferendis explicabo alias.', 'Miss', '7905fde4-9de2-3857-b7a5-97d06a1f2b83', '2014-09-19 16:52:45', 'a1191d10-6bfd-3eb9-ac0c-de354916b438', '2001-10-15 15:45:08', 'Deleniti ipsa eligendi aut sit nihil. Nam cum facilis qui inventore. Et perspiciatis beatae eum ea i', 1),
(44, 'e0c48aab-220d-33c4-82c0-5af6a755f0aa', 'wfnq', 'Sit id non aut aspernatur sed similique et.', 'Beatae ea est ipsam ut fuga ad. Quo dolorem tempore eum qui amet consequuntur rem est. Earum rem rem voluptatem consequatur fuga. Quasi illo dolore laboriosam nam voluptates temporibus eum.', 'Prof.', '060451e5-873d-362a-9a3c-f90789c211c1', '2003-04-30 22:37:25', '836f8c6b-6e24-3fc1-a01a-d961f3a9b09f', '1973-08-13 21:57:03', 'Animi distinctio reprehenderit neque error provident dolore impedit. Molestias atque et nobis velit ', 1),
(45, 'e54773c9-20e0-3b84-acf7-588424c4306c', 'scmw', 'Accusantium et rerum doloribus voluptatem.', 'Accusamus minima omnis ad eum. Officia unde saepe quia dolor. Magni pariatur id tempora atque.', 'Miss', '7a4f17db-ff35-3b35-9a82-93fe10b3833e', '1988-03-20 13:34:51', 'cbe4a363-0946-3909-9b02-97af00e71b1a', '1972-11-22 19:12:06', 'Et qui quibusdam voluptatem dolores sequi reiciendis quae. Officia tempore ducimus laudantium illum.', 0),
(46, 'fd508570-1b99-3d4e-9e73-96f691c28aed', 'rxih', 'Nulla minima repellendus perferendis.', 'Libero occaecati rem odit. Molestiae quidem non consequatur enim.', 'Prof.', '9fd44c12-f5ff-357a-8647-3be5e12b0821', '1983-08-31 19:07:59', 'c8a165d3-4758-38f1-a4ff-b44e5f42404e', '1991-04-05 20:49:13', 'Quia aut iste laudantium eos. Nisi nobis ipsam tempora harum. Tempore molestias eum distinctio rerum', 0),
(47, 'd0112728-9cf9-3f9e-b1ed-0c883be79d38', 'tcgo', 'Rerum aspernatur saepe ipsum veritatis.', 'Impedit consequatur quaerat totam. Aliquid tenetur eaque nihil debitis ut nihil dolorem. Soluta fugiat et suscipit. Minima harum a cum ad nam explicabo.', 'Mr.', '4aa9b6f6-0da2-36e7-851b-d3f99ba8fa35', '1974-05-06 07:41:22', '67ea0079-df16-3867-91cb-9eb575eb7806', '1979-07-30 12:20:08', 'Placeat minus hic porro aut. Modi exercitationem dolorem nulla omnis sit similique omnis. Sint repud', 1),
(48, '3436cd91-8a01-353d-839b-ceef68e8e9f8', 'jtum', 'Temporibus qui voluptatem deserunt eveniet.', 'Iusto doloremque ab commodi distinctio assumenda quos. Voluptas nihil harum iusto earum qui. Et blanditiis dignissimos omnis error et dolores quia.', 'Ms.', '66e5a7f9-4f2f-3b5e-95ae-123b22023742', '1984-02-17 06:16:33', 'b008a9f7-d607-3e71-ae85-89cd3796afb5', '1989-12-18 06:48:35', 'Aliquam tempore ut consequatur neque tenetur non voluptas. Laboriosam voluptatem nulla alias ut saep', 0),
(49, '498222b9-41c6-38d5-a20d-926f1e367440', 'fmfg', 'Modi voluptatem consequuntur explicabo cumque aut possimus voluptatem.', 'Placeat voluptatum expedita voluptatem inventore praesentium et aperiam. Magni ut modi id velit. Earum facilis iure non occaecati. Deleniti iste voluptate nemo qui voluptatem repudiandae labore.', 'Ms.', '8149458e-042f-33c7-8249-d4733e89d83c', '1980-07-28 23:16:37', 'f1fd795d-40aa-3d1c-b5e1-04170c583094', '2007-06-14 07:13:12', 'Ut omnis accusamus numquam vel ratione. Consequatur atque sed quibusdam vero repudiandae et. Sit mol', 0),
(50, 'aa9d2df4-eba3-344d-b64e-fbb9d2aa9d6a', 'izgb', 'Libero eum cumque earum.', 'In qui architecto natus maiores et veniam vel. Quis eos velit a quaerat earum accusamus. Dolor quo quia et aliquid. Dolor et ad tenetur odit aut reprehenderit doloremque.', 'Prof.', '30ff238a-e372-34a9-b235-72aa83e01533', '1995-11-30 14:09:06', 'aab01e82-ef19-3310-8308-7f95cd401418', '2013-01-23 13:32:39', 'Recusandae omnis voluptas facilis. Accusantium atque quaerat voluptas et provident sit. Nihil volupt', 0),
(51, '87fd3319-d5f2-345a-be11-a8c5a8b4509e', 'sjam', 'Magnam voluptas non eos.', 'Aut et aspernatur enim nemo. Et in iusto magni est quidem fugit eveniet. Quaerat iure quod consequatur aut nesciunt aut fuga. Sequi repellendus exercitationem autem qui aspernatur est.', 'Mr.', '166e03f1-e4f3-3af3-acc8-519b0e1f107f', '1978-12-02 06:25:56', 'd614c4d7-4fd2-3c11-84d3-f8fc306d102a', '2002-03-17 04:22:28', 'Enim corrupti sapiente officia. Aut ut est enim architecto numquam debitis reprehenderit. Expedita o', 1),
(52, '4530e46c-cdcc-3c4c-81d8-a04ef69c130b', 'ddjq', 'Voluptatum quaerat illum sit optio iure.', 'Non saepe et provident inventore ut explicabo facilis molestiae. Labore sit qui voluptatum pariatur omnis id. Et in veniam accusamus possimus ut et neque ipsa.', 'Prof.', '9370a807-753b-3ec1-a1a3-9360f27c2ebf', '1976-10-10 09:44:50', '2a45a2c2-6e5b-35a6-91ee-99bf3d5c7b64', '1990-06-12 21:55:33', 'Omnis reprehenderit eligendi qui ad voluptate tempora. Aspernatur ab ea voluptatibus fugit sint. Lab', 0),
(53, '138ca3b4-0ec3-30d2-97c2-e2c4e5581e10', 'qjqn', 'Eligendi laboriosam et aut suscipit.', 'Aperiam error eum et aut ex cum ut. Accusantium repudiandae ipsam in dolor tenetur aut cupiditate. Reprehenderit sit et quae voluptas iusto. Quia qui occaecati voluptas.', 'Prof.', 'd1b83ffa-e9a1-3f5e-ba91-67707bbbed5a', '1990-09-20 08:31:23', 'a0a6cd9b-a045-3f2a-a29f-2b9f5f8c83c7', '1978-12-16 14:50:55', 'Sed vitae itaque voluptas quibusdam quasi ut iusto blanditiis. Quo aut alias rerum qui expedita aut ', 1),
(54, '163e5550-4b34-3de2-83db-be8144ea4e4b', 'wlnr', 'Fuga voluptas saepe et dicta laudantium aut.', 'Quia non dolorum dolor aut repellat eos. Suscipit dolor optio ut odio omnis aliquid animi enim.', 'Prof.', 'a03353ac-7cc8-3b1f-a244-4fd9cd783d1f', '2015-09-10 23:57:48', '0b1134df-3fd5-3756-8f15-787eef706361', '1975-03-12 19:40:15', 'Pariatur quod quos est repellendus. Quaerat temporibus unde omnis omnis. Quas deserunt odio asperior', 1),
(55, '9d774fd4-3711-357d-840a-88bf00e1d559', 'zhrz', 'Et id minus reprehenderit harum assumenda sed ut.', 'Nihil quos voluptates id cum. Harum in nihil iste. Corrupti cumque quam est qui voluptas velit quam ratione.', 'Dr.', '0bd05375-9d50-3f51-8932-e18e164e5152', '1997-11-29 03:37:06', '454a9ec3-8c85-33e2-ac8b-54f09ab472bc', '2001-03-20 22:09:45', 'Repellendus reiciendis expedita cumque quasi est maxime autem ut. Optio saepe quasi sunt temporibus ', 1),
(56, '47149707-5107-31a0-aeca-cc4c549051e3', 'hnmk', 'Eius quas est culpa perspiciatis quas ipsum.', 'Sint et et ut aut iusto omnis. Quaerat iusto temporibus voluptas aliquam. Dolorem aliquam provident sapiente et et et est aut. Sequi sunt quisquam qui sit.', 'Prof.', '5afd75ac-e69f-3ef4-86d6-74eadf3a7735', '1971-10-08 19:17:19', '43536159-383a-337a-836e-443540eb159c', '2006-07-16 16:54:53', 'Veniam reiciendis dolorum ut. Minus modi at aut et consectetur asperiores aut. Atque totam aut nesci', 1),
(57, 'd4566874-47fd-3e0b-a90e-71966209dc94', 'nqxo', 'Quasi aut facere quas perspiciatis in nostrum occaecati.', 'Temporibus quae non cumque adipisci. Nisi possimus consequatur ut qui id facilis consequatur. Qui veniam consequatur accusamus dolorem labore cupiditate et harum.', 'Prof.', 'f04eaf27-76c8-3533-9e3e-ae33761dc7dc', '1978-03-11 18:30:27', '7decd7fe-e879-3003-bc44-e665745fc8cd', '2006-05-29 01:20:09', 'Autem pariatur autem aut voluptatem in. Laudantium recusandae quia voluptatum tenetur distinctio pos', 0),
(58, '2009d919-13a6-3d80-8a1b-25b23f2a4fa5', 'jpak', 'Quae earum qui voluptatem debitis dolores est.', 'Aut quaerat voluptas labore harum sint repellendus adipisci. Eaque tempore beatae eveniet quia sint recusandae. Animi repudiandae aut nisi porro sed vel sit expedita. Sunt neque similique cum providen', 'Dr.', '26193f75-0811-3556-afc2-2b7060ae0e7a', '2013-08-06 22:49:31', '7e8d2443-4eeb-36c5-a6bd-8c70c2bbb9cd', '1990-03-17 07:02:51', 'Veniam natus iste tempore et. Assumenda rerum natus perferendis dolore quia laboriosam dolorem. Iste', 0),
(59, 'db4621b2-38ab-3b8f-8c66-2c2ee9961bd8', 'kmda', 'Eaque dolores omnis molestiae et consequatur.', 'Dicta vel in sed autem in et delectus. Officiis voluptatem perspiciatis veritatis odit est. Dicta deserunt possimus doloremque ratione consequatur ducimus.', 'Prof.', 'e38f27cf-d73e-3c38-b7c7-00f2d967dd91', '2003-12-17 20:15:21', '754eaca7-bee0-31ae-a6fb-3f001a081731', '1988-11-05 02:23:26', 'Unde et neque et quae maxime quidem. Perspiciatis nobis qui assumenda rem odio. Quo maxime quibusdam', 1),
(60, 'e365a867-001a-3bad-bb15-bf574fe1ef11', 'bvon', 'Non sapiente doloribus dolores iste at similique quaerat ut.', 'Aspernatur est dolores perferendis nihil quia aut. Neque et voluptatum voluptatem consequuntur unde voluptatem. Vero voluptatem minima distinctio ipsam quam harum corrupti.', 'Dr.', '2cc62d3b-a86e-3805-b9d2-2096382dd632', '1979-10-03 01:24:09', '5a8da17f-c782-3eb6-9400-8159e36e3252', '1987-05-12 07:59:02', 'Pariatur et fugit quibusdam sequi. Aut mollitia vitae beatae doloribus hic. Dignissimos quis volupta', 1),
(61, '49df829e-496f-361e-ad64-0e3472589fdb', 'tyom', 'Dolorum expedita maxime ut voluptatem porro.', 'Odit quo nostrum vel ut. Est modi nesciunt et voluptas eius deleniti corrupti. Minima omnis maiores rem inventore qui quod. Quia animi eaque blanditiis beatae ullam. Doloribus ut natus nulla.', 'Mr.', '38b22089-3693-3600-afdd-ce803bd4a91a', '2014-01-21 05:20:01', '496f60c0-b26c-3eb8-9278-3e4b6fd9c336', '1991-11-01 23:35:56', 'Molestiae ducimus repellendus qui ut unde nostrum. Tenetur corrupti corrupti excepturi explicabo. Vo', 1),
(62, '32a56958-a5d3-3739-b0f9-f3f3da7fe302', 'rbpl', 'Quis mollitia eum saepe modi eos quidem eos voluptas.', 'Ea et eveniet fugiat. Consequatur voluptas qui iusto beatae voluptatem. Amet ex magnam qui quis. Non harum ut et velit dolorem autem voluptatibus temporibus.', 'Miss', '34f17b52-da39-3266-9a4e-b53f5709014b', '1976-08-22 03:32:19', '989988bf-2525-330c-8c02-8316618387c8', '1990-04-17 08:25:43', 'Ipsum distinctio occaecati dolor quis. Quia atque nihil molestiae et saepe debitis omnis. Ullam cons', 0),
(63, '1c94e6e1-4ae5-3525-ad57-33e70f0cd7f3', 'ynwv', 'In quia magni magni sed doloribus.', 'Nulla aperiam cum est vitae sunt. Quo voluptas quis sed quia assumenda a consequatur. Modi delectus quos non veritatis itaque.', 'Dr.', 'b161156b-abe1-3e6c-be6d-7e84ec808ab8', '1997-11-11 21:00:14', '14da7273-b69f-33cb-ad88-15fcf6ffda78', '2010-01-18 21:36:43', 'Qui sit molestias quia ipsum adipisci. At atque veritatis rerum. Ut earum et repudiandae facilis.', 1),
(64, '168fe934-af56-36de-b46a-253ab28c438e', 'yvbp', 'Voluptas vel dolorum facere aut.', 'Et ea voluptas beatae cumque cum. Quis ut dolor non consequatur sequi. Non explicabo rem iusto ea rerum repudiandae sed.', 'Prof.', '10924ff0-b0f4-3268-ae98-007ca365283a', '2012-07-04 08:33:53', '93d361a8-e548-3b66-8f83-e83e64b4f5d2', '1994-03-24 09:23:01', 'Fugit voluptas eaque consequatur eligendi vel. Dicta est velit rerum ex voluptates vitae tempora. Om', 0),
(65, 'a0f26b10-d3d9-3275-8073-7f41c322c852', 'mxsm', 'Exercitationem qui id repellendus ab quo blanditiis.', 'Ut ipsum pariatur magni perferendis rem temporibus. Perspiciatis sint rerum eos similique. Voluptatem eos sed consequatur enim quo. Itaque et quis ducimus nostrum.', 'Prof.', '5db1f55b-294c-35d9-b305-9b8da27ff734', '1977-11-20 06:24:48', '84783bc4-3386-36d9-82b3-bdecedba483a', '1976-03-30 08:00:27', 'Suscipit doloribus deserunt aut. Ab rerum laudantium numquam enim sequi quam commodi. Magnam commodi', 0),
(66, '07060cc0-fa00-342b-9f37-990b86a3ae3c', 'qxon', 'Vero repellendus illo in sit soluta et.', 'Hic velit perspiciatis velit doloremque voluptates saepe sit. Facilis nihil non facere quo consequatur. Quae voluptatum ipsam corrupti.', 'Dr.', '212d230a-1521-3084-b2e7-4e31fa731bca', '2014-07-15 05:58:32', 'a59ae73d-27b1-396c-8519-e4e2a07cd051', '1998-04-04 16:30:17', 'Qui harum dignissimos a ut magni tenetur. Dolore dolorum quia alias maxime assumenda amet. Et nihil ', 0),
(67, 'd13a4a79-8497-3328-93cb-5856ab6874ab', 'juca', 'Ex rerum animi deserunt qui architecto voluptatum iusto.', 'Laboriosam velit quidem velit qui quos. Non eaque cum eum sunt. Est voluptatem sapiente aperiam saepe sint alias est. Iusto optio ut laudantium eveniet atque provident.', 'Prof.', '9c634a62-cd1b-3c68-84de-6d2682930d62', '1973-03-08 16:42:43', '45c2cc27-a9de-36c2-902a-549a2bff5fff', '2008-07-09 09:39:24', 'Maiores reiciendis ut quos nam et molestias. Hic magnam dolorem libero quasi. Suscipit non ipsa nisi', 1),
(68, '0722dba3-1b29-315d-866d-93d88911af6c', 'nmnb', 'Eum sit voluptate nam et.', 'Vero ut quo consequuntur magni aut. Atque veritatis mollitia illum et nemo non odio explicabo. Tempora totam error et unde.', 'Dr.', '6c03be53-8121-3306-a46c-18828e851669', '2005-04-18 07:04:01', 'd66b3c69-8c53-3474-a2e2-c55c39d8412a', '1978-03-12 12:32:20', 'Soluta minus officiis distinctio ut voluptate dolor. Expedita deserunt ratione illo magni eos maiore', 1),
(69, '8cb17a9d-1c79-3506-af1f-cc75008732c1', 'meoa', 'Et excepturi et amet quam.', 'Ut nam et iste suscipit quibusdam vel. Labore saepe ut ut minima. Veniam voluptatem inventore est. Nam totam ea est amet omnis nobis soluta.', 'Dr.', '4a76802e-5a29-34da-a175-018e71a1c4c6', '2013-12-20 05:37:08', '2abe6d32-7a97-3396-b9f0-b06e0be26965', '2007-01-14 17:34:33', 'Animi totam accusantium et. Enim rerum ad quisquam quasi veritatis. Repellendus repellendus libero s', 0),
(70, 'fe8f1d0d-a338-3703-883e-44ce5d9606bb', 'anne', 'Sint aliquam nihil dolorem et et necessitatibus dolor.', 'Quia commodi rerum dolore molestiae dicta. Aut eos corrupti non ut et sit.', 'Dr.', '3c43ef05-7e5d-3cd6-8317-8c97c23c0f71', '2018-04-09 14:43:33', 'd3e6e3d5-dbff-3625-935c-278de49b59f3', '1994-08-17 15:02:58', 'In quis et dolores dolore ab. Similique ut occaecati est.', 0),
(71, 'a6fb1027-3749-3dfa-bc56-bf2bf8bb574b', 'mfxn', 'Deleniti et aperiam in libero.', 'Reprehenderit qui dolorem ipsum id officia omnis voluptas. Dignissimos odio deserunt eligendi eveniet et. Harum sint ipsum in beatae vero at. Et dolor non saepe cupiditate qui enim.', 'Prof.', 'ef9a34dc-5e5d-34be-b950-53cf7fb2481a', '1991-04-28 11:19:37', 'f889a865-cf41-3b75-a257-e74b091822a7', '2012-12-08 04:02:03', 'Atque atque sapiente quaerat reiciendis est placeat illum. Dolor beatae eos quisquam qui qui aperiam', 0),
(72, '8d86f4d2-fd1f-31bd-998f-3d8505042592', 'qrgt', 'Omnis dolores nulla adipisci ex.', 'Excepturi voluptatem et tempora rerum incidunt porro ipsam. Quia et illum voluptatem illum ut blanditiis dicta dolorem. Praesentium et nemo qui nihil porro omnis.', 'Mrs.', '73313e80-e432-3fbd-963b-d19157c9ed4c', '1975-03-18 17:18:10', 'b73d624c-af2a-305f-996a-80398918b04b', '1998-04-21 08:06:48', 'Non architecto accusamus repellat. Nobis non est accusamus eos eos velit corrupti. Non ut minima ut ', 1),
(73, '038f1c8c-30e4-39fe-87cf-6e3d241f25c3', 'xxqg', 'Distinctio sed non omnis ut aspernatur consequatur.', 'Voluptatibus rerum provident facilis. Nulla numquam magni aliquam numquam. Quo sit omnis et vel. Iure eligendi pariatur voluptatem qui sit.', 'Miss', 'd9566d4f-0205-3994-973a-4bcbcf89b1e1', '1989-05-24 21:22:55', '439fe838-f8f8-3027-b2c4-6bd11609d9ce', '1983-08-03 13:16:38', 'Molestias quos et tempora et. Quos cupiditate non ipsam. Qui voluptates repudiandae quia doloremque ', 1),
(74, '234beb1b-73a8-3780-98f4-77ffbf0d3853', 'xnev', 'Libero et nihil blanditiis vitae assumenda minus.', 'Quia dolores adipisci deserunt nesciunt. Quas qui facilis sed corrupti sit. Iure et excepturi doloremque alias.', 'Prof.', '4372a20f-ee52-30ce-bde5-fa55bc0cb3ee', '1975-08-30 10:14:15', 'ff402a66-e120-3029-82f0-23883781ce1e', '2001-06-12 17:48:11', 'Repudiandae fugit et quo. Non aut perferendis provident delectus aperiam accusamus sint placeat. Rep', 1),
(75, 'bd5575b5-3942-35d6-90f0-36f26c9aa152', 'iuxv', 'Saepe incidunt cum dolores est quidem nihil omnis.', 'Et sunt delectus qui rerum ut ipsum ad. Non molestias nam blanditiis ut nulla sed. Vel necessitatibus velit voluptatem.', 'Prof.', 'a3b774d9-9031-32a8-9f58-1a42755bdf49', '2013-08-15 18:58:08', '58a9f93b-7719-3301-ad6f-6c8e6fba6598', '2011-04-20 07:33:21', 'Vero animi commodi exercitationem magni velit. Et quos minima aut fuga ut.', 0),
(76, '3ee672e7-755f-3e3b-ac18-96a70894c52d', 'ryni', 'Rem ea voluptas porro et maiores molestiae.', 'Dolor ut veniam quidem earum cumque voluptatum. Occaecati ut quisquam ut dignissimos asperiores ut voluptatum. Quam ut molestiae ullam. Expedita accusantium ullam sapiente tenetur aut.', 'Prof.', '50e6b564-e91a-3b13-b46a-fb80291a5fa7', '1997-09-06 01:00:53', '140fbd2c-8e72-37d7-96d0-a17f049e5775', '1980-02-18 17:17:49', 'Possimus rem voluptas quia illum provident et voluptate. Sed nihil molestiae quidem. Veritatis archi', 1),
(77, '7213c156-695f-3c46-b4e9-5ca37daef08f', 'ojkz', 'Atque maxime aut consectetur iste nihil ullam.', 'Beatae aliquam enim quos voluptas. Dolor ea est sit ad et.', 'Dr.', '7e1cfcff-c4fb-305b-9870-452b63fabb10', '2009-08-23 12:41:02', '13b8d96a-c466-3e7a-b9af-012f61077660', '1985-09-12 11:50:43', 'Consequatur voluptatibus in et quidem omnis earum. Vero autem corporis tenetur quam non corporis. Co', 1),
(78, '939f648f-910f-3c0e-9191-a92c40daf36d', 'kbna', 'Ut vel placeat quo ea maxime et iste dolor.', 'Animi aliquam labore accusantium accusamus aut dicta eos quaerat. Commodi quia ex et et quia impedit quia. Eligendi qui laudantium voluptatem voluptatibus.', 'Mrs.', '01529f12-1147-338f-a8d2-50726d2ffece', '1999-07-31 21:07:46', '5ab08d66-2627-399b-a4b6-71d0d8fef726', '1992-10-10 04:21:45', 'Autem tempore unde commodi consequuntur quaerat excepturi aperiam quo. Cumque quia blanditiis nemo q', 0),
(79, '90dd0e96-d0d2-3f70-a4fe-46fe55c09448', 'vxpd', 'Esse et et ratione id vero aperiam et.', 'Et eius qui eligendi ea. Quo esse officia asperiores enim placeat ipsa architecto. Soluta consectetur molestiae minima.', 'Ms.', '881d35b6-a6fc-3fc5-a1eb-6983365cf3f1', '2018-03-27 06:17:04', 'f29e1219-bf1a-3ac6-a681-854eb7e4b654', '1983-08-18 02:01:03', 'Minima mollitia quia quasi quaerat dolor recusandae omnis praesentium. Id voluptatem similique sit q', 1),
(80, 'be67758c-5922-3c83-a1d9-89a6b5379e65', 'kppc', 'Corrupti quod consequatur sed.', 'Quod aut ut nam aut. Aut est voluptas et exercitationem. Reprehenderit totam qui sit reprehenderit aut quibusdam.', 'Prof.', '48030897-4675-37ee-a87d-77508163203f', '1994-06-12 06:48:54', '5fb50b3f-8a1a-3635-b745-ca0f89c55637', '1972-08-06 00:27:57', 'Doloribus voluptas nesciunt omnis dolor enim. Hic et et nihil beatae et assumenda. Veniam totam dolo', 0),
(81, '71dd29c1-a0ae-3113-911c-fb44f5d49ff4', 'hqba', 'Aut enim nam autem.', 'Vel dicta quibusdam voluptatibus rerum quasi velit. Rerum sunt dignissimos in fuga necessitatibus adipisci alias. Aut et ducimus eaque aut repellendus.', 'Prof.', '2ebe0aca-190c-3f93-8310-fa68b99e9a04', '1991-03-31 19:35:19', 'a00e13dc-0788-3119-8e2b-957de64785f5', '1992-07-03 10:08:20', 'Et et in rem laborum. Eos voluptatem laborum aspernatur in officia nesciunt. Iusto eos accusamus vol', 1),
(82, '0732d0f7-057d-3e93-87f3-8e316445e876', 'ryep', 'Numquam ipsam facere dolore labore.', 'Neque inventore soluta animi voluptatem aut. Tenetur similique voluptate ut expedita non magni voluptas. Quis at accusamus qui odit illum soluta. Consequatur tempora earum voluptatum consequatur saepe', 'Prof.', '14593bf6-17e2-3dd1-9a1a-9d8c9c1999b5', '1972-11-16 19:10:25', 'fd8b76a9-58c7-3b72-8224-0b25e8ed885b', '1986-03-28 05:57:32', 'Esse laudantium similique est laudantium provident numquam quos. Pariatur ea et est vel autem quidem', 1),
(83, '7fcf348e-b714-32da-b7e4-d72aaa0b3081', 'kbjp', 'Velit omnis omnis eligendi ut qui non aspernatur odio.', 'Aut adipisci et enim maiores voluptatum laborum officia quo. Facilis voluptatibus quisquam quam officia.', 'Dr.', '8e44e3e5-54dd-3eb5-bec3-5523a8a62dff', '2008-02-03 13:43:13', '42056f39-dbe2-37c1-bd7a-d70aee86df04', '2008-06-29 19:17:56', 'Illo consequatur inventore architecto. Incidunt qui illo minima quam doloremque amet nemo illum. Rer', 1),
(84, '17cb5aa0-9fae-328d-b917-bbdec77ba215', 'imkl', 'Qui modi culpa ut unde.', 'Id ut asperiores ut velit qui. Ut voluptas consequuntur et maxime aspernatur deleniti dolorum. Dolorum dolores non commodi quo voluptatum est. Suscipit optio vel reiciendis optio.', 'Dr.', 'ede0ca70-ce3f-3a0c-bc95-764e92e165a2', '2018-09-09 09:22:17', '7390cc76-7330-3992-aa79-1f008a9851c5', '2008-05-08 14:26:46', 'At repellendus quos ea nesciunt ab dolorum perspiciatis. Fuga est reiciendis est ipsa cupiditate rep', 0),
(85, '8c60b00d-bcbe-32c2-8557-6723c16fe711', 'svpk', 'Illo sed culpa alias libero.', 'Dicta rerum ut voluptate ducimus officia qui quibusdam. Temporibus saepe odio et dolorum porro ea dignissimos. Sint est fugit quidem nam. Doloribus sit adipisci voluptates aliquam deleniti et asperior', 'Miss', 'a5236ba9-7bad-3d76-b1e8-af8c1bb31da1', '1974-11-10 02:07:16', 'f1ec6f12-9754-33e2-bd53-3bd33bbcc214', '2004-04-22 15:48:40', 'Vitae error ratione est rerum molestiae cupiditate sint. Animi dolores eius sed blanditiis. At et il', 1),
(86, 'a84d444d-d73a-3b7e-a7b9-f7d58adda02b', 'oido', 'Et laborum dicta libero autem dolores ab.', 'Qui sed est unde maxime. Consequatur excepturi facere quasi vitae debitis ut atque. Blanditiis cupiditate omnis illum nostrum quaerat. Quae sed suscipit voluptatem.', 'Dr.', '77c920f5-03bd-30e8-a058-031fbf11374a', '2007-04-01 04:52:01', '0e0a5fcf-e24e-3748-89d7-c28eef7960ce', '2012-09-10 13:13:40', 'Est ut qui et eos. Ut nesciunt illo eum quae nemo excepturi. Ut eum sequi eius veritatis accusantium', 0),
(87, 'aced5ea1-7946-3413-8ba4-0f5d0220ebc2', 'axlq', 'Minima modi magnam voluptas consectetur eos libero.', 'Et distinctio ut provident et autem id. Et quasi animi ut est et sapiente. Optio odio aliquam aut et inventore consequatur libero.', 'Mr.', '70de89f9-1d39-39f5-be98-d953cf38db98', '1996-10-24 06:54:00', '980b8a3b-9499-3352-a945-efc0fe8e1194', '2015-11-23 10:39:24', 'Et nisi delectus modi facere culpa totam. Nesciunt unde corporis fugit ut nulla sed vel. Architecto ', 0),
(88, '6017c4ff-80d1-3ea9-b8a6-dfaf63669dc2', 'peok', 'Quo nesciunt odit quaerat adipisci reprehenderit commodi nisi.', 'Cum amet aut itaque commodi. Alias inventore odio ut facere iste et dolor possimus. Consequuntur sit aut voluptas sequi. Aperiam corrupti quasi unde neque.', 'Dr.', 'd44ff5c0-7527-357a-86a1-5b56fa8e78f8', '1992-05-12 15:44:47', '52ed1166-bd05-3fc0-9afd-be847c799830', '2008-07-19 08:24:11', 'Sunt excepturi et sunt quam. Culpa rem asperiores deleniti hic et modi fuga. Sapiente laudantium tem', 1),
(89, 'a193190a-b82d-3e69-9ae3-2d8558c2037b', 'ydkt', 'Ipsa minus ullam ipsa aut.', 'Rerum fugiat placeat dolor vitae nostrum iste voluptatem. Ducimus et molestias nobis cupiditate incidunt. Nisi laboriosam atque nesciunt expedita.', 'Prof.', '4a0aadd1-8c72-325a-84a9-17fb31db439d', '2012-07-01 06:46:13', 'f35decb3-7738-349d-a785-4296938bec60', '2007-01-14 15:08:18', 'Incidunt sunt sapiente ipsa nisi quibusdam. Iusto ea doloremque omnis numquam ducimus commodi volupt', 0),
(90, '338e941d-53ce-36b0-9b4c-ce70c1b1c6a1', 'yyva', 'Possimus quos qui dignissimos atque.', 'Quo exercitationem est vel qui qui quis iusto. Impedit officia perferendis ipsa ut aut eos. Dolorem fuga in omnis qui.', 'Dr.', '372bb7e7-d729-3afa-b98f-69ec35a94a51', '1987-09-24 14:15:49', '2bb2e34d-adb4-33ea-a8c9-a695d8fcbd52', '1990-08-23 23:18:46', 'Eius totam nihil totam modi quaerat. Pariatur ab est aut molestiae.', 1),
(91, 'e1d7472e-9376-33db-9783-ae74d6c08f8a', 'xylf', 'Quia adipisci quis nemo veritatis et dolorem.', 'Eligendi laborum dolores architecto incidunt. Aut totam voluptas est qui eum aliquam ut. Aut accusamus dolores et repellendus minus ratione. Eos quo corrupti temporibus beatae quam.', 'Dr.', '7d27c9c7-6d1c-3177-bb90-4cee6931601f', '1980-09-11 14:07:49', 'abc10582-b3f2-322d-b6d8-166dd6832f2a', '1977-09-25 15:51:39', 'Iure corporis et est. Ut reprehenderit molestias aliquam ut sit beatae. Molestiae dolor culpa expedi', 1),
(92, 'f59990a9-0c2c-307e-bf77-a07cf8e3389b', 'zmny', 'Qui necessitatibus temporibus totam quo repudiandae aut.', 'Aut dignissimos enim quis perspiciatis. Officiis fuga tempora voluptates quia quia. Voluptate autem quia laborum aut perferendis aut dolorem aspernatur.', 'Prof.', 'f7966e36-9e09-38c4-827d-6f03c55dfbf4', '1993-07-01 02:41:16', '6065da92-1439-35d0-b93f-717ee4f4608a', '2001-01-14 14:12:43', 'Sit ut enim suscipit exercitationem voluptatem. Fugiat beatae corporis esse fugit. Maxime molestiae ', 0),
(93, '4eae55df-19df-3394-9e58-e00d846ef4e7', 'xifj', 'Occaecati nam iste asperiores optio animi tempora et.', 'Enim dolores aliquam quo temporibus. Tempore quia explicabo nihil enim culpa voluptate nostrum. Vero modi esse et porro illo reprehenderit. Quia iste maxime atque eos nihil eos ut nihil.', 'Dr.', '657bda20-ed8c-384f-a88c-8ca7dff291d4', '1997-04-23 17:41:10', '125e9743-0282-33cb-9f67-be8ab6dbf4b2', '1996-10-19 08:34:36', 'Aut ut ut in. Consequatur quia et saepe qui architecto qui ducimus facilis. Aut repellat voluptate c', 0),
(94, '5829f4ce-725f-3465-9565-1fe8a1b71236', 'twck', 'Nemo necessitatibus amet possimus iure consequatur doloribus.', 'Cumque omnis ab excepturi sint. Delectus quia consequatur tempora expedita. Quia sed fuga odio est cupiditate. Harum quia temporibus sint dolorem.', 'Dr.', '590bd892-b9b1-370d-ac8b-e01c1d3ead04', '1973-11-04 14:04:39', '0cd6e78c-4d91-34ed-89aa-c5a18d12c09f', '1980-03-15 10:42:40', 'Maxime quasi cum sed consequatur aut in. Numquam sint architecto in vitae ut illum ut. Exercitatione', 0),
(95, 'c6020ef7-36cd-3b51-b0f8-1362f13b341f', 'rmox', 'Expedita hic aut cumque et magnam fugit facere.', 'Eum quo voluptas laboriosam voluptas. Ut molestiae et sit et voluptas amet. Vel quos sit saepe et. Commodi officiis quam rerum a incidunt. Et maiores nemo sapiente dignissimos.', 'Mrs.', '625d31da-7c59-3977-a64c-a6a4d8d30c17', '1985-07-06 11:46:50', 'ee26cefb-4df6-3e0d-b2b3-18e393d94fae', '1982-02-12 12:20:16', 'Et et voluptatem perferendis et. Architecto nesciunt error qui laborum ratione. Atque voluptas quia ', 0),
(96, '8050fca0-2a62-33a0-be3c-7699850cb9f0', 'ofnc', 'Voluptas iure quisquam dolorem sit animi dolorem.', 'Eaque quia nulla rerum ratione sed. Reprehenderit voluptas omnis non perferendis modi dicta. Impedit et veritatis dolorem mollitia atque.', 'Dr.', '0807d095-bad3-39e0-8911-0363927145e1', '2009-07-14 06:17:12', '347a19c1-65fc-370a-bbe3-993eaf391b12', '1980-04-05 11:36:31', 'Officiis qui neque omnis voluptatem voluptas sint. Consequatur sapiente accusantium et tenetur illum', 0),
(97, 'f72ab0d4-9f14-387f-8841-a6f491ca4da2', 'gihk', 'Saepe eligendi amet dolorum suscipit.', 'Eos consequuntur perferendis fugiat harum iusto maxime porro. Cumque eum aut sed dolor. Voluptatem voluptatum mollitia labore nisi.', 'Dr.', '76477c7f-db25-3e78-b075-1e2720b0f52a', '1980-01-21 04:42:33', 'bb734434-cbbc-38bb-bfeb-f766a07465af', '1977-06-21 16:18:16', 'Deleniti eius minus non. A perferendis labore vel. Nostrum a nisi officiis perferendis vitae unde. E', 0),
(98, 'b9338f33-8020-3f67-b145-05aa7f5bb9c4', 'pkvq', 'Aut cum tenetur eum id nisi hic.', 'Et et omnis maiores repellat velit. Qui quam et libero placeat excepturi voluptatum. Sed provident minima aliquid eaque. Officiis minus veniam magnam voluptatibus corporis qui. Ex et fugiat nihil dele', 'Miss', '64d4c0cb-5f94-377f-b732-f9ffdb32570a', '1992-01-12 02:39:30', 'efd91b80-5eae-37a6-8567-0043476edf3d', '1970-01-02 00:07:30', 'Aut iusto nobis suscipit officiis laudantium. Doloremque eaque consequatur non eius sint. Sit et par', 0),
(99, '429ee991-dcd9-3a1c-b366-2d9da74a1d5e', 'nowe', 'Illo vitae saepe sapiente consequatur.', 'Aliquam qui quasi ipsa exercitationem quisquam sit recusandae. Distinctio sequi fugiat enim. Quod optio beatae ea corporis sint explicabo facilis. Soluta voluptas aut perspiciatis nesciunt distinctio.', 'Dr.', '2f4f774a-ef0b-3543-b832-29d848ec07b1', '2003-03-10 16:21:55', '97df11be-707d-362b-94ac-cd6072226a0e', '2008-06-23 22:27:54', 'Et molestias at fugiat cumque et consequatur voluptatem. Dolores perspiciatis aperiam ea aut aut por', 1),
(100, '715b063d-ad6a-3730-bfe6-ae03094eeec2', 'aewa', 'Dolores quos non voluptates ratione maxime ea maxime.', 'Culpa quasi beatae aliquid blanditiis sit qui. Quia sapiente neque vel sit exercitationem doloribus. Est natus laboriosam quasi accusantium. Nobis quaerat labore mollitia ea doloribus sit.', 'Dr.', '7090c32a-907a-3985-b076-908845d21872', '2003-06-23 19:41:03', '03cc57e9-4a6b-30bb-81fe-bcb01661ae9a', '2014-10-14 22:45:13', 'Placeat sequi rem quia ut voluptatem. Et illo deserunt nihil temporibus aspernatur et sit et.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_certifications`
--

CREATE TABLE `hr_general_certifications` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `IssuedInstitution` varchar(100) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `IssuedDate` date NOT NULL,
  `ValidityExpiration` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_general_certifications`
--

INSERT INTO `hr_general_certifications` (`id`, `CompanyId`, `EmployeeId`, `Name`, `Description`, `IssuedInstitution`, `InclusiveDateFrom`, `InclusiveDateTo`, `IssuedDate`, `ValidityExpiration`, `CreatedById`, `CreatedAt`, `ModifiedById`, `ModifiedAt`, `Remarks`, `Active`) VALUES
(1, '96a1def0-9be3-3127-a128-cbbb49eab8a2', 'ade60954-e640-326d-b42b-c9184b04ed0a', 'eligendi', 'Et quae dolorum consectetur dolor dolorum nulla. Illum est voluptas corporis quia voluptatem tempora dolores. Exercitationem quia nihil vitae a.', 'Quality-focused logistical firmware', 'kassulke.mina@example.org', '2009-05-12', '1978-11-17', '1981-06-10', '880e940f-5aa5-337d-8ee0-bbaa0a69328b', '1972-12-27 12:02:32', '2f3bedb7-3df4-3b37-bacc-da921be44dcd', '2009-05-25 18:13:33', 'Qui aliquam porro molestiae ut et. Non voluptatibus quasi voluptatem quam ab nostrum eveniet. Fuga q', 1),
(2, '9c7cbb9d-ac77-3c55-ba87-a6dac729a95e', '2337dc4a-1e23-391a-8279-5cb2e1316e34', 'sit', 'Quo consequatur aut voluptatibus dolores et. Modi et autem laborum pariatur.', 'Monitored assymetric focusgroup', 'edythe70@example.net', '2008-03-26', '1986-03-24', '1991-03-18', 'a1e2d514-efc1-3ecc-9ebd-9cc1ee3456a4', '1977-09-29 22:14:05', 'cad6f965-f57d-312a-81c8-8d7776aa6398', '1993-02-26 18:04:48', 'Aperiam natus unde sit quibusdam quis. Ipsum veritatis officiis qui assumenda asperiores expedita la', 0),
(3, 'da553f21-77e8-3c3a-9b71-e0abc871f714', '10658a6b-35cc-35fc-bc33-085f68d8af16', 'quidem', 'Dignissimos dignissimos et nulla officiis omnis numquam et. Repudiandae doloribus itaque deleniti labore doloremque rerum et minima. Illum et qui similique sint dolores. Dolorem itaque quas ducimus pr', 'User-friendly bifurcated workforce', 'uriel76@example.com', '2018-01-18', '2014-03-23', '2018-05-04', 'cbad87fe-b722-39ad-becb-d956a9e5522e', '1990-02-28 14:32:38', '10acb78a-f011-3e99-a37b-92edfa7d8a31', '2008-02-28 20:20:19', 'Qui rerum temporibus autem et et. At non ut sint quam beatae molestiae ducimus. Minima aut dolorem d', 1),
(4, '0dd190aa-2eb8-3d52-96fc-355f42395b39', '528789cd-f77d-3aa3-98a2-eb867b82b78c', 'rerum', 'Tempore qui debitis voluptas sapiente delectus. Molestiae fuga dolor nisi exercitationem. Nihil deserunt pariatur voluptatem asperiores. Provident eius dolores tempora assumenda repellat.', 'Mandatory 24/7 algorithm', 'vpowlowski@example.net', '2007-01-24', '1982-03-23', '1996-12-23', '11c1fbcc-f0cf-3a56-8b53-7f2f0ddb1dd5', '1982-09-07 07:26:59', 'b8b95b2f-bc66-392a-ad5f-c099390a62e5', '1990-06-12 07:05:46', 'Aliquid ut iusto facere voluptates. Officia sequi aliquid qui modi. Aut facilis sunt sint non.', 1),
(5, '5d9fc577-a3fd-3256-badb-5ec9a733bc5c', '75c6995c-a0d5-30e4-9f9c-a6fdb1cb238b', 'iure', 'Voluptas et minus quidem. Perferendis molestias repellat id aut ullam. Voluptatem nesciunt qui dolores sint quod rerum.', 'Stand-alone systemic function', 'mattie.brekke@example.net', '1987-03-01', '2010-09-19', '1973-05-19', 'deca5782-0d59-3322-b2ca-97ec4d85ce34', '2010-01-17 19:42:09', 'b051653e-2fbe-3a05-a6a9-671fb39a1cbb', '1973-08-12 05:07:54', 'Vel et odio culpa. Repellendus praesentium aut possimus laborum laboriosam dolores quos et. Dolor su', 0),
(6, 'd08b0d3b-a07f-3e9c-8176-2588590aaecb', 'f6513c27-0a3e-309d-b81a-5fb797c6c4ce', 'et', 'Nisi fuga recusandae blanditiis quis voluptatibus voluptatum placeat. Et sint sint ea corporis commodi illo ullam omnis. Et in vitae eligendi expedita.', 'Secured encompassing middleware', 'kennith66@example.net', '1999-02-22', '2008-01-24', '2003-04-03', '3511849d-7512-3d69-90c4-778df8a5a598', '1997-12-08 18:39:07', 'c3c0bae3-6be9-3815-b6f7-ff045710d512', '1983-01-21 01:27:39', 'Voluptas est fugiat ea repellendus consequatur eius. Perferendis ut porro voluptas enim iusto. Quos ', 1),
(7, 'd8356fef-2328-324d-bfbb-3dc0d257921f', '4473ff92-08fa-3ffb-9831-f511545009f7', 'vel', 'Tempore itaque vitae cumque iste vitae quo. Suscipit itaque in nemo totam. Doloribus sit ut velit rem aut consectetur. Provident atque commodi beatae nostrum molestias quia ullam.', 'Operative homogeneous solution', 'jose07@example.net', '2006-05-09', '1998-03-11', '1981-02-18', '57997ed5-234e-36c7-9af3-45e85ea07c7c', '1976-12-16 07:47:21', '96e2ca30-371f-38aa-b783-871486698170', '1980-07-30 22:58:39', 'Impedit fugit dolorum molestias ratione libero laboriosam rem. Iste sed nulla rerum molestiae. Quo h', 1),
(8, '1735afa4-1da8-371d-9d14-7bb63ef66680', '11eaedcf-c67d-3ce3-8948-65c808a43591', 'harum', 'Repellat dolores consequuntur amet nisi quibusdam. Voluptates reprehenderit similique eos est voluptatem. Doloribus et voluptatibus et vel sit veniam. Laboriosam velit est et eius exercitationem minim', 'Cross-group modular firmware', 'zulauf.roxanne@example.net', '1989-07-20', '1982-11-19', '1976-03-08', '1ce3eb3a-5c91-3c51-b019-c85fcfa7060a', '1993-06-07 07:24:34', '62629239-6209-3bab-938b-8e0b9a745505', '1998-01-27 08:00:19', 'Rerum aut facere adipisci soluta. Nihil et impedit praesentium et autem. Qui dolor error dolorem et ', 0),
(9, 'ff44f067-2294-3663-9ca8-d8ca4228cd75', '0b6e5acb-c5b0-3ed4-bcb2-890721001f34', 'at', 'Earum quidem et error consequatur et laudantium. Velit exercitationem quibusdam quam quia excepturi et. Vitae non nemo nisi distinctio ut in dolorum architecto. Quia illum sit aut qui omnis sed animi.', 'Re-engineered bifurcated challenge', 'ynader@example.org', '1990-03-13', '1981-07-22', '1983-11-18', 'c8621adf-1119-3c6b-a528-ab2f622268cf', '1983-07-21 10:44:29', '96d64a4c-5a79-3a3f-a6fc-96ac1e424eb3', '2004-11-12 11:22:46', 'Ut impedit cupiditate est. Eos omnis harum repellat repudiandae aperiam soluta. Temporibus ut ipsa n', 0),
(10, '53b1157e-5e09-37e9-99cb-8265ba3b3413', '39e7d92e-3125-31df-a927-e3f11daec739', 'aut', 'Debitis voluptatem laudantium voluptate consequatur aliquid et in. Quaerat mollitia laboriosam quasi aliquam aut qui id. Rerum qui ipsum eum omnis assumenda earum et. Mollitia non quo ab.', 'Operative dynamic standardization', 'stella.prosacco@example.net', '1981-05-11', '1988-05-15', '2017-11-24', '13ef2324-4051-3435-b4e2-f63489a095a8', '2002-08-23 07:37:56', '6a3c6c64-6ae2-30b0-823a-c0121d85cb50', '2003-03-15 12:56:42', 'Rerum reprehenderit quis doloribus et. Ratione iste ea pariatur. Adipisci sed deserunt consequatur. ', 0),
(11, '7d3b8eda-6fdf-3c00-9f4a-c8527f4196ac', '8be6d660-04d7-39f2-86a8-506346bd4122', 'velit', 'Incidunt quo id et at ut. Eos ut quaerat officiis quaerat. Necessitatibus alias deserunt soluta cupiditate tempora ex vitae. Dolores reiciendis omnis id necessitatibus sit. Corporis delectus deserunt ', 'Cloned 24/7 hierarchy', 'theresia.schmeler@example.com', '2006-12-22', '1977-03-17', '1984-06-30', '46b95ece-ec6e-3551-8d72-8d02c849bc34', '1978-01-27 10:22:34', 'ee071bdf-5527-3cf8-9dae-e4cab8ec6abc', '1988-12-28 08:38:56', 'Enim at corporis voluptatum. Quo magni eos hic veritatis unde.', 1),
(12, 'b0f18a9b-ac62-35fb-9876-4d928d516846', 'dc630d02-e1b6-3e14-a0fe-4fe5c3c3ef69', 'consequatur', 'Similique omnis sapiente eos nesciunt. Sint dolores maiores consectetur veniam voluptas. Voluptas dolor modi reiciendis corrupti est id.', 'Vision-oriented heuristic circuit', 'meda57@example.net', '2015-10-16', '1973-09-27', '2009-01-23', '4f282bab-2545-3cf8-8dcb-0e865b495c9e', '2009-08-20 17:26:14', '172587da-a346-3b4d-a3be-253c38d43197', '1972-11-17 17:43:21', 'Eius temporibus accusantium facere sint consequatur ex id. Minima minus explicabo ut voluptas impedi', 0),
(13, 'f78f92bc-86f0-39bc-a464-47181127c50b', 'e566b090-b4e3-3b10-8550-f829c87804e1', 'aut', 'Velit corrupti occaecati impedit consequatur. Quidem aspernatur sit consectetur voluptas nesciunt aut inventore. Distinctio fugiat ducimus corrupti beatae hic ducimus quia.', 'Automated transitional interface', 'danial.crooks@example.net', '1981-10-16', '1970-03-09', '1991-07-22', '2bb254ae-71fb-36dc-bf4e-0240c8ccd5f9', '1983-02-04 18:21:13', 'f8fa494b-50f2-376c-843a-455aa5c7c23f', '1971-10-25 12:56:40', 'Non dicta officiis enim illum aut. Consectetur et est ut reiciendis adipisci rerum ut. Et vel amet t', 0),
(14, 'c39cbefd-5e95-3c2b-857a-1ffd5f25ff90', 'ffd6b404-f492-38d4-959e-7bf95e317b11', 'ad', 'Itaque nihil quis quis eos dignissimos omnis. Et in id distinctio et nesciunt consequatur. Iure inventore accusantium aut quasi. Dolore quod dolor sint explicabo quisquam vel.', 'Devolved systematic customerloyalty', 'zkirlin@example.net', '1990-03-09', '2007-05-06', '2002-01-12', '998a6db2-d5dd-396e-8fa8-38edfc86e04f', '1999-04-24 03:25:46', '16e2bb01-31aa-394c-b75a-c50f11dac205', '2000-08-06 04:43:37', 'Quis est placeat esse nam rem cumque est temporibus. Asperiores vel enim eveniet corporis velit simi', 0),
(15, 'daf440af-35a5-3f40-8b8d-2f3f80a659ef', '444bf00a-e952-39be-bd00-817f78fd2532', 'veniam', 'Necessitatibus aut temporibus voluptates sit aut consequatur eius. Non maxime aut nihil soluta aut sint et. Perspiciatis sed natus minus eum dolorum nisi expedita.', 'Universal needs-based moderator', 'ykoelpin@example.com', '1995-06-25', '1982-08-25', '1978-09-26', '5b7a968f-4a6b-3baf-907e-2e8b996db014', '2013-12-01 13:21:33', 'd67db872-cc6f-33d9-87f3-354cd285e7b7', '1999-07-08 23:05:43', 'Tenetur ut quia accusamus ut iure et rerum ullam. Quidem aspernatur suscipit illo nihil nam. Aut cul', 1),
(16, '1db1f380-2f14-3629-943e-729fa2cb3e44', 'b102a1c8-6314-3b22-b085-d95b96782870', 'ea', 'Exercitationem perferendis nisi voluptatibus nihil nulla. Velit soluta mollitia delectus sed. Animi autem tenetur non voluptatem explicabo sit quasi. Ut explicabo nisi a voluptatem rem ea.', 'Sharable multimedia productivity', 'kelsi30@example.org', '1991-02-03', '1987-04-18', '1980-11-22', 'c4bfe85d-0263-3136-a8ec-3fccefbb5df2', '1994-09-23 10:03:23', '084cc001-3371-3ce1-842b-a2580ed05121', '2005-08-28 14:40:08', 'Molestias similique non libero. Tempore vitae voluptatem voluptatum laborum. Ea at maxime et cumque ', 1),
(17, 'c1290388-5f94-35e2-b701-c111c4b5bd3f', 'ee2d38a6-6d35-31b0-8942-a9da107e10cb', 'est', 'Dolorem animi est reprehenderit omnis porro aperiam illo laborum. Consequatur nobis in ut corporis. Cum ab culpa fuga voluptatem similique. Magnam magni et ex praesentium totam.', 'Streamlined maximized forecast', 'abartell@example.com', '1989-12-09', '1994-09-20', '1973-01-02', 'a2803b5d-4ddf-34f2-a7b8-282f3abb68a9', '1971-09-15 01:44:58', '23a31af4-7dc9-329e-88df-a9e65c655ff2', '2011-02-19 07:55:44', 'Dolor vel cupiditate ex laborum accusamus reprehenderit. Aut omnis sit sapiente consectetur nemo non', 1),
(18, 'e133dcf2-e6b0-30db-b4e0-62ea934cf1d6', '951e7945-cd5c-3631-8df1-06ff7706dfa5', 'quisquam', 'Quam qui sit et voluptates modi. Quos illo enim dignissimos sed totam ut nihil. Delectus harum corrupti quo.', 'Future-proofed bi-directional pricingstructure', 'rstark@example.org', '1996-10-21', '2013-09-26', '2005-03-18', '09e3de11-552b-32bf-8965-75e131dbf229', '1997-06-06 10:05:35', 'cbb07299-b677-3718-9fbd-278fc8a69638', '2001-11-06 00:37:01', 'Quo dicta non non cupiditate dignissimos voluptatem eos. Sapiente vel et repellendus facere. Debitis', 1),
(19, 'cd24f9e0-ce68-30ab-a92e-bf8f1635d477', 'aab263c9-60ad-387a-aa88-1936def1d290', 'maiores', 'Natus eum consequuntur quae. Voluptatem maiores voluptatum ut in reiciendis maiores recusandae. Voluptate aspernatur et placeat vitae quo voluptas et.', 'Innovative secondary success', 'leif.turner@example.com', '1999-01-29', '1997-07-26', '1995-04-13', '61718bd3-5f7a-3aa7-9db2-5100941d8144', '1979-07-04 17:25:05', 'f619a969-c451-3225-8099-5e56b2f9310b', '1994-03-28 09:24:38', 'Consequatur est culpa culpa voluptatibus blanditiis eaque eius. In suscipit voluptatum praesentium a', 1),
(20, '5e70d25e-e3cf-393d-aa0f-d1b12d12642e', '82e96a45-0981-3f35-a6c2-d2281ee54ab3', 'unde', 'Animi laborum quis necessitatibus eveniet. Sunt reprehenderit totam ullam est et. Iste omnis tenetur est voluptatem.', 'User-friendly motivating forecast', 'matt.gutkowski@example.net', '1979-10-13', '1980-11-14', '2014-06-13', 'a6fc1f85-242d-3fa8-98e5-55e568cd0e5a', '2002-12-13 22:35:11', 'dcb544b2-1f67-3a5c-a0f2-c0c1cbc6ac53', '1992-02-21 12:53:51', 'Earum adipisci doloribus natus non sunt voluptatem tempora. Eaque similique odit at. Optio aliquid i', 0),
(21, 'c86a2f18-4734-3793-b19e-1db831fe4839', 'ef808f29-ab31-38a7-9a43-0167b9a44d4d', 'eos', 'Natus dolor provident non autem sit et praesentium eum. Quaerat consequatur iure voluptatibus modi. Unde omnis quam quos exercitationem. Impedit voluptatem ea facilis esse veniam et eveniet facilis.', 'Digitized human-resource moderator', 'champlin.jodie@example.com', '2011-09-23', '1994-09-08', '2001-10-13', '6665971b-45a1-3cae-a8b8-bc488e31b1f7', '1992-02-19 10:46:37', '52bfae71-cee0-38b1-9227-ca100bbc586e', '1997-05-20 05:37:54', 'Aliquam inventore ipsa doloribus labore quasi. Voluptas velit sed quia. Et at delectus est labore. S', 1),
(22, '47e4e776-9bc7-3ae8-8440-0cb759b59fd5', '19df801f-302a-3a19-9cb7-b293556ab21c', 'doloribus', 'Qui dolore libero ipsum. Incidunt labore quis et excepturi consequuntur. Quibusdam ad ut error. Et eius neque ad voluptatum eos et distinctio. Incidunt architecto esse maxime ducimus quibusdam tempora', 'Polarised user-facing leverage', 'stefan67@example.net', '1996-02-20', '2013-06-01', '2002-12-02', 'e0fe3d2a-b6f3-30f2-892d-44b83a3db973', '1981-09-01 01:42:53', '6d2b05b1-e75f-3150-97f3-f284a587f0aa', '1988-10-07 13:00:13', 'Sunt similique nihil ut nostrum. Corporis sed neque voluptas nihil a. Asperiores non excepturi qui i', 1),
(23, '6a25fd28-49ac-324e-bb69-f97f976fa8a1', 'b8891aac-dc15-38a1-a085-3fdd0a26512c', 'ut', 'Aut natus consequatur unde maxime. Et deleniti labore et dolores est. Culpa necessitatibus dolores hic enim maxime accusantium cupiditate.', 'Pre-emptive object-oriented framework', 'onie33@example.org', '2013-02-01', '1997-02-09', '1994-01-23', '5a08ddb0-a950-3017-8ae6-39bbdd118a6a', '1993-04-28 17:03:56', '44f14110-7aaa-3d61-855e-02220f93b2b6', '2012-12-06 23:10:12', 'Iste et nihil et quo accusamus soluta. Quo eos hic rem illum vitae accusamus deleniti. Et debitis et', 0),
(24, '854f5693-f3ff-3a21-a79e-adf8ecb47974', 'a3990660-93c8-320c-b911-59ca5723702e', 'sed', 'Consectetur omnis minus qui quo provident libero. Dignissimos distinctio itaque distinctio voluptas explicabo qui nobis reiciendis. Earum quod ea ut hic possimus consequatur omnis ut. Nemo eum velit o', 'Progressive dedicated instructionset', 'asha.johnson@example.com', '2000-03-30', '1976-12-31', '2001-03-05', 'a804ba97-e0ad-37fe-9bbe-d6a7189aa510', '2009-09-07 20:44:58', 'a82ae902-bef3-304c-a836-f61fe95c0afb', '2009-11-06 17:28:31', 'Veritatis sint sunt iusto quis voluptatem dolores quam. Quis excepturi dignissimos sit.', 1),
(25, 'd6520861-c50a-3391-8916-2083b4e11e68', 'b47c22ea-ed27-3736-9d25-3c5216f25381', 'quia', 'Perspiciatis harum est velit voluptatem. Laborum voluptatem esse quas quae aut fugiat ducimus. Dolores id eum doloribus amet dolores libero consectetur.', 'Cloned intermediate alliance', 'yost.isabel@example.org', '1975-04-27', '1989-03-02', '1988-06-09', 'e570a47b-dadd-3eb0-9bbb-2c6fbaf04682', '1993-01-08 23:54:22', '178c4849-1140-396c-a9b9-266a2d43598e', '1999-02-21 00:12:28', 'Adipisci ut sint amet nam molestiae enim quaerat. Occaecati laudantium earum ut nobis omnis. Iusto e', 1),
(26, '909dcf53-a8c8-3a68-8a99-1f15f7c4459b', '2e7f76a3-6f87-31ce-b91f-2289c5363c24', 'quis', 'Consequatur tempora deserunt laborum voluptatem odit quo. Alias quis quisquam ad occaecati. Ipsum et asperiores ipsa laboriosam est quia ut autem. Consequatur consequatur consequatur qui reiciendis au', 'Re-contextualized upward-trending budgetarymanagement', 'schowalter.frankie@example.org', '1980-06-04', '2017-03-02', '1975-04-01', 'cc12a68d-588b-310a-b789-5b63b94470ba', '1998-06-11 16:50:25', '85eae2cd-d880-3eba-8172-f84cf4bf3912', '1993-05-26 02:38:53', 'Laboriosam est voluptas est optio dolores omnis. Laboriosam voluptas perferendis maxime voluptatem e', 0),
(27, '403d445b-6973-34e9-b2ad-dec68f32a80e', '7ffc36f0-4f5f-3521-8583-6b64f2d2ad21', 'vel', 'Ratione totam minus odit. Deleniti temporibus molestias qui placeat repellat porro sequi dolores. Sed sit et nulla omnis et ab nostrum.', 'Multi-lateral value-added access', 'cleuschke@example.com', '2015-08-13', '2000-01-03', '1999-10-06', '0475021d-90ce-3403-a64c-61c34ce7389b', '2013-03-25 13:42:41', 'd239904b-9e84-36f5-8f99-ae6291f3294d', '1981-11-03 16:52:06', 'Quaerat modi eum et suscipit. Officia voluptatum qui recusandae similique et recusandae. Quaerat nat', 1),
(28, '3e50c7a1-fed1-3d01-90c7-65db6ece6d53', '5a5a7804-c181-3aa9-a052-bb45fc0c0e1c', 'similique', 'Voluptas aut molestiae doloremque. Ducimus neque error assumenda cupiditate aliquid in eum. Iste voluptatem debitis saepe qui fugiat dolores eum.', 'Cloned leadingedge productivity', 'ardella.wisoky@example.com', '2014-05-05', '1991-07-17', '2018-09-08', 'e0d74402-2f5d-39bb-a17b-eaba68770cac', '1994-04-27 22:08:59', '20fde046-e812-38b8-bb40-72b59cfd532d', '1980-08-15 00:44:42', 'Recusandae architecto aut atque non harum ullam vel quasi. Officiis fuga officia ipsum rem eligendi ', 1),
(29, '96d753fb-38ea-3a1e-bc16-0be9e2fd5bd6', 'c63b960c-6379-306e-9d76-fa0262652f42', 'et', 'Et voluptatum eos error quidem cumque sint maiores quia. Aut quibusdam beatae veniam quo in. Qui similique consequatur sed sed sed quo. Ipsam reprehenderit temporibus ipsa vel voluptatem.', 'Visionary maximized moratorium', 'tschuppe@example.net', '2004-03-04', '1990-02-06', '1975-04-06', '8bef0aec-c98d-3000-84ee-d0c2871b5521', '1975-02-27 19:59:27', 'ba9479fc-9069-31d8-b6ae-61eb6fcf1bef', '2017-04-13 23:20:41', 'Impedit facilis nam fugiat commodi tenetur aperiam. Optio incidunt quis quos. Quis quia et et hic ip', 0),
(30, '255fd270-7da8-3223-8a38-88a185437fbb', '45dcbf94-079a-3464-8a41-ea4219101a09', 'mollitia', 'Quo atque dolorem debitis iure voluptates. Expedita sint maiores ex. Natus quo debitis laborum qui. Et esse aut occaecati nihil.', 'Multi-channelled national circuit', 'gino.kessler@example.net', '1999-06-03', '2017-11-19', '1972-01-22', '2907f4f3-1cc9-399f-9679-119e030a6cad', '2001-03-26 09:02:34', '72a5df3a-bbd1-3ce1-9aec-c4dd8860bc3c', '2017-12-10 15:42:08', 'Sequi tempore eos consequatur aut. Fugit eos et consequatur qui dignissimos aliquid et quia. Illum m', 1),
(31, '638bb245-5aec-3090-87ea-cc4d7e57e154', 'ef1910e6-00ff-3531-93e6-5668e6d12fdf', 'recusandae', 'Id minima eligendi qui perferendis quis deleniti aut hic. Et a iste distinctio dolor. Eius voluptatem nisi sunt vero. Iure cupiditate id eos atque suscipit fuga aut.', 'Robust non-volatile frame', 'nstracke@example.net', '1983-05-07', '1997-03-19', '2012-05-26', '6bf389f3-4bd0-309d-9a01-c40d02f08fc3', '1977-04-20 21:19:09', 'c82170dd-63f5-3ee6-b005-be83f5f49633', '1997-06-08 02:01:35', 'Repudiandae ullam laborum eum voluptatem amet. Nulla enim nulla accusantium repellendus dolores quia', 0),
(32, 'acad088c-e5ec-3437-8ab1-9715eee746d1', 'db540f71-db28-34a3-962c-bf7b5f1f371e', 'in', 'Nemo modi pariatur ducimus eaque sint. Odit sint accusantium et molestias aut. Aliquam amet magni officiis iure enim.', 'Compatible intermediate database', 'mollie63@example.org', '1977-07-22', '2004-03-20', '2008-01-01', 'e1a7cac5-b738-3607-bbef-5012f4083ff3', '1983-06-24 07:17:32', '74d7214c-6993-3eba-8d42-b3c40dda72eb', '1989-05-07 02:34:12', 'Sed earum maiores quod. Ipsum veritatis sed totam temporibus quis. Eaque asperiores molestiae est al', 1),
(33, '5734de88-34e6-382a-9426-3bb9b354a7be', 'a56ee7e8-853e-305a-87b3-40c774057e13', 'libero', 'Ratione repellendus voluptas dignissimos aspernatur aut aliquid consequatur. Dolores magnam voluptatem quasi ullam. Voluptates qui dolores esse dignissimos autem a occaecati. Et ducimus est assumenda ', 'User-centric global groupware', 'pete61@example.net', '1980-06-11', '1971-03-07', '1989-08-30', '875bcc85-5eef-3939-8a9e-4c45c006cff8', '1982-05-09 06:21:14', 'b4d68865-2d7f-3c8e-a6f6-8939e52810b2', '2011-03-30 08:44:04', 'Ab consequatur pariatur animi et modi accusamus. Rerum rerum non non possimus. Nihil aliquid assumen', 0),
(34, 'cef9a0fd-5e6f-308d-b277-cde083ab78f6', '939bec5c-b7fe-3036-8aa2-dabd13c535b0', 'quia', 'Et vero dolores architecto ab aut officia. Quae neque quaerat nobis illum veniam. Impedit eum voluptatem illo qui autem.', 'Reverse-engineered executive attitude', 'amie.hansen@example.org', '1987-10-10', '1976-10-25', '2017-03-15', '8307af3d-b0f3-3a6f-8e3c-93c7f72a1041', '1988-03-05 00:19:22', 'fd9ee2b0-2733-3b8d-b86e-da2ce1afa060', '2009-03-18 11:59:25', 'Laboriosam consequatur sequi magni eveniet inventore quo accusamus. Quis quasi quaerat adipisci qui ', 1),
(35, '8b6fff28-5f85-3cc2-97e3-6e470bf9dae7', 'f9abb05e-0a0b-3eac-82c0-3bd92f745e12', 'vero', 'Ullam labore voluptatibus sed necessitatibus. Voluptatem dicta odio earum deserunt. Eligendi saepe molestiae omnis in distinctio tempore animi. Repudiandae dolore soluta et fugit aliquid ex non.', 'Mandatory tangible monitoring', 'twatsica@example.org', '1977-11-06', '1980-12-16', '2004-08-27', '458821e6-7de3-375c-992a-d7c095a55434', '2016-07-19 14:45:25', '13f7de63-ca70-367b-b230-cbaaf34c5851', '1983-04-07 10:35:15', 'Et omnis quae rem nemo dolores voluptatibus sed amet. Et ea perferendis nulla assumenda. Animi liber', 0),
(36, 'bf1242f4-0830-3c83-abca-5c38e89ca8fc', 'afd46b25-cc86-3cf2-9004-59209a23363f', 'sapiente', 'Repellat officia quidem quo quisquam voluptates molestiae. Non a tempore ut ut nihil. Atque aut ipsam debitis.', 'Assimilated systemic initiative', 'gerard59@example.net', '1991-06-09', '1976-07-22', '2013-11-08', 'f0246c41-9fe5-3fa9-a181-031b2691192c', '1991-03-05 22:47:14', 'c6c08507-03b0-327e-a63b-0ccbf1ea3000', '1997-09-24 02:00:32', 'Dignissimos ea delectus nisi veritatis fuga. Modi delectus vero laborum perspiciatis blanditiis inci', 0),
(37, '8bdfaedf-db74-352b-97fe-7b9d4a375eae', 'b10af398-3ff2-3bd4-abd2-dc8b2120e2fb', 'beatae', 'Ducimus consectetur corporis voluptate. Dolores sed molestiae fugit quia incidunt debitis odit. Sint qui enim ut. Ut voluptatem ullam expedita odio accusamus assumenda. Voluptate dicta placeat numquam', 'Mandatory encompassing concept', 'dean.schinner@example.org', '1993-05-28', '2017-12-17', '1995-08-09', 'af8eb445-7578-3d84-a660-660470998721', '1989-07-20 08:31:19', 'ff1ba8f0-680b-303e-a80c-16bb4f3ea705', '1974-02-14 17:58:19', 'Enim et ullam laboriosam sit eaque fugit quia dolor. Quia qui optio eveniet nihil omnis. Nihil eum d', 0),
(38, 'c5439a1e-a590-3aa1-9a03-2b0c1ebe02bf', 'b3f911a0-da36-38f1-b282-46983c57239d', 'voluptas', 'Voluptatibus molestiae aut nobis. Nam impedit aut esse similique deleniti. Omnis enim quia voluptatem.', 'Object-based multi-state neural-net', 'tkling@example.org', '1982-08-23', '1997-01-16', '2012-06-26', 'bf086098-19ab-3874-8550-5ce9f4a2b458', '2014-10-16 05:48:18', 'b1497e6e-5584-3dfd-855c-a16c2cb2b96d', '2014-10-11 05:51:28', 'Possimus perspiciatis quibusdam laudantium autem. Cupiditate sint ex voluptatibus impedit dolorum ve', 1),
(39, '3ab1f217-1c71-3d7b-be56-06a18a39b9e8', 'e81b1cc9-032e-3dab-b8cf-e1802934853f', 'velit', 'Placeat dolor vel eaque exercitationem velit. Quisquam ea aperiam ut accusamus. Voluptatem beatae est aut alias ut.', 'Cross-platform bi-directional extranet', 'mnicolas@example.org', '2015-10-16', '2015-01-03', '1993-09-16', '4d5e2395-1889-3bcc-8d43-40448200ea46', '2002-12-14 10:00:26', '643ca5dc-29d4-38e7-8a6c-3c4f23d1ac75', '1990-12-06 20:44:02', 'Ut deleniti eos ut quibusdam. Cum facere est ipsam temporibus id voluptates nihil. Repudiandae et qu', 0),
(40, '1514c200-ddd7-3347-b6f4-ae1b8126d8f2', '04f380e1-40ae-3811-b899-66874ca5a3db', 'ipsa', 'Sed fugit a ad. Sapiente ut rerum cumque quod rem totam.', 'Diverse reciprocal ability', 'kira51@example.org', '2008-04-14', '2017-10-21', '1999-12-28', 'dcf7ff61-d8ea-36cc-944a-e065da039a97', '1994-12-19 07:54:39', 'ff62d3ab-d7f3-3f00-a07e-25ad148d7ec1', '1994-02-16 05:21:32', 'Doloremque voluptates facere molestiae fugit. Et accusantium id molestiae consequatur dolorem deleni', 1),
(41, 'de5b94b7-3fc8-3dce-9ed8-6a659937351f', '4ddb50d3-b962-383d-9d1c-00789a302fdf', 'vel', 'Provident delectus libero quod ipsum praesentium sed. Doloremque qui dolorum dignissimos aut voluptatem sit aut. Eligendi repellat provident rerum eveniet in nihil.', 'Optimized composite concept', 'tmurphy@example.net', '1982-02-26', '1970-09-15', '1985-02-12', '60ce6e26-0643-34ce-9e3f-ca94e632f130', '2001-10-27 23:26:06', 'b85bebb8-832f-37a1-854c-4eac346a6168', '2007-04-23 20:57:30', 'Consectetur ut et neque adipisci eligendi. Occaecati velit possimus repellendus enim ut illum minima', 0),
(42, 'f3510751-ebf5-3037-90c2-ed8439ed8097', '6812185c-cfa5-36ff-a18f-b4edd0fc5f2a', 'eos', 'Sit voluptatem enim expedita occaecati corporis aut quasi. Qui sed vel sit eveniet fugiat nihil. Rerum porro quia perferendis sequi dicta laudantium velit. Est qui perferendis ut. Placeat quia et ea a', 'Proactive empowering localareanetwork', 'nelson56@example.org', '2000-12-14', '1990-12-02', '1971-11-19', 'ad3b20ca-70ed-37b1-9dc7-e342cd70a9fa', '2002-04-19 18:13:45', '34be8ef3-81ad-3d39-86ce-38edbe566ebf', '1990-03-02 02:53:41', 'Est ipsam repudiandae velit ut quam nobis enim facere. Consequuntur voluptas rerum laborum molestias', 1),
(43, '12b10f49-9b1f-39a9-a371-04350c123fdb', 'fdbdc59a-6c7d-38a5-b290-b7013569bc3f', 'vel', 'Perspiciatis est repellendus libero eum fuga modi. Similique et et cupiditate est qui provident sint. Consequatur eos vero omnis similique aut qui. Rerum sit ratione repudiandae voluptas dolorem id al', 'Fully-configurable impactful frame', 'xtremblay@example.org', '2000-09-06', '1978-11-26', '2015-02-21', '6bff5ff3-6b15-36cd-8741-0093db7cee9a', '1993-05-30 22:22:40', '4657ab50-6d5b-36b8-9270-92de6b326d6d', '2012-07-20 09:25:48', 'Magnam error molestiae veniam atque ut repudiandae. Non voluptas rerum exercitationem nesciunt ut in', 0),
(44, '0a9cbe3b-1bc6-37f5-bac9-d1befeb728bf', 'edf23a11-8920-39a6-9b2a-e4bbffca528e', 'beatae', 'Voluptas ea alias nam consectetur nemo asperiores optio dolor. Distinctio est laboriosam fuga excepturi mollitia neque. Voluptas ab iure quis vero similique a et. Velit voluptatem voluptatem laborum c', 'Synergized 3rdgeneration initiative', 'edythe89@example.org', '2017-04-18', '1976-06-13', '2001-02-13', '5d577df8-287d-322c-97d5-94a4ddbe4d63', '2002-02-20 08:52:09', 'ee94a5e1-abef-337f-ac6f-74ab4b2167ae', '2015-05-25 07:56:35', 'Suscipit saepe quas ducimus dignissimos alias delectus quae. Rerum consequuntur non officia fugit cu', 1),
(45, '9af326b4-5de1-311e-82f1-1fa561dcc37f', 'cd6b1c2a-6865-36cc-8cce-9e244e5ab65f', 'eligendi', 'Reiciendis ut nisi ad quos recusandae quam esse. Molestiae ipsam fugit animi est est. Voluptatibus labore aut earum aut est.', 'Total upward-trending protocol', 'zieme.deonte@example.net', '1979-07-05', '1991-02-11', '1991-07-15', '1ea84c03-304c-3d94-8855-e9eeba4bad5d', '1983-07-18 21:22:27', '2f62e34d-440a-3edf-8147-969772b123a9', '2004-05-08 12:42:18', 'Occaecati et illum ab id sint commodi quod id. Assumenda quidem aperiam sunt et at. Deleniti invento', 0),
(46, '2c61e5b1-10a7-330c-a12e-2a664f42142b', 'ed61321f-d6ac-39e4-8c3c-752621330ad9', 'natus', 'Consequatur magni magni incidunt veniam aut. Dolor adipisci vitae placeat aut rerum iure quae. Sit tempora porro rerum illum. Velit recusandae omnis vel id.', 'Ergonomic well-modulated extranet', 'dbednar@example.org', '1990-01-03', '1973-02-17', '2006-01-11', 'f8d6097a-ea4b-32b2-a196-25971db8cf22', '1992-03-10 01:58:29', 'e1e1168f-657f-3c7d-90b2-b2587bbfb082', '1994-06-08 14:45:13', 'Qui et ut ex minima. Libero veniam ipsum aut. Qui nihil architecto quo sequi et cumque. Repellat ali', 1),
(47, 'b811303a-ee3a-3c0e-91b1-ae1ff5266e92', '4d85f4db-481c-3fd9-afd7-8e8e894536d2', 'quas', 'Voluptatibus minus consequatur quia repudiandae aut repellat non. Tempore nobis iure qui amet voluptates. Ducimus ut eos voluptatem quibusdam vero. Ea quae in voluptas sunt ipsam dolores est.', 'Horizontal context-sensitive adapter', 'crawford.medhurst@example.com', '1985-12-12', '1976-03-21', '1973-09-05', '8992941f-b3a0-3a6d-bd99-9ac47c9db086', '1999-05-27 00:01:56', 'e73360ca-3c46-3793-b8eb-30f589a6dbbc', '1995-04-07 20:16:56', 'Tenetur sit et voluptatibus ea voluptatem sapiente. Magnam velit qui velit id adipisci quae. Debitis', 1),
(48, 'a588e147-da64-363a-aa33-1246d8aa3223', '761394b2-c1db-3e14-8507-e61e8dd5bd72', 'aliquam', 'Ipsa et qui fugit in nulla beatae. Quia odio saepe officiis pariatur. Mollitia repellat id excepturi labore ad et aut.', 'Object-based system-worthy parallelism', 'sbosco@example.com', '1992-01-05', '1984-11-24', '1977-03-18', '3efd5edc-76b3-32df-860c-07d8414f53c0', '1996-12-10 03:42:14', '2e4e57c8-a2d0-32a6-b3ee-262da5533cd5', '1986-11-21 06:14:23', 'Dolorem magni rerum eaque dolores. Assumenda dolores dolorum ut sit. Repudiandae quos voluptatem vol', 0),
(49, '4c7e8a45-d374-3c5c-82ff-a217f6a984b9', 'e1442c86-407a-33d4-b107-243878bd7727', 'sit', 'Aliquid rerum atque consequatur voluptatem. Beatae non facere aspernatur numquam. Natus et deserunt rerum quia.', 'Managed interactive pricingstructure', 'iboyle@example.com', '2003-03-03', '2015-11-01', '1999-06-06', '905095ab-d09c-3026-b728-045f242a0e14', '1984-12-23 04:13:48', 'cf2cf61a-3839-384a-a138-0217d3e38ee5', '2000-05-12 11:21:28', 'Accusantium ut vel aut rerum debitis odit. Error sit qui ducimus rerum molestiae. Cupiditate beatae ', 1),
(50, '8e62095d-e87c-39ba-843b-99e3ac71b4c8', 'dc943756-dc08-32f8-a35e-6b770cde8453', 'minus', 'Perferendis expedita fugiat in numquam qui aut. In rerum et vel voluptatum ut accusantium. Rerum unde qui dolores quia. Reprehenderit dicta sit accusamus rerum.', 'Implemented client-server neural-net', 'davis.kylee@example.com', '1971-10-11', '1998-04-15', '1971-06-24', '6edf8d06-1d44-3cdf-9403-4e05a1f92bf2', '2008-09-09 09:36:39', '1603dea7-d0dd-3c0c-b64b-5b13a9bddc0c', '1977-09-01 02:01:22', 'Molestiae incidunt neque sed et a quam magnam. Explicabo inventore voluptatem suscipit quia tenetur.', 1),
(51, '93ed3de5-c4b3-3b02-9ad8-44261297acba', 'b2c9f838-7653-3322-aac6-67d6e207d2a3', 'dolores', 'Officiis qui temporibus voluptatem aut reprehenderit quibusdam consequatur. Inventore autem corporis expedita cupiditate quia asperiores vel. Error error provident nisi fugiat. Eum accusantium sunt an', 'Multi-tiered tangible website', 'nedra.swift@example.org', '1970-01-13', '2010-06-26', '1992-03-22', '4c49b58c-d93d-3549-8a05-168347d5d78e', '1992-08-08 18:12:44', '202257d0-1380-3986-b1d7-533aafde1d79', '1971-05-22 09:16:21', 'Unde quae debitis animi. Maiores error atque nemo impedit. Aut deserunt corrupti dolorem consequatur', 1),
(52, 'db699d5c-0564-354d-b87b-01da1e296f3c', 'a73a9468-8417-375a-8062-653416d2bd70', 'pariatur', 'Occaecati vitae distinctio ut suscipit. Numquam consequatur et molestiae adipisci itaque distinctio ex. Culpa ut eaque repudiandae ut. Nihil reiciendis ipsam asperiores voluptatem qui veritatis.', 'Ergonomic 24/7 throughput', 'rkshlerin@example.com', '1987-02-17', '2017-11-14', '1988-11-19', 'b12828cd-a7d4-3664-b14f-4f7037fe55b2', '1980-05-08 14:31:54', '622e2842-fcff-32f4-9831-e81f0dd1f40b', '2001-08-19 22:06:32', 'Sunt quos et natus illum eius. Sapiente aut optio voluptatibus enim natus eaque. Debitis distinctio ', 1),
(53, '792b9d9b-b7b9-3c0e-b644-e531989d5ddc', '99b783fa-0d53-3f46-8684-027ef16ac870', 'sit', 'Eos similique itaque qui voluptatem a. Sint consequuntur dolore est sed eligendi nobis non. Qui consequatur corporis aut esse ut accusantium qui.', 'Optimized leadingedge GraphicInterface', 'jquigley@example.org', '1999-07-20', '2001-07-28', '2005-10-21', '387acbfd-32ea-35d7-b06b-9df958758db9', '1988-05-30 00:20:01', '5c08258a-7163-3233-939b-36aea83655b2', '2011-03-02 04:37:12', 'Eos reiciendis accusamus vitae voluptatem temporibus repellat perferendis. Iure accusantium incidunt', 0),
(54, 'eacb927e-808c-3557-a3dd-52654281e078', 'ee18e279-2c39-3f10-bca4-3ec00af1a271', 'quis', 'Est sint alias et minus temporibus. Velit et est sint et enim enim. Qui ipsa quos magni possimus quae quod.', 'Horizontal optimizing moderator', 'kunde.mellie@example.org', '1971-03-08', '1984-11-05', '1983-03-01', 'd39dcff5-8c21-3c71-858a-b83d77eac1b8', '1975-09-13 21:31:10', 'ee8f0cfe-3f3a-3dd0-adc2-c91a37023729', '1978-07-23 05:28:53', 'Commodi tempora quos est perferendis sequi. Deleniti nihil hic voluptate est suscipit. Quis alias ea', 0),
(55, 'a3a7a6fd-a6e5-304f-98c6-584715d278f9', '5fea0e95-0e0e-3022-9332-fc22691670bd', 'sequi', 'Quisquam corrupti deserunt debitis aperiam suscipit cupiditate. Quam et et necessitatibus suscipit voluptatem.', 'Object-based mobile product', 'lisandro02@example.org', '1983-04-20', '1984-02-26', '2011-04-20', '99be2263-80e0-3144-93ba-b8b8290fc86d', '2005-11-10 01:53:29', '76f281eb-111c-3557-a9c7-de49a630501f', '2005-04-30 23:52:44', 'Repellat expedita consequatur consequatur veniam possimus soluta quas. Quo doloremque sed facilis mo', 0),
(56, 'c0af9eab-3e11-317d-b186-9e07204d2d75', '8975b73e-4ca3-3b3b-965a-23cbb833a9b5', 'hic', 'Eum quaerat doloribus eos repellendus quaerat quia modi. Natus blanditiis tempore laborum aut nostrum facilis quae. Officia laborum laboriosam nemo tenetur quis eligendi.', 'User-centric 6thgeneration hardware', 'dach.ethan@example.org', '2017-10-28', '1998-10-12', '1983-11-24', '6373cbd1-ed24-3dfe-a9b1-2584a8d60210', '1991-07-25 05:29:40', 'a5a5819e-955f-396d-bee1-03b1bb1900a2', '2001-10-18 13:57:59', 'Placeat quia eum accusantium neque ad quos. Laboriosam eos voluptatem cum nostrum labore. Quaerat co', 1),
(57, '4d800cef-8d04-3e9e-8d67-c0aa6bd2d425', 'd8881f23-5ee2-382c-a0f0-b9f287bf8ef9', 'laboriosam', 'Unde quis maiores iusto culpa aut quisquam nulla inventore. Quia enim voluptatem impedit dolorem id corporis. Libero qui id rem accusamus aut dolor.', 'Expanded stable protocol', 'leuschke.judge@example.org', '1993-01-25', '2004-05-02', '1985-02-11', '01ef33d6-9058-366b-9ec4-2b09fbfec8b4', '1992-09-06 08:14:35', '390db0e8-baac-3a87-bf47-55ced8640cf1', '2007-06-07 15:41:58', 'Earum minima a distinctio. Ullam quo fuga id vel molestiae aliquid modi. Commodi quae ea dolor sed. ', 1),
(58, '7c7f2a3e-9502-3436-8939-7bc1fc538df5', 'b01f7600-8148-3f6e-9829-1fb99ba0dbf9', 'quibusdam', 'Error amet eaque quia recusandae voluptatem et. Autem fugiat deserunt et sint. Suscipit inventore at explicabo vel sapiente.', 'User-centric coherent knowledgebase', 'monahan.kylee@example.com', '1990-11-09', '1976-09-22', '1976-09-23', '68ff197a-9a5c-3cde-b92c-ff96c721a29b', '1987-03-04 23:46:45', 'c5fda357-3e99-395a-8845-55205425ae85', '1972-07-23 09:36:21', 'Similique provident illo nemo. Repellat aut quas totam facilis autem voluptas laudantium. Sit eius d', 0),
(59, 'ca2e90c7-ee24-3bc6-bd16-f474b59867d8', '86617084-c7e2-3f02-bb09-6c254a537201', 'commodi', 'Et repudiandae eveniet minus autem dolores quis eum. Assumenda commodi asperiores id aut reprehenderit non consectetur. Maxime qui necessitatibus illo accusantium aspernatur assumenda unde voluptate.', 'Pre-emptive mission-critical protocol', 'julius.kling@example.net', '2006-05-04', '2007-06-12', '1994-04-10', '799f8c94-c964-3487-b4d9-5ae4804f7b06', '2002-10-21 07:31:40', 'e4487874-d14c-33b4-94d2-0dcd677b528c', '1992-04-18 05:30:20', 'Excepturi omnis veritatis iure asperiores iste. Dolor officiis voluptatem officiis in. Reiciendis ve', 0),
(60, 'c889f5d3-f42d-3a03-92b1-06008e3bdb27', 'c984d9fc-32f8-3092-b32d-e2c899f13331', 'distinctio', 'Temporibus et est perferendis debitis ut provident repellendus. Aut non dolores ratione asperiores vitae est deleniti. Nam assumenda tempore nobis earum magnam. Facere molestiae eligendi quisquam temp', 'Configurable real-time localareanetwork', 'koch.danial@example.org', '1985-04-20', '2008-12-17', '1978-09-05', '903638eb-5197-303c-a647-2a0753282d7c', '1986-07-04 18:09:05', 'ab676db4-39a5-37d5-a9b6-5335ae073c3f', '1989-04-26 15:05:36', 'Fugit possimus qui sint ut consequuntur dolore nemo aliquam. Laudantium magni consequatur vel ration', 1),
(61, 'e7b8b6b6-7f0d-36f2-b7c5-a43524eb236d', 'c669d625-b2d1-3860-9d5a-0ecfc56b6f80', 'ut', 'Sint dolor aut amet cupiditate. Unde voluptates dolorem optio aspernatur voluptatem labore aut facilis. Voluptatem velit odit eaque quasi ullam.', 'Persevering holistic time-frame', 'vhintz@example.org', '2002-08-14', '1976-05-02', '1993-09-24', '54e8402b-9550-3fd8-a6c2-84d9b8c363dd', '2005-08-13 05:22:29', '6d0ba04d-63d2-319c-a645-b236505819d7', '2012-03-12 14:20:04', 'Assumenda veritatis aperiam aspernatur eum reiciendis dolores. Dolor sed quos saepe omnis. Rerum dol', 0),
(62, '95390bf9-6a50-3e7f-84dd-d64ba0e0cec7', 'a970b20e-0729-31ee-8506-e2b8c674a20d', 'qui', 'Et facilis ullam eum aut tempore eum qui. Totam velit officiis vitae laudantium at aspernatur praesentium earum.', 'Reduced local customerloyalty', 'mhomenick@example.org', '1979-08-06', '1998-02-18', '1995-02-15', 'f9d726c3-7757-32e1-ad49-70351fe1a2f3', '2008-05-09 23:13:56', '4a07cab1-d2fb-3bae-b841-9563ce5db860', '1986-08-14 18:10:10', 'Alias dolorem non non sit omnis similique eligendi. Sed quisquam nihil amet ratione officiis dolorem', 0),
(63, '1f779aee-6205-3ed8-a9fe-38d74c206499', 'f4e27a85-50eb-3417-9638-6c969d62e1ba', 'blanditiis', 'Officiis magni reiciendis velit officia occaecati accusamus aut est. Illo neque tenetur dignissimos deleniti velit nemo voluptas voluptatem. Voluptatem odit nulla est odit occaecati repellat. Magni iu', 'Configurable 24/7 customerloyalty', 'elbert.batz@example.org', '2004-01-29', '1995-02-09', '2010-01-09', '5265687d-8d3e-3013-9cc3-83b01b57c6e9', '1977-10-01 20:52:01', 'f71ac7b3-2b38-3b2e-b83f-4de33202ff7f', '2003-05-09 11:25:30', 'Quos animi ut ut praesentium. Asperiores non facilis quia temporibus et et. Dicta vero qui esse quid', 0),
(64, 'c98d24ba-4f65-3131-bfe5-d0b8c6b8fb38', 'a39815bb-f46d-329f-bdef-b13de19dc5d2', 'ipsam', 'Doloremque sint quae blanditiis minima. Pariatur ea aut in veritatis. Voluptatibus et qui aut quo.', 'Business-focused homogeneous installation', 'reichert.montana@example.com', '1982-03-01', '2003-08-18', '2000-10-28', 'ffc6ea99-7bea-3c7e-9d29-98b3e2cac7d6', '1997-02-14 09:30:06', '64882c21-2904-362b-84e7-bbdeec5852f2', '1979-08-05 22:43:20', 'Omnis et accusantium quas facilis. Aut recusandae fugit et enim ut reiciendis eius.', 1),
(65, '4cc7e6b8-37f4-35ca-be0e-33a53604d9c7', '68e895a0-564f-3b6a-84a3-b1dd327e8d48', 'consequatur', 'Repellendus rem quia architecto sunt adipisci unde. Harum deserunt est aperiam corporis expedita minima maiores. Repudiandae autem quis dolore pariatur quia.', 'Organized solution-oriented paradigm', 'snicolas@example.net', '1982-02-17', '1980-12-10', '2006-07-27', '97530a77-f8d1-3c29-8ed7-d8e56c97dcda', '2013-10-31 19:41:04', '167b88f8-5a4f-3bd2-a264-1ff6196e3079', '1982-04-17 16:36:14', 'Quod doloribus est dolore provident sit cupiditate. Est consectetur natus delectus asperiores.', 1),
(66, 'c5e0a14d-c2eb-37a9-a3af-0b5324340410', 'd01c9fff-8888-314d-b3ba-5b66ccb0790e', 'incidunt', 'Odio soluta voluptatem amet laborum nihil consequatur. Et minus ex laboriosam aspernatur. Rerum ab architecto voluptatem optio dolor voluptate. Et quaerat repudiandae laudantium alias totam fuga numqu', 'Pre-emptive 24hour leverage', 'psimonis@example.net', '1989-11-17', '1981-12-11', '1971-01-07', '92fd5167-f3a6-3f27-96dc-8d3e81fc6ee3', '1985-12-21 15:25:06', 'c4b9b59f-18a2-3bc1-a8bb-1a37a97802b0', '1974-05-18 18:13:20', 'Aut nesciunt ut enim eos error similique maxime. Qui autem aut ad id cum suscipit quia. Rerum dolore', 1),
(67, '5dc8ffb0-c1e7-3b63-8bed-6dd8de2e9564', '7ec3469d-6183-3c64-9cc5-631e164e92b9', 'quod', 'Voluptatibus laboriosam aut nihil quis aut harum et. Earum ut corrupti et inventore atque. Et rerum qui cumque et.', 'Team-oriented 3rdgeneration opensystem', 'rippin.levi@example.net', '1996-11-06', '1999-07-16', '1979-06-01', '505fdca6-4cc9-352b-88c5-d8f040c8da1e', '1985-10-13 01:04:39', 'af148c3a-efbe-3793-9294-e340e2f40e19', '2005-07-21 01:48:11', 'Quo rem sit omnis excepturi quis. Iusto et error iure cumque sit. Cumque et qui hic et ad id esse.', 1),
(68, 'c6e03c00-adcb-353f-8f69-c1802c5f3f3b', '69b38226-6ee5-32a2-97ee-5d968d36fb6c', 'sed', 'Quia in nulla quaerat laudantium cupiditate est. Et reprehenderit sed itaque reprehenderit perspiciatis accusamus et. Minima vel ipsa ea qui. Molestiae qui labore dolores unde.', 'Distributed directional budgetarymanagement', 'alexandro.dicki@example.com', '1989-05-04', '1982-09-05', '1980-04-29', 'a741f2e1-80a6-3375-97e4-881d17c20a0a', '1983-07-07 08:36:49', '4241ef03-4ade-3cff-8814-9d5d3677ebec', '2005-09-05 01:22:09', 'Dolores qui quibusdam occaecati eos dicta. Accusamus fugiat in explicabo neque dolores delectus in. ', 0),
(69, '2f56da63-f956-3e91-89e3-ccb9af58bdb2', '89b64475-230d-3a76-beb7-0c3920837ce3', 'quos', 'Modi facere modi aut omnis dicta voluptas aut. Accusantium ducimus voluptatem aut tempore consequatur fuga culpa. Quis quam est sunt consequatur. Eum qui similique unde est omnis. Eos officiis volupta', 'Facetoface assymetric matrices', 'amanda.gerlach@example.net', '1982-02-15', '1981-10-12', '2011-07-19', 'c5d2ce01-ff64-30fe-8fd2-38706bf97a84', '1978-07-13 21:48:57', '75c7c8db-6677-3d62-ad12-2f2b5a585afb', '1970-09-24 21:05:26', 'Nam temporibus at molestias tempore qui iure esse voluptas. Qui impedit fuga quidem inventore provid', 0),
(70, '656e011b-46e1-382f-bccb-9dd64fe00868', '7dd7a834-d7a7-3caf-abe4-ba42fae622d4', 'et', 'Et iste qui molestias a nihil voluptas. Sequi minus quam sunt accusantium ipsum eligendi dolores. Rerum sit ut est sed nulla ut. Vero et a quia soluta.', 'Devolved responsive success', 'daugherty.althea@example.net', '1990-01-30', '2013-09-22', '1971-07-22', 'a1e52f73-932b-391e-9e0b-34d4eeb97393', '2005-02-02 01:12:45', 'eaf8a7a5-f0b5-3375-8f24-5779ccdc2c1c', '1981-03-05 19:42:42', 'Eum dolor blanditiis quisquam. Enim quos tempore eos quo error et in. Ut aut molestiae quod placeat ', 1),
(71, 'c3768f3a-bd05-3b48-8753-4842c87458cd', '985250f5-540b-304c-acce-b75cf70ffaaf', 'nemo', 'Nemo quo harum optio ipsum ratione aut. Molestias consectetur soluta quos quidem sed. Hic aliquam sunt perferendis pariatur. Saepe eos nemo quia deserunt ullam.', 'Stand-alone tangible encoding', 'theodora.kohler@example.net', '2016-07-05', '1993-03-02', '2018-09-19', '551234f2-5fec-3032-9343-1f26338b42cd', '2008-06-24 14:00:04', 'd526fd8d-4090-3bab-8710-53218ee28c67', '2010-12-24 15:02:15', 'Eaque blanditiis eius occaecati omnis fuga dolor distinctio libero. Doloremque dolorum fugit laborum', 1),
(72, '3b8e8d56-4247-38bf-b55f-2e89faf6c7e5', 'dd17e681-ac04-3d14-af06-f6310e8b9ba0', 'cumque', 'Aut sed possimus facilis sint quia natus. Tempora consequatur omnis hic dolores ut. Repudiandae libero aperiam ea minima aspernatur. Totam quisquam amet qui sit suscipit. Iure quia quos neque voluptas', 'Horizontal zerotolerance parallelism', 'zelda00@example.org', '2008-07-25', '2001-02-01', '1984-06-06', '6ce8442d-a715-3ae6-a65e-db3b8c0061ba', '1984-05-14 12:13:43', 'd9170dd0-a3a1-3047-ac76-0b2038ef2280', '1977-09-14 10:41:27', 'Amet quibusdam ea facilis assumenda. Eius suscipit quod rerum odit laboriosam dicta. Voluptas sed ap', 0),
(73, '2e1bab6a-2ccd-35ee-be99-48dcfda15d81', '8ab4dbea-e4c8-32b4-9684-904715584dfa', 'occaecati', 'Error sapiente ratione qui neque. Amet ipsa ut aliquam. Exercitationem exercitationem magni sit dignissimos est repellendus id quia. Porro delectus illo pariatur similique aut autem.', 'Decentralized bifurcated localareanetwork', 'djacobson@example.org', '1974-01-09', '2001-12-25', '1989-06-12', '61f1afca-2088-353a-8046-84a14ed1d6e2', '2004-10-14 02:29:52', '03beb65c-44cf-3e16-99f3-b5565c6f4bf4', '2000-03-10 15:25:41', 'Quibusdam eveniet voluptatem aspernatur repudiandae et delectus ut. Beatae ut adipisci quaerat dolor', 0),
(74, 'a75635e3-9702-34f9-83d6-14e749a81c60', '9d7420b1-f3b3-3811-8f5d-48f595060ec3', 'molestias', 'Aut qui aut tempore autem minima. Ut reiciendis voluptatem excepturi blanditiis excepturi nihil laborum. Voluptatibus officiis voluptates velit voluptates quisquam. Et incidunt autem maxime.', 'Inverse human-resource approach', 'unique83@example.net', '1991-12-17', '2009-05-06', '2005-10-29', 'c122412a-d5e7-348b-9353-f563f62bb927', '1989-12-25 12:41:53', '63f90ab9-4645-37fe-8c71-504cc2e8a113', '2006-02-04 08:25:24', 'Quia voluptatem officiis minima dolorem cumque est natus. Quis perspiciatis placeat aut expedita omn', 1),
(75, 'd504207a-b280-39ff-b684-c4234e5cf343', 'afb265f8-a7a1-3b76-a796-57520fb2c5c7', 'incidunt', 'Sequi quidem nihil facilis sapiente et consequatur. Est et omnis error et sed ab.', 'Enhanced web-enabled functionalities', 'ashtyn.bode@example.net', '2011-01-31', '1989-04-20', '2005-04-05', '2e9e5345-c7b4-3aa2-b211-0f53e8ca82b7', '1974-08-21 14:07:06', '77826318-31e2-33ed-9cfa-f363ff561f5b', '1975-08-31 14:09:55', 'Harum ut aspernatur illum nam ullam aut. Pariatur omnis autem ut ipsam eos quos qui dolore. Dolores ', 1),
(76, 'af8a1e04-0e75-3776-bd03-9ac880da17de', '3566c874-c239-3778-9f7d-e9cfe364ef38', 'enim', 'Recusandae repellendus quam non dolorem. Adipisci iure incidunt et. Est eum magnam quia omnis omnis. Officiis iste a sed hic similique enim.', 'Fundamental multimedia workforce', 'roxanne.barrows@example.com', '1981-04-17', '2016-01-29', '1993-05-14', '7a5bd42f-ef6d-31c1-be5e-325aac7f6544', '1985-09-03 15:17:24', '06365db4-7250-34bf-b33e-4dfaaae94c38', '1978-06-19 17:17:27', 'Voluptas accusamus ut dolore accusamus quas qui beatae. At sunt omnis quibusdam iure est ut. Placeat', 0),
(77, '43a5059a-18c5-3082-8c4b-3ec8fd77badd', 'b13deb5f-7756-3cf8-92da-1e059095c25b', 'ipsam', 'Quia voluptates velit dolores eius ab quibusdam. Facilis soluta quas dolores nostrum aut amet. Vitae quibusdam non dolor et hic repudiandae expedita sunt. Odio incidunt quis cupiditate modi quae tempo', 'Re-engineered optimal toolset', 'lamont53@example.org', '1994-06-21', '2014-06-01', '2015-10-01', 'd0c47dc8-8073-39e1-b2a9-3cb2947ddad4', '1978-11-18 15:17:04', '23dbc4ef-9322-3e63-8031-688e41ea79d5', '1985-07-04 22:34:37', 'Quidem nam cumque in natus quos. Blanditiis similique aut eius sed. Porro et aut aut. Dolorem repell', 1),
(78, '9e2a4d8e-27f2-3918-9b4e-0b987ebe625d', '78551674-6b39-3e0c-b4b2-b34e97a1215e', 'officia', 'Quos sit aliquam odit qui ea. Reiciendis illo officiis eum rerum. Quia ipsa asperiores quam.', 'Visionary actuating software', 'west.ofelia@example.net', '2009-09-23', '1985-08-16', '1991-08-10', 'f2834bd6-eda1-3090-9f7d-c83dbe4a97c4', '1984-04-05 09:56:03', '7f5877bb-48e9-3b7a-be06-cdf170285e26', '2010-11-11 13:30:27', 'Non facere ex quidem ducimus quaerat. Animi molestias soluta voluptas quia corrupti animi animi dolo', 0),
(79, '52a39dc4-5b0b-377d-8350-0a7fbf087251', '2dc39e2c-b7bc-3733-b156-8b3928eb14ba', 'sed', 'Quo vel tempora aut repellendus nulla non quidem. A cum distinctio eius. Dolor veritatis enim qui minima eius.', 'Facetoface zerotolerance GraphicalUserInterface', 'lina58@example.org', '1972-06-15', '1990-07-19', '1989-03-28', '7eaf163b-73e2-38a2-b7d5-a0a19d8b3a84', '1998-03-15 10:48:31', 'f4cafd6e-6f75-3dac-8521-47480a172b46', '1984-10-17 23:03:06', 'Quis repellat velit ut voluptate. Vel quas eveniet nostrum debitis libero. Quae ea quibusdam nam cum', 0),
(80, 'd407b547-b8c4-3a39-ab05-d64357c08a06', '3b03d41d-7371-3481-92e7-f2703e39f50a', 'corporis', 'Est perspiciatis ex temporibus consequatur deleniti vel. Accusantium magnam sed error doloremque aliquam. Officiis ex molestias eum inventore aut id.', 'Managed interactive firmware', 'libby.hirthe@example.net', '1973-10-10', '1996-09-05', '2008-04-21', 'f5c3687d-4e39-3a03-8d15-6ffeebf148f8', '1987-05-25 22:50:34', '7be30e2f-1aa1-3392-bf12-e47bb97e5a6e', '2003-07-07 18:03:39', 'Voluptas eos porro corporis qui quos voluptatibus culpa nisi. Reprehenderit sequi porro consequatur ', 1),
(81, '5965c555-6a81-3610-b2e2-6e6202aa8da5', '9c43cde3-2970-3b2c-827d-bb3fb0c65e74', 'est', 'Officia tempora quo voluptatem et eos. Exercitationem eum et repellat. Dolor debitis sunt quia libero quas labore.', 'Persevering national groupware', 'willis64@example.net', '1995-03-19', '2017-09-25', '2012-07-19', '93ad30d5-7c5a-348e-92ef-8350a164fd42', '1973-01-14 01:09:37', 'dbf3bec2-80f0-303a-a903-72c2a0341ac1', '1985-06-04 11:41:23', 'Quos aut aliquid consectetur quisquam ab dolores a. Est neque omnis repudiandae sunt voluptas nihil.', 0),
(82, '3b595a50-79cd-35b9-8257-201c939e6c36', '5d0b541d-f3b6-3f26-812d-508d792c335b', 'et', 'Dolor sint labore non delectus unde illum animi. Ab minima aut et neque minima qui. Enim ducimus esse ut ullam laborum ut eligendi.', 'Multi-lateral executive openarchitecture', 'skeeling@example.net', '1998-04-04', '1980-11-22', '2009-12-08', 'c626bf21-c85d-389d-abbf-9fde3272ad04', '2014-11-11 05:26:13', 'aa00bacf-72cd-33b8-8f2d-8cc9461eff5a', '2009-05-21 10:25:55', 'Soluta incidunt maxime maxime nemo natus blanditiis ducimus. Voluptatibus non placeat maxime distinc', 1),
(83, 'c5958c58-882c-3877-8ee7-66bc232c5ed7', '9fb965a7-e614-3b08-b294-4c3c3aeb6e5a', 'aut', 'Deleniti aut doloribus et expedita minus exercitationem. Hic pariatur atque ad. At dolorem reprehenderit facere id. Et commodi rerum necessitatibus et unde.', 'Extended 5thgeneration moderator', 'kailee.langworth@example.net', '2001-04-17', '1994-12-30', '2016-08-30', '7ee4e179-cbf7-3046-9e59-92b312f14fe1', '1981-05-10 04:37:53', 'a17471ed-3c45-3bb7-86ae-19f6978a3072', '1983-11-16 21:30:55', 'Perferendis ullam soluta architecto soluta est quas ullam. Quam quae eum voluptate. Dolores exceptur', 1),
(84, '473cd984-37d5-3caf-8473-913bdb879952', '63cf1722-0b55-3255-92ae-cfe053b60176', 'est', 'Sequi incidunt repudiandae magnam. Omnis dolor corrupti sint. Ut neque earum voluptatem facilis. Id et nemo et quia atque. Deserunt dolor fugiat aut incidunt sequi nesciunt.', 'Re-engineered bandwidth-monitored leverage', 'erick19@example.org', '1986-02-17', '1977-02-13', '1998-03-05', 'daf02b53-0841-36c3-852d-8fe1a3492085', '2012-02-28 03:26:47', '2e19f0eb-6b5e-337a-900a-d7f40d225ad2', '2011-10-23 22:49:00', 'Occaecati et excepturi hic incidunt cumque doloremque. Aut corrupti modi dolores tempora cupiditate.', 1);
INSERT INTO `hr_general_certifications` (`id`, `CompanyId`, `EmployeeId`, `Name`, `Description`, `IssuedInstitution`, `InclusiveDateFrom`, `InclusiveDateTo`, `IssuedDate`, `ValidityExpiration`, `CreatedById`, `CreatedAt`, `ModifiedById`, `ModifiedAt`, `Remarks`, `Active`) VALUES
(85, 'cba19b5e-3a11-310a-b10f-0f3fd4f69b15', '5dba55a4-3ebf-3f2d-ab7f-8cd26cb66a25', 'tenetur', 'Nobis ratione aspernatur amet eum minima ut est consequuntur. Aliquam in in repudiandae. Illum itaque recusandae iusto nemo voluptatem consequuntur. Voluptatem velit minima ducimus.', 'Up-sized transitional implementation', 'carol79@example.com', '1981-11-24', '2008-11-12', '2017-10-23', '0b483933-1e4e-3f65-8e07-694ae8e1605c', '1994-01-15 17:25:13', 'c871e49b-6b2c-30d1-a844-58fed58ac64c', '2006-08-06 16:15:56', 'Molestiae sequi ab saepe voluptatem temporibus. Delectus rerum qui eum veniam molestiae voluptatem d', 1),
(86, '213efc07-7308-3bdc-a280-455764c0e61e', 'b00eb459-364b-3187-9d78-fa6ac3e83e06', 'eum', 'Quod nihil rem maiores enim non autem. Voluptates tempore ab aut velit nisi. Sit cupiditate nihil neque saepe tempora delectus. Eveniet odit ut veniam ut eos sunt.', 'Business-focused national firmware', 'eda24@example.org', '2012-09-19', '2010-05-02', '1997-11-17', '8ce38898-5d7d-3e3d-8cd0-c3e79de2aabc', '1990-03-21 01:16:37', '38c39e57-36b8-32fa-8444-e8adbcdfaeb0', '1974-03-11 17:57:11', 'Ut quaerat consectetur dolor earum illo temporibus numquam. Et qui quae est exercitationem dolore. I', 0),
(87, '405e7388-41a7-36c7-a3b1-64eac07d7474', 'bd453f47-1b5b-3206-b854-c6979b541265', 'reprehenderit', 'Possimus id qui commodi voluptatem. Velit dolorem numquam dolores deleniti pariatur. Laboriosam magnam optio qui aliquam eum sit.', 'Focused multimedia workforce', 'ryann.hermann@example.org', '1975-06-18', '2013-01-04', '1989-09-21', '9ce6499e-4e28-360b-bf43-32e4fd1ea77d', '2018-06-08 10:17:27', '7a7cd8dd-f12f-33d5-bd97-70785ebe9993', '2008-05-30 23:53:01', 'Voluptas eos quae ex id et. Et dolor sint eos. Ea aut cumque dolores rerum sint et ullam.', 0),
(88, 'fdc29667-0489-3011-b97d-392114b3db91', '184329b7-cc50-34f4-97ad-756a4e3a0c5c', 'et', 'Non et harum numquam aliquam. Dolores quidem libero qui voluptas et laborum. Ut et vel vel rerum qui natus quis quisquam. Quae illum officiis ipsam corrupti ut mollitia impedit.', 'Multi-channelled homogeneous middleware', 'graham.jalyn@example.net', '2002-04-09', '1988-05-05', '1989-09-17', '5ecca4dd-0c5e-3eb9-ae04-87d9b9582109', '2000-05-21 08:58:43', '7801bd36-4ecc-3657-a2a6-e389ae00ea8c', '1978-12-05 05:30:16', 'Necessitatibus ipsam quisquam natus mollitia. Cum laborum rerum molestiae ut. Numquam nobis unde rem', 1),
(89, '3a504ff6-2b59-3d17-90bb-3893a50bc906', '143fc08b-51f7-3189-b971-346e328307e3', 'tenetur', 'Minima sed vero quae eveniet laborum. Aliquam provident unde ad. Voluptas neque sit quia omnis exercitationem illo accusantium.', 'Reverse-engineered empowering orchestration', 'ofelia.hegmann@example.org', '2011-05-30', '2015-10-04', '1991-04-24', '61133803-d71c-3390-bb6a-e2551f25966b', '1976-05-10 21:24:18', '5002d1c7-b57f-3aef-94c5-34bfc9c310f0', '1993-12-24 02:22:09', 'Et iusto pariatur exercitationem commodi et. Sunt maxime adipisci voluptas consequatur fugiat. Ut du', 0),
(90, '69389a81-2e05-31b7-9c52-1bdf090dcd83', 'a563433a-40b0-35b4-ad37-20b304957e43', 'modi', 'Ut voluptates eum et aut quis qui similique fugit. Reiciendis consectetur deleniti recusandae velit. Ipsum eos in voluptatem nihil.', 'Inverse 24/7 throughput', 'phoeger@example.com', '1977-06-28', '1992-06-11', '2016-07-08', 'de2980b0-8d9d-3ee1-b418-2ba848447c00', '1995-05-17 10:43:56', '77aab722-065b-345a-85c9-ed702ba7537c', '1999-06-02 12:38:51', 'Soluta velit aut quas eum quia. Odio eligendi doloremque in velit laborum sit aliquam. Consequatur e', 0),
(91, '61a6e80f-2375-35fc-9f48-5d2aeb319081', '8074dc13-f9c0-3860-abbc-5e44d0da5371', 'animi', 'Ipsa delectus occaecati perspiciatis qui autem. Laboriosam beatae tenetur eveniet eum corporis et. Quas ab aliquid amet harum est. Dignissimos quibusdam blanditiis et similique.', 'Function-based radical framework', 'merlin77@example.com', '2008-01-06', '2006-06-17', '2007-08-10', '3a27f133-40e8-3b83-a4bc-cb829e4e0dbc', '1971-11-22 18:27:02', '48522b36-dbde-3470-a5f6-a84665179a41', '2007-10-14 16:04:42', 'Aspernatur dolor esse sit reprehenderit. Impedit ut illo consequatur qui amet natus laborum. Perspic', 1),
(92, '01995f9d-004d-3c78-99e7-80689a899a6f', 'ae81f6d0-e445-37ef-b496-97ce8def6eb0', 'autem', 'Doloremque vero error eum saepe et in vel. Iste ullam corporis quaerat dolore. Consequuntur corporis tenetur temporibus molestias eum reiciendis.', 'Persevering 6thgeneration moratorium', 'ezequiel07@example.net', '1993-03-24', '2005-09-08', '1994-06-07', '380dbbee-01ac-3d0d-a7aa-44f792aa64b5', '1986-02-06 11:32:27', 'f6340ed8-d263-3491-9c9a-8f33cbdf8f2e', '2015-02-25 05:38:55', 'Sed est sequi voluptatum blanditiis eos similique optio. Ab in nam recusandae minus et consequatur i', 1),
(93, '148f04e3-cdc6-3b89-be0b-67205e5bac33', 'ef5db0b2-b9ff-32a8-a19a-8da17cde89ec', 'facilis', 'Explicabo aperiam cumque vero sed ipsa. Soluta ea velit culpa. Qui doloribus similique quae optio qui qui architecto. Et consectetur facilis quidem esse quisquam harum.', 'Open-architected bottom-line utilisation', 'muriel29@example.net', '2000-12-25', '1987-02-23', '1987-06-15', '1e290593-d904-3d55-b0ff-135891ba95ee', '1999-07-03 12:37:24', 'f1b2cfa2-bfba-32e0-b4b1-10c4fcffb3b0', '1982-05-27 04:00:46', 'Dolores repellendus unde eum qui aliquam expedita nemo natus. Provident voluptas at sint doloribus n', 1),
(94, 'ea244151-3de9-30ef-a269-5f0146a4725e', '25cedc5d-55a7-33b2-8f9d-96f3bc3d9f4f', 'quidem', 'Aut iusto tenetur dolor. Voluptate nemo repellat voluptatem et dolor saepe. Aut explicabo praesentium quidem. Dolores voluptatum voluptas reprehenderit natus molestiae.', 'Multi-layered intermediate matrix', 'ellen.ortiz@example.org', '1979-09-12', '2008-02-28', '1999-05-05', 'cd5eaf35-b4fb-3494-b257-e98405175b68', '1997-04-10 14:16:52', '4efac69b-beef-36f3-916e-677388f5f97f', '1990-12-28 02:20:02', 'Officia et error optio aut alias at. Maiores id cumque provident aut nihil tenetur. Minima illum qua', 0),
(95, '0d887a39-d730-3ce3-ad5d-31640746952d', 'e4947b3e-6071-3f76-a166-8e86fd2f6c74', 'aut', 'Ut et voluptate quo quo corporis ab dolores. Nostrum ut tempora maxime sint totam et sapiente. Aspernatur eligendi consequatur dolor dolor molestiae voluptatum impedit. Rem dicta corporis et nemo repu', 'Cross-platform radical adapter', 'melisa.denesik@example.org', '1982-07-19', '2017-11-22', '1995-02-16', '3c90dcd7-e46b-3233-96f0-5ed85b308759', '1980-04-27 09:22:20', 'ebf7dd33-8b76-389e-935c-3e60bba89e9a', '1997-02-18 18:26:43', 'Eius corrupti labore qui libero. Qui recusandae expedita dolor eaque ut esse. Molestias voluptatem n', 1),
(96, '8bf66e1f-1d9a-3904-8d2c-34384de1d1bf', '86c7294c-491f-339e-b0cb-3e8625d45bf3', 'voluptas', 'Possimus quasi blanditiis exercitationem placeat velit sunt. Quae est exercitationem necessitatibus laborum eveniet. Fugit sit aut esse aliquid fugiat. Doloribus voluptatibus quidem laudantium qui est', 'Ergonomic incremental info-mediaries', 'emily19@example.com', '1972-07-30', '2007-11-27', '1980-10-03', '6aee9902-a1c3-357a-9a07-9e50f50616c6', '2015-11-08 01:04:27', '934d42f1-a636-3f01-ad61-a831329c89ed', '2005-09-19 06:24:12', 'Cumque sit placeat iusto aut officiis. Laudantium esse iste a quis natus. Nesciunt alias blanditiis ', 0),
(97, '12feaeab-086a-3aa7-a74f-bdd95c6b203e', '89edd24c-6a04-3346-9de5-9d3be4f62580', 'ut', 'Nam quis quo quasi perferendis. Minus reiciendis ipsam magnam deserunt et cumque ut aut.', 'Stand-alone actuating synergy', 'wlesch@example.org', '1974-08-08', '1991-03-18', '2014-09-17', 'bbe18066-6b19-3efb-87c3-d45af8f118c2', '1997-10-31 14:27:09', 'f40879e3-3986-347c-b86f-280cad4b4e21', '1984-07-18 01:30:06', 'Debitis eum laborum aspernatur dicta voluptatem tempore in. Unde tempora quo beatae occaecati aut do', 0),
(98, '542cd78f-106d-3d3a-9860-1d7284f60c9c', 'e35f79fd-cd25-30fc-9f05-1b509b470682', 'aut', 'Aut et quis ab velit est. Consequuntur ut vel error delectus nihil ex. Mollitia sunt repellendus iusto corporis aut.', 'Intuitive transitional knowledgebase', 'hermiston.dorris@example.com', '1987-10-23', '1979-02-11', '1973-08-23', '8514eb42-e8bb-3b2b-84a5-f6b366200411', '2017-04-18 11:27:39', '0cd3e9ab-82b0-394b-8dc0-592770cc7b0f', '2014-08-22 10:12:47', 'Similique cumque qui facere omnis aut. Velit ut est nihil neque. Totam expedita quaerat sed eos. Aut', 1),
(99, 'e6b9a623-408e-3e16-8cf3-5a943d087063', '9760eb4c-081f-3f14-829b-661c111b3a2e', 'est', 'Qui enim qui eos mollitia sapiente atque velit. Laboriosam deleniti nam non sequi. Doloremque consequatur voluptas molestiae cumque quisquam. Amet nisi voluptas molestiae fugit deserunt. Consequatur c', 'Customizable didactic application', 'tbrown@example.com', '1988-12-03', '2015-02-17', '2012-01-06', '843df0dd-35b6-3eba-aa5c-010ad8f8d5b4', '2018-09-13 09:58:54', '2bd75260-f919-3757-963b-924ae3d8e19c', '2017-06-04 23:40:56', 'Quasi enim non minima est ipsam eaque perspiciatis. Dolore odio dolore dolores. Repudiandae eveniet ', 1),
(100, 'fd909068-2de3-31cc-a39f-abc27c3f1f3b', '37b8d916-5887-3b39-a08a-cca1804c4026', 'eum', 'Quibusdam pariatur rerum omnis eligendi voluptatem. Molestiae libero velit et expedita. Ut quis ea quae. Incidunt autem omnis quis at dolorem sit.', 'Monitored responsive portal', 'rodriguez.minnie@example.com', '2000-10-10', '2006-06-19', '1986-11-27', '6dbd6de3-3ff3-3996-9b23-6dab75f7767d', '2009-04-13 17:14:17', '9b6dc737-c487-387d-a43c-c92a6c777913', '1980-09-12 09:51:18', 'Occaecati aut nesciunt similique sed autem dolore dolores. Laudantium commodi officia nisi voluptate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_changehistory`
--

CREATE TABLE `hr_general_changehistory` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `DepartmentId` int(8) NOT NULL,
  `PositionId` int(8) NOT NULL,
  `EmpTypeId` int(8) NOT NULL,
  `SiteId` int(8) NOT NULL,
  `CostCenterId` int(8) NOT NULL,
  `DateChanged` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_costcenters`
--

CREATE TABLE `hr_general_costcenters` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_costcenters`
--

INSERT INTO `hr_general_costcenters` (`Id`, `CompanyId`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, '68f04584-cfd2-3ba0-838f-fd245107bcf2', 'zxvi', 'praesentium', 'Exercitationem inventore mollitia ullam consequatur mollitia similique. Et dicta quis amet ex iure. Facilis dicta eius aliquid iusto. Quo excepturi sequi laudantium sed.', 'cbfc9b1d-234c-38e6-91c8-976609acaa04', 'd06bae57-495b-3fc1-866a-c6e7c2c5c8cc', '2010-08-21 04:50:44', '1987-07-06 21:58:21', 6, 0),
(2, 'c73ab783-7de8-38a4-a605-314768f025c0', 'icce', 'voluptas', 'Mollitia aliquid ullam libero quis sint eos. Nemo velit et fuga repellendus similique consectetur fugit. Maxime iure tenetur velit qui iusto.', 'f1f36a8e-a24c-35e8-b72a-ea24a5847ec5', 'b0a90bb0-e4c8-3063-964e-a1da76a1574b', '2017-03-22 22:39:44', '2003-04-01 07:35:03', 0, 0),
(3, '4c2cebb1-ff9b-3660-af5c-ea7871f14bc1', 'hwoj', 'nisi', 'Sunt minus rerum odit fugit magnam repudiandae enim. Necessitatibus rerum eaque qui. Quaerat soluta non natus sapiente nostrum quis ullam.', '97e15e83-f53e-3e49-bd49-1d634470c922', 'c2be11ea-52b0-31c6-8582-a7c0b38007d1', '2014-03-10 17:22:35', '1973-06-02 05:43:43', 1, 1),
(4, '3c8702c7-71c6-39f8-8d12-ea4a5b232632', 'nyfa', 'praesentium', 'Aliquam esse et quia culpa harum. Quibusdam eaque vel eum non sunt sed. Quos vero vel ex mollitia consequuntur quia. Doloremque dolores qui aut aut nemo similique porro sunt. Qui sapiente voluptatum n', '22355d93-e9ee-39ef-afc2-0a592bf7e3e3', '3c490e01-8ffc-38ed-8fdf-087f0d5a226f', '2010-01-20 14:46:48', '1970-09-19 14:46:51', 4, 0),
(5, '4a2c0abc-782f-316d-bcdf-d53294007779', 'gqyk', 'veritatis', 'Dolor aperiam omnis ipsa unde harum blanditiis nisi. Iusto ex veniam exercitationem dicta vel. Beatae qui omnis quam et quia dolor.', 'fee41d7f-1a61-3316-8a72-5d1b51a39669', '1f91a83e-4bd0-30b5-ab9a-1b0ae8ed69e3', '2014-10-03 03:36:58', '1971-09-26 10:59:09', 9, 0),
(6, 'ad0ad508-bd12-320b-b0b7-92f5ed9e6166', 'rnle', 'earum', 'Nulla possimus incidunt quo ut. Quia assumenda eligendi id autem. Minus quis cumque autem eos voluptate. Quo consequatur impedit aspernatur. Omnis laboriosam qui ipsam et sunt.', '739f9220-c4a8-3696-8ec2-4f2bfc2a8337', '12edb066-37f2-343e-9041-1be8a82f2816', '2010-01-10 15:39:47', '2013-12-19 09:39:33', 2, 0),
(7, 'b247cd99-08bc-3078-9a5f-4dc7aafe6f82', 'bhzh', 'quam', 'Dolor odit doloribus ab consequuntur ipsa quibusdam dolor. Libero rem vero maiores velit. Numquam atque cumque nihil atque.', '4aaae64a-9f20-3fe0-a045-eb61d443038f', 'b6294a37-79db-3fdd-bb2c-4d4eea7375c8', '2011-12-10 15:05:51', '2006-09-24 05:11:10', 7, 0),
(8, 'f9c2ff90-c89b-31d1-8616-8a7f4aa470f3', 'bafu', 'dicta', 'Itaque iste architecto aliquam totam cum. Labore quis vitae doloremque error fuga fugiat mollitia. Id velit eius nesciunt earum.', 'bc25b8d1-5da1-3f54-bf2d-1aba116c05e5', '8e86978f-543a-359e-b40a-e1b804c95d0f', '2014-03-12 10:35:28', '1992-06-16 08:57:43', 0, 1),
(9, '1e60161a-e968-30d5-9c2f-46cac8bb2f09', 'kahh', 'magni', 'Ut ipsum voluptatum consequatur voluptatem. Cupiditate aut pariatur exercitationem maiores voluptas dolorem. Sint incidunt voluptatem et et minima eius beatae. Voluptates ad iure quae.', 'e4a80caa-031f-3f94-91c5-0a02dd149687', '3cb9ebf4-a486-36d0-bde9-95aa70bd805b', '2012-08-18 23:25:13', '2015-12-13 07:06:58', 6, 0),
(10, '1cb1982b-3b6e-3451-a0f8-21d53293b4bc', 'lohm', 'quis', 'Fuga ipsa voluptatum modi et dolores ducimus. Natus quo sunt quam minus quaerat qui. Fugiat vel sunt dolor qui et libero illum. Iste porro ex soluta ipsa possimus illum ipsam qui. Cum sed nostrum veli', '66056deb-a758-3d7d-b767-3d0d60d4e67b', '70ee92bf-d52d-3435-92cd-3357c426965a', '2006-10-01 16:48:18', '1992-03-07 10:57:43', 0, 1),
(11, 'b46113e0-85a5-325c-b019-969574bf2284', 'ducv', 'ex', 'Voluptatem distinctio consequatur in accusamus aliquam quisquam officia repellat. Dicta iste itaque aut at quia excepturi aspernatur ea. Ab et accusamus molestiae omnis enim itaque enim. Error autem e', '066381bc-cff0-3e41-801d-c3259f064eff', '9b32d10d-8245-3b9f-9252-2ed4a068488c', '2010-01-11 02:03:36', '1995-01-03 02:40:25', 1, 1),
(12, '800a8a1d-2551-3152-b467-ff88457b0ff6', 'syln', 'eos', 'Sit earum est neque adipisci laudantium consequatur laborum. Aut in velit recusandae occaecati. Temporibus totam veniam id sit.', '45a20f80-fe85-351f-9321-9e26f3a12e4f', '5e1ceabb-0728-3f03-b203-fc832b4e923a', '1974-03-08 09:17:53', '2011-02-26 18:13:27', 0, 0),
(13, 'ce3e00ed-2b06-349f-a424-b7ff50bdc2b0', 'wtjy', 'molestiae', 'Totam itaque qui architecto. Dolor nulla minus corporis. Nisi eos ab similique ullam ex. Saepe vel laudantium magnam ut ut exercitationem.', 'cccacd4d-d7bf-378b-8aa7-f92305c62d7c', 'bcb1f969-423a-3dfd-9f0e-e62d70adb2f7', '2003-11-30 23:23:26', '1992-02-20 04:39:37', 9, 0),
(14, 'c518593b-a868-3a72-8f16-599cd99f333a', 'xgow', 'in', 'Quasi at sint laudantium qui quibusdam optio. Aut minus ut voluptates rerum fuga aut veniam quis. Assumenda autem et ut sunt consequuntur. Dolor excepturi distinctio sint nobis dolor.', 'a4dbb3be-6021-3ce8-a972-46a347d72a9e', '58eae4e1-9acf-3457-933a-ae3afb6654f9', '1984-10-20 16:33:37', '2014-05-11 16:22:29', 3, 0),
(15, '18dba33f-8d38-3b86-b3ce-09ee5ffa0f6f', 'cdom', 'sed', 'Quam quae dolores dolor id nesciunt. Tenetur sapiente necessitatibus unde ad nulla sint. Vitae architecto dolorem libero cupiditate.', '2901977e-c24e-347a-93f0-de54b3102717', '87f7ca66-ac2d-37d6-ae0c-63c1952d8f1e', '2010-12-13 12:17:23', '1973-01-06 13:33:30', 2, 0),
(16, '1eeca616-1e43-3bcf-8b74-868639bc78d4', 'rxrm', 'ea', 'Id autem sapiente sequi quas. Incidunt voluptatem quia iste cum iusto eum voluptatem magnam. Magnam possimus debitis rem velit.', 'd832f847-0b4e-3139-8c44-8999c5ba62ed', 'b51047c2-263c-3e56-b713-558e5e422ad2', '1983-05-19 22:53:53', '1970-11-28 08:22:12', 8, 0),
(17, 'a4ce2f18-e8c7-38f7-9966-beaa00b875e4', 'uwgp', 'omnis', 'Et nisi veniam quia minus est. Sit debitis veritatis aut ea.', 'd624e880-7227-3b7d-b52c-51c8d06230db', 'c6ec02c5-2914-31ba-89be-059b0ae07334', '2001-03-12 15:59:38', '1977-05-13 01:01:02', 7, 1),
(18, '04e36800-8cf1-3999-8e1a-93c94aca7b5e', 'cvkp', 'sint', 'Occaecati laboriosam et possimus sed quia maxime. Aut et non quisquam nesciunt suscipit.', '259c05c7-8dbe-32f8-abb3-cb8e0a42886a', 'af58c2f8-5f5e-3b69-8b59-8bcdc7850875', '2014-12-25 07:21:01', '2016-05-18 10:40:42', 8, 1),
(19, 'caaf57ab-b438-33c0-b64c-9454c0a24e52', 'sojo', 'porro', 'Recusandae a consequuntur dicta unde quia eos fugit. Consequuntur eligendi qui voluptatem ut. Consectetur sunt recusandae velit accusantium voluptatem repudiandae nobis. Magni recusandae et et cumque.', '1be3f6c3-3a04-3062-946d-7777f1df72da', '70b32dcd-5cc1-302d-b818-9c656f43cb24', '2005-06-18 23:24:12', '1980-05-02 10:16:57', 2, 1),
(20, 'df9e49c6-0b00-3998-88a2-75af9dff770b', 'fpnl', 'nostrum', 'Quis doloribus est vitae veritatis. Quae numquam reiciendis qui recusandae expedita autem. Sint natus non quis veritatis aut ut.', '0f9d06cf-cca6-363d-a4ee-8df262a285c8', '7065bd5b-e397-3e8b-aa56-37e2564e3a39', '2018-03-02 07:33:12', '2009-08-13 16:55:25', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_darecords`
--

CREATE TABLE `hr_general_darecords` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `OffenseId` int(1) NOT NULL,
  `OffenseDuration` varchar(100) NOT NULL,
  `DisciplinaryActions` varchar(200) NOT NULL,
  `InclusiveDateFrom` date NOT NULL,
  `InclusiveDateTo` date NOT NULL,
  `DepartmentId` int(8) NOT NULL,
  `PositionId` int(8) NOT NULL,
  `SiteId` int(8) NOT NULL,
  `EmpTypeId` int(8) NOT NULL,
  `CostCenterId` int(11) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_departments`
--

CREATE TABLE `hr_general_departments` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_departments`
--

INSERT INTO `hr_general_departments` (`Id`, `CompanyId`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'dc85a599-ba41-3ac8-9190-32ab1ebca6e1', 'scja', 'facere', 'Magni asperiores enim aut molestias fugit voluptas. Blanditiis voluptate dicta ipsam est sit ut distinctio nulla. Iure impedit amet nihil et ut. Error quam nulla nulla est ullam voluptates quo itaque.', '3029a003-cbdc-32f3-afb0-2e0d63142940', '4c7f319e-6f34-3921-a0e4-548cbe1f2c5d', '1994-04-22 03:46:29', '1997-07-21 18:24:34', 5, 0),
(2, '7d45d544-884e-3b8b-ad81-6d8b6942c678', 'xnuh', 'enim', 'Numquam voluptates dolores dicta consequuntur ratione velit. Temporibus aspernatur fugit labore explicabo modi. Dolorum et sed omnis est.', '969de1b0-7ca4-3817-b6c7-ba68cfc653bb', 'de725ff1-ec87-3b33-9663-684df83d1b57', '1981-02-24 13:08:38', '2009-02-27 01:53:40', 2, 1),
(3, 'ffbd4b0b-24d9-3e26-b2f0-9615cf1d5b32', 'bkny', 'sint', 'Quam voluptas blanditiis quo cumque. Et animi voluptatibus incidunt alias dolorem. Unde a dolorem dolorem earum perspiciatis illum. Non ducimus aperiam ex sit voluptate suscipit fugit.', '48ed6911-b258-3a3b-8d08-d416a84956c3', '466db705-4ff5-3e6e-9dd6-906a553bc3c6', '1979-05-08 04:46:19', '2011-06-08 08:13:53', 5, 1),
(4, 'd0c184cd-6a90-3879-9a6a-dabb2fbfe036', 'josa', 'tenetur', 'Numquam id vel necessitatibus corporis eveniet. Ut cum cumque voluptatum facilis aut voluptatem. Maiores labore quia voluptas at. Ab qui nihil dolorem vel eligendi odit perspiciatis.', 'c6a3e047-ec11-3465-a983-47ce546ebd64', 'd06d91c4-e475-3f82-9b3f-fa189b6b901e', '1996-08-10 04:52:17', '2017-02-16 06:46:31', 0, 0),
(5, '5df37f61-ac07-3110-a5f8-202cb1f6e59c', 'rxpw', 'amet', 'Fugiat quia est sed nihil cumque tempore qui asperiores. Illo aut asperiores ea. Sed quia nihil ipsam quam est sint voluptatem. Aut laudantium reprehenderit voluptate culpa.', '1b2c31fb-70df-369b-b612-5a0b3cf1abe8', '3b2fa37a-363f-3a9c-9c52-0ddaa6500cf8', '1976-07-18 15:58:31', '1982-03-08 19:53:54', 0, 0),
(6, '9dc26c3c-e8c5-3373-9629-9208a257047f', 'csda', 'iure', 'Voluptates et exercitationem qui delectus optio similique et. Similique qui iure debitis voluptatum quia tempora.', 'b34a772f-897e-3085-8346-6d33d7208028', 'ea057a03-5be8-3fe4-a66a-6df54b989592', '1993-06-18 05:46:12', '1980-03-13 18:06:59', 7, 0),
(7, '4a6e9890-c624-320e-866b-23ae61b5cf2e', 'mkwd', 'reiciendis', 'Deleniti quasi consequatur ut voluptate. Repellendus similique esse alias. Laudantium sit ullam quis qui fuga. Enim nesciunt voluptatem animi deserunt quo non accusantium.', '0d760345-ef3d-3242-86b7-06f5807a4fb4', '28d198c5-25c4-37e9-8388-4b4661aabe85', '1997-07-02 03:48:21', '1978-04-09 15:21:46', 8, 0),
(8, 'fa45e9da-6c85-31eb-b351-bac2a9e74e66', 'vhbm', 'recusandae', 'Qui quidem dolor nam. Voluptatem nostrum recusandae ipsam totam qui numquam. Officia nisi molestiae molestias quia quod nemo et. Nobis et odit explicabo harum excepturi assumenda et ipsa. Voluptas cul', 'd8bf9b8e-0613-322d-8d3f-db60c634a65d', '3b3aa875-d2f8-3041-bdba-7fb25b45ad4c', '1977-09-07 12:38:32', '2005-02-25 06:50:20', 8, 1),
(9, 'd9e70808-9cd6-39f6-a189-f9fafa612bde', 'ezom', 'occaecati', 'Consequatur cumque in rerum eaque id omnis vel. Accusamus adipisci rerum aut. Est autem occaecati maxime sunt.', 'e70ab911-6be6-3225-890b-cdc4133954b0', 'c9f5a226-8b8c-3d84-b700-aa3624fa6609', '1982-02-20 01:22:04', '1987-01-15 08:17:47', 1, 1),
(10, '9f9b63fc-547c-3045-b82b-f60f822bcae9', 'fkat', 'explicabo', 'Maxime rerum expedita sed est odio tempora quae. Possimus et cum consectetur fugiat assumenda sed aut. Consectetur aspernatur amet et aliquam veritatis aspernatur quae ullam.', '9cd72343-cb44-36c3-8a41-cdc90abc6d72', '93f08ea4-f414-3619-92b7-35bb4d44f87c', '1986-06-08 04:39:33', '2014-02-06 13:30:53', 4, 0),
(11, 'fa42bcf1-b31f-325e-a6de-05fe02a3f0f4', 'upmw', 'voluptatum', 'Dolor quas qui magni nihil vero iusto minus. Eum voluptatum delectus perferendis ad.', 'ad902142-52ae-3d65-9de1-a66f25e5fb75', 'b0fd39b4-d905-394d-a6c1-8b3dff065ad7', '1991-12-27 03:43:31', '2018-08-21 03:46:04', 9, 1),
(12, '84ff2bd4-ef83-313c-8875-1004dec7f0b2', 'hbnu', 'repellat', 'Voluptatibus velit eos odio. Labore molestiae rerum illum. Facilis dicta vel repellendus ut. Quidem qui eos quibusdam quia ullam quia quae eaque.', 'fa2b1f7f-817d-3ecb-ae2e-8dbd3bf131e0', '84b14e5e-6236-33a1-8503-f75999b74c25', '1981-01-25 10:59:47', '1988-10-08 20:12:30', 8, 1),
(13, 'cd86a8c8-885b-346d-9f5f-e11b504c7b78', 'vhjf', 'dolores', 'Minus quos delectus nihil dolores autem. Aut quas architecto rerum optio.', '8ee85adf-948f-376d-b8cb-906358346221', 'b0b86f89-99a7-3d63-804d-ec18b3bf9861', '1971-08-20 14:03:32', '1989-07-20 19:42:57', 4, 0),
(14, '05c04b0a-2cfe-3da1-bc6d-cc05f0746c01', 'tdns', 'error', 'Vel quia quidem veritatis iusto corporis non corrupti sit. Dignissimos hic quas in fugit exercitationem non distinctio. Corrupti vitae beatae ipsa et quam nostrum dolore. Non cumque cumque qui atque v', 'b1753b39-2d60-3778-809a-bd27425eb5f5', '5dbd231b-2b19-3820-9fa1-4e945b2fc298', '2002-05-20 18:50:26', '1991-01-10 07:45:36', 1, 1),
(15, '83634ee5-ea5e-3bc2-86d9-58335fc62daa', 'wise', 'laboriosam', 'Asperiores suscipit repudiandae reprehenderit optio. Non laudantium qui cupiditate eos ipsam eos ullam quis.', '50f257c4-9fa5-386f-9409-ac9269bdc546', '6c135a5c-b33c-3468-9730-b2fe75127ab7', '1998-04-05 13:31:25', '1987-09-21 07:49:08', 3, 0),
(16, '7277ec2d-38b1-360f-bb14-78c05d5cafed', 'auzq', 'fugit', 'Sit numquam voluptates numquam quos voluptas aut. Fugiat officia qui quasi consequuntur. Iusto placeat aperiam laboriosam est perspiciatis placeat. Numquam quia ab et assumenda. Nam nihil esse incidun', '4b418c61-7c3a-356b-81a6-a5b66b8911bd', 'ab5d9237-4772-3cb0-bf61-e7bd054e5990', '1995-06-23 03:16:21', '1970-09-15 12:31:16', 3, 1),
(17, '27a5719b-c6bc-39b0-b075-5b71a98c0949', 'slxt', 'alias', 'Praesentium aut officia est. Odit sit quod officia harum. Libero veniam atque cupiditate quisquam odit. Sit est earum iusto quidem fugiat porro eligendi. Id provident temporibus odio quia aperiam prov', '1b5b3ff9-1ad6-3bbf-977d-b700518ec1e7', '6cb40c17-9caf-3749-b0c0-5ab0216e9009', '2006-08-21 02:42:58', '1989-04-17 02:56:03', 4, 1),
(18, '455ad733-8caa-39cd-8d95-6ac810c8f3b2', 'zokg', 'recusandae', 'Eum dolor dolorem architecto tempore. Placeat et eos est voluptas iure ea. Accusantium ab minima qui minima explicabo sit neque dolorum.', '2db66a7c-344b-3cd0-89a0-dd607e73b981', 'fde01b46-0305-39c4-bbea-5c4a0daaa662', '2007-02-21 08:32:40', '1978-11-09 06:03:07', 7, 1),
(19, 'e95ef45f-77d7-3a67-9f3d-84cb6a2416c5', 'ikzc', 'rerum', 'Praesentium excepturi quae placeat voluptatem. Quia optio dolore culpa doloribus eum neque sunt. Est aut esse nihil dolores accusantium harum saepe.', 'ac9a2eaa-36ad-3f4e-8bfd-1bce472fb4f1', 'dd7ffd3d-653e-3610-8dd0-c4e1216f771e', '2008-08-23 11:46:24', '1981-08-01 03:27:01', 2, 0),
(20, 'c7e7f5e1-5493-375d-975b-98180d58f6e9', 'wqis', 'aut', 'Eum exercitationem placeat et reiciendis at quasi. Nostrum deserunt odio corrupti. Quo est dolores ratione delectus soluta dolorem. Et fugiat illum molestiae sed odio incidunt beatae.', '0db00da1-bf30-396b-84a2-61e03a187124', '1f672a69-72ef-338d-b638-aa4bec6309ac', '2015-02-26 15:59:51', '1980-09-16 17:30:19', 7, 0),
(21, 'b7f683be-c200-3820-9654-1b7a1406771e', 'gcoi', 'iste', 'Perspiciatis vel ut minima voluptatibus impedit rerum. Autem tempore nihil quo et officia qui est possimus. Omnis iusto ad suscipit nobis. Rerum nobis fuga unde quia.', 'f83eb078-97f2-3a24-a746-cb5ceba698ba', 'b824c897-f0cb-31d2-ab73-cb71aa3c36d7', '2010-01-28 05:30:02', '2000-08-18 17:03:37', 3, 1),
(22, '1c464121-bd7c-3356-9dc9-2695edab6794', 'vheh', 'magni', 'Enim iste sed et perferendis voluptas et. Fugit qui velit et mollitia quia vero consequuntur. Est labore totam pariatur illo et iusto minus. Officiis nobis aspernatur deleniti neque eaque eius soluta.', 'f97cd10a-8adf-3fd0-8df8-3202389bf667', '1f493b90-a4ad-3231-a7b9-542a1f93fa43', '1991-10-23 21:02:21', '2012-05-21 02:24:31', 7, 1),
(23, 'fe6b26bc-c04c-3461-9fcc-542740660527', 'pfvo', 'fuga', 'Ullam soluta delectus voluptatem autem impedit nostrum. Eveniet libero nulla quibusdam culpa atque qui. Quam culpa et ad aut.', '6899511e-fa9a-386b-87e9-c2424f95e29c', 'a821cfeb-0b0b-3acc-8d65-ee369f438a68', '1993-10-12 12:25:24', '2011-02-27 17:18:03', 5, 1),
(24, '85c340a6-6029-3b01-b7f0-9dc92d93e0b3', 'xfun', 'ut', 'Earum aut velit et dignissimos. Deleniti maiores velit ratione dolorem. Atque rerum qui modi. At id omnis aut autem quo deserunt.', 'ddf9b79c-94a5-3e73-bbed-c850f9b1fdd2', '39c7cf81-9602-3bff-a61c-b84e345add7a', '1990-07-01 01:34:50', '2014-09-03 03:49:34', 7, 1),
(25, 'eca1e20b-46fc-335d-9e3d-9e273bc4cc6f', 'fteq', 'minus', 'Corrupti impedit autem modi tempore. Atque voluptatum illum non et illum. Nisi earum et ut nisi illum rem fuga. Dolor rem consequatur a labore quia eveniet fuga expedita.', '69b04d97-91b0-310d-aade-5d9b7aa2e737', '11ca5222-2cf3-3422-9fcc-c776e230e246', '1975-09-02 00:04:05', '2018-08-16 20:49:50', 1, 1),
(26, '77de5741-47b5-3172-8ce0-41eabab92159', 'toxe', 'distinctio', 'Modi aliquid vero modi qui sed. Placeat sequi tenetur modi est. Inventore quis id voluptas.', '56122aac-ee5d-3d8c-9c91-b5a1af33e3bb', 'e7b42a2d-3ef3-358d-91f3-62c30c1a27f1', '2015-01-28 01:09:51', '1984-07-11 22:15:59', 4, 1),
(27, 'b7138250-0e7d-3fa7-ac5d-c521e8835ef7', 'kqwr', 'sed', 'Dolorem tempora eum sit quibusdam et quia. Quisquam ipsum repellat sit beatae eos laborum in. Repudiandae corporis quia earum ipsam. Amet esse neque aut alias.', '0a464a5a-7a31-3eef-b0b3-3bb8ec3a17a6', '8530e771-66e3-3383-a293-6a967a76a824', '1978-03-12 21:00:53', '2000-02-28 19:33:40', 6, 1),
(28, '3de901b8-79aa-3bd4-908a-9a93e3f13ce4', 'wggu', 'explicabo', 'Modi qui rerum dolor. Omnis aliquid velit totam reiciendis quam. Sint ad est iusto omnis impedit.', '75c4616a-109e-36d5-9de9-4315fe3588b2', 'c60a4566-421a-3283-8463-1e0063bc92b2', '1985-06-11 14:05:13', '1979-08-23 03:51:37', 3, 0),
(29, '5bf75d6c-a858-32b1-b836-0cf59a6e88f2', 'xhgx', 'voluptate', 'Iusto aut tempore eum laudantium enim. Provident asperiores laborum labore recusandae ut. Architecto maxime neque minus ut debitis consectetur eos rem. Odit nihil est accusamus doloribus. Quia ut fuga', '5d6fc46d-2a91-316d-9422-e570c13d0e0d', '340d95b0-aec5-3dfd-b7c4-bfdea0440cd6', '1975-07-24 19:29:24', '2008-10-23 22:38:44', 2, 0),
(30, 'f854b2e7-960d-302b-b70c-36a606970eed', 'wbzd', 'magni', 'Sed voluptatem aspernatur similique quam. Voluptas vitae eum delectus non. Enim dolore est ducimus. Maiores architecto et illum asperiores qui sequi suscipit.', 'f5a92fc5-0db1-382c-847c-be40472d43f6', '4ecf7553-699a-3b35-8dea-58367d8b8bee', '1981-01-16 12:22:59', '1995-03-28 15:09:34', 8, 0),
(31, 'f75b4e0e-cd07-3772-a2a2-9dd855c61b05', 'mfcx', 'totam', 'Quasi totam ut quidem qui consequatur voluptatibus. Dolorem quam in placeat. Hic ipsa eligendi dolores natus commodi debitis odit magni. Amet beatae occaecati adipisci tenetur accusamus quia.', 'c9005d4b-ca16-3088-a1d6-b12b31ab3069', '0cd7852a-7259-3d23-b4da-a41792b3d84d', '1985-01-27 06:55:53', '1994-01-31 02:12:25', 3, 1),
(32, '1308e509-17e9-30c3-9007-9673cb392e3b', 'fxvu', 'qui', 'Fuga magnam fuga quae molestias rerum cumque. Qui quis provident dolore rem sequi corporis beatae. Ipsam est et perspiciatis facere illum.', '50046194-706c-387b-9426-4d26e52af807', '3eab6428-6d33-3f5e-94d4-9309742c4b5a', '1980-10-07 19:16:39', '1985-03-02 03:38:47', 1, 0),
(33, 'd0f33fad-7cac-3f9a-b03b-ed02c312f45c', 'bdsk', 'totam', 'Commodi ut eius accusamus corrupti. Cumque est non enim qui vel rerum. Ut non ipsam quas. Quaerat soluta animi nam assumenda autem similique.', 'dc61fe7f-bf83-3712-9781-6e3248e76cb7', '53084ed3-3ffb-3d31-9784-783a7ae4b174', '1995-08-29 06:39:39', '1980-04-30 16:27:37', 4, 1),
(34, '2ac118dd-3e5f-314e-abdf-0dd4dc24da8f', 'yocs', 'ad', 'Enim architecto id ea unde blanditiis quasi. Atque cum totam rerum aliquam sit nisi. Quam culpa accusamus veniam minima. Veritatis omnis recusandae aut est incidunt eos esse.', 'ef85115e-577b-3c09-b6ec-a9494a014b4c', 'a60216de-816e-3315-9a93-3f3979af90bc', '1972-12-31 03:32:26', '1980-06-13 09:40:04', 1, 0),
(35, 'e5b32950-5152-3b46-855a-e34fc83119a7', 'jckw', 'est', 'Cumque tempore fuga quae voluptatem et. Voluptatibus cumque quis quam dolor consequatur deserunt vel. Reiciendis consequuntur esse consequatur voluptatem asperiores quia qui.', 'c22eeb35-8022-3e78-b19e-c598ce39890a', '10f97fa1-486c-314e-8baf-16eef469c47e', '2010-07-15 00:24:51', '2015-12-16 09:33:58', 2, 1),
(36, '13e051a4-f280-3cff-a33a-8e9425a93779', 'gyzc', 'omnis', 'Dicta consequatur et omnis et rerum quas. Numquam et sunt alias magnam aut libero voluptas. Minima quia ut voluptatem et sit totam.', '95d933e1-5d3f-3848-86d1-2a1e62cd9c4a', 'e66f2307-108e-3950-877c-878d80fe2db2', '2002-02-25 19:38:38', '1998-01-09 10:42:30', 4, 1),
(37, '335c3ee3-9c0b-387f-a7d1-17efbbf97093', 'ktha', 'illo', 'Est odio eveniet accusamus occaecati nihil omnis quos. Est a perferendis alias voluptatibus id non. Aperiam laborum occaecati omnis nisi voluptatem.', '8e7e02d4-281c-32f9-8732-bff86c27d354', '77bd073b-5607-3e77-a97f-c08975a15dc7', '1981-05-21 01:47:28', '1989-11-17 09:09:18', 6, 0),
(38, '998329d2-c67a-344a-9b1f-c27f049793ab', 'mlgl', 'corporis', 'Optio vero voluptatem iure est aspernatur vero. Vel eveniet rem illo aperiam delectus deserunt quis. Quis alias omnis sunt dolor aliquam ut.', '93fc2467-ce69-389d-b9f6-a7472cf758c8', '42b7f36a-a778-385b-b94e-c38b6f4f9c00', '1977-10-11 06:12:29', '2012-03-06 05:19:37', 1, 1),
(39, 'da6e8457-bf6e-38d1-b1bb-e6d87a4ab21d', 'qxoe', 'ea', 'Nobis aut voluptate eveniet animi. Doloribus dolore pariatur sit qui. Et fugiat fugit magni et facere aperiam. Occaecati in consectetur accusantium.', 'ab2cab71-c623-3628-82a7-68f8680f7f70', 'bb6b517e-5fec-3b89-8499-ec298e301e56', '1996-08-21 23:09:29', '1974-06-28 00:10:38', 9, 1),
(40, '634683e3-29d6-327f-bab4-112c43254016', 'tmql', 'dolores', 'Ducimus consequatur vero quia rerum non sit et. Tempore culpa in officiis sapiente. Inventore voluptas maxime quidem ducimus in dignissimos.', '023c9fdb-5371-34e7-b68a-3d95f6874b48', '7dc847ba-6bb4-342c-b2ef-9a804bba1dd0', '2014-11-18 07:36:47', '1981-01-04 13:47:55', 0, 1),
(41, '26771a4d-aa4d-338a-a22a-9485d83d2497', 'gemi', 'ut', 'Ea placeat tempore facere laudantium voluptatibus. Repudiandae optio tenetur perspiciatis. Itaque sapiente voluptatum perferendis vel quas voluptatem laborum.', 'd9b2f28f-5972-320f-b749-81ff11f8b40d', 'fa394a2e-448b-310b-99c1-3aa54e5e30c5', '1979-07-28 21:56:42', '1970-04-30 02:29:59', 4, 1),
(42, '140c0bf1-71ce-3f85-96c5-cfa5adbd2bab', 'ghyl', 'saepe', 'Ipsa aut nostrum rerum. Iusto assumenda dicta animi. Dolores pariatur et repudiandae tempora. Placeat voluptatem minus nihil vel autem autem odit.', '8c731e68-04d2-3633-9204-31bba809ee22', '9878bc6e-a650-37b1-8d5c-c1324286dd5a', '1977-09-14 16:18:49', '2014-11-12 09:38:34', 3, 0),
(43, '3b5b4c72-b6b0-3420-8290-6a0becfc58bb', 'enwz', 'dolorem', 'Porro voluptate corrupti sequi repellat aut perferendis nam. Fugiat debitis occaecati tempore veniam qui. Molestiae voluptatem nemo modi consequatur. A aliquam nostrum maiores quod sed ea.', '3f1e1de3-b8fb-3318-a76a-0935ff28fb15', '4c0e01cf-25d0-375b-8374-5f0fbbca61f6', '1990-09-25 05:51:18', '1994-06-04 02:42:47', 0, 1),
(44, 'b525d960-cdf9-3ef4-848d-31cef4e314ec', 'sylq', 'totam', 'Voluptas necessitatibus suscipit earum eos assumenda autem recusandae. Omnis voluptate alias repudiandae sunt nemo laboriosam. Quia labore iusto nisi laudantium reprehenderit dolorem tempora.', 'e58578f9-5937-3be0-b15c-e5d93b8f5e3f', '08adedfe-e0c5-3242-8755-ed3f3e2feb86', '1988-03-16 14:51:41', '2009-12-23 10:05:01', 2, 1),
(45, 'c90f067f-f107-3bd9-a606-2900b4e96fc2', 'tgdm', 'iusto', 'Fugiat reiciendis rerum consectetur quo aut aut dolorem. Facilis cupiditate quia vel eveniet ut accusantium. Ex qui quia dolores voluptatem magni autem qui.', '09576484-5e83-31ea-ab29-9c4f9c608430', '023c9f91-b496-3d7c-b69f-138c73125674', '1999-12-20 21:05:29', '2000-08-29 02:37:45', 4, 0),
(46, '93e1f172-ad76-3c0b-8b0c-9cb156f63481', 'dpkb', 'repellat', 'Aut ut voluptate molestiae rerum sequi velit. Minima libero minima magni optio. Repellendus vitae eveniet doloribus accusamus.', '97d6e0f9-d5c4-3db9-83f0-72ffb4ec67a3', '4957ea40-9d22-3df0-aade-b0e69414b6c4', '2005-09-28 14:48:42', '1976-01-20 22:17:33', 4, 1),
(47, 'd9e4fc93-6229-3406-9efa-0e83135efcad', 'nkvy', 'ut', 'Qui corrupti vero suscipit possimus aut. Vitae nihil fugit sunt. Vitae nam suscipit ut. Adipisci accusantium harum unde doloribus perspiciatis adipisci.', '55233f0e-adaa-3558-8251-5f029e94d989', 'd7c745a6-f261-3977-875b-8718c3095654', '2003-04-30 15:10:39', '1998-02-11 08:54:51', 9, 0),
(48, '1fb9f39f-31a2-3905-9fff-9f8d45183e67', 'wtcj', 'sed', 'Quaerat placeat officiis inventore eos optio aut aliquid. Optio illo magnam sint sit consequatur adipisci quae. Eum explicabo sint possimus voluptatem. Consectetur error vel ut corrupti doloribus volu', '616bd57b-640c-3a36-93aa-986e4a96f943', '0dbe6f88-6159-3f00-9c56-d0195e96b83a', '1976-11-12 17:56:55', '2012-12-06 21:35:46', 8, 0),
(49, '31b71312-8396-3d65-8462-6e85d2b88d93', 'jnzl', 'fuga', 'Velit debitis nisi doloribus quibusdam. Saepe recusandae laboriosam enim delectus. Omnis quos cupiditate ad quos eos et.', '22a19300-e0a1-3f2f-93f5-6ac645f823f7', '2b9013a7-39ba-3f11-8621-5d15405c74f0', '1976-10-10 20:43:41', '1999-04-14 15:54:18', 8, 0),
(50, '5231240a-39a0-3f6c-8cd2-08559c425451', 'noer', 'et', 'Sit qui aut sequi et. Nostrum ea earum temporibus. Autem nihil adipisci nulla facilis sit.', 'd10e042b-db48-3569-84c9-b35b5edfb669', '50937322-7f1d-31d0-8feb-f7c4544c22dd', '1973-12-24 17:03:33', '2006-04-14 10:26:09', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_dependents`
--

CREATE TABLE `hr_general_dependents` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Relation` varchar(50) NOT NULL,
  `Birthdate` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_employees`
--

CREATE TABLE `hr_general_employees` (
  `Id` char(36) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(191) NOT NULL,
  `LastName` varchar(191) NOT NULL,
  `MiddleName` varchar(191) NOT NULL,
  `FirstName` varchar(191) NOT NULL,
  `Suffix` varchar(10) NOT NULL,
  `Birthdate` date NOT NULL,
  `Birthplace` varchar(1000) NOT NULL,
  `CivilStatus` varchar(100) NOT NULL,
  `NationalityId` int(11) NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  `CostCenterId` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `EmployeeTypeId` int(11) NOT NULL,
  `EmployeeRankId` int(11) NOT NULL,
  `EmployeeGroupId` int(11) NOT NULL,
  `Leader1` varchar(50) NOT NULL,
  `Leader2` varchar(50) NOT NULL,
  `Leader3` varchar(50) NOT NULL,
  `Leader4` varchar(50) NOT NULL,
  `Leader5` varchar(50) NOT NULL,
  `Leader6` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `TelNo` varchar(191) NOT NULL,
  `MobileNo` varchar(191) NOT NULL,
  `PersonalEmail` varchar(191) NOT NULL,
  `CompanyEmail` varchar(191) NOT NULL,
  `HouseNo` varchar(10) NOT NULL,
  `Address1` varchar(191) NOT NULL,
  `Address2` varchar(191) NOT NULL,
  `Address3` varchar(191) NOT NULL,
  `Address4` varchar(191) NOT NULL,
  `Address5` varchar(191) NOT NULL,
  `Address6` varchar(191) NOT NULL,
  `CityId` int(11) NOT NULL,
  `ProvinceId` int(11) NOT NULL,
  `ZipCode` varchar(191) NOT NULL,
  `SiteId` int(11) NOT NULL,
  `VersionNo` int(11) NOT NULL DEFAULT '1',
  `Photopath` varchar(191) NOT NULL,
  `Tagline` varchar(1000) NOT NULL,
  `Bannerpath` varchar(100) NOT NULL,
  `TIN` varchar(191) NOT NULL,
  `SSS` varchar(100) NOT NULL,
  `PHILHEALTH` varchar(100) NOT NULL,
  `PAGIBIG` varchar(100) NOT NULL,
  `SubsidiaryId` int(11) NOT NULL,
  `Migrated` tinyint(1) NOT NULL,
  `DefaultTaxCodeId` int(11) NOT NULL,
  `CreatedById` varchar(191) NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(191) NOT NULL,
  `ModifiedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` longtext NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_employees`
--

INSERT INTO `hr_general_employees` (`Id`, `CompanyId`, `Code`, `LastName`, `MiddleName`, `FirstName`, `Suffix`, `Birthdate`, `Birthplace`, `CivilStatus`, `NationalityId`, `DepartmentId`, `CostCenterId`, `PositionId`, `EmployeeTypeId`, `EmployeeRankId`, `EmployeeGroupId`, `Leader1`, `Leader2`, `Leader3`, `Leader4`, `Leader5`, `Leader6`, `Gender`, `TelNo`, `MobileNo`, `PersonalEmail`, `CompanyEmail`, `HouseNo`, `Address1`, `Address2`, `Address3`, `Address4`, `Address5`, `Address6`, `CityId`, `ProvinceId`, `ZipCode`, `SiteId`, `VersionNo`, `Photopath`, `Tagline`, `Bannerpath`, `TIN`, `SSS`, `PHILHEALTH`, `PAGIBIG`, `SubsidiaryId`, `Migrated`, `DefaultTaxCodeId`, `CreatedById`, `CreatedAt`, `ModifiedById`, `ModifiedAt`, `Remarks`, `Active`) VALUES
('11d6db28-5dc3-3121-8b47-90e9068d3ef0', '01065adf-1407-3733-a87e-2c281866a9b8', '439', 'Monahan', 'accusantium', 'Angeline', 'DVM', '2006-07-02', '5702 Leonora Lake\nEichmannborough, SC 90861-1504', 'Voluptatem ex maiores voluptatibus quasi numquam. Rem autem ipsam aliquid voluptatum. Molestiae volu', 8, 2, 205, 1, 8, 9, 2, '6440e0d3-ade0-3f28-a9d8-6f2676156eaa', 'fa3a8eac-8e08-3733-b4af-ec96fbca0826', '1f75a2ec-2f59-3d75-8c18-cb5f2a52da12', 'b7c2a709-88e2-3a05-83cc-adbfaffd2c84', 'b6be0d80-84ea-38f2-9ca2-88d05eb9ff8d', '9c08203b-6ac4-37a7-877f-6a658802fc6c', 'Shawn', '5', '3', 'lera.ledner@example.com', 'dooley.gabriella@example.net', '6', '7390 Hoeger Motorway Suite 057\nNew Myrtiestad, WI 10237', '45736 Hand Center Apt. 982\nVandervortberg, OR 13528', '', '', '', '', 2, 7, 'xbin', 1, 1, '/6fbfc85545631b9b5fee0864ac319148.jpg', 'Object-based systemic matrix', '', '975', '269', '931', '060', 5, 1, 0, '6c30c696-20ec-3deb-93fb-727feafc2b35', '1999-10-21 03:07:13', 'c5059aab-3c6a-30c6-a71c-82eb944821ab', '2003-05-02 05:57:11', 'Molestias doloribus consequuntur corrupti voluptas non aut consequatur. Consequuntur delectus ipsum tempore voluptas maiores. Quos soluta sed odit repudiandae. Molestiae labore minus pariatur aperiam illo maiores maiores.', 0),
('44501207-57fb-348c-9d92-92531e6017bc', '3e2cc815-2072-38a3-a4d5-dc060b52e86f', '489', 'Klein', 'nisi', 'Amelie', 'III', '1980-07-20', '400 Aurelie Park Suite 570\nWest Rosettamouth, LA 60701-8161', 'Voluptatem quibusdam tenetur et iste. Vero rerum voluptas porro dolorem. Illo quis similique tempora', 7, 7, 1, 3, 2, 0, 8, 'd8d275f8-092b-3352-bd10-52942a0870e6', '0d71ab9f-7dd3-3cbd-9b69-760c42626133', 'c0e0a442-c775-32c7-8835-28bac38596c9', '3b0d9f8d-88cf-3b98-8432-2f2ed36638ea', '0332f7f0-c59f-3ea9-a96d-633adbe57041', '9247195c-65a8-392f-8fb4-7df484069b3f', 'Otho', '9', '8', 'waldo83@example.org', 'roberto94@example.net', '2', '11312 Zulauf Underpass\nWest Osbaldohaven, KY 73625-7600', '12396 Kris Meadow\nSouth Chelsiebury, WV 04002', '', '', '', '', 6, 6, 'ulha', 5, 5, '/1e612533e2239e5c7b457e7e8c5d959f.jpg', 'Secured responsive analyzer', '', '889', '009', '304', '397', 6, 0, 0, '15932348-10f9-33a9-9a73-986f53e1e21c', '1989-01-10 04:45:09', 'cfb64c21-c10f-34d3-8be6-e0db07aa9221', '1982-05-22 22:35:37', 'Velit facilis et dicta voluptatem odit esse ratione. Laborum modi mollitia ut sed molestias sed id eligendi. Temporibus doloribus in minima et officiis. Molestiae laudantium velit eaque praesentium optio.', 1),
('b99ad861-2f95-3550-ba3e-c5ea12997de2', 'b3c6f02f-b41f-3f43-b676-fa55b8cb7850', '662', 'Johnston', 'id', 'Travis', 'PhD', '1981-03-03', '07262 Name Views\nSouth Tyrelberg, IL 87522-4319', 'Voluptate et animi totam quidem modi mollitia. Praesentium molestiae culpa tempore enim et. Temporib', 8, 1, 155210, 4, 1, 6, 6, '9a30dc43-597e-3bc6-ac49-360ceda1d865', 'def6267f-e9f4-349e-9abe-c6556b934314', 'e4f3d8b8-88f2-3809-8afe-e15fe42a72fb', '52984f90-ded8-373d-8a9d-d57c76bec8f5', 'e717428a-64a6-332c-b53a-9d46edb86eb2', 'ead5d46c-2abd-3499-a5b4-6b6135f3bba7', 'Daryl', '8', '8', 'alvis26@example.com', 'osborne.yundt@example.com', '', '4433 Rashad Mount Apt. 847\nPort Leora, AZ 55942', '83570 Laila Walks\nDeloresborough, TN 97936-1344', '', '', '', '', 5, 9, 'uuds', 0, 3, '/5c9eb2ba8e56a97a297ad0df9ec7168f.jpg', 'Open-source scalable core', '', '246', '714', '858', '633', 2, 0, 0, '9919f1d5-f0c4-3334-b081-194f71c10604', '1981-04-06 21:37:15', 'ceeeb7c0-da76-3328-82b3-0a4cbbbb7126', '2015-07-01 23:02:00', 'Tempore ut alias aspernatur. Facere aut officiis culpa molestias facilis. Sit et nesciunt eveniet qui eum nesciunt. Et minima nisi ea voluptas rerum consequuntur.', 0),
('befebb47-49f3-3144-897e-f5b0ac90771e', '6f61cf4f-26d8-34da-9e3f-dd135a963367', '981', 'Nikolaus', 'in', 'Eldon', 'IV', '2004-05-22', '689 Rafael Vista\nLake Janetfurt, DC 84066', 'Facere in magni odit. Qui accusantium ut quo libero quod. Voluptas voluptatum voluptatem fugiat aut ', 4, 2, 0, 3, 2, 6, 8, 'd64e1877-9aa6-34bc-9060-f28204d84fd3', 'd863d225-ed3f-33a9-bd5b-08df06c0437c', 'f1a0c3a5-c1b3-37b7-bee1-1ebae4260795', '92878928-6d6c-3840-aba9-ac5b3950c6b9', 'f3324691-7527-3e15-a702-008cc5a20524', 'd203a0ea-b7fd-30f7-92d5-afb3330ef846', 'Adrianna', '2', '1', 'savion82@example.com', 'aurore.kozey@example.org', '4', '59616 Sedrick Turnpike\nVioletport, IL 79633', '8045 Wisozk Spurs\nEast Queen, CT 79535-1353', '', '', '', '', 1, 1, 'monb', 7, 8, '/0caa2ba62a0716c3d55176eb02da2020.jpg', 'User-friendly encompassing orchestration', '', '137', '333', '319', '143', 6, 0, 0, 'f04177d1-0523-333a-b658-e683b3c5cd14', '1972-05-31 11:08:12', 'c3b9bc7c-d8f5-3f3d-8d9c-d37603efeaaf', '2011-10-19 12:24:41', 'Numquam est qui dolorum ut reprehenderit. Natus error voluptates expedita expedita minima. Beatae unde eligendi ullam maxime ipsam aliquid ut.', 0),
('d5637936-b0cb-3ca0-b8fc-295a3c56407c', '79f30307-2983-3cc8-961b-8871c7f9bd23', '523', 'Pacocha', 'esse', 'Celia', 'PhD', '1970-12-09', '8000 Meda Ville Suite 374\nNew Desmondtown, KY 57904-5117', 'In facere rerum ut sit doloribus omnis est sunt. Aut repellat nemo impedit animi. Optio autem tempor', 6, 4, 4151804, 6, 2, 2, 7, 'a12924ff-122f-31e8-8ae4-b182baf1c6aa', '9e6d7595-2b90-354e-90eb-bb408fcb5678', '8cf1ccce-9829-3c9f-bd27-c483cd19d4e0', 'b5db0d42-3f21-3a72-9962-52f897d8f53c', '314bc14f-6e25-3e4a-9e80-3001980222d4', '3bd0e815-1d4e-3170-90e5-71a40959092f', 'Clarissa', '4', '2', 'ariel.padberg@example.com', 'wyman.abel@example.com', '1', '3440 Stehr Neck Apt. 381\nClairton, TX 92662', '08575 Borer Expressway\nSouth Astrid, TX 72896', '', '', '', '', 4, 2, 'rhce', 7, 1, '/ea5828cfd9ee3a950258d1e0e0e52f39.jpg', 'Extended bandwidth-monitored extranet', '', '867', '061', '395', '509', 8, 0, 0, '11f975b0-3466-3356-b2a8-12695a3bad05', '1972-05-11 23:41:52', '0a1c4119-5b0d-3030-a420-823a06c578b1', '2016-01-14 13:06:38', 'Voluptate consequatur voluptatum accusamus nesciunt. Delectus nobis dolorem reprehenderit ratione qui consectetur. Aliquam amet deleniti ut dolorem amet inventore doloremque reiciendis. Sint facilis totam ab enim et incidunt porro magnam.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_emptypes`
--

CREATE TABLE `hr_general_emptypes` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_emptypes`
--

INSERT INTO `hr_general_emptypes` (`Id`, `CompanyId`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'e2d61384-d44e-387b-9327-17cb41646b08', 'jmiv', 'quae', 'Dolorem nam architecto et qui ullam fugiat occaecati. Labore nesciunt aut consequatur nihil officiis qui. Placeat explicabo doloremque atque doloremque repudiandae.', '4bd0e259-8ccf-3977-afbd-702b5e7a637c', 'bb6a460f-7562-365e-be39-6b059fed2fb1', '1976-02-18 01:23:54', '1981-10-19 22:55:08', 0, 1),
(2, 'de650f77-2453-30f6-8639-dff7bc027b1f', 'nwnx', 'fugiat', 'Dolores quisquam quam quis sunt commodi molestiae numquam. Eos doloribus enim libero quo nam qui veniam.', 'bc9cbd22-88a1-3ef9-b423-2e4dee3ea4c5', '087ffc5c-0a29-37d4-a9e1-f2e53f1c70a9', '2000-11-10 13:15:35', '1996-07-19 16:28:20', 8, 1),
(3, '34fe4e4b-08f1-396f-860b-8ead8cda484f', 'ryfj', 'error', 'Maxime tempora ut neque cumque voluptate. Eligendi cumque ducimus aut numquam commodi veritatis eum. Similique dignissimos quam beatae alias commodi cum quod aliquam. Nam delectus rerum modi rerum quo', 'd50ea478-cd25-3d38-9623-942325fbd409', '81d899fa-7f4a-38cb-83fa-ca21258875f7', '1980-03-28 21:59:42', '2012-11-16 04:53:29', 7, 0),
(4, '3ea1b2e6-07a1-3389-b998-b4caeccf8c70', 'drky', 'perferendis', 'Optio et dolorem reiciendis eos reiciendis. Placeat numquam amet culpa exercitationem. Similique consequatur pariatur quae ut dolor.', '66568c9a-dbdd-318c-a591-4be2581f6ddd', '4b69550b-7d9e-3409-8b6c-9653417b7def', '2007-05-16 07:46:14', '2013-10-24 08:30:17', 2, 0),
(5, '19b630d6-4197-31ab-8b39-51e56944f663', 'nsxy', 'commodi', 'Sapiente velit inventore dolor ea quos architecto recusandae. Saepe recusandae consequuntur deleniti maiores perferendis. Amet non ex aut. Unde nesciunt magnam perferendis distinctio exercitationem ve', '12060655-175b-3bdd-9da6-7a6b8cf626b0', '493e11de-1180-30ae-bb2e-559de877dd55', '1970-05-12 22:14:02', '1988-02-15 11:54:53', 2, 1),
(6, '4ec0a274-7e6c-3bb3-b666-ff82fb981234', 'rivq', 'facere', 'Debitis ut suscipit suscipit quia aut nostrum vitae sit. Officiis deleniti deserunt incidunt nesciunt corporis. Architecto autem accusantium hic provident nam incidunt. Laudantium ipsum voluptas exped', '810cc6c1-33d3-3eb6-8009-4865e01945cb', '37f84675-af94-3785-9f0e-6320b992af62', '1988-01-22 03:00:06', '1985-10-20 22:04:37', 8, 1),
(7, 'e4bda215-2e4a-343c-b66e-53cc55c4086c', 'cmvt', 'rerum', 'Eos nemo voluptas placeat est culpa. Dolores et adipisci ut. Culpa inventore unde praesentium sed. Quis ipsam laboriosam tenetur ut dolorem dignissimos doloribus dolor.', '93bb409e-8d90-3bca-9ab1-a24f66cbdb49', '5bf7beb5-919f-371f-aa93-9641934b2680', '1980-05-05 06:42:18', '1990-07-01 23:12:00', 5, 0),
(8, '7d87e5ff-9182-311d-9c49-1cb34a3a34e4', 'ghid', 'architecto', 'Odio aperiam recusandae perspiciatis totam ullam et doloremque aperiam. Debitis officiis voluptas voluptas dolorum recusandae. Vel in beatae molestiae eum sed illum provident fugiat. Aperiam repellat ', '802c09f0-b98e-36d6-80e0-a151f349e3f5', '14824fb1-6c44-33e3-a264-f6d8ffe83145', '1999-08-05 16:42:49', '2006-10-08 02:05:42', 1, 1),
(9, 'bee7f25d-e085-3ff6-b8c2-e1c4e046a95f', 'fbmg', 'eum', 'Pariatur qui dolore ad. Labore vero hic quo dolorum voluptas architecto. Optio nihil voluptatibus quia perferendis et. Odit deserunt ut sunt magni.', '2daf40c5-6062-30e4-8067-e1db97cde7d3', '0dbcf90e-0e42-38d0-887f-a1ee905260cf', '2011-08-06 12:28:01', '2001-02-16 22:52:28', 2, 0),
(10, 'd22e4638-9e9f-37a9-952f-0c52b1a3990a', 'hmna', 'rem', 'Quis rem aut quam a beatae numquam. Occaecati quis est odit consequatur. Maiores aut impedit rerum enim eum.', 'a63a842a-9879-3db8-bc00-08db0c29a94b', '5dd97311-4d96-3eec-a9c6-d85d9e16640c', '1983-10-23 11:40:11', '1987-10-15 19:31:57', 1, 1),
(11, '7294f6a9-dd45-39be-a831-abe22c7af503', 'qqll', 'veritatis', 'Ut adipisci ullam ducimus doloribus consequatur deleniti unde. Ullam magnam nemo sunt aliquam sint consequatur ut velit. Commodi ut soluta impedit.', '6f493426-d0fd-3197-b675-ae3718ef775c', '550c580f-65c6-3102-8f89-f7cf3c1b9121', '2011-04-30 14:05:26', '1998-01-16 20:32:27', 5, 1),
(12, '7034fdbc-6c0a-306e-81ce-807a0ada5ce2', 'rpak', 'perferendis', 'Ratione assumenda dignissimos et aut nihil quia aperiam. Eos voluptatem alias labore adipisci qui aut laborum. Autem optio sint fugiat ea.', '7053ec40-9383-3a39-89b8-f7a738da83fd', '3423a852-ae84-310b-94ab-a637702175ec', '1990-01-18 17:17:12', '2004-01-21 08:26:24', 3, 0),
(13, '3ffd18b0-b22f-3e6e-a09a-eb303101c619', 'enjz', 'non', 'Voluptas ipsum praesentium voluptates necessitatibus quidem aspernatur ea. Quia enim veniam sint optio alias. Minus dolorem ipsa neque ducimus nam odio in qui.', '0e743658-2293-30da-a935-af6459b39c54', '29aea65b-6392-3fc3-8968-60e227f99116', '2017-06-05 07:37:50', '1975-05-31 07:49:44', 2, 0),
(14, 'bb735239-ce50-36c8-9ce7-602573bc9b54', 'woqc', 'molestias', 'Culpa vel quaerat qui earum. Est voluptate a et tempore qui eaque. Unde est dolore velit et nobis unde.', '99dd8e94-a9f6-39de-9a76-60738bb9eedb', 'ecf27d8d-88de-302a-885d-d59db49630d7', '2010-06-10 23:10:08', '2004-04-17 01:48:54', 1, 0),
(15, '580068da-3fcd-380d-a728-8165b1ab85f0', 'ogoy', 'ab', 'Consequatur dolores perspiciatis fugiat tenetur blanditiis quibusdam. Exercitationem corrupti non consectetur soluta quia aliquid. Sunt sunt voluptas est numquam. Omnis voluptatibus id soluta omnis.', 'dc2399a5-c6ad-3add-96e3-497a72122803', '63fee328-c680-353c-bb30-f8a60b7f3ed4', '1975-09-21 13:59:12', '1981-06-24 22:56:52', 0, 1),
(16, 'e4be2bf5-5780-36e7-8b0c-e745eb43ba9c', 'mbub', 'similique', 'Iure nam aliquam alias blanditiis in sint assumenda. Vitae eos labore consequatur vero ratione. Nemo rerum at eaque explicabo molestiae. Sapiente labore modi numquam impedit corporis.', '4bb95e64-8f45-368c-95a0-b3f51ee28a2e', '71a38012-469a-3842-8a7a-af10e280e1e4', '2017-11-07 13:28:20', '1989-12-14 23:19:04', 4, 1),
(17, '5d59332e-5915-3382-b1e6-c294b9bbac6f', 'vydv', 'eveniet', 'Quos et praesentium tempore quas iste. Ea harum quae dolore consequatur autem ipsa esse animi. Aut dolorum omnis vero enim veritatis. Eum iure alias magni tempora.', '2a64e4d8-872e-3650-9463-bed017c24ef8', 'b243342c-3d4f-3e10-b9d7-b15aebf31c7b', '1977-10-14 21:52:28', '1990-11-30 17:05:59', 7, 0),
(18, '6a183d48-1790-3b2b-8e8b-f02e099d705c', 'eajf', 'reiciendis', 'Architecto sapiente pariatur consequatur fuga nam. Unde labore commodi recusandae deserunt. Natus porro ex ducimus placeat in velit.', '9afc97f5-486e-3b1d-87a2-5e73da6ac451', '189c8b75-ed9f-3710-bc42-b5ed3097015f', '1979-09-14 01:24:27', '1995-11-09 02:37:07', 3, 0),
(19, 'f2009789-34ce-3db4-871a-6a28a4617f1c', 'uakb', 'libero', 'Eos esse temporibus modi exercitationem. Voluptatem nisi qui officia nemo. Officiis ullam eum nihil sed harum labore. Iste laboriosam ipsa voluptates dolor.', '9e519868-7723-335e-b896-6159b915a97b', 'bc84969a-529e-323d-85e3-9241291dba35', '2005-02-05 12:57:54', '1997-08-19 23:43:37', 6, 0),
(20, 'c8e115b6-32cc-371f-aed8-870095f9730d', 'nnfa', 'autem', 'Officiis iure illum nam et officiis excepturi. Unde adipisci qui quidem sunt. Praesentium exercitationem dolores officia cupiditate similique.', '146fcecd-072f-380e-8ffa-02e473f65dfa', 'f7c86c83-2d0c-3a19-8dd6-840a388c608a', '2016-03-15 08:03:04', '1991-03-16 02:59:41', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_leaves`
--

CREATE TABLE `hr_general_leaves` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `IconPath` varchar(100) NOT NULL,
  `BannerPath` varchar(100) NOT NULL,
  `ConditionType` varchar(50) NOT NULL,
  `ConditionValue` varchar(50) NOT NULL,
  `AttachmentRequired` tinyint(1) NOT NULL,
  `AttachmentRequiredSingleDay` tinyint(1) NOT NULL,
  `RequiredAttachment` varchar(100) NOT NULL,
  `RequiredApprovalNo` int(11) NOT NULL,
  `RequiredRemarks` tinyint(1) NOT NULL DEFAULT '0',
  `Notes` text NOT NULL,
  `IsEarnable` tinyint(1) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DisplayOrder` int(11) NOT NULL,
  `AddApprover1` varchar(50) NOT NULL,
  `AddApprover2` varchar(50) NOT NULL,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_loans`
--

CREATE TABLE `hr_general_loans` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Notes` text NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AddApprover1` varchar(50) NOT NULL,
  `AddApprover2` varchar(50) NOT NULL,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_offenses`
--

CREATE TABLE `hr_general_offenses` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_positions`
--

CREATE TABLE `hr_general_positions` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_positions`
--

INSERT INTO `hr_general_positions` (`Id`, `CompanyId`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, '2da6c875-be23-3302-99c6-44ba262c06bd', 'xtqf', 'rerum', 'Inventore magni eos aut provident. Fuga est consequatur est sunt aut magnam.', '1d35828a-ba11-38c1-833b-4a75b586a578', '433185f8-070d-3200-85b1-010f15b748af', '2001-11-17 10:25:37', '2011-10-06 07:34:10', 9, 1),
(2, '8d905c14-c2f8-3a10-bd3d-53189ff77d51', 'aqeo', 'laudantium', 'Itaque debitis recusandae ea sit nobis. Omnis optio aperiam voluptate ullam minus tenetur. Non itaque sint atque repudiandae quas. Sapiente id eaque suscipit possimus qui voluptates sed.', 'ae355216-d680-33f7-b038-b07fc03fba2e', 'a9b47be1-eb41-3829-a28f-e852260cdb2a', '1990-06-11 10:17:18', '2006-07-31 05:56:49', 8, 1),
(3, '1a8ed30b-e958-3f9c-9193-eb31f35e4efa', 'zjtc', 'voluptas', 'Earum est occaecati ut culpa vel vel eos. Qui reiciendis officiis totam. Quisquam eius qui vero aliquam. Quae et voluptas quas aliquid. Adipisci ipsa quia nam labore praesentium nobis odio quasi.', 'ca756348-a87e-31ea-8f74-8d11d8e4890d', 'e3bbf263-9f73-3995-b009-ecbe720ad9e4', '1986-01-16 18:24:51', '2000-07-23 11:01:49', 8, 0),
(4, '5fdbade8-b33b-3788-8feb-6c4b4aa33df9', 'cnob', 'sunt', 'Similique illum nesciunt dolorem qui mollitia. Quidem nam ut asperiores nostrum porro quasi. Quis ab commodi sunt placeat nulla. Suscipit aut esse commodi itaque.', '85744f2f-b544-3e2a-b350-030ec5a4872b', '4f200ce0-fba8-3380-b904-a04f041d01db', '1999-11-09 00:08:45', '2003-05-17 20:18:31', 4, 1),
(5, '33a79528-986d-32ee-93eb-7ee1cae55050', 'rbrf', 'voluptatem', 'Cumque culpa molestias id aut dolorem excepturi dolores. Et voluptatem quaerat enim exercitationem aut aut facilis. Nisi nihil et dolorem possimus consequatur et. Voluptatem atque earum sint sit dolor', '9147bb78-d694-3093-affc-9ba361c3ed7c', '05029cfa-ade0-3f76-baa2-bec3a5a815fe', '1972-12-29 20:18:06', '2003-12-17 19:45:20', 6, 1),
(6, '1ee252f6-5f93-3765-b400-492d0d809852', 'kelz', 'amet', 'Quae ut neque ad blanditiis quis magnam ex. Tempore nobis velit minima quis. Tenetur quasi eum ut neque nesciunt. Cumque qui fugiat inventore inventore.', '215d3703-d8c8-3e17-a771-517162472c19', '5b4d319d-a2b5-367f-ae23-0405fe583dda', '2012-12-21 11:32:06', '1998-01-13 04:35:07', 9, 0),
(7, '967cd4f0-1618-38c9-822a-111ea757f87d', 'qzha', 'qui', 'Ullam nulla animi laborum laboriosam. Tempora minima rerum nobis quisquam aut. Eveniet rem delectus mollitia consequuntur maiores qui.', '795daa07-8ec7-36e0-a3c4-b66b65d9b383', '28663b8e-24ed-3c73-8bc4-c583c5a0067e', '2005-01-30 10:14:44', '2018-06-17 10:22:48', 0, 1),
(8, '612ef4cc-6e47-3ee5-8618-3b770ab14360', 'eofb', 'sed', 'Voluptas recusandae iusto unde provident. Rerum eum porro enim voluptas et. Quas labore suscipit error beatae.', '8a0b3787-028c-3df5-96ea-0e6dae8974fb', 'c821a02c-df21-39c1-b907-6125a0624d84', '2007-08-10 02:56:10', '2001-11-22 01:07:31', 7, 1),
(9, '27a8a417-2130-3cf0-ab44-03ac1bdabe2c', 'oknd', 'sit', 'Fugiat alias et voluptatibus dignissimos quis officia. Minus consectetur nesciunt alias distinctio. Hic unde officiis et ut iure repellat consequatur nihil.', 'c670380b-6a3c-3d25-b067-3b31b33c7e01', '397a4b47-9207-3435-ac2d-c576aa80e4b6', '1984-06-22 19:41:16', '2011-11-24 19:51:18', 3, 1),
(10, 'd60728dd-e7de-3d09-bff4-b9aeb0bcff5e', 'zchp', 'aut', 'Pariatur quia eveniet ullam provident ullam cupiditate itaque. Corporis quibusdam est veniam. Aliquam aliquid fugit velit animi consequatur.', '8a24d2ef-7556-30dd-802f-32c77449d169', '902098c2-386a-3bf2-9c45-b7fe8e782dde', '1995-03-07 01:06:44', '1977-08-06 09:38:35', 7, 0),
(11, '4df2cc74-9510-3e50-833e-04ee18ab42b4', 'jwkc', 'cum', 'Similique eligendi maxime porro deleniti qui aspernatur. Ipsam fugiat veritatis nulla cum explicabo excepturi ut. Laboriosam adipisci porro ut natus ad ipsam. Nihil ducimus aut quas minima libero saep', '451443ba-6212-388b-a7c0-385ae619b012', '222ade8a-76a3-3fc2-b6b5-405e84b51749', '1997-06-18 17:18:03', '1991-11-29 23:27:10', 7, 1),
(12, '8c382c62-930b-354a-83c9-f491f5f3f374', 'aizb', 'omnis', 'Possimus doloribus quod animi hic iste et mollitia. Perferendis dolor libero earum accusantium harum. Quia sint possimus nobis molestiae.', '8340b45b-c447-3c38-846a-612134813662', 'e166439b-d9e1-3725-9eec-9ebb27a26aa7', '1974-05-15 09:41:35', '1983-05-12 02:27:10', 4, 0),
(13, 'cfd2b4dc-3d8b-39cf-a737-8da2ece0375e', 'onci', 'temporibus', 'Sed illum nulla ut excepturi in incidunt sunt. Voluptatem sapiente assumenda deserunt voluptatem non fugit. Aliquid cumque dignissimos itaque. Voluptas qui fuga officia molestiae harum voluptatem saep', '9c11371d-cead-3531-9317-07b2ab3970f3', 'b11a79b4-96c7-34a2-9f96-4bc2685ffd2b', '1979-01-01 23:56:01', '1998-05-16 10:14:27', 5, 1),
(14, 'd6d9a4c9-a1de-3434-9fc2-7e92680bff00', 'vhrb', 'illum', 'Dolorum molestiae et qui sit impedit dolores distinctio. Ea quo dolores reprehenderit aliquam et mollitia aut.', 'f720aee9-2552-3073-a40a-d46980175a6c', 'd74f651e-08f2-3837-a8b8-7f2119ffc6f7', '1982-08-29 18:14:31', '1981-09-05 17:32:57', 7, 1),
(15, '4283e768-133b-3794-b184-1e3d047131a3', 'lchb', 'qui', 'Aliquid deserunt nisi alias repellendus et qui est iusto. Eos distinctio omnis et quos error placeat ipsam.', '1bb4162b-b521-3bc2-9c2b-72ef1e4fd021', '4fd57d27-8fc0-3c59-a74c-cd6e9307a5f0', '2006-11-27 13:44:34', '1973-12-26 14:45:37', 8, 1),
(16, '141a1e2d-e43c-3384-ac8c-6f2a54d6cd22', 'bsvw', 'veritatis', 'Cum reprehenderit et autem non. Fugiat at non dolores repudiandae necessitatibus officia consequatur. Voluptatem eum ipsam eveniet eum nihil molestias. Nulla provident enim iure ipsa et mollitia.', 'caaecf1f-1ae6-32d0-894f-87b193a9faca', '9eddda25-022b-3a00-9215-7c1a6ff03357', '2006-05-25 00:28:35', '2016-02-05 15:04:29', 1, 0),
(17, '6900eecc-5441-317b-8f14-c63743c6eb09', 'blva', 'sit', 'Fuga ab fugit sit in voluptatum. Quibusdam voluptas molestiae qui nihil accusantium reiciendis consequatur. Modi in temporibus dolorum atque sint. Adipisci dolorum sed modi natus sed porro quo.', '851bde15-99b2-3363-8917-1c8b5a7964d8', '28157981-50ee-312b-85bd-6df0ba72cb64', '2012-05-29 08:24:10', '1989-05-22 06:46:44', 9, 1),
(18, '692c415c-38e0-3ce6-ae30-bc6e3e3abac3', 'gezq', 'sed', 'Et quis vel natus. Dolorum voluptatibus officiis iure. Provident sint voluptas laborum qui ratione dolor.', '9982b5a9-c487-3ec2-a6d1-af7f0b8c76c9', 'fc88826f-f24f-39e0-af0d-df265b5e22dc', '1999-11-12 23:15:49', '1988-04-19 17:16:25', 6, 0),
(19, '7bdafb33-936b-34c7-80b3-bf86de9fbcea', 'dhue', 'et', 'Aut sint sit totam est id et. Dolorem quaerat voluptatem eveniet.', 'bdeb9bd5-b9a6-3eb5-bf8b-0c710f598e52', '66dbb19d-c2d1-354e-9d32-cad6f9e0e70f', '1982-02-18 00:13:45', '1998-10-13 01:36:03', 8, 1),
(20, 'f974d124-620e-3e37-89d1-fbf495af9b61', 'ojeo', 'delectus', 'Ut minus voluptatem dolores eveniet odit velit. Omnis tempora accusantium recusandae quae cupiditate alias suscipit. Culpa corrupti occaecati quisquam aliquam doloremque. Quia eos praesentium veniam s', '9dc61d8f-fc3a-3a2b-892d-98770adb4579', 'eacbd59d-4139-3b50-a035-3025af910226', '2006-02-17 04:54:30', '1983-07-11 01:59:03', 7, 0),
(21, '88ddc1f3-6fba-3597-8547-c56bcb20aea1', 'ltlr', 'ut', 'Temporibus tempora molestiae dolorem. Earum dolorum placeat natus. Ut eos nemo velit labore. Laborum fugit quisquam minima hic ut ut eaque modi.', '9a348165-f701-372e-bbbb-cc0adfaea20c', 'a7b3ec97-34bb-389b-bed6-e32c05791585', '1974-11-23 19:17:18', '1976-08-17 01:20:20', 6, 1),
(22, '8bac2dbf-39ee-351f-b898-139a5275f4f8', 'lpmp', 'asperiores', 'Fugit voluptas autem placeat qui. Laudantium similique magni odio tempora ut officia. Ut est laboriosam magni omnis libero. Accusamus quia rerum iusto at soluta qui.', 'fb5ae7e4-c04c-37f7-b98a-5139bb77f284', '4e0db25a-c185-3469-96d8-698c37a883b8', '2003-11-22 10:56:23', '2018-01-11 03:22:34', 8, 0),
(23, 'ad81ead3-5073-3357-a782-9abc07b88016', 'wusm', 'non', 'Deserunt at consequatur officiis autem atque laudantium. Fugiat expedita natus quia autem iusto. Excepturi nesciunt voluptatem enim hic minima.', '0849683b-a595-3f4e-b28e-06b0776414e6', '10c40bb6-91e5-35ec-bbd2-bbb31d098eea', '1990-12-04 06:51:16', '1989-10-04 10:57:52', 1, 0),
(24, '14873e93-a8e9-3210-a361-117c676c89cc', 'ekcp', 'in', 'Voluptatem error fugit enim sed quaerat. Sit vel non aut omnis nemo id. Ad sunt sed laudantium voluptas dolorem quia. Eveniet occaecati temporibus similique et consequatur tempore. Deleniti voluptatib', '1d6fdb99-00e9-3a2d-9521-d8afdff7fc75', '6590a60f-2667-36a7-946c-390a7d1454a3', '1978-12-04 07:12:03', '1976-10-13 01:43:50', 3, 1),
(25, '0315fc6c-2c74-3b8f-8f2a-1cc4ec3c52b2', 'meye', 'voluptatem', 'Fugiat occaecati aut qui magnam voluptatum. Explicabo reprehenderit aut reprehenderit id non iusto similique. Et veniam aut aut laudantium. Temporibus ullam temporibus esse architecto quod aut asperna', '1b7a008f-38ce-371e-886b-4af343b9b1a8', '74d33828-b9fd-3797-b8f2-05187f72a46b', '2005-09-11 12:24:59', '2017-01-25 18:52:22', 3, 1),
(26, '47fa73d4-82b9-3b82-b36a-37271e4c287c', 'ogys', 'dolorum', 'Cum cum ipsum nobis voluptatum quos. Eius eaque est at praesentium maiores non. Occaecati neque eius laudantium optio tenetur modi. Adipisci quidem sed esse minima.', '9f66c23e-6e1f-362c-853d-dd05f7f1e168', 'c0dda923-f2fb-31c5-b808-c09f169e94d6', '1981-05-21 00:19:12', '1970-02-12 09:53:44', 9, 0),
(27, 'f366e344-453c-32aa-9a56-76c71b8fbcc9', 'xbch', 'exercitationem', 'Fugiat iure incidunt doloribus voluptatem. Esse corrupti et distinctio sunt. Atque repellendus culpa iste accusantium vitae in.', '86f1d282-678c-3fb7-9e30-170795ec082a', 'b8357680-c030-3ad4-a9c1-f07c3c5826a7', '1977-08-21 20:37:06', '2002-07-30 15:40:46', 6, 1),
(28, '72fd9f94-0ac6-3efe-8bc3-946315b1f315', 'ycca', 'quos', 'Est dolorum qui dolorum et nesciunt odit aliquid. Velit eius ullam aut totam illum. Vero occaecati eveniet ab quo asperiores at sint aut.', '3e7bec81-9d67-32a0-960d-f0be60c90136', '01ceab08-a0c2-3540-bcce-1a04719cde95', '1970-08-15 00:44:50', '1972-05-16 11:09:44', 5, 1),
(29, 'a1624523-3816-3566-8f5a-5af51e3dd50d', 'jijn', 'mollitia', 'Ipsam aut ducimus qui sit totam rem. Occaecati veniam est necessitatibus autem quibusdam.', '5e337340-ac6d-33ce-8b99-084a33c71993', '9e6cb4e9-77ed-339a-a408-45fe74c9abf1', '1980-10-28 07:27:25', '2006-05-26 08:42:25', 8, 1),
(30, 'f6e8b53c-05c8-3441-88b3-3e36e761e3e8', 'nird', 'qui', 'Ut sapiente rerum vel exercitationem inventore sequi. Illo aut ea expedita iusto. Qui ut perferendis qui asperiores assumenda veritatis. Hic praesentium unde repellendus. Nobis et labore et et quia de', 'bc8602ce-4607-32cb-a041-2c4b77975b47', '81837741-ec91-3294-9da2-b62cc0a959dd', '1982-10-09 23:43:24', '1981-08-07 13:00:30', 4, 1),
(31, '53d9d628-0356-34cc-bfef-a65767807492', 'ckih', 'sunt', 'Quam dignissimos aut nemo voluptatibus. Quia et quia at et error. Et beatae cumque perspiciatis ea et nesciunt.', 'c2abe6a2-cd02-37d9-96aa-ec5c1b3ab32d', 'ba6bc001-100a-37ef-8bd2-e217bae42442', '1978-01-11 07:05:32', '2007-09-03 17:44:46', 8, 1),
(32, '65f1bde3-e89f-3532-80a2-639e6c26be7a', 'slfx', 'provident', 'Quod rerum qui dolorem laborum totam. Illum et non sapiente eligendi sint error in. Illo hic autem temporibus quasi recusandae autem. Rem fugit numquam repudiandae autem.', 'b2606294-8d7f-3f33-a504-f8c0359bedf8', '7014fe06-02c9-37a2-9104-0c4d4d3db84f', '1976-08-16 21:41:03', '2004-08-05 20:31:23', 9, 1),
(33, '5b946daa-ac42-33b0-b74a-eea99ecf469d', 'lseo', 'corporis', 'Voluptates praesentium laborum nostrum rem et. Ut nihil illo repudiandae quam quo. Voluptas qui ut est voluptatem.', '68e141c0-fef6-3631-ab18-6240b445aa7f', 'e931c7bf-d50d-3ce2-9ed3-528e57363bbc', '2012-03-13 00:04:18', '1979-01-25 01:54:02', 4, 1),
(34, '7fa992d0-6ae5-39e5-9952-13d4f92f21f3', 'uzxw', 'nihil', 'Beatae quae enim maxime animi officia tempore et. Soluta est maxime aut cupiditate sed perspiciatis eos. Quasi expedita porro quas delectus modi. Vel adipisci id assumenda quo modi assumenda nihil. Es', 'd352d390-2575-33ab-94ce-a7cbf25262ed', 'b66b2167-60d3-359a-b558-c3c65bf353ab', '1977-07-16 02:14:19', '2015-09-05 16:43:51', 9, 0),
(35, 'b01250f9-0475-3af9-a238-da9204c5fe4d', 'micu', 'vero', 'Consectetur inventore deserunt et voluptatibus sapiente omnis. Quos fugit dolores laboriosam labore eum nobis voluptas. Nihil et dolorem saepe a quos ut. Voluptas maxime dolore qui repellat asperiores', '6c25df79-fa84-386f-8ddc-1e505229d904', '7b8d4571-8f64-3711-af2a-1e9313f2327d', '2014-11-27 16:28:25', '2018-08-25 22:30:13', 7, 0),
(36, '44b2369b-0f10-3538-9e43-a64b84288fd3', 'jajm', 'aperiam', 'Aliquam et fugiat architecto dolores. Et quia consequatur omnis. Cumque voluptate qui consequuntur vitae mollitia quia quae. Cum omnis in rerum voluptates sapiente.', '33422554-62c3-3d15-acc8-56f239ae5b19', '05ee8850-0192-388e-8f9c-de1e02fbd3e1', '1980-03-16 17:59:55', '1991-03-01 23:04:14', 1, 0),
(37, '7f0b238e-9614-34f0-ba7b-de125258342f', 'szlg', 'ea', 'Qui non mollitia est est. Vel provident id perferendis atque non. Commodi ex consequuntur quidem a iure quaerat veritatis. Et eum veritatis dolores et aut omnis.', 'acba2c06-ef2e-392e-8d49-c8441293f261', 'c4e3dc04-5a75-36eb-a0ce-1bfafec3ec7c', '2007-04-21 21:39:42', '1971-01-01 20:29:29', 4, 1),
(38, 'e95a6019-c3a6-35d4-8c77-9d17a264d990', 'vwrg', 'et', 'Dicta omnis quisquam sed at enim. Ut possimus beatae maiores quia quam. Aut mollitia qui vitae tenetur error veritatis voluptatem nihil.', 'e1f7d1c6-d7fd-3e98-a40b-16b0257b0d69', 'bce7dd69-3ce6-37d1-9ebb-b1374f27ca0b', '1988-11-03 02:26:37', '2002-06-30 05:50:37', 9, 0),
(39, '42d5db9c-eeb3-3293-ac6d-3f2eed4fced8', 'avfx', 'et', 'Voluptas vel impedit reprehenderit temporibus sunt. Esse sed et et sint tempora. Amet omnis dolores pariatur quo veniam inventore.', '4e8b72c5-7698-339e-886b-7cb992c890f8', '74f6dfed-cbe5-3d99-ac03-3b9749876364', '1978-10-15 18:14:33', '2011-03-31 18:26:34', 4, 0),
(40, '53535651-dffa-384c-a2ca-1baa8a558df9', 'klzn', 'nisi', 'Laboriosam sequi ab nam rerum quia. Doloremque et est quibusdam nostrum. Id eum cumque vel minima aut.', '8fa7c8ca-2564-3f6c-99d3-5688ae697773', '081b9a49-b087-3879-9d3e-87a4cdbc73d1', '1971-08-14 19:41:19', '1983-12-25 13:20:57', 3, 0),
(41, '4bb4152d-4e1f-34ac-9eb6-c7d520690ae4', 'vala', 'inventore', 'Cupiditate eligendi animi ipsum et. Repellendus fugiat enim illum commodi alias totam dolores inventore. Aspernatur iste velit rerum harum quaerat consectetur. Non dolore accusantium in.', '30037b4e-60ba-3053-85cd-87dc895ececb', '0262f05c-3f26-35d4-b2fe-cccac6c480bc', '1970-04-13 15:35:53', '2001-03-21 22:43:05', 8, 1),
(42, '5a4f7bf0-ff78-3104-83af-7973a0043a96', 'ghql', 'tempore', 'Modi dolore dolore ad harum animi necessitatibus sed. Delectus dolores quam corporis molestiae. Placeat doloremque enim consectetur officiis repudiandae repudiandae porro adipisci.', '0e35cf06-07a4-33a9-b676-0bd78020e452', '9d65c2c2-b43c-3312-9ec5-17fae769b01e', '2015-05-29 23:35:05', '2016-05-21 01:37:51', 3, 0),
(43, '215d5927-b6ac-324f-a5c8-398b38085af0', 'ukzq', 'laudantium', 'Ratione similique qui itaque ut quidem quis quo. Reiciendis omnis aut aut sunt. Eaque quia deleniti perspiciatis quis natus eum culpa. Dolorem adipisci ut sunt.', '9ed702de-cb18-3a1e-a2fc-7bd6123a3dc1', '4aa051dd-4a09-3d74-8ec1-782ee67059d1', '1980-09-23 19:14:52', '1983-12-28 20:54:14', 1, 1),
(44, '7d58f9d5-7797-3c64-b2e1-ca5916822f22', 'dlcx', 'mollitia', 'Totam nemo autem quidem mollitia numquam voluptatum. At facere aut eos et laborum est molestias. Nam natus et ut non voluptatum commodi sequi. Optio et dolore nisi.', '7be32815-878d-354f-886a-3e90bf5dda26', '30160e18-59fa-3fe2-8926-876b52d2a41e', '1981-10-20 20:26:25', '2014-02-05 10:23:46', 3, 1),
(45, '1ee64c22-e810-3407-93b7-59118446251a', 'mcfm', 'quasi', 'Aut temporibus itaque repellat sed nihil nihil voluptas. Consequuntur hic officia necessitatibus eligendi repellendus eos rem est. Dolorum explicabo vel omnis accusamus itaque dolor. Deleniti qui ipsu', '7df4ef74-38b4-3299-b435-1685f1410174', '6084901d-bd38-3067-9e63-e8d8548a362d', '1970-10-21 06:13:23', '1974-12-21 02:59:43', 7, 1),
(46, '01ba4bd4-8347-343c-8fec-08d916825208', 'gyow', 'ut', 'Consequatur beatae qui reprehenderit excepturi quia at quasi. Numquam nesciunt nemo et est similique reprehenderit.', '8f295cc4-30cc-336c-b96c-3a32f2a91573', '49df6ae5-0e3e-3299-816f-84228d524792', '1970-10-04 08:22:21', '1974-05-14 18:15:37', 6, 1),
(47, '226ecd25-25c0-3903-8e5f-1b069553f8f9', 'jora', 'aliquid', 'Velit rerum praesentium vel explicabo nobis assumenda. Pariatur et ut iusto delectus. Iusto deserunt eum aut minima molestiae eum sapiente. Minima laborum veritatis laudantium qui impedit.', '9f11af88-655c-3b27-a8a8-c907b82b7ed0', 'c811d13f-85de-322a-a288-9dfe0caab190', '1978-09-21 14:31:57', '2005-08-25 08:17:17', 0, 0),
(48, '4c970583-aea1-3a9c-82ae-b6223903764d', 'rkgd', 'accusantium', 'Quis dolorem modi quisquam. Quia sed et et id quisquam. Nostrum autem sit in sunt sed exercitationem. Quam omnis minus beatae voluptatem enim culpa.', 'f8d2c492-0e04-3a1c-95a4-4fbf7605e79e', 'd00d8176-43fd-382e-b68a-d828f0fbc912', '1985-04-26 01:52:44', '1983-07-22 19:39:40', 1, 1),
(49, 'b318df4e-499d-35bd-8b21-dad938fb8042', 'chmm', 'totam', 'Doloremque hic eum debitis iure. Consequatur quidem aliquid eos illum atque aut. In magnam nemo eos deserunt. Est odit aut maxime.', '99ad52d9-ff09-3d04-afaa-dd2dfeed7d73', '71342b9c-4e71-3783-90a4-d91a69ab9ef5', '1982-04-19 19:54:40', '1985-10-04 20:02:06', 6, 0),
(50, '74331349-26c7-3c6a-a819-ce62d989999d', 'xrde', 'voluptatem', 'Reiciendis nemo ut odit nihil quam facilis. Amet delectus aut explicabo impedit. Nisi eum impedit praesentium et quis. Quidem eaque blanditiis officiis tempore perferendis ullam harum. Est sunt accusa', 'b93f95a6-688f-312f-ac33-a9b4bd1df989', '2a4cca19-e5b7-3942-a5c7-046cf8307963', '2012-03-29 14:42:03', '1974-09-28 22:47:44', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_ranks`
--

CREATE TABLE `hr_general_ranks` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_ranks`
--

INSERT INTO `hr_general_ranks` (`Id`, `CompanyId`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, '8ef5143b-af32-3440-8cb1-cfe84b33d238', 'hlyq', 'porro', 'Vero praesentium id ut consequatur in consequatur est. Laboriosam illo nobis suscipit possimus autem.', '1f1ff73f-6123-3082-a14c-e31dc8341d59', '5b402b89-ae27-37e5-a144-da97ac2c0179', '1971-12-04 07:19:31', '2014-01-31 13:18:21', 9, 1),
(2, '3958244b-242d-3724-b701-ec8fff2bf827', 'euwf', 'eos', 'Perspiciatis itaque fuga consequatur illo dolorem iure. Vel numquam inventore maiores laboriosam. Explicabo amet deleniti esse quia reprehenderit.', 'e32b2251-ece4-3cba-ac73-c23f67927f55', '6d18c366-0b12-36bf-abec-e2e64426d2fe', '1980-03-23 09:41:11', '1999-01-25 20:34:15', 5, 1),
(3, '5e48307e-0e48-3b53-b6f7-4e806c03ff12', 'wnkx', 'est', 'Aut ea porro asperiores. Ipsum est qui aliquid accusantium in ab nostrum. Quisquam iusto autem saepe in. Et odio eum et impedit molestiae reprehenderit vero.', '08ab1075-26db-3246-977d-a8b94b0b82de', '9c1e4ef4-4d59-3f0f-ba6d-2053b76575e6', '2000-10-16 18:41:09', '2011-12-09 15:37:22', 1, 0),
(4, '1245e2ad-c485-3384-8f3c-06e3c4e84559', 'tuqd', 'iusto', 'A dolor odit iure animi facilis. Veritatis exercitationem aut modi sint. Quia dolorem illo nihil ea.', '917d3d5d-3a60-334f-adf8-1bb00423c91a', 'c7ffb4a4-4029-3c33-abd5-281e61c58465', '1999-10-15 10:36:47', '1985-11-25 06:15:51', 6, 0),
(5, '3d714f88-d454-3d17-b53f-350a39f7dfe5', 'diue', 'corporis', 'Tempore eum ipsum repudiandae eos eius et beatae quaerat. Quos aut sed sunt assumenda velit cum nam. Dolores ad qui aut odit officia non sunt qui. Nulla accusamus non velit quia. Iste harum labore con', '550b7ebc-c416-35c1-ad55-faa0e96356ad', '9d567191-4608-31d1-beac-48f432e5207a', '1974-11-24 14:19:13', '1984-01-27 16:47:03', 3, 1),
(6, 'df236b6f-f1ba-3876-87d1-b625b55b2a01', 'yxyu', 'et', 'Delectus voluptas ullam itaque deserunt magnam aliquam. Nihil accusantium eum nobis rem rerum expedita. Temporibus error eos impedit nemo facilis corrupti. Ipsam necessitatibus ipsum quia repellendus ', 'aa676545-1dcc-3f73-ad8e-cfd76c3a85da', '87cde155-f098-3aff-8cb1-fd9a06c562a1', '1999-06-20 02:39:34', '2018-05-13 23:06:55', 1, 1),
(7, '3b214b5d-538e-34c1-a3c1-4999b3ccdc6c', 'myab', 'autem', 'Neque consequatur eum et harum et necessitatibus quia. Porro enim non cumque incidunt inventore mollitia mollitia. Necessitatibus est aspernatur debitis placeat.', 'e798f3e3-f242-31d5-8964-48d442edf8f5', '83ab9159-5b47-3224-89a0-86a758f1d861', '1977-07-29 06:00:45', '2002-05-11 07:40:10', 3, 1),
(8, '32b9defc-6f88-3403-85f7-81698d3e3197', 'apwr', 'autem', 'Sequi inventore sunt iste repellendus consectetur. Facere magnam enim nihil eveniet accusamus earum eos enim. Consequatur quis ab quia adipisci occaecati eos. Non consequatur omnis quisquam velit.', '54b2445a-d66c-3dd6-939c-60149eb57c51', '77e57801-1940-38f2-a042-ac6494b804c4', '1990-07-04 10:49:17', '2011-10-09 03:37:13', 4, 1),
(9, '97faf560-2b89-3bb2-b962-0160fcd8025f', 'gwsp', 'aut', 'Ducimus inventore consequuntur dolorum nam. Repellat id iusto odio aut rem asperiores praesentium. Quos ut in laboriosam ea harum facere. In numquam quia ex nemo.', '32f5812a-aa69-3f06-b39c-231fbdc84a01', '53087c5f-7c42-34fa-b10c-084a05ca56e4', '2008-09-05 09:21:33', '1976-03-14 09:19:15', 7, 0),
(10, 'b0630b5f-ac29-394e-beb6-aea48c52731d', 'wqyo', 'aliquid', 'Quasi aperiam temporibus laborum quia nulla. Aliquam est quo libero dignissimos consequatur consequatur et. Et provident vel laborum.', '5713bea1-5b1f-3aaf-ac22-9d83e931473e', 'b2600ec9-89ed-3617-ba7a-9a5e5d9d53f2', '2017-11-29 12:05:49', '1994-10-11 20:28:22', 5, 1),
(11, 'ade363cf-6da7-3015-828f-42ac487a53a5', 'ryyw', 'sunt', 'Libero debitis et est quia. Debitis quis id repellendus iste rerum quia.', '16bc5ee4-0863-37c5-b251-f6b67e5d5806', '369201b0-9b84-3d0b-81a5-3dfa58967001', '1989-08-28 12:52:39', '1992-01-08 12:25:00', 6, 1),
(12, 'cd578b2b-7540-3d30-b420-4411a069c769', 'coac', 'corporis', 'Autem sit rem autem reprehenderit minima dolore ipsam. Sunt qui dolores qui harum est ut aperiam provident. Ducimus officia natus recusandae sed cum amet magni tempora. Omnis perspiciatis error illo a', 'e8b785d9-06c0-32fa-b5d7-35e7e8e33a98', 'e85fe5f6-d2b4-37d4-8be4-3c6896081de4', '1994-07-09 23:29:56', '1983-07-30 19:41:44', 3, 1),
(13, '8023164f-36ea-3074-8854-9182e800d52a', 'exjj', 'similique', 'Totam aspernatur expedita eius aliquam. Molestiae dolorem nulla aliquid autem nisi. Ut autem voluptatem repellat laudantium.', '95fc4714-a133-3811-9f33-d3ad98dfff67', 'b5d801ca-789c-3af0-87d9-805854d78ff2', '1980-01-20 22:34:16', '1990-01-17 16:41:12', 3, 1),
(14, '8adf5661-5abc-3e49-9bfe-a4121176f5b6', 'xbcv', 'consectetur', 'Nisi qui quia asperiores soluta earum impedit rem. Necessitatibus est quis aut earum dolorem. Magnam esse est modi qui. Fugit amet dolores non eos est aut minima.', 'c7f01123-09ed-3690-891e-327cdc133af1', '2caa52d0-3b29-3807-bedf-27945718ca99', '1991-07-30 02:43:39', '2011-07-18 15:17:58', 8, 0),
(15, '430fefab-b31d-3709-ac33-d2284391b9e7', 'ucac', 'itaque', 'Voluptatum hic facilis modi quia quasi est. Saepe suscipit numquam mollitia reiciendis eaque pariatur. Soluta debitis explicabo vitae deleniti magnam aperiam culpa.', 'f8510140-ad82-3b98-88a1-1499a6e0fe7b', 'ee73503a-e8ea-3eaf-94ac-db925a6aa8f6', '2005-07-10 23:05:13', '1992-09-07 00:45:45', 0, 1),
(16, '0fc4c9f4-e7d2-3e0c-a6b8-9dcea50acf74', 'monr', 'incidunt', 'Recusandae dicta dolorum voluptatibus. Voluptates qui sunt enim et fugiat et quibusdam recusandae. Impedit eos rem officiis sint magni suscipit. Aut aut architecto nihil consequatur.', 'a8015a09-538e-3fda-80e4-be7f950c8cf8', 'bd33bc11-0d6f-3323-8f99-81e2d9008391', '1991-07-29 00:19:31', '2006-10-05 06:34:53', 4, 0),
(17, '61b8714b-f13e-3107-8850-867813d7be1c', 'nxrz', 'pariatur', 'Consequatur nam mollitia dolores numquam commodi possimus. Aut recusandae et et non sed dolorum. Sapiente voluptatem occaecati perferendis aspernatur autem eligendi fugit. Officia saepe voluptatibus q', '5e14a172-3195-37de-87b1-e14a8befccb6', '0c661269-861a-30f8-a12d-b31f85413acc', '2009-11-19 14:00:30', '2001-04-15 11:13:19', 3, 0),
(18, 'f06fb280-6fdf-390b-a9fe-878b36ec7f19', 'bzhs', 'dolorum', 'Ea et quibusdam tempora magnam. Aut facere commodi quas occaecati illum. Ullam suscipit dolor incidunt voluptas laboriosam quae dolor. Recusandae omnis molestiae qui blanditiis omnis aut dolores.', '12f72988-f8b7-3525-8ad3-1bbba4b6784c', '6583c257-4d32-3387-93d7-430947c37712', '1988-02-25 10:20:20', '1982-07-02 22:45:13', 3, 1),
(19, 'df980b8d-b252-3b8e-91e9-3973e9f1d85c', 'qkhl', 'aut', 'Fuga consequuntur debitis veritatis debitis aut ex. Cumque dolorem voluptas est. Et itaque eum ut molestias. Rerum rerum rerum ea illo at autem animi. Facere velit et quasi libero.', '78818519-13b8-3a8d-a451-15a8bb1610a1', 'e2e0b2c7-786d-3279-b298-7bd89a09694e', '1979-10-22 08:30:19', '1990-09-21 11:59:35', 5, 0),
(20, 'f2469700-d5ac-3eac-a92f-c57658fd3fa6', 'abhd', 'accusamus', 'Quae voluptates ipsam quia et blanditiis temporibus eveniet. Voluptate officiis repellendus vero deleniti distinctio eligendi.', 'da93edba-349f-37f5-a162-4f40e7950cc8', '47ad6dca-06c2-3029-a4b5-ce2c88fbf7db', '1992-12-19 00:09:13', '2013-08-01 15:56:16', 6, 0),
(21, '2af83b0e-efce-377c-adc9-9dcc5cf7d78c', 'wtzc', 'fugit', 'Laboriosam minus dolor repudiandae quasi. Autem ut rerum labore aut laboriosam mollitia.', 'b506dc08-7e7e-3723-96a7-aa61621d1fb3', '4df62072-897f-390b-9ca2-3ab50bdf9f18', '1996-11-17 11:30:28', '2000-04-19 11:35:56', 8, 0),
(22, 'e85892cb-4df6-3e48-82e7-088ed691ebdb', 'rosc', 'fugiat', 'Dolor quo atque autem sed dolore. Magnam maxime et non nisi eaque aut libero. Et ut sed reprehenderit corporis.', 'dc3d0d6f-49fb-3e9f-91fa-51546897c7e2', '4bdf196d-1756-3e03-9276-ba027926bc85', '1974-11-22 19:40:16', '1983-01-30 12:24:33', 9, 1),
(23, '42c38865-ec03-32fd-9416-6fcb6fcc0e70', 'eqgp', 'numquam', 'Iure hic et optio accusantium omnis qui. Iste eius omnis nobis. Et aut non dolores commodi possimus molestiae.', 'f0cfd917-9aa7-3eb0-8ae8-53a6cbb948ce', '963881fc-817a-38cd-8237-30043b9429a8', '1999-03-20 01:32:21', '2015-02-08 05:47:49', 3, 0),
(24, 'd802bac3-ccb6-3938-b54a-18623d57fc09', 'abuc', 'quae', 'Sed sit rerum ex est vitae blanditiis assumenda similique. Iusto adipisci et voluptas doloremque et. Doloribus consectetur eius quo blanditiis non qui non. Commodi reprehenderit reiciendis officia eaq', '693df629-60b2-357f-94b3-3fddc5132a19', '6591f34f-721d-3635-a858-68b69582a6a0', '2014-04-14 07:32:36', '2013-09-04 09:20:08', 6, 0),
(25, '6c0326b9-e6f5-3685-a93b-6c19bcb561cd', 'lama', 'laborum', 'At iste quibusdam temporibus mollitia in accusamus. Labore hic aut dolorem totam voluptas deleniti voluptatem doloribus. Molestiae qui occaecati qui.', '876cbe71-2732-3893-9aed-5fd1e3710cb0', 'c7d54fa5-0100-3acd-ad57-d54c8eda7f6a', '1999-09-23 21:33:42', '1989-12-26 17:17:56', 4, 1),
(26, 'fa6c1899-ee5f-320c-969b-45bbbf718497', 'usug', 'vel', 'Voluptas qui et eveniet consequatur vero quidem dolore. Amet incidunt odio veritatis modi iusto similique. Dolorem beatae quasi suscipit id sit voluptate cumque.', '788c6b66-046a-3536-9e2a-315b4a9916c6', '935e32cc-07c0-35ad-a4db-802f0fa406c3', '2013-11-26 06:41:00', '1985-04-04 03:05:58', 1, 1),
(27, '24b0fa5d-d69b-3a13-ae2e-57b951de8c97', 'avqe', 'hic', 'Et saepe modi blanditiis labore. Animi omnis rerum perferendis explicabo consequatur. Aspernatur saepe officia esse labore iste. Aut aperiam qui et sint.', '8a484fd4-7137-3e55-a6ab-db1ad984f3ec', 'b69ec768-b139-388e-b895-af4d8d67c862', '1977-05-14 20:10:15', '2006-02-23 10:02:15', 0, 0),
(28, '648c50c6-9afb-3820-b7ea-d8b28dc6c631', 'jyhn', 'ipsam', 'Sint iste odit sed excepturi et. Minima suscipit eius atque velit optio dolor. Explicabo voluptas praesentium ut et.', '7d9bec2f-3081-3bea-8b9f-6152af76943b', '87d1abff-f11f-3934-b8a4-4d201d769553', '1987-10-27 03:11:43', '2011-10-18 23:29:21', 5, 0),
(29, '90281535-e544-35fe-b5e0-2bb42b14c548', 'ueaj', 'praesentium', 'Sapiente rerum quia corrupti quis nihil possimus similique. Dolor et sit dolore officiis doloremque deleniti. Ut quis nihil saepe.', '07527946-706e-30df-89d5-cf79da0cb1d0', 'e2b4b5e8-2080-3f2c-b7c4-dbecc73b82c0', '1995-01-14 21:22:54', '1982-03-31 16:14:25', 9, 0),
(30, '832e919e-9e53-3976-9dbd-71a67c199001', 'lxpe', 'nobis', 'Facere et libero error soluta velit iste. Id vero est beatae quod. Mollitia tempore non quis accusantium iusto reiciendis.', '4198005f-09eb-3a29-b2da-7912e7f0baf1', '13328ce7-c9e8-3357-89fb-f51dc845eaa8', '1979-03-29 14:09:03', '2004-05-07 02:00:26', 3, 0),
(31, '15ab8498-a4dd-3efa-b566-63dcb4ff5d7a', 'wrua', 'officia', 'Deserunt nobis asperiores rerum asperiores. Et quasi non quis et ipsum enim consequatur quo. Quo ut nisi temporibus exercitationem est magni.', '2d67cd5a-bbf2-3673-a695-40604ef754d6', '5eaf2b49-a3c6-3092-a520-26c6edbee5a8', '1996-12-25 06:36:28', '1994-04-17 04:09:07', 8, 0),
(32, '69b93450-1993-3cb1-a792-bb8eeb82aa4c', 'uubk', 'excepturi', 'Eos ducimus est voluptates ut error. Quos ut culpa iste. Omnis tempora quia provident ullam sed.', '38bd9010-3723-3b4c-9744-79a439dcb046', '41b8980a-3a20-36ef-9555-4cbc2df52ba8', '2013-12-02 18:39:09', '2012-04-30 09:35:00', 9, 0),
(33, '4e4141b9-2011-3edf-98cf-68c5c7f88605', 'cifr', 'est', 'Itaque et natus maiores. Sit optio et rerum minus. Aspernatur quidem dolorem ut reprehenderit ut exercitationem. Ipsam adipisci aut voluptatem voluptatem aliquam adipisci et.', 'd405e1d7-256d-3408-a77f-005be1eaab99', '6e7a6611-400b-31c8-83c1-ecd78bb8de93', '1981-05-20 20:23:01', '2018-05-06 15:23:13', 4, 0),
(34, '6137b218-6520-3176-8e07-417a9b14cea4', 'ciir', 'quia', 'Rem reiciendis occaecati quae tenetur facilis quis nisi. Sapiente cum sunt quae natus quidem maxime qui autem. Aut earum iste velit quasi.', '653de82b-3025-317d-aedd-42c57cf83c8d', '80abdf50-d215-3086-ac1a-c2085fda0440', '1980-09-25 10:44:52', '1986-04-03 05:43:20', 3, 0),
(35, '3bcbbe8f-09b5-3cd4-a3d0-82c416d574c0', 'xrsd', 'ad', 'Dolores excepturi mollitia et quod et voluptates. Enim nobis voluptates alias quia. Dolores necessitatibus est et eum sunt.', '4ae902df-9b9c-3a0e-9cdc-862ae565548b', 'a50306ee-0bae-3ab6-90b0-16a2dd6a5973', '1973-03-01 11:11:55', '1975-04-28 15:56:31', 2, 0),
(36, 'b43b0aee-bded-35e7-a610-36c6647c7cbf', 'ocxb', 'quaerat', 'Illo consequatur ullam cum ab veritatis sunt ipsum. Quidem velit cumque sint corrupti. Et facere magni est beatae laudantium consectetur. Asperiores placeat quia voluptas praesentium error eligendi. L', 'b6634993-f7a3-3b6b-afd9-5e3bb64cbdc4', 'bb492da9-f665-3a47-8363-e10d199f5694', '2015-06-26 14:25:06', '1988-10-21 17:18:06', 7, 0),
(37, '755a763e-a9df-3a2e-be23-83d6640e2571', 'bpax', 'voluptates', 'Consequatur quo animi id. Consectetur est qui nemo dignissimos aperiam blanditiis quia dolores. Et modi et molestiae error velit vitae. Repudiandae est provident dolorem maiores.', '7a162a72-84b2-3af1-aed3-a25efbe82d03', '92fe44f9-8df1-31f5-9a6c-ef7f9fa7a029', '1995-09-14 02:21:19', '2006-11-06 21:20:30', 9, 1),
(38, '52111793-fc15-3106-9d10-4a07630dd578', 'mwjz', 'inventore', 'Dolor totam in sunt voluptatibus minima. Consequatur rem ratione quasi aut ab. Dolorem excepturi sed praesentium consequuntur quis qui sit. Est porro est repellat accusantium ullam voluptates.', 'cfb60f57-66bd-3051-88ed-c71c64f5c1dc', '599c3aac-d2fe-3e04-ad8d-12cb87a86b98', '2015-10-25 23:22:07', '2011-01-20 10:08:26', 5, 0),
(39, 'bcc0ec9c-77b8-36a0-ba09-f0cb5d1fd291', 'kuhd', 'saepe', 'Architecto qui aliquam alias et sit necessitatibus. Sit qui est ipsum architecto sed. Iusto impedit et aut voluptatem ut. Explicabo vel optio consequatur maxime nulla. Id doloremque eos veritatis quos', 'c694fce1-4501-3f82-bf57-74cc5c3dc4cd', 'ec470ae1-1e4c-358a-92c8-636f7bddf2dc', '1981-02-20 03:52:32', '2008-12-16 05:16:26', 2, 1),
(40, '5afc664c-9c3c-39bf-b10e-36ae69f1b58b', 'qqqx', 'eos', 'Asperiores amet et aut adipisci animi sint omnis. Aut occaecati nihil est rerum recusandae. Quas hic consequatur sint aut laboriosam.', '7848a549-96a9-3f5e-88d4-5afd4263c29a', '5ed2b8b5-76bf-3ded-be25-d8dc66e6fc4d', '1998-12-12 07:33:47', '2003-01-13 09:02:34', 2, 0),
(41, '48862d24-f887-308f-86f2-31aea44612e7', 'dhia', 'sunt', 'Atque qui et tenetur quasi quae. Fugiat enim omnis qui perspiciatis consequatur officia. Est quo qui quam cupiditate sunt dicta qui. Cumque tempore consectetur exercitationem ab magnam voluptates.', '75b8d990-becc-3ce8-a249-8de0a6ad9ed3', 'd5a3bb76-a967-3cfe-b0a2-77d44dd35613', '1984-01-24 23:34:37', '2009-11-07 15:00:22', 1, 0),
(42, '41d11a9b-0a39-3ead-8190-7ead82a78a14', 'glrs', 'quasi', 'Eum omnis quo maxime assumenda sapiente. Voluptate aut aut nam pariatur omnis velit. Neque quisquam et quas explicabo.', 'fc9f1a5d-6eef-3f9b-87f7-f1feb9d262b4', 'a0e8d5c8-6298-3a5f-8d76-36e651b98517', '1976-05-21 09:16:46', '1988-12-24 05:35:34', 3, 0),
(43, '409150a3-35c7-3a5c-8d8a-8b6a018b5bd2', 'besv', 'et', 'Alias cumque et voluptatem repudiandae ea vel. Officiis in veritatis ducimus occaecati natus. Expedita quia inventore consequatur quis.', 'f1b80fa9-1ecf-3b7c-aa10-a6ba1928f05b', '8bcb6564-7282-32e4-b1a2-b40a101cee3e', '1970-09-21 01:43:11', '1993-12-19 07:24:24', 7, 0),
(44, '592a69f0-3c3a-3ae2-be02-63d8ce091aab', 'ggim', 'qui', 'Quis animi cupiditate necessitatibus quia qui quia. Quaerat totam et omnis ut perferendis aut. Recusandae nisi labore optio. Voluptatum error vitae dicta quis minus non quasi. Voluptatem facere conseq', '35b968f1-5a82-3b2b-95fe-4ca2f56373cb', '5e9df102-dd72-3786-8744-eb28e9a4f1a8', '2017-09-19 01:10:37', '2012-07-24 21:01:12', 2, 0),
(45, '82cb06cb-28ea-3a6c-8f9f-065da8e90268', 'tvlu', 'consequatur', 'Qui autem in veritatis molestiae fuga sit. Qui rerum hic atque voluptas minima. Voluptatibus voluptatem atque nemo sit possimus soluta et.', '3d1f74a7-c5c9-330c-ad1f-7e60f0956d90', '99c07a8f-72d1-35ee-99d4-3d5416567eee', '1996-06-26 04:27:07', '1998-01-25 23:38:01', 9, 0),
(46, 'bf9eeeb0-069a-30f6-97ff-12c0fa2d04f7', 'vxxv', 'qui', 'Molestiae autem occaecati tempore vitae fuga. Maxime soluta numquam sequi quibusdam. Odio rerum voluptate numquam quia dolores.', 'd9047be0-3978-353f-9e32-53d3f851c721', '66468c3f-5e9f-379d-bd55-90b45c5ad03f', '1971-01-28 11:53:52', '1979-05-01 05:43:21', 6, 0),
(47, 'df2dca8e-242b-3fbf-a32e-98b7fe336cae', 'pajj', 'doloremque', 'Consequatur dolores quo porro voluptatem aut sit. Animi perspiciatis qui voluptas ullam et dolores culpa. Qui voluptatem nostrum et illum nihil tempore fuga. Delectus deserunt corrupti quo.', '32219554-47cb-3b59-85af-055e0a2987fe', '89d3039e-dadf-3c94-bfb5-e6262f9ba9c8', '2015-04-07 13:38:33', '2016-12-20 02:10:05', 2, 0),
(48, '2b2683d5-8bbf-3a42-a510-ba37c9593da4', 'imzt', 'inventore', 'Consectetur similique libero rerum sed et ex quas. Pariatur neque temporibus odit et. Occaecati quisquam voluptate laudantium ea a.', 'dbc8ddc4-9934-3fb0-9ad0-4d05cd042604', 'eaf02ca3-e430-3cb5-a200-26fc09bcf662', '1986-06-15 14:34:09', '2008-11-12 12:07:10', 1, 1),
(49, 'eecaa8d9-f6b6-3819-aa18-1d32d90caafa', 'mvsp', 'eveniet', 'Et enim ducimus et. Suscipit et voluptas qui est ut non maxime. Non aperiam quia animi quam consequuntur fugiat. Beatae corrupti et magnam est temporibus.', '13e596a6-b6ac-3bbd-a564-a38d7e9fd6c7', 'b89c773e-fde8-38e0-afad-3583cead3588', '2017-11-07 02:12:39', '2013-06-16 13:57:49', 5, 0),
(50, '972b0ea5-7431-33fc-a3bc-dfa3a027d87a', 'vyzo', 'nisi', 'Eaque omnis quam odit dicta qui. Sunt sed nemo est suscipit. Dolor et et autem at mollitia quis aut.', 'ebf72342-970b-39cf-bf70-54cc2082a2c1', 'a1ebaf20-a6b1-3dd0-974a-399050d0edae', '1984-01-30 16:58:23', '1996-11-16 03:18:50', 9, 0),
(51, '783dcf0d-8efb-38b3-b4d1-bf6582c18b69', 'utzo', 'iste', 'Nihil corrupti vitae quia. Tenetur voluptas nobis ut quis repellat praesentium soluta. Doloribus dolores repellendus quia cupiditate.', '77e18e4b-543d-3832-ac96-2f1f752d3be7', '03854051-1d42-3a7f-a132-54a48359054e', '1986-09-19 13:46:44', '1979-03-11 06:14:01', 0, 0),
(52, '3789ae45-0080-3e54-96a3-25a654a2e0b9', 'fcvx', 'id', 'Iste sed et quae ducimus. Quas neque non sed. Architecto aut et enim quia. Neque nihil maiores est quibusdam in.', '354b6440-b552-3dd4-aa27-3855c42a68b2', '0c2eb012-715f-3751-8e68-17ae31aa53ae', '2008-08-18 08:32:48', '1986-07-21 21:35:59', 4, 1),
(53, 'd9e5dac5-06ee-3eb2-859f-4ca0429b3cae', 'macc', 'rem', 'Soluta quae perspiciatis voluptatem ab iste iure qui. Molestiae modi ipsum distinctio eaque. Et est sit quia fugiat laudantium.', '16c8530f-baac-3e2b-82d1-b756d7ae56df', 'a64fd5d3-14ee-36ad-895a-f1a2e128aa01', '1995-03-31 19:56:13', '2016-08-19 16:35:40', 1, 1),
(54, '0bdcbaae-7826-37da-aa29-36aa6a392def', 'eyvf', 'error', 'Et nobis est voluptates necessitatibus. Molestiae et sint rerum distinctio. Enim necessitatibus dolor dolor accusamus. Blanditiis occaecati nemo aut ut consequuntur autem.', '127a84de-4958-3012-bdb3-cf8633abaa8e', 'e72045d8-d5b3-3dec-aa50-b22577458299', '2006-04-24 07:30:27', '2013-11-12 16:55:42', 0, 0),
(55, 'b75e293b-6de2-33bb-9f90-79e41463a522', 'ziwj', 'maiores', 'Perspiciatis a tempore est quidem quas illo. Nostrum quos quisquam minima dolore. Rerum iusto velit nihil delectus doloremque.', '80db85b4-a8d0-3d96-93ea-7fac848c6ab5', 'e2ff2c5a-3b7c-3dbe-a464-a0d13b92f4bd', '1985-04-15 19:56:03', '2001-04-18 05:20:27', 2, 1),
(56, '24fb9074-55df-355c-a5c3-e97cc75051ed', 'ylgm', 'tenetur', 'Sit a impedit saepe eum porro ea. Perspiciatis asperiores necessitatibus harum explicabo. Sapiente ut vero ut sit eaque reprehenderit libero. Ratione aut aut commodi sed consequatur commodi.', '28994153-394e-3451-98ae-e8b372676ec4', '638fe7fb-e023-3067-a146-05cb1651cf8e', '1977-01-29 09:48:46', '1980-02-18 04:41:29', 7, 0),
(57, 'bd8a16d3-3d14-3ffc-b6dc-2a315ac8f7fe', 'somb', 'hic', 'Non odio atque et est incidunt. Aperiam voluptatem ex rem reprehenderit voluptatem mollitia. Voluptas expedita ratione dignissimos.', 'd3e55c13-24bc-316d-b322-53c7f128938a', 'a1a01903-f14c-39de-a4c2-c41e407ac7a7', '2018-08-01 01:12:14', '1976-10-13 03:21:11', 0, 0),
(58, 'c2c44de1-2ddd-36d5-a0bf-18e2ddbd8902', 'scom', 'quo', 'Quia dolorem occaecati suscipit cupiditate ex totam. Sunt consequatur totam laudantium. Occaecati ullam quis quidem laboriosam. Architecto dolores culpa commodi omnis eos perspiciatis aut aliquid.', '902a797a-5996-3e99-b0ef-c5bcea61dd26', '625d5b56-cdbb-3910-8233-a12d74ca8cb4', '2011-10-02 19:14:22', '1988-10-02 01:08:40', 5, 0),
(59, 'e35d2f5d-f9d5-3146-b233-9d3f6460ecae', 'hhwf', 'qui', 'Cumque nobis iste dolor. Ipsum eaque qui qui ex ut expedita. Assumenda nemo nobis numquam quasi quidem.', '75c744fd-7ddd-3949-9dca-cc293fbe7302', 'bdaf21ab-efec-301d-8a14-bc1ffeaf6272', '1983-09-07 11:30:57', '2002-09-15 05:04:51', 9, 0),
(60, '145e023c-b360-37a4-ab76-19a2feeb4aac', 'mhaq', 'totam', 'Nisi consequatur cumque sunt voluptas odit earum veniam. Sint eum dolor ut possimus veritatis optio veniam eius. Vero labore ut sed dolores. Pariatur delectus quae iusto sed et non. Laboriosam ea maxi', '27ec4217-283b-3d7c-9248-f54761a3b628', 'c8e19e0b-6d3e-3f16-872c-bf127a4ba28c', '2001-08-09 15:23:42', '1994-04-21 03:38:38', 9, 1),
(61, '323860a0-3dbb-31e4-a9a4-8cdac7b7c384', 'ryph', 'sit', 'Ullam debitis possimus ut ipsum. Nihil quidem voluptas quia laudantium. Rerum et et est unde ratione.', '3e8ee958-5335-37d6-85b8-220d2a32c27a', '2787440f-f71a-3e9e-8322-729b5dbf6796', '1985-07-05 22:47:48', '1981-09-11 10:53:12', 3, 0),
(62, 'e6dae1e6-ba6c-34bb-a98e-07dc4b1a9c20', 'pgoc', 'tenetur', 'Sed provident magni aperiam ut. Dolor corrupti iure et. Ut eius quisquam quis molestias temporibus perferendis earum.', '63102abf-583d-3087-833f-a2a06e623829', 'b9d15910-4281-3249-aac9-ef5da7ca1e27', '2001-05-21 08:53:17', '1987-09-13 04:06:58', 2, 1),
(63, '5759ad02-9000-3e7c-af27-82d52e860de8', 'ieme', 'aut', 'Aut cum ut perferendis sint recusandae aperiam ratione aut. Vero quidem dignissimos et repellat quas hic nesciunt. Dolores suscipit fuga minima aut error. Enim eligendi iusto laborum harum.', '2faea3c8-a4e6-3c3a-85fd-e8d266858703', '6dbd7e5b-47bb-338b-977e-61e03b6638aa', '2004-04-14 23:10:40', '1973-03-24 11:27:27', 9, 0),
(64, 'a22f07ba-3e3d-3873-8731-6d613bd369fe', 'igaq', 'cumque', 'Et illum voluptatem eligendi et pariatur. Qui perferendis magni quo. Alias molestiae minima consequatur impedit corrupti. At voluptatibus quaerat ea consectetur voluptate et explicabo.', '316e5483-e2b8-3917-9554-02bfd2c4c72a', '67c89c52-9375-3c9e-b578-79b587d3a521', '2011-08-17 21:47:04', '2013-01-11 20:57:17', 7, 1),
(65, 'e45963d8-86d4-3fb2-b30d-71b6eb93bfbc', 'iygo', 'consequatur', 'Harum veritatis voluptatem sed ex harum est. Voluptas est voluptas optio deleniti molestiae dignissimos.', '25907a5b-0d1e-38b5-95e9-c0d7ab1aa95f', '3b4e6fe1-d5c7-3f31-96a7-2fbb1e5b62cd', '2004-03-24 17:59:57', '1973-04-22 23:05:29', 4, 1),
(66, '0c0bdd13-df12-33c2-9221-13772618414b', 'mzgz', 'animi', 'Ut quisquam minima inventore cumque perferendis veniam quisquam. Quidem error ut nesciunt hic aut sed. Vitae voluptas error non non enim suscipit ut.', '0c9adcc7-a942-3c8e-8d76-8bda847bfd7d', '71371db6-1139-3725-affd-8c89ebec9a32', '1972-08-14 08:28:05', '2014-02-17 07:00:53', 6, 1),
(67, 'cad22d73-7ec5-3f1c-a9a7-4e22aba5c4a4', 'dsxj', 'est', 'Officia tenetur recusandae consequatur dolore laudantium veniam. Laudantium necessitatibus aspernatur qui unde. Explicabo asperiores aperiam autem in aut.', '6cc6720b-4768-3ee8-ad34-34e5b8b5e7c7', '0756ea42-71d8-38ef-9169-c01e6f91098b', '1983-06-17 14:43:10', '2010-07-23 04:56:45', 0, 1),
(68, '1dcdd192-0026-3620-ad3a-9d4edd193f75', 'zofs', 'aperiam', 'Sit officiis reprehenderit et corporis nam. Et rerum repudiandae magni eveniet ratione reiciendis asperiores.', 'b1b7d8a2-5b9f-3af4-8dbe-a80dd55cdec8', '97aaad2b-3d7d-34a8-b7a9-4fc679fdb7b1', '2014-04-06 00:04:17', '2000-12-26 21:39:36', 8, 1),
(69, '8e9285af-1d2d-3fd8-85c1-7afd13be1b01', 'cpkk', 'voluptatem', 'Aut dolores exercitationem perferendis numquam. Quis aspernatur voluptas neque qui reprehenderit officiis. Delectus nihil vel magnam repudiandae vero voluptatem distinctio. Occaecati quibusdam blandit', 'b78e9823-d195-3488-9a46-3561c587c997', '17f2cb14-59b4-34c8-90c4-c9505a321747', '1977-07-18 15:20:23', '1993-09-05 21:02:35', 1, 1),
(70, 'c4d23903-8465-3dec-97ed-87b14dd628de', 'laxm', 'laudantium', 'Dolorum cupiditate molestiae nobis eos. Illo alias rerum ut nihil. Et neque corporis harum hic.', 'af3fd411-5351-356f-bd56-46a8e8ad1fc4', 'd7d6b179-525a-3e33-80d7-85e2b004df4a', '1986-12-11 15:39:56', '1978-07-30 04:26:09', 4, 0),
(71, 'f64f5519-e8be-30d7-845d-d9f010bfb53f', 'wfzr', 'est', 'Sint repellendus earum perspiciatis incidunt vel. Fugiat inventore facere officia corrupti veritatis quidem. Officia in magni beatae.', '1b2982c2-f1f7-32d0-a334-162d6fc05d14', '82c97ed9-f782-376f-a84c-37ba625f635a', '1994-05-01 11:31:39', '1989-10-15 07:47:19', 6, 0),
(72, 'a9fd5613-cb5d-3984-b68d-01a0b6395e11', 'gejy', 'eum', 'Animi accusamus dolorum nobis minima sit enim. Quidem ut fuga est eum veniam accusantium consequatur.', '9299d3f2-022b-37ad-ad66-b0eed2e434f5', '24a8bc0b-85dc-345b-b27e-43cb2326c818', '1989-10-10 02:31:12', '2002-10-02 09:09:48', 9, 1),
(73, 'e5e2b887-1c84-3170-9a83-ed7950f5d49a', 'hbdl', 'optio', 'Cupiditate eum molestiae autem voluptas labore tenetur error. Officiis ab sequi est molestias fugiat. Qui consequatur quia temporibus quae consequuntur non.', '9315d8de-aa3d-38d6-a989-521192976d44', '97d78fdf-d36a-335e-b3fe-bad4bbfb737e', '2005-04-17 20:50:30', '1970-01-24 23:10:29', 9, 1),
(74, '0c0a60f9-9fb5-30d5-952a-8bfd28fcceae', 'aitl', 'autem', 'Rem repudiandae omnis quae delectus voluptatem enim blanditiis. Deserunt dolor voluptatem voluptatibus. Autem minus aliquid nemo sunt.', '340e5e2e-bb34-3da9-be7d-d33a3c81131d', '8fbe0c9b-3480-38b5-a2ab-61298beaa48a', '2014-09-22 04:25:34', '1992-02-02 07:55:10', 5, 1),
(75, 'e5a54396-ac4d-39c3-ab13-28df1df435b9', 'qqxg', 'maiores', 'Autem sed voluptates aut accusantium mollitia eos. Ea aut corporis deserunt pariatur. Est ipsa aspernatur harum. Aut tempore dolorem dolorem quia eaque rerum fuga corrupti. Exercitationem rerum aliqua', '7c4966aa-4d4c-36d1-9d2f-cf68620d46a6', '48e9e608-24b1-3bb8-a2f8-7fa71a0842fd', '1975-11-13 21:30:02', '2012-09-23 18:01:10', 3, 1),
(76, '7723f785-95ca-3426-9653-761abc0a1bc9', 'yfux', 'pariatur', 'Quas repudiandae necessitatibus et. Ea dolore distinctio autem. Nisi eos maxime et qui aliquam harum a. Sint delectus ipsa enim autem. Consequatur temporibus repudiandae animi eaque est.', '94c1d700-37bf-33c4-86ea-3f6095ebc005', '625f0d85-f090-3ee4-9a63-61c08bdd077d', '2007-03-24 14:17:49', '1998-11-27 23:29:19', 1, 1),
(77, '4892949d-3ba0-3fdc-a4f1-001c9fefd733', 'oceo', 'aperiam', 'Explicabo et tenetur error. Optio et fugit sint qui nostrum voluptatem reprehenderit. Similique qui fuga ullam id voluptas cumque et illum.', '094fd3a6-c3ff-380e-80b5-88a6a1dad663', 'b8b89e98-af13-3c16-8e4a-864651e55c19', '1975-05-27 19:06:10', '1998-11-08 16:33:07', 0, 1),
(78, '3a9527ab-d8f0-3d5a-991e-f0a5bd69d929', 'ycmb', 'fuga', 'Et sed facere deserunt velit perspiciatis enim voluptas. Dolorum error sint amet ut deleniti cupiditate. Sequi quaerat aut ratione qui asperiores facere molestiae. Sapiente voluptatem at voluptas.', '43fe44e2-e1e3-3317-87f7-ee8ea7ccd6cd', 'e6317525-203b-3748-96a8-b207802daef6', '1976-11-23 10:12:13', '2018-10-19 09:55:35', 6, 0),
(79, '776dc824-eb24-3098-a169-415850aea341', 'mmas', 'vel', 'Delectus possimus quas qui eum. Id labore consequuntur corporis. Asperiores asperiores enim ducimus dolor odit dicta. Facere reiciendis excepturi et atque iste.', 'e5d627df-f08b-334a-bc61-07bca3c674e6', '6fe4b262-717f-3ebe-acef-6f8f52f16650', '2003-02-24 11:03:18', '1979-08-26 02:49:30', 5, 0),
(80, '35d91e66-8d84-38f1-ad07-b929c3db8a74', 'ruth', 'et', 'Consectetur tempora officia voluptatem provident. Laborum velit vero a blanditiis. Fugit quos molestias quam ut et dolorum.', '81a43df3-6880-3d7b-ab62-7a674643a627', '7d65dddf-3f5e-3385-8bba-fd8297bf4aca', '2009-08-19 05:03:03', '2002-01-10 04:20:49', 2, 0),
(81, 'c331f30a-5590-35ab-ba19-e4a914612399', 'nslb', 'mollitia', 'Et recusandae voluptas adipisci dolores et officia omnis. Facere in perferendis officia. Et delectus esse et itaque quas labore.', 'e78d9680-d097-35d4-a87c-e50962fa7d5b', '366e7f0f-6df9-3fc3-88a6-5c9a4f48a9bc', '2018-10-13 04:10:19', '2002-09-17 20:03:46', 1, 1),
(82, '7b75a805-74f3-32ca-883e-9a4709b8c0aa', 'iluk', 'natus', 'Ea itaque fugit quis doloremque distinctio ipsum et. Saepe modi ipsam deleniti tempora ullam in. Iusto fuga voluptatum et.', '66dff14f-eda2-3c82-8312-50209204baef', 'c0898016-931a-305c-b828-e19996603d8e', '1990-11-07 01:38:36', '1993-08-17 16:00:07', 4, 0),
(83, '3023feca-4270-3315-ad00-94120a5a9b67', 'hrnt', 'earum', 'Optio et voluptas maxime enim est optio. Tenetur incidunt est voluptatum quidem. Odio eveniet quia odit at.', '6db96056-db2c-37e9-872c-3e92ed0c47c8', 'be6fcf63-18f5-36c8-8c9e-8842eb5d1a45', '2003-11-10 22:35:01', '1980-09-24 21:19:16', 6, 1),
(84, '85b24ff2-76b1-3bd2-acdc-91f590e79a64', 'lytp', 'omnis', 'Vero doloribus velit reprehenderit eius reiciendis. Voluptates sapiente nostrum dolor atque. Tempore non quos accusamus provident dolore ipsam officiis.', 'a4fec1f0-1409-341d-ba91-1943bc51eb52', '928b13da-0627-3022-b8e3-d6ab6d249fef', '1970-10-01 08:18:01', '1985-07-14 11:30:42', 6, 1),
(85, '603d162b-4acd-3fdd-bcf3-568c2384633c', 'kedb', 'deleniti', 'Provident omnis numquam molestiae sint non. Harum maiores nostrum dolore incidunt. Molestiae commodi voluptatem cum at et illo.', 'ad801f12-7017-307e-b7f3-1253aa70fb29', '465a539f-822c-3d3e-82ac-3bd6c7704786', '1991-02-15 05:17:25', '1980-10-03 15:41:00', 4, 0),
(86, 'a3711c87-7c29-3354-815d-d4db7e58cb92', 'yaeo', 'et', 'Ipsum incidunt recusandae ipsa laborum voluptatibus ea doloribus non. Ut dolorem sequi quaerat alias perspiciatis velit. Sint ab consequatur optio eos optio qui nam aut.', '8a13078e-fdf2-30d4-a6cd-aae3b12d8262', 'edd9aa8d-5f0c-330c-8f49-3e91ab3f91c9', '1991-03-24 23:45:49', '1981-12-09 05:35:36', 7, 1),
(87, 'b3877a9c-6a09-3d56-bbc3-e78b06f82a33', 'rhxa', 'qui', 'Totam sit et culpa fugit repudiandae. Et rerum ea facere. Sint nostrum cum corrupti est aut aut.', '68b656f2-ccc7-3d95-9bd5-c44727395de4', '0fa8a485-5d30-3426-bfd6-719787d03998', '1992-01-12 20:52:49', '1978-10-15 05:48:25', 7, 0),
(88, '9f53316d-7820-3057-bfb8-0d7417251a3f', 'lnwy', 'nihil', 'Necessitatibus nobis deserunt aliquid dolorem voluptatem sit illo. Est sint minus nam praesentium. In vitae ea reiciendis natus voluptate.', '9f61bd53-48c1-3f78-9fd9-b2d471f5cf4b', 'c06b3c33-a034-3cc9-bff3-92d02beedacd', '1995-10-14 04:45:39', '1973-02-26 11:35:35', 6, 1),
(89, '92239a2d-36f3-32d3-ae2c-b1c6217faa51', 'ylga', 'autem', 'Perferendis consequuntur veniam repellat adipisci velit. Adipisci quos recusandae perspiciatis pariatur. Saepe esse id ut incidunt eos qui.', '88a11277-6a0e-3d8c-8ad6-67776e0f819d', 'fd274af2-b021-34c2-9c37-1495f1a68739', '1988-11-11 05:34:05', '2008-10-06 17:46:22', 2, 0),
(90, 'eada9bee-5859-39a2-bfc0-3cc33291f721', 'yneg', 'ipsam', 'Dolorum tempore provident non maxime rerum voluptas. Nulla reprehenderit fuga architecto qui labore animi inventore possimus.', '95a37cef-0b40-3b40-bce5-2bcf1a91a11a', '81db59ae-bb8a-3f7a-9862-5fdc4d74111e', '1978-10-14 06:40:07', '1970-05-03 14:37:21', 1, 1),
(91, '57463596-ae18-36b3-a0f1-6ec2cec18cbe', 'gzwz', 'id', 'Et consequatur saepe et soluta ab molestiae. Aut rerum ipsam est quam sunt possimus. Quis ut et neque quibusdam ut. Consequatur consectetur fugiat vel similique.', '87ad383d-9747-3801-973f-2cb889fa5001', 'd4a8f075-bea7-3783-bf93-1b9e1e9cf5b1', '1999-04-04 23:58:17', '2014-03-18 17:18:07', 7, 0),
(92, '80826c36-cd6e-3c53-890a-7be541976278', 'diyw', 'incidunt', 'Possimus iste ducimus deserunt deleniti hic eveniet. Ad debitis fuga consequuntur ipsam. Officia et praesentium et sed sunt. Consectetur eaque aperiam explicabo quaerat ea est.', '01522526-6a21-3ebf-9a66-f6b0d081f1e9', 'f5bb19ae-83e7-3603-81fc-5650d386e2f9', '1996-08-16 09:43:49', '2004-02-28 19:08:29', 4, 0),
(93, '1b17ec89-a68a-369c-bbb7-f0bd1019315e', 'bvdz', 'est', 'Quia qui dolorem quasi consectetur voluptate aut fugiat nisi. Et non sed commodi porro. Aperiam repellendus quia non quo. Doloribus velit quia maxime occaecati.', 'fbc6a648-5e11-3bb0-8d6b-b90dd3397ea8', '882a7323-17cb-3b3a-aa13-8e433408cd25', '1989-04-15 17:42:01', '2015-09-14 01:13:07', 4, 0),
(94, '62f748b0-f87b-3762-8bfd-67b2e34fd567', 'owuc', 'quas', 'Aliquid esse et blanditiis magnam necessitatibus aspernatur. A ex vitae totam eos consequatur. Facilis voluptatem ipsa ea eos vel. Dolore magnam quia rerum placeat voluptates maxime.', '81deac28-9efc-348f-a2f1-9ab3322ed1f5', '6ff68e8a-a2c4-33bd-8b46-dc33ff0d348c', '2008-11-13 18:08:17', '1994-07-02 23:04:13', 4, 0),
(95, 'e8fd31f5-b36f-34e6-8ab9-441ed2843f33', 'kbgd', 'numquam', 'Sit reiciendis repellat et laborum cumque unde culpa. Voluptatibus ad mollitia dolorem.', '07615391-c6c3-331d-aa9f-86b2caafc8cc', 'bf0dcb28-4d74-399c-a049-4b949ecc624a', '2002-02-01 15:21:10', '1985-09-25 04:58:00', 7, 0),
(96, 'b163e368-eca6-3757-9fdd-05d9ca304e75', 'hcmg', 'sed', 'Voluptatem qui praesentium saepe ad possimus nam rerum et. Error consequatur impedit deleniti dolores possimus sint. Et dolorem blanditiis omnis dolores et ducimus. Voluptas illo eos modi similique et', 'd4fc4790-9584-3744-908d-eeaaba135118', 'e7a06d80-5c47-3445-bbec-996d035a86c6', '1983-10-14 21:41:39', '2008-05-19 01:47:48', 0, 1),
(97, 'ac34bddf-44aa-3d4d-b621-b7d0d2dd3599', 'mocd', 'at', 'Atque iure ea est error impedit. Est et animi reiciendis voluptas rem. Saepe incidunt est nam voluptatibus. Occaecati quos recusandae qui quis velit.', '94792eb9-cea3-3afc-b5ce-03d0cd56f5ff', 'e00b6fd3-069a-3983-8bff-431dee746a8b', '1996-02-10 18:44:20', '1981-01-22 17:27:24', 4, 1),
(98, 'eb0096be-0dec-3a19-bc9c-8301f274b983', 'teyy', 'maxime', 'Autem ipsum facilis non. Nisi nam deserunt neque omnis qui hic ratione. Dicta dolorum qui corrupti distinctio.', '824ff139-50e3-3368-9fa6-458c22bd0716', '8e4a5d93-9d48-3ab1-b05f-bab0bc3b9fda', '2006-08-26 08:32:19', '1971-01-21 06:50:33', 8, 0),
(99, '9c50f6e4-a8c9-3773-9295-9b29acbd8db3', 'ybft', 'qui', 'Repellat dicta quia voluptatum est quidem ea. Et voluptatem ex accusamus fugit ut. Corporis corrupti quos earum iusto. Repellat architecto eaque consequatur officiis ut ab eos.', '0f61595c-8bc8-34d7-95aa-68d0f269fae9', '7fb39431-c4b1-3eb6-9576-eebd01e91fe7', '2011-01-03 12:33:45', '1972-11-30 03:00:07', 4, 0),
(100, 'af4ececd-bb41-3639-8e82-30ac08711aec', 'yyhh', 'eveniet', 'Qui tempore velit ea. Voluptatem rerum vel cum sed enim consequatur facere. Eligendi vero illo magni voluptate. Rem laborum est facilis quia eos eos dolor.', 'a5bcdf9f-0658-3299-8da6-b85f0dd91949', '33e0b004-e992-3cdc-9b5c-23facb48ad81', '2010-08-14 20:19:39', '1986-09-30 15:36:47', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_schoolhistory`
--

CREATE TABLE `hr_general_schoolhistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `SchoolName` varchar(100) NOT NULL,
  `SchoolAddress` varchar(200) NOT NULL,
  `Course` int(8) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `Awards` varchar(200) NOT NULL,
  `Degree` int(8) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_sites`
--

CREATE TABLE `hr_general_sites` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_sites`
--

INSERT INTO `hr_general_sites` (`Id`, `CompanyId`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'c3e93bf6-90ce-36ad-8cc4-31f203716b9b', 'ylxb', 'a', 'Laboriosam et sapiente sit molestiae est amet. Natus tenetur rerum unde cupiditate. Distinctio provident a amet optio similique.', '5635015d-18fc-329c-9763-5c25b262ef6e', '42246cc2-332b-30f2-8f9e-eefa945b521e', '2014-05-07 09:33:00', '2018-01-07 16:39:23', 5, 1),
(2, 'd1351143-336a-3417-b4ca-4c850a025869', 'drfc', 'non', 'At debitis modi eos et beatae. In aliquid voluptatem id aut. Nisi aut accusamus iusto eos dolor aut. Doloremque veniam libero nulla et id.', '4feeb773-c330-301d-883c-df39e7b65891', 'ab3c8f49-c22c-319d-a689-ddd124cc4092', '1971-08-06 22:34:37', '2001-07-29 10:06:55', 1, 1),
(3, '93542e1b-0144-3210-ab46-b451703a39b4', 'beel', 'sed', 'Impedit nihil rem ut ex eos velit voluptatem. Rerum consequatur consequuntur magnam est sed possimus et labore. Unde explicabo quas sed eum ut distinctio non.', '35143f5d-1bf9-31c0-b76a-87dc90240084', 'bcbb3030-ba9c-373e-a6fa-8490f9d71eb2', '1978-09-02 05:41:10', '1984-06-20 23:29:56', 1, 0),
(4, 'e270acbc-46c9-3524-852b-c6badfd0ca60', 'yrof', 'voluptates', 'Similique voluptatem provident voluptatem autem. A et perferendis tempora hic. Minus et nulla eius et officiis animi et qui. Quia porro molestiae harum inventore eos incidunt.', 'f4b2bd21-5b5c-3dd0-81b5-ccbde7d5d284', '55e0a8a3-892f-323c-ad8d-fa218c422b78', '1986-03-05 15:22:29', '2018-04-04 16:03:47', 0, 0),
(5, '84a435af-ed32-3978-a548-1f36ca8bd5e6', 'iidc', 'consequatur', 'Sed rerum animi quia voluptas a. Qui ut nulla dolore impedit sit unde. Architecto perspiciatis tempore nihil enim incidunt.', '85371a28-5cfe-35f6-b856-18db36e5a8a3', '78b8cf8b-a277-3d26-868e-9ee47d356809', '1988-03-30 09:56:19', '1970-07-17 05:01:22', 2, 1),
(6, 'c3b27055-24bd-33eb-a015-0ac93066bf19', 'ibre', 'officia', 'Impedit reiciendis reprehenderit beatae dolorem aliquid nostrum aliquid aut. Sunt aut quis reiciendis culpa et eius. Sed id sed quod.', 'f2e1fa64-f2e2-3e31-a983-131bbce34eb7', 'f9d241a4-1db4-3f59-bde8-61bc0d66b46d', '1988-03-12 20:34:43', '2012-06-18 07:39:12', 0, 1),
(7, '1849dc3e-17be-3547-875e-6954cf2cf9c8', 'uwaq', 'vel', 'Iste ducimus possimus debitis et voluptatem est. Velit accusantium omnis repellat dolorum et. Porro incidunt reprehenderit dicta ut eaque dolor sunt. Enim ratione temporibus nemo deserunt et sit et mo', '1ed765b3-1ccc-31ac-9610-f0eb2622f4a6', 'd06bec3e-d8af-31c8-8729-ffa51606e68d', '1985-11-19 09:16:03', '1985-06-30 06:42:53', 5, 1),
(8, '89f8b547-8ad6-37b7-bcdd-e841376322fd', 'mnxu', 'ipsa', 'Velit delectus aliquid nulla et necessitatibus quod modi temporibus. Dolorum amet voluptatem minima doloribus.', '24f4e6a8-7522-3a76-8b5c-0e510b8d2aee', '477a7de4-e3e5-308b-a133-2c0b68b271c7', '1986-04-03 11:54:34', '1997-03-19 20:11:58', 7, 0),
(9, '7b929710-2b7a-3f40-b4f9-211947ed6e5a', 'koiy', 'ducimus', 'Ab modi minima molestias quasi. Veritatis voluptatem adipisci quo. Doloribus unde expedita recusandae sequi.', 'b850a84f-2cad-35e1-bdff-5833f937b779', '44903adf-44c7-3d0a-8707-9409610fc366', '1982-04-04 12:07:46', '1973-08-19 06:07:14', 9, 1),
(10, 'b6e71231-4128-305c-aaad-78d4dc8258b7', 'dond', 'vero', 'In autem voluptatibus a fugit voluptas incidunt nisi. Eum numquam quo et unde consequatur perspiciatis aut. Eius quo praesentium laboriosam voluptatem veritatis eos itaque iure.', '0eff2f13-089d-3493-a9fb-6079b16a0c14', '5a119a47-614a-31a8-b4a7-adedd30cfa15', '2015-11-28 12:32:32', '1984-02-11 14:07:47', 3, 0),
(11, 'c7a3aed6-3339-3873-bce7-6c1058d36095', 'srbv', 'in', 'Voluptas dolores quam doloribus deserunt molestiae. Facilis quis tempore illo earum nihil. Temporibus necessitatibus laudantium harum non non. Vel nobis odio optio.', '157ff935-4afa-349c-b681-f293b9334b70', 'ff64079b-2a1d-3add-965a-77fb7ca4ac33', '2002-04-05 08:47:39', '1972-10-27 10:14:09', 4, 0),
(12, '52342ad5-d5ba-3f61-9d47-9cb130389085', 'sdad', 'et', 'Qui fugit nostrum ipsam ut officia distinctio error. Soluta exercitationem nihil est excepturi cum nihil. Ut iusto eligendi vel maxime.', 'fff8f1f7-ce8d-3dc2-a871-beb14e4829d4', '02ce236a-50e5-3571-9169-357eeab3446e', '2002-03-14 10:55:53', '1982-02-27 17:38:04', 1, 1),
(13, '342d6714-185e-329b-b9a5-7885610b2c15', 'vger', 'dolorem', 'Nulla non nihil incidunt et consequatur velit dolores et. Aut dolorum repellendus nisi. Ut facere sapiente et sint. Enim ea commodi dicta quos ex. Natus reiciendis sint minus voluptatum adipisci qui d', '9cc73a45-d217-37b8-8ac8-ec5afc65a521', '7871a8af-8c83-370e-8d3e-81f8bae52a3c', '1986-04-28 23:53:46', '1970-01-24 21:22:12', 8, 0),
(14, '3470aedc-dea7-365c-b879-44f2c4d62b88', 'ajsv', 'mollitia', 'Labore dolores et sint. Eum suscipit quas quisquam dolores est illo et vitae. Reiciendis minima enim ut ducimus. Nemo tempore deserunt vel quos similique et occaecati. Accusamus id et ullam id.', '467329dd-fb8e-3c52-bb27-90959a60bc0a', '88a4e471-14f8-386e-ad9e-20bc5c2b8d21', '1978-07-08 22:17:53', '2011-07-31 15:45:21', 7, 0),
(15, '80edbe86-0250-3577-a340-3ab768a446ea', 'lrfr', 'iste', 'Consequuntur corrupti suscipit maxime quae nesciunt ipsum. Sequi et minima sint animi. Quis occaecati rerum debitis adipisci praesentium.', '433ae331-dbad-36af-82db-15f6082be7dc', 'e926d82e-2987-3775-a8c2-7905941e089c', '1999-03-02 05:49:39', '1989-05-23 15:59:01', 5, 0),
(16, '56c63c8d-cfd4-39e0-be6a-22cb492f52b6', 'cxsd', 'excepturi', 'Pariatur iusto voluptas necessitatibus nisi. Sed tempore soluta modi sunt et perspiciatis. Optio voluptatem aut harum qui consectetur autem. Aperiam rerum nulla asperiores quis et impedit.', '6adab167-2de5-3b62-b0c8-4e46f051ee29', '3027a647-781e-3308-90f7-d3a11163d262', '1991-06-14 19:15:03', '1999-05-29 19:10:26', 9, 1),
(17, 'd78dd0f0-7328-34e3-b2c8-62a207213f24', 'lwuc', 'non', 'Praesentium dolor blanditiis ex quia error est accusamus. Sapiente molestiae sit neque occaecati maxime temporibus ad. Accusamus sed repellendus qui cupiditate. Sunt architecto quasi cupiditate eligen', '06c73d1b-5814-37ab-b7e2-d4fae0d8ce95', '490c9e4c-8396-33b2-8bcf-49eb77f02a4e', '1995-07-28 22:46:51', '2012-03-23 18:32:45', 8, 0),
(18, '79273d15-5e0b-34b4-9b07-9e04746b857c', 'nssr', 'et', 'Impedit possimus aliquid voluptatem neque mollitia neque cum. Et sunt veritatis id. Corporis modi aut quia officiis adipisci odit. Reprehenderit sed totam et vel fugit debitis.', '633d157e-467f-35a1-bfbd-a9739a023819', 'e8b5d088-27d2-3527-acaf-120b9b8e0c20', '2014-09-29 10:53:34', '1985-11-01 12:15:20', 5, 1),
(19, 'fbb6170e-c371-301f-9a17-01aa45ce3cdd', 'mgae', 'vitae', 'Facilis voluptatem velit animi aut. Ut recusandae cumque aut dolores quod rerum qui. Quam corrupti nostrum sunt. Earum id in quidem assumenda voluptatem aut. Sit saepe laboriosam qui temporibus modi p', '3d9ff078-55f7-3871-8ddc-441901ce5630', '53592b8c-0e37-3cee-a84f-43223bfd09da', '1990-06-17 10:22:14', '1999-08-11 11:29:28', 5, 0),
(20, 'a34fccda-096f-3193-99dd-f0849ba818e6', 'upid', 'assumenda', 'Natus qui recusandae cumque exercitationem minima aut illo sapiente. Qui voluptatem rem et nulla facilis perferendis. Qui beatae vel nesciunt omnis. Ea optio aspernatur aut voluptatem voluptatem bland', 'ea44d47f-46b2-3dac-be9d-16d27dd91750', '8a3f55b7-3e14-36ba-8262-6e39bbc2bbfd', '1998-06-20 05:26:58', '2018-01-05 03:59:51', 4, 0),
(21, '903d47ac-3839-3d84-a5e1-28af8527d335', 'fksp', 'beatae', 'Voluptates sit esse deleniti laborum et. Consequuntur doloribus molestiae quam assumenda quis. Nemo assumenda quia cum molestias sit.', '669ec896-1dc3-3849-aa67-1f478fdabfdc', '24081c17-bb7d-30a3-93e5-659a6f668303', '2010-03-08 07:42:18', '2006-08-27 00:49:33', 7, 1),
(22, 'ec412ce1-c8a5-3bd9-bca4-e5998ea26551', 'nvkz', 'sit', 'Quisquam id consequuntur excepturi ipsum. Error qui dolorem ad commodi. Hic rerum ut sed aut et ducimus est. Qui est et vitae corrupti fugit.', '04018e06-82cb-31f0-9e2b-d2bb1f95f0cb', 'af7f9b4a-3176-31f0-9006-5830e2f34a40', '2013-05-02 10:34:08', '1976-04-07 16:25:01', 0, 1),
(23, '9043d8f7-47db-3124-8d62-9ce3fa5651aa', 'dois', 'nisi', 'Veniam id id dolores autem et inventore aut. Sunt accusamus commodi autem sed inventore iusto quae.', 'a47f033b-bae1-356b-b909-6cb24fceec39', 'bd3d6aa0-438c-3916-af63-ac0687d806d1', '2005-07-08 15:20:13', '2009-01-11 12:26:37', 8, 0),
(24, '8579d350-ab7f-3fed-85f9-a51c6cb63f9c', 'ntif', 'modi', 'Voluptatibus facilis tempora tempore excepturi quae est. Voluptatum non ratione voluptatibus asperiores inventore.', '29854ae1-9f40-35b2-b787-45e80cf7dfdf', 'b92d6dab-1065-37a1-ac60-6abbc4417440', '1993-03-24 01:27:44', '1989-08-30 11:52:06', 7, 0),
(25, 'fc1d79ae-eff4-346e-b9f7-76d2535ae59b', 'ptby', 'adipisci', 'Quia atque non illum sit. Voluptatibus odit provident molestiae debitis enim. Repudiandae consequuntur sit quasi. Illum repudiandae nesciunt quo quis.', '5ca77fcd-2867-3948-99e7-bbabe6577fc0', '163de0c6-70b8-3a6f-b86a-1c401a6bb016', '2002-09-24 04:36:25', '2010-06-08 17:22:47', 5, 1),
(26, 'eb00373b-c888-3d14-b312-f1f8ebec9d9d', 'iybp', 'consequuntur', 'Aut fugiat reprehenderit quod fugit consequuntur libero. Dolores ratione esse soluta id. Qui enim blanditiis aut ratione ratione sint.', '41cb4137-ad02-3b5f-95a6-ef8796768b1e', '78563966-c5ad-3a2c-9d44-ca8c3dd1cacb', '2002-07-12 18:31:18', '2014-06-26 22:52:58', 3, 1),
(27, 'f5973b42-1b7b-3fb3-855d-f1c162c5fb4c', 'adio', 'itaque', 'Cumque dolorum esse nulla eos. Magni quis voluptas impedit eius eum alias. Et minima pariatur enim deserunt. Iusto officiis voluptatem et perspiciatis ut modi.', '7e75bb2e-924d-348c-b3d0-ae6f54a80fc3', 'e98c70b7-e9bb-3cd0-8418-1b0c8fd49dd5', '2009-06-03 09:26:25', '1979-09-18 10:36:26', 0, 0),
(28, '1d97a51e-2a73-369b-84ba-141bc0eb7c50', 'wfyb', 'velit', 'Et velit velit assumenda ut et mollitia repudiandae sint. At qui voluptas nulla quo accusamus ut. Ex ut dolore qui quas ipsam quis dolores.', '726ea9e0-9c1f-381f-8c24-6c9c29280454', '3436a5b9-8d35-3956-94e1-a1ef5aa4b781', '2017-04-30 12:39:12', '2016-12-07 06:44:28', 0, 0),
(29, 'fec64799-5192-3589-9c56-075bde6f72ff', 'uxnz', 'praesentium', 'Consequatur dolores dolorem et blanditiis voluptas. Qui explicabo nobis deserunt dolorum. Aspernatur earum consectetur natus ex omnis corrupti temporibus.', '5cbdf65e-7781-337a-86b5-15433f2d9c9e', 'deed64ec-354c-31c4-9674-257db657af82', '2002-07-28 13:32:07', '1998-10-06 03:14:12', 2, 1),
(30, '5ac5692c-6215-3b4e-9898-e8c0f0de0cde', 'wdlu', 'facilis', 'Eveniet nam culpa delectus perferendis vero sed sint. Porro rerum ipsam consectetur quo impedit voluptas ut. Eos dolores qui cumque voluptas.', 'bc4ac325-585c-3142-8213-45b3b419451d', '5a1413dd-6bee-3cfc-9b98-265466d92b83', '2005-02-18 11:15:15', '1989-10-31 16:29:45', 8, 1),
(31, '77a0e071-ecb6-3365-8392-2c442f6be6e4', 'hvua', 'necessitatibus', 'Corrupti itaque et accusamus amet qui enim architecto ut. Fugiat dolorum ducimus voluptatem necessitatibus fugiat ex. Et occaecati pariatur et odit rerum iure libero magni.', '07e17608-3351-336d-92be-71d48c6f030e', '6abf719c-76fb-31e8-8a61-53f064951270', '1999-02-11 19:56:32', '1971-04-22 14:34:35', 9, 0),
(32, 'f2592e06-f77c-32e3-9184-9053495a9d21', 'mjjf', 'id', 'Et aut blanditiis nemo nihil itaque qui. Et sapiente qui incidunt dolore deserunt eos.', '7053eed2-8433-38f9-8f7d-99675721c2c3', '39ca4d1e-c99d-3ceb-9653-2466fee97ff8', '2008-12-11 23:30:31', '2008-07-21 20:39:01', 9, 0),
(33, '3fb3325a-86fc-3115-9894-ddd517ef244d', 'epkp', 'aut', 'Aut sunt at beatae dolorem qui eaque repellat. Qui qui ratione repellat quaerat. Accusantium quod minus repellat rerum sunt. Unde qui et quae eum culpa.', '91844653-4ed3-3150-ad67-64dd88859d6d', '1c71082f-c8f5-3f52-97b0-205c2d6cd3bf', '1970-10-15 13:53:54', '1995-08-29 13:42:10', 5, 0),
(34, '0cdf6d24-bb48-3b21-9fcf-1bc93264eaa0', 'ftfr', 'facere', 'Assumenda pariatur ipsam in consequatur quasi dolor omnis. Autem soluta ut aperiam neque consectetur rerum. Tempora reiciendis ut pariatur minima dolorem laboriosam nostrum. Magnam laudantium voluptat', '7fc72621-abdc-34f6-98bf-e19f0954e3f3', 'acb7b1c9-2fcb-319c-a558-6de0370b31e1', '2014-08-30 19:01:25', '1998-01-11 13:38:05', 4, 1),
(35, '354f4370-40a8-3bae-bfd0-86c7b9d9669c', 'daru', 'architecto', 'Voluptas vel dolores tempore. Et est eligendi voluptates voluptatum ad aspernatur. Eius voluptas dignissimos fuga minima voluptate earum. Iure quisquam sint non velit dolorum.', 'cc1e1950-65e6-3db0-a23a-1950b6d6576b', '0d44393c-1933-372b-9bb3-8c2ef0c98433', '1976-08-21 10:47:25', '2006-10-24 20:14:21', 5, 1),
(36, '5937c976-3420-363b-afb3-bd36a8a4a53a', 'hchm', 'itaque', 'Aut doloribus veniam quod odit cum quae. Doloremque quasi sed et ea fugit. Omnis suscipit consequatur libero culpa rem quaerat.', 'f78560d9-092c-37be-8a20-ca541dd14904', 'eaeba14c-3905-3106-ad0a-942870715f1a', '1978-07-15 12:13:11', '2016-02-04 14:38:10', 8, 1),
(37, '68026059-c38b-34d7-ae35-85e422283774', 'ovqe', 'laborum', 'Quisquam quas voluptatibus soluta voluptatem sint ex. Expedita qui voluptatem deleniti nesciunt. Distinctio blanditiis voluptas velit optio ut officia illum. Dolorum hic voluptatibus ut tenetur nisi.', 'a09636c5-6484-36cf-8e84-aff925841722', '4b3a4264-ce16-392a-b210-57ff5a103b01', '2011-05-02 03:36:09', '2000-11-01 14:58:39', 7, 0),
(38, '69446968-dfad-374e-950e-b6e7c840ebb3', 'rfbs', 'voluptatem', 'Id saepe beatae ut aut. Voluptatem ab nisi beatae ipsum aspernatur ut quia. Adipisci est delectus qui non esse. Voluptates voluptatem est et et omnis consectetur odio.', '0ef87ce7-a69b-377e-a14c-7b099504a38f', 'ede051ba-f612-3476-b9bd-ee7e91cd1da5', '1980-05-25 16:17:00', '1997-11-07 00:58:51', 5, 0),
(39, '456ec20f-b9b0-3e64-a32a-fa26fb822081', 'gonz', 'quod', 'Dolore atque repudiandae harum repellat et temporibus. Eveniet consequatur rerum aspernatur eaque. Dolorem consequuntur voluptas autem. Excepturi optio quo accusamus voluptatem ducimus quia.', 'a5ecccdd-ea3a-3500-aacf-7df42b11793e', '633270b7-c999-3b58-8f81-2b94bbbfd328', '2013-12-06 00:03:26', '1978-08-31 18:37:20', 3, 1),
(40, '5fe9b495-0499-3af4-b62c-e637bd517e29', 'kzdq', 'vitae', 'Veritatis aut animi ipsum. Error eum dolorum rem sunt sed recusandae atque voluptas.', 'dc6aed3c-8881-38b0-a20c-e402926d47ac', '6aacc688-c199-33f4-9e18-b647005dfe9c', '1996-10-28 19:41:22', '1970-08-28 12:48:20', 7, 0),
(41, '2650cb43-12e7-356a-b977-2220e381f11a', 'utam', 'laborum', 'Dolores mollitia occaecati doloremque deserunt rerum et reiciendis. Laborum voluptatem ut numquam eligendi voluptas. Minima dolorum eum sed illo nobis nisi ea. Exercitationem aliquid illo velit iusto ', '202f4e03-8aa6-3ba6-9089-f4da4ca773c4', '32100e63-28d8-3b0c-8894-8d044ac67d28', '1974-09-02 13:25:33', '1973-05-05 23:06:11', 9, 1),
(42, '4b0f67f1-6e07-35d8-883a-b64b1180e643', 'vowx', 'vero', 'Delectus voluptas maxime voluptatem. Cum dicta dolores odit nihil ratione. Tempora molestiae soluta earum. Ut autem iure dolores quo et alias.', 'a2699999-019f-382d-b9c2-716938658577', '8cfe54a4-61d2-3ab3-be59-92a9d431827a', '2017-02-03 01:50:32', '2000-01-14 10:47:33', 8, 1),
(43, '0e3cde8b-074e-3e55-9a65-b3734c5d5ed0', 'txyb', 'voluptatem', 'Cum ut assumenda in molestiae placeat aperiam porro aspernatur. Harum sunt optio neque consectetur illo voluptatem incidunt. Atque necessitatibus quia ea ut modi exercitationem. Voluptas sint eum sed ', '164758c3-ce9b-3dbc-be78-03f1d35784db', 'a791120c-0f92-3777-be67-0bb17b503edc', '2003-05-23 16:08:44', '1998-10-28 07:26:21', 3, 1),
(44, '75241f36-de51-307d-9ae8-15b2a6cacf5b', 'xccg', 'voluptatem', 'Excepturi dolorem pariatur voluptate quos. Ipsum cum nostrum ut sint aut. Laborum sunt reprehenderit molestiae soluta impedit earum qui.', '2a46760a-9dcb-3285-a14e-9b36a16e0058', 'd8e7de71-80f2-3673-9744-3f6a6f1a8f4d', '2016-04-29 05:39:07', '2003-01-03 20:06:53', 4, 1),
(45, 'a251e5ea-b8b6-3f67-9ee3-e559c51c27fb', 'lelt', 'perspiciatis', 'Recusandae est mollitia eum odit omnis sequi rerum ipsa. Nam laborum quaerat illum ipsa ut voluptate sed. Ab eveniet asperiores doloremque omnis.', 'c05f3012-d09f-3b1f-9229-915f91d7019f', 'c00105fa-5d98-3141-9256-83acb02f32b8', '1974-03-14 21:53:52', '1972-08-29 00:16:48', 4, 0),
(46, 'e3267cd5-c329-3c38-bd6c-3931238f3038', 'vadv', 'a', 'Totam veritatis quia architecto. Deserunt praesentium nisi itaque ut officia.', '2c6312e0-be3d-371f-8a76-b48dc8e2bdc7', '2bca55ec-7d74-3bc6-a161-4b00ff9ae631', '1995-10-19 18:37:58', '1993-01-24 01:30:56', 5, 0),
(47, 'cadea2da-ba67-32da-86af-ebca70ee7b93', 'dlda', 'aperiam', 'Vitae saepe modi ex quos. Cupiditate ut aut nisi pariatur accusantium recusandae voluptatem. Vel qui et illo officiis. Ut aliquid sit eligendi et est. Debitis sunt qui nesciunt dolor ex.', 'af7cd114-35b7-3bd5-aa5c-4fe39450f642', '4e13c46f-6daf-33f5-808d-260b85d23030', '2013-06-17 13:52:35', '2004-01-06 15:51:09', 3, 0),
(48, '2617a3ec-ed91-31ec-845a-46a6bc379a8e', 'fnvx', 'magnam', 'Dolor tempora laboriosam beatae aut doloremque quas. Sapiente cumque inventore eum qui laboriosam reprehenderit quisquam.', '0aec877e-322c-3787-a460-f4db8a4c13bf', '238fa8ae-f9c8-3945-9063-78d453ccb014', '1999-06-20 20:11:23', '1994-09-14 18:14:01', 7, 1),
(49, '41223602-debf-340d-99d6-74df33fd4235', 'vjbj', 'impedit', 'Rem repudiandae provident sit atque. Nihil praesentium explicabo labore voluptatem non repudiandae eaque. Consequatur odio beatae laboriosam sapiente sequi eius vel.', '18d9c1f3-2598-3698-bcb0-07e497eaec62', 'df039294-f5b7-3256-b305-b261fb60d123', '2010-02-20 01:57:56', '1978-12-16 02:37:27', 7, 1),
(50, 'e6a073f7-8f43-3ccc-bc78-638d930da1c5', 'mhdo', 'repudiandae', 'Vel quisquam qui adipisci nostrum recusandae blanditiis distinctio praesentium. Explicabo eveniet iusto facere saepe in eius. Quia ut ad accusantium aperiam consectetur et ut. Atque enim illo in quae.', 'f67f2be0-cc64-3698-b709-83cad16d5dd0', '939ef94b-62c8-39ef-8b08-a6307c8c83f8', '1991-03-19 19:48:26', '1994-04-08 04:07:43', 2, 0),
(51, 'dce906e6-0eac-3836-8090-1be7218e87c8', 'edid', 'eaque', 'Odio ipsa aperiam id delectus voluptate hic enim voluptates. Maiores placeat enim vitae ipsam. Libero aperiam optio totam nihil. Quidem assumenda autem tenetur magnam expedita illo. Ipsum animi ad qui', 'f7a9308d-4244-342d-91e0-c03a14fd17d3', 'b71dd1f7-b0cd-38a1-95ee-e704dfbc2f59', '1970-05-23 17:40:29', '1983-08-01 15:59:37', 5, 0),
(52, 'd51891fe-cac8-37eb-9ea3-2ca4695a2878', 'tjei', 'inventore', 'Assumenda aut fugit omnis. Debitis vitae qui fuga id sed. Quos ad cum repudiandae vitae dignissimos excepturi sit quaerat. Error vel ad et dolorem reprehenderit.', '9afe79ee-be5f-3cf3-ad3a-346166b1d0a5', '2185bcd8-ee18-3e08-83ea-cb0c3e1910b5', '1972-06-05 19:01:57', '1991-09-27 21:40:01', 3, 0),
(53, '0580a274-8e59-36da-bf58-e0bd6a9a67df', 'sptl', 'aut', 'Aut et ullam totam. Quidem et voluptatum nihil sit dolorem exercitationem. Soluta velit rerum perspiciatis voluptatem esse sunt.', '58f76041-d2d3-3933-a894-a7de23e8ef10', '9a629acb-1ec9-38e0-b595-acc09bf908f3', '1991-08-23 04:34:04', '2001-01-15 07:40:11', 1, 1),
(54, 'd5144de1-b5f8-3119-9554-4953c5ac3d02', 'haty', 'et', 'Molestiae eveniet nihil perspiciatis quia. Vel molestiae repellendus beatae eum ducimus. Est et omnis libero maxime minima ut corrupti eligendi. Ea nulla consequatur saepe voluptates tempora itaque re', 'e7fa0d98-ffee-39af-9e2e-5390d5650422', '17b74ccf-08a6-3498-a0ea-2ccf8bd84663', '2015-06-26 07:37:15', '1983-05-11 12:32:41', 2, 1),
(55, '26f6ff04-b4e5-3a64-be4a-d2f0075fd9cd', 'dsko', 'vel', 'Aut consequatur similique cupiditate aliquid. Nulla officiis nihil quae aut dolorem. Et odio quis libero nihil nihil. Reprehenderit incidunt nulla aut odio provident officia provident.', '89865b99-54e1-3601-b9c7-816887842770', 'b39b5dc5-04a5-3eff-b2ed-bbbfa886ae71', '1989-05-25 15:41:41', '2005-08-19 22:56:00', 8, 0),
(56, '8b6094e6-315d-3da2-ae33-8aa45339237a', 'gial', 'aliquam', 'Veritatis numquam et quia. Necessitatibus aspernatur consequatur quia. Odit consectetur quibusdam rerum excepturi.', 'f9fa127a-a564-352e-9a8f-790f29cca031', '254203e3-f60a-3238-9e55-ebbb9c3ad8e4', '1982-05-24 23:50:06', '2004-11-05 22:50:36', 8, 0),
(57, '2ae3c268-de59-322e-b64a-63b5d8855465', 'jafy', 'consequatur', 'Sit facere molestias et ex aut. Maxime id explicabo qui blanditiis occaecati cum dolorum iste. Dolore quia amet ratione id iure.', 'cf916a34-7f8b-382c-8704-48a2d79e4a61', '2930787b-4938-365f-aadd-8420ca400920', '1972-12-23 21:57:38', '2016-05-12 21:15:15', 2, 1),
(58, 'cd3ffcfc-5c56-3298-95c8-e9dc4532bb44', 'rczm', 'veniam', 'Cumque voluptas facere sit quaerat necessitatibus. Alias excepturi odit necessitatibus illum autem. Neque autem voluptas id laudantium. Dolorem et quisquam quia qui quo.', 'f8d4157d-6d6b-36af-98be-6898d3785705', '2fa69ecf-3dba-3d43-87ee-bc16fa246549', '2001-03-11 03:24:21', '1991-11-21 02:55:53', 0, 0),
(59, 'd2ea9973-23b7-3075-8f3d-09e8178f07a9', 'zygd', 'dolores', 'Cumque sed dolores eveniet voluptas officiis quod accusamus. Vitae eius et reprehenderit et non voluptates soluta accusamus. Illo expedita laborum quia voluptatem.', 'd45215ba-3f29-38ef-8f40-5afa7f71c8ab', '9455cc20-4c2c-3a71-b424-bcfd2f9a3743', '1997-03-04 06:32:47', '1977-09-04 15:43:34', 0, 0),
(60, 'f1db2597-9f6e-3e5e-81fc-5675c2689ab7', 'zoeq', 'in', 'Sunt enim aliquid inventore est beatae commodi. Aut in et odio commodi doloribus. Veniam vel et provident qui. Culpa consequatur iure voluptatem aut necessitatibus.', '6f6c207c-17dd-39d7-b28e-0f8d45f65a06', '287e6d53-27ca-398c-bfe2-db8ddbaaa162', '2007-09-23 11:01:38', '2003-10-15 22:13:12', 6, 1),
(61, 'a447cee6-87ba-33ba-b11f-ccc5b86b3a42', 'hlcq', 'nobis', 'Eum blanditiis nam aut perspiciatis minus iure modi. Nobis vitae quo ut animi est. Ut fuga quia nisi ducimus molestiae et voluptatum. Et aliquam sunt quae sunt.', 'f515b3e2-f60b-3491-89d7-cde8fef1b9ba', '89581d6d-0e6e-3c04-9d35-3d592f6331b4', '1988-10-21 22:43:13', '1985-03-16 22:27:30', 3, 0),
(62, '596a906a-a075-38d6-bdaa-77a39336f6a5', 'xmie', 'nulla', 'Doloribus rerum hic est voluptas rerum temporibus iusto. Sunt ab tempore fugiat quis. Iste eum minima dolores ratione expedita sit.', '89db8c83-4fd2-3f7d-8eb8-416d5a5c897d', '15911468-ef99-3290-88d4-223167771e5f', '2013-06-19 01:07:01', '2000-04-17 01:23:54', 9, 0),
(63, 'b51e975c-c570-3574-b8ef-6a7fd6304bf8', 'ekmj', 'eum', 'Velit inventore fuga deserunt id cupiditate possimus sit. Rem nihil autem voluptatibus ipsam.', '56b584ec-00e7-371a-a471-af0fef7046e8', '7a612bc8-22f8-380c-b78f-7c1fbc5a2afd', '1999-11-14 06:52:11', '1981-01-28 04:09:58', 4, 0),
(64, 'a90b9d9c-b821-37f3-beef-70fc3774af2e', 'tdeg', 'aut', 'Vitae explicabo perferendis minus qui aut. Officiis nostrum placeat vel. Laborum dolorem possimus cupiditate iusto. Nisi voluptatem exercitationem recusandae et excepturi.', '6ee6f488-f449-30f4-aa31-3d8fe9dc69c8', '0b7c9348-82a8-30cb-ab9f-26a66bcc6046', '1980-11-24 02:00:20', '2013-03-19 17:07:33', 4, 0),
(65, '68736ea0-9458-3e23-a7c8-93157c45fcf6', 'hwoe', 'consectetur', 'Recusandae aliquam iste pariatur atque. Itaque illo sunt rerum earum eum qui et. Fugit ab illum neque possimus non vitae tempore. Voluptatem accusamus repellat itaque temporibus.', '3975df21-ce23-319e-85ad-11f5c305b5e0', 'bd303065-aeac-39ea-bd39-c70a95fdde61', '1998-09-22 04:22:51', '2012-01-29 16:48:40', 8, 0),
(66, 'd204c9d0-a1cd-30ff-8094-eb723b7f7d24', 'jvcn', 'in', 'Pariatur eum in illum. Quis commodi et voluptas qui quia. Et laboriosam quis architecto sed nulla iusto. Excepturi quibusdam sapiente voluptatibus iste mollitia.', 'aa0b0df0-a195-3bb4-8900-91f446ef8193', 'd069385f-23c6-3adf-8134-1026a789a672', '1972-05-25 02:42:05', '1985-03-28 23:05:31', 0, 1),
(67, '647d79b9-106c-3a93-8fb1-4a07f6e297e8', 'bcbv', 'animi', 'Dolor et nemo vero. Quaerat id sapiente ut illo accusamus occaecati. Aut dicta aut alias est inventore tenetur repellat rerum. Quia autem pariatur porro facilis sequi praesentium. Ea itaque explicabo ', '7b22735f-0253-327e-8fa9-feba795e557b', 'd1c269ff-d846-300c-9562-8887198fb195', '2001-06-23 08:48:12', '2000-12-26 09:48:53', 6, 0),
(68, '52e823a2-e187-3866-972b-83589050d968', 'pnkq', 'est', 'Aut voluptatibus id ut necessitatibus beatae suscipit dolores. Unde nemo placeat dolor magnam. Et commodi nam sed sapiente ipsum nemo ratione. Nihil odio voluptatem eveniet reprehenderit aperiam aut n', 'a386071b-16a4-3c5c-8b84-6dcafd99d0d1', '0cfa956a-3af2-332d-a3a6-bd2a27c03737', '1978-01-27 08:34:02', '1995-05-07 06:25:11', 6, 0),
(69, '517fa78f-801f-3da4-8653-615ceafdc160', 'aufc', 'sint', 'Aspernatur necessitatibus beatae corrupti asperiores. Non perferendis doloremque ipsum dolores. Qui omnis perferendis ratione quam non voluptatibus quaerat. Ad quae saepe praesentium sunt.', 'b6cdd3f5-bf45-3b51-8f13-90763e4218de', '7faba307-79e6-3a2c-88ad-2cf18939df4e', '2011-06-15 18:38:42', '2018-01-20 23:14:22', 1, 1),
(70, '68fb3efe-2ac8-33c1-8afc-e4a103c749c4', 'agnz', 'consequatur', 'Perspiciatis architecto qui ut et veritatis non omnis. Repellat nihil quod qui fuga voluptatem perspiciatis. Vel voluptatibus porro reiciendis aut voluptate.', '805347f7-824d-35bb-8964-922b9aa935ac', '31aeef5b-63a5-3551-ac1a-95775097d862', '2016-01-26 03:45:16', '1990-05-24 13:01:50', 5, 0),
(71, 'fe9ce983-952c-371c-9742-699e945b7239', 'fvja', 'omnis', 'Quidem commodi dolor quae qui ut odio. Doloremque nihil optio autem ipsa nesciunt. Repellat cupiditate facere voluptas ut cum vel.', '1e19d701-7c3d-38b2-bbb3-8bd67aecad55', 'd383effb-e363-3038-a183-b38347a800f0', '2014-10-30 02:44:44', '1974-04-14 15:13:31', 1, 1),
(72, '023f99d6-75f7-3a0b-8d86-bde55804edf2', 'tssr', 'optio', 'Facere nam quae sed sit molestias nam. Quod rerum aut quibusdam qui. Quia suscipit laboriosam eos a qui eaque.', '08c5b808-d1e4-31b5-a8bc-902006161f04', 'e1bda2b4-d19d-3c05-9e98-4f4135114355', '1991-04-26 05:46:16', '2007-05-01 05:24:27', 8, 1),
(73, '8e89d932-0310-3e48-8233-c33efde5e056', 'hwsv', 'et', 'Voluptas nesciunt non ut. Et nihil ab ea sint id reprehenderit ut.', 'c48ba3ba-0fff-3c08-908a-0b0a7f94f45d', '5e5335bc-9d70-3d52-8319-1273631ebb36', '1999-01-05 20:05:02', '2012-07-01 01:43:40', 8, 0),
(74, '08705e75-bb30-3104-a0cd-7edc4498cf92', 'hlsc', 'est', 'Ratione temporibus est natus possimus soluta autem. Neque consequatur iure unde pariatur nobis accusamus et consequatur.', '92611f6f-d2ae-3e69-be8b-67c3d10b79cc', 'e89346d5-0b69-3be8-a73a-caecf69d3548', '1990-07-25 11:13:57', '1970-09-29 17:23:14', 6, 1),
(75, 'c9ec0e64-0e81-3a47-8a4a-6add3d09a288', 'erlk', 'occaecati', 'Totam quo earum et sunt nisi minus consectetur. Ipsam suscipit tenetur nostrum repudiandae. Est animi est vel et excepturi eos. Laudantium laudantium omnis aut et harum nostrum sequi. Amet sed ut beat', '1613caf4-ccce-364d-b1f6-a370e0041c4d', '0ae5626e-4aa0-39a8-8e06-22d2d05273a5', '1974-07-23 14:25:09', '2006-02-07 04:38:42', 4, 1),
(76, 'b63fe1fa-5e44-36ce-b3a4-783a81ba519d', 'yiyw', 'vel', 'Esse pariatur dicta sint sit. Incidunt amet dignissimos accusantium sequi consequatur delectus perferendis.', 'e13da05c-d372-37a0-9ea0-61147bab4e52', '25837bd3-e660-3e83-912a-48af1038c19c', '2001-09-24 01:32:19', '1986-03-07 02:14:05', 7, 1),
(77, '53591d1c-a152-3a65-beb1-ff28191c525e', 'wjnw', 'alias', 'Eos voluptatibus nisi sit dicta porro. Temporibus eos natus tenetur. Dolores officiis quibusdam temporibus sequi error delectus ex. Debitis impedit ut rerum et.', 'ea51ed35-fcec-3b85-932a-e708b7ae5839', '86cddbca-4c35-3c9c-af4f-2f5ade4bd12e', '2002-03-23 06:32:59', '1991-03-20 17:12:35', 8, 1),
(78, 'd9802a04-f55b-328e-adfe-7007dd2db126', 'qjiy', 'facere', 'Magnam rerum unde occaecati. Fuga sint qui vel nam aliquid maiores possimus ut. Totam minus incidunt et dolor. Fugit sapiente beatae eos explicabo ea ipsum ut.', '50142290-ff31-33a4-947c-0323acdeca4b', 'bb955750-c3e6-3f7b-a7eb-254d35d0fce8', '1974-10-08 19:46:06', '2000-09-30 18:43:01', 8, 0),
(79, '8676ad18-d5c3-3a89-879f-f1705453b4e8', 'zjqs', 'suscipit', 'Debitis minima praesentium iusto voluptatum odio excepturi. Quaerat sapiente qui voluptatibus eum id quae voluptatibus. Quos sit voluptas id.', 'de50eb29-eb51-3b9d-b228-528527f13cdd', '6613f0c5-8a3e-3ed7-8667-3662e99ceb65', '2014-03-12 05:47:06', '1987-08-26 21:04:26', 7, 1),
(80, 'b9c7ce9b-8f63-379f-bf5a-5f47905cc7a9', 'sdut', 'voluptatum', 'Quae nihil et est et cumque sint voluptatem hic. Voluptate molestias sit est magnam maxime. Molestiae dolores repellat commodi velit.', '8dc57011-9037-3058-9f40-faf2edf3fea7', 'a052d07b-3559-3484-8fad-7e542b186028', '2007-02-11 13:16:31', '1972-10-22 05:26:05', 9, 0),
(81, 'b0b3385e-9b82-3be2-adc5-32554cbbc0a6', 'cqtv', 'veritatis', 'Ut fuga cumque beatae placeat. Quia veritatis quia reiciendis soluta et impedit. Ipsa non est dolorem.', '252987b1-9aa0-3c5e-b6c7-a2006ed7fda4', 'bbec29ec-3aba-34c1-85e5-996e92fa5a89', '2015-02-07 20:54:35', '1979-04-04 09:29:04', 8, 1),
(82, 'd7ee8dbf-24d8-324c-b7b4-957683ee18c8', 'wdou', 'est', 'Et sequi eum nostrum facilis voluptate quia. Omnis tenetur enim quod et libero mollitia tenetur at. Non totam itaque nesciunt vel quidem reprehenderit sit. Eveniet vel vel inventore quibusdam dolores ', '899a5272-c2d1-3920-a2ab-76bb2b0cd6db', 'ff37c57f-d46a-37f5-8830-aedf559cb6a7', '1995-08-28 02:47:40', '2012-05-23 01:24:16', 9, 0),
(83, '14385589-5098-38d1-afc1-20333f5c2600', 'yzgf', 'sunt', 'Vel repellat aperiam non culpa quibusdam voluptate quis. Aut non omnis dolores doloremque tempore cum. Doloribus alias culpa quos doloribus dolorum et voluptatem quae. Totam ut cum cumque alias. Aut n', '5b01d6e1-af01-3a27-8d12-c0ba8f75ea13', '80ac5a76-984d-3a4f-a045-8a7b9f733ce9', '2002-08-12 12:09:26', '1996-01-22 17:50:42', 0, 1),
(84, '0905f34a-9fe5-36fe-b129-5e367fa64fbf', 'ogmb', 'est', 'Ut nesciunt et quae delectus aut facilis cupiditate. Quisquam nihil magnam nulla nemo delectus repellendus.', '94faa289-aaa1-3ef1-97bf-e008a8778cf2', '26b9c186-28d2-3d44-923a-a7317c4fac9c', '2006-10-23 02:27:54', '2001-09-06 08:57:17', 9, 0),
(85, 'aa376dd4-e05e-394d-b6c8-25d952a70a48', 'ldrs', 'enim', 'Officiis sint ipsum non. Exercitationem officia aut corrupti at sed ut vel. Alias ut et sapiente amet doloremque.', 'f59759ec-f963-3389-ade0-794699a65f38', 'a9ba947d-5218-3527-86fc-69e41162bcd2', '1979-07-15 14:34:37', '2002-01-26 08:40:43', 8, 0),
(86, '83798ab2-e707-367e-9643-36baa6b3e81a', 'avtk', 'provident', 'Est distinctio itaque corporis ullam dolorem id eveniet sit. Ut cumque a doloribus accusamus velit voluptas. Debitis ratione doloremque quae qui. Totam suscipit voluptatum magnam impedit.', 'c5ad9647-7a04-3725-8fe1-f74ad7a59bb4', '84d5d97a-3dde-39d8-8f37-ed12240e78ee', '2004-11-24 10:09:39', '2011-03-24 13:00:56', 1, 1),
(87, '1c8feef7-80ac-3754-a508-0d14a3ce12d2', 'cmxw', 'blanditiis', 'Et qui corrupti architecto soluta. Sed quaerat ducimus eligendi est qui eligendi molestiae. Ut dolores sunt ducimus cupiditate dolorem nihil. Ut consequuntur deserunt ea consequuntur unde qui earum fu', '6653deac-0edc-3252-9605-e45bade9f119', 'fd25fdd5-aca0-3bd5-b059-25d3cf180a92', '2009-02-07 01:34:40', '1997-09-27 10:58:11', 0, 0),
(88, '85fdb6d8-84f7-3c1d-a028-ef6be3035bab', 'khae', 'voluptate', 'Eveniet vel repellat qui quas sapiente doloremque optio. Dicta quia ad ut architecto. Cum est pariatur id nisi voluptas possimus rerum animi. Quisquam ut rerum tempore deserunt.', '2aa329f0-611f-3991-8c4a-7690085ec8b6', '55084dad-5016-3960-b4fd-1c8b7b670d07', '1994-11-23 01:32:13', '2012-10-04 12:50:12', 2, 0),
(89, '5282ad0d-d732-3702-b611-02bc38c0e8be', 'onok', 'necessitatibus', 'Quia distinctio fuga officiis. Eaque ipsa at pariatur facilis asperiores. Ea porro pariatur laboriosam itaque dolores non et.', 'cb9a7b4e-1768-3555-b081-50b8d6760baf', '2f0d2ecf-618a-3833-b240-6252b47c3fae', '2010-06-03 23:00:27', '1974-03-27 11:09:50', 5, 1),
(90, '66411a09-2339-30e2-9554-6e29a46e0a48', 'lekk', 'ullam', 'Voluptate voluptatem fuga corporis itaque aut. Quia eius et totam voluptas voluptatibus vero rem. Amet sapiente voluptatem odio nesciunt.', '57a69911-1d96-32dd-9cc9-05e2b8ce799b', '5d66ff8e-4c8d-3dce-87f2-4bf016d372c2', '1971-01-05 04:17:49', '1984-05-20 21:32:08', 3, 0),
(91, '289b28da-a5d3-38b0-a47b-3565c2d0e61b', 'iyjl', 'quisquam', 'Nisi iure ab in quia dolorem eos qui placeat. Harum non hic hic necessitatibus eius aut reprehenderit. Dolores omnis harum illum. Magni architecto et sint qui blanditiis aut.', 'df7a19c1-2e92-30e7-95fd-b0cf6508d108', 'b7a3c751-8141-3ca9-9fa7-4ab6b38a4eb7', '1970-08-01 15:10:45', '2017-12-10 08:30:37', 7, 0),
(92, '12d607e9-be2d-30b1-b409-3b00ed331691', 'wzin', 'dolor', 'Dolores commodi commodi facere similique. Fuga dolorum cumque blanditiis illum et ea. Debitis impedit ipsum aut nostrum. Omnis molestias nulla odio et qui ut ut.', 'e957b36b-f2b3-34db-b0c1-366204f4008c', 'bc37bb28-5dce-3f65-8441-8ffaadf2e122', '2011-09-03 21:06:34', '1972-02-25 07:50:38', 7, 1),
(93, 'd59d1377-2a0f-3ee4-bd74-5422e61fa674', 'viht', 'excepturi', 'Repellat assumenda ut cupiditate dolor quo explicabo. Sunt eius eveniet debitis consequatur tempore et quos sit. Veniam reiciendis eos quae necessitatibus in quis perspiciatis. Unde voluptatem beatae ', '26a36d8d-58be-3058-93a7-acc7f7c07e18', 'ea9b2dd6-c807-3cf2-9d99-6436c8fa747f', '1999-12-06 10:47:18', '1973-05-24 09:17:05', 0, 0),
(94, '051c92b7-7327-3bc6-b966-f6117425d46d', 'neks', 'adipisci', 'Laborum libero vel sed non accusantium autem quis. Ex totam cum dicta fugit earum quasi.', '4723b89a-abb7-3a44-902f-d04254e9560b', '2903c054-9d71-31a7-a8b4-353a0aceb6f4', '1991-08-22 14:04:31', '2006-11-14 18:53:02', 7, 0),
(95, '1a8b5a3a-7e71-35f1-97cc-7193a3e7aa39', 'uacg', 'ipsam', 'Odit architecto accusantium esse impedit. Et aspernatur at asperiores assumenda nostrum. Neque cum doloremque voluptatem atque nihil alias culpa.', 'd309fac9-9434-3a57-bb3d-a2a32ea8a3e2', '9b973087-e39a-3602-a2d2-f1ac9edcd76a', '2004-04-29 05:54:12', '1993-03-05 09:07:28', 7, 0),
(96, 'c8ee3b08-07bd-35aa-85cc-eeff24223351', 'fvvw', 'molestias', 'Eius minima sed excepturi adipisci unde. Est minima rerum sapiente. Sunt ad eveniet nulla quia eligendi. Porro aut assumenda qui minima.', 'a00a2b48-fd77-3453-bd76-b02c24a81f3b', '4c5fc1a3-a223-3170-8b88-f763b6acc766', '1977-05-11 12:52:23', '1970-09-02 22:57:40', 3, 1),
(97, '9baa1195-2da2-341a-b2d1-f8b74a320bb6', 'buck', 'aliquam', 'Impedit quo natus laborum ut odit. Consequatur aut porro reiciendis in. Voluptatem iste quos ab incidunt delectus consequuntur.', '6cac99f9-ae46-352e-a8e6-5a4f2183c961', '057eec4f-1017-3836-922e-e1c307900acb', '2006-02-24 20:15:40', '1984-04-17 15:59:27', 5, 0),
(98, '09015fff-8845-32c5-999a-bcb12f24699e', 'srdr', 'aut', 'Qui necessitatibus et dolores dolor eos. Voluptas quasi dolorem est ducimus nihil sed non modi. Repellendus sed ut reprehenderit magni quis.', 'f6793349-c098-384a-9621-4e86e1875fdf', '25f790d8-c9e0-3326-9730-b8f644f0c27f', '2008-06-01 21:54:20', '2014-12-16 06:44:35', 1, 1),
(99, 'c303ad61-75be-37ea-b578-05582e4f78e9', 'fpok', 'at', 'Enim laborum dolores libero vel sint. Architecto et quis omnis consequuntur. Consectetur est delectus totam consequatur iure pariatur. Sequi consequuntur unde facere culpa et consequatur incidunt. Par', '58c6e790-e235-3f80-82f3-1cf020c6e7a2', '7ce4c02b-0817-32c2-8b71-d390d4637141', '1973-09-26 05:14:13', '2014-04-02 18:09:59', 3, 0),
(100, 'a8a0c4c1-5ede-3252-9f99-d50173fd2063', 'szik', 'natus', 'Natus nihil voluptate vero dolores veniam. Omnis quam sapiente autem provident ex distinctio. Eius a et animi. Distinctio consequatur est aut odit quasi nihil dolor.', '0185dfc6-4cf3-3cfd-adcd-bc2ddc2577e1', '472cb144-8e53-3cd3-ab3c-5b5aac53f0dc', '1981-07-07 03:33:33', '1995-07-02 03:10:09', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_skills`
--

CREATE TABLE `hr_general_skills` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_general_skills`
--

INSERT INTO `hr_general_skills` (`id`, `CompanyId`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, '973b7568-121a-3774-8745-72d92cf8a688', 'omjl', 'eos', 'Et aut quod eum id. Quibusdam expedita tenetur sunt. Unde a non eos. Similique ea placeat et non eveniet vel.', 'e2c5f012-a205-3205-a6e5-d9b786a00aab', '8f3d1d40-a7fb-3413-b3d2-fb522c1d97a6', '2002-09-08 23:18:12', '1977-07-28 07:54:27', 8, 0),
(2, 'b501efd6-6575-34c3-95c0-d5e826a91383', 'kmzz', 'ipsam', 'Facilis perspiciatis et et asperiores pariatur natus. Architecto dolorum dolorum qui quis ea recusandae. Accusantium placeat delectus aut consequatur cumque labore amet. Sed explicabo dolore quae et u', '7d10ea42-6464-31db-a23e-cc4fccdc7a01', '12ce3ff2-30ac-3372-a2af-81c7186c39a6', '1981-12-23 22:34:38', '1982-04-25 14:45:23', 6, 0),
(3, '408d4556-8191-31b7-beba-3456baae457c', 'hxmi', 'beatae', 'Provident odio libero praesentium. Quo dolorem quibusdam hic quibusdam dolores error. Corrupti tenetur omnis hic et quia. Eius non ut eum soluta illo.', 'e3241026-a69c-3477-be60-6b433d22f669', 'feaf0807-745e-3334-9ff4-9bfcd3fbede5', '2010-11-30 06:26:23', '1982-05-25 03:57:59', 5, 1),
(4, '1cec1817-5e7d-3cc9-bfc1-69525fbda1ec', 'gmvd', 'atque', 'Consequuntur ab accusantium quaerat provident voluptate. Nisi optio iste eos quo consequatur placeat quisquam. Magnam non sint consectetur libero.', '8d5a8e43-7f4d-386b-8056-99717765d4d4', '7b447ae4-da19-374a-bdc7-63bb0af890da', '1992-01-11 02:05:13', '2004-06-30 23:50:53', 0, 1),
(5, '2a92e53c-3e04-3c66-b6bd-5a0e31a10c97', 'bicy', 'eaque', 'Non dicta voluptatem dicta consequuntur voluptas consectetur quae. Id perferendis ut et tenetur voluptates. Harum aut ut totam officiis dolores omnis.', 'd34fa6b1-6691-381c-b2dd-036fd74ddf58', 'fd4b31a8-1dcd-3584-a2df-16d4285035f5', '1973-01-09 09:17:18', '1979-05-25 03:00:19', 9, 1),
(6, 'd7d693b9-e423-3915-9882-4a856819254d', 'dufj', 'aut', 'Id enim voluptas dicta officia. Consequatur minus sint iste facere ducimus et architecto. Illo cumque qui dolore earum nesciunt quis et qui.', '66124a33-32e4-3f66-b583-7c256ed85e7d', 'fb90843a-6e20-3c42-a30c-386f6e1477eb', '2000-03-09 17:28:54', '1998-11-23 12:51:25', 2, 1),
(7, '73c306c3-9457-3adb-8607-1c8eb5578083', 'dchi', 'est', 'Ab eum provident omnis nobis exercitationem. Molestiae quidem voluptatum minima ut molestias. Ut quis sed fugiat natus. Quo odio ipsa consequatur architecto quo qui.', '8f7fb07f-cb26-3af0-8ad1-7b13ec59a663', 'aebcb37b-894d-3136-93e8-cec5fb5f092e', '2014-11-04 22:17:05', '2010-02-18 19:00:21', 9, 0),
(8, '8fc7568e-1f59-3cf6-8aa8-5eb1ec15d5f1', 'uwuz', 'et', 'Sunt et et architecto optio libero vitae quaerat. Fugiat velit fugiat expedita omnis id. Possimus eum eligendi odit et. Consequuntur in eaque perspiciatis.', '08f2c509-5fdb-393b-8c60-3bffa4f18890', 'b3dea191-8325-3b0e-813a-971cafd6fd4c', '1982-08-11 22:22:31', '1985-08-20 17:55:42', 2, 0),
(9, '0f8c2ce2-cbe6-3473-9a6f-f9c136cf3a06', 'ziia', 'ut', 'Laboriosam odit amet eveniet repellat earum facere rerum est. Consequatur animi nobis et nisi labore. Ea eligendi nesciunt aspernatur esse incidunt veniam. Porro totam sit molestiae quae fuga fugit.', '5807b204-ec5f-34d8-aade-e28d6af24c26', '20d5cb3c-5a2f-3369-b226-4b6e4b363788', '2014-07-24 17:06:59', '2017-06-29 10:49:49', 7, 1),
(10, '4aa3abc1-7acf-3518-bdc8-b5a30635e195', 'iguz', 'sapiente', 'Enim consequatur pariatur facilis et deleniti. Vero ut beatae vero esse iure. Magni suscipit aspernatur et.', '6cac6224-c083-3a80-8405-3ddaa425b356', '00fe4bea-81b9-3cd4-a70d-61c35513e678', '1985-07-04 19:14:50', '1982-01-24 02:40:50', 8, 0),
(11, '5c0eea3f-985f-357e-bab1-3a50213bba82', 'dfxl', 'tempora', 'Vel et quia optio nesciunt et sapiente molestias. Quaerat necessitatibus porro esse delectus voluptatem. Quia beatae ratione dignissimos eligendi.', 'bb0b8bd0-9e49-316e-9ce9-6528c914407d', '434671ed-5ffd-3b1a-a2de-421ee2f07f83', '1972-06-11 21:02:12', '2002-01-02 07:00:10', 1, 1),
(12, '2316a4d1-8f8f-3eed-bf58-62d9951adf06', 'fkal', 'culpa', 'In delectus eaque libero consequatur qui maiores architecto. Sed at unde aut voluptates sed. Molestias optio iusto laudantium omnis enim et.', 'c7415791-fe8f-3e18-a9fd-3885ddc771fa', '1f369c18-ad13-3edd-b628-3a56fbee1e87', '1992-09-26 21:56:49', '1979-11-01 11:56:52', 1, 0),
(13, '0b732faa-6479-3b6c-9160-f7c9c4afeea3', 'wakx', 'dolorem', 'Doloribus hic voluptas excepturi et. Cum quia aut mollitia placeat libero. Voluptatem dolores iste ea qui. Quasi sed qui eligendi ea aut vitae.', '07a652b8-b4b7-3c33-a46f-77ed7cd293b9', 'f67b9bc8-2545-3ef1-98c3-564a2b391c64', '1978-08-20 17:30:35', '1980-11-06 22:31:20', 4, 0),
(14, '55168695-c465-3993-a915-3a8cf7e3e1d6', 'qjyh', 'laboriosam', 'Corrupti et impedit et. Omnis ut a aut. Voluptatem occaecati eaque aspernatur sunt non eaque ut.', 'c098530b-ae20-3e6e-8749-30182fe4db6c', 'ab361a72-d243-34d3-9950-a8b0d6f1a039', '1973-03-05 05:34:01', '2018-02-04 23:28:34', 0, 1),
(15, '84b73085-ace2-386f-b905-72173b84a68b', 'txho', 'et', 'Molestiae consectetur velit totam aut a consequatur nostrum. Veniam quo quasi voluptatibus sit quos voluptatum debitis. Animi doloremque omnis molestias cupiditate incidunt. Enim eum facilis omnis sit', '2dfce18d-3ee4-3453-9b34-a022669a3353', 'e64d2c1e-a51c-316e-9dc8-685d19779b1f', '1971-12-31 23:15:30', '2012-05-20 16:01:22', 9, 0),
(16, '02dd8e46-0eed-3658-98ba-6e17f5c7af53', 'khry', 'illo', 'Hic dolore porro hic dolorem. Sunt iusto corrupti et optio necessitatibus. Omnis occaecati odit accusantium culpa quia asperiores. Molestias harum veniam ullam qui ab.', '61eacf44-f222-3710-ba3b-079a5965dc6c', 'fbe406a6-4740-3b0a-8286-719c4ec0098d', '1980-09-15 01:00:48', '1994-04-29 01:49:25', 3, 0),
(17, '7fe3ba84-3476-3036-8216-a75f8d22936c', 'ppyx', 'aut', 'Vero in quo distinctio qui rem et ad. Id ipsa fuga impedit excepturi ab in.', '3b77076d-accc-3253-a0bf-e474f70e9e6c', 'da04e159-b1bd-340d-9d9c-c990d3a3f844', '2004-09-22 00:22:19', '1992-09-17 17:37:31', 1, 0),
(18, 'a8e4372c-b1b4-36e5-9d17-6e2863eaa4fd', 'pmtr', 'blanditiis', 'Quas magni sunt pariatur consectetur. Provident qui aliquam blanditiis architecto nam. Molestiae magnam ea deserunt illum. Aut inventore quis adipisci minima inventore eos earum.', '2dbc17ea-a0ce-3882-a138-456acd89fc5f', 'cd1bc0c5-0862-3fbf-bb52-4f81d3d72557', '2016-01-07 02:55:35', '1970-08-01 03:03:05', 8, 1),
(19, '970c1b11-89ac-31fb-a86e-fad492ac472c', 'xink', 'et', 'Et voluptatum perferendis aliquid sapiente suscipit. Magnam consequatur modi est doloremque debitis est. Impedit qui architecto soluta consequatur.', 'b17fa2c7-6656-3d0d-9ea5-355839c06e8d', 'd8ca36c7-dc1e-3c74-83d0-9f7c59fa2ba8', '1996-11-16 14:01:31', '2008-11-07 11:43:26', 7, 1),
(20, 'fa93c876-359e-36af-9026-37ff5d9c9a63', 'pczu', 'omnis', 'Ut libero neque asperiores delectus. Provident sint et commodi eum eaque harum. Autem voluptatum voluptas illo asperiores sint. Voluptatem ducimus placeat quia ut.', '88fdc12a-9c5b-36dd-b823-c8bf77b38de2', 'f581aa58-0611-3753-bd32-2d17b64adabd', '1973-02-14 20:42:40', '1992-10-14 02:54:52', 5, 0),
(21, '2f0ce890-bd8d-3e7d-ba91-ed4bdb548cfc', 'psdk', 'non', 'Qui quo pariatur blanditiis occaecati adipisci corporis. Recusandae cumque explicabo laboriosam ducimus voluptas quos. Est est id laborum dicta libero ullam harum sunt.', '35dbea51-f941-3970-b4a5-d953a2c43aff', '5969fdee-5a36-32ce-90bc-98ce2abac2fd', '1997-02-01 07:29:21', '2018-03-07 23:01:44', 3, 1),
(22, 'a1596bc0-d824-3f1b-8f4e-cfa65b5efd0c', 'uoej', 'ipsam', 'Eum ut esse voluptatum aspernatur. Hic sapiente voluptate ipsam perspiciatis maiores. Aut ratione voluptatum quae voluptate est.', '0e9e21cf-e7a4-32d3-a424-4df796cc2093', 'ed6093d9-371a-3746-b351-1dc89cb6dc24', '1982-05-02 08:53:56', '1991-10-19 16:17:40', 6, 0),
(23, '0632c0d6-5685-39eb-af00-fdd92d7ec776', 'rdzt', 'sed', 'Nihil placeat sint ut molestiae sequi ut. Ducimus quisquam quo odit occaecati et vitae. Nihil architecto deserunt error magnam voluptatum.', '8014c27d-29ac-33cc-ac05-dd660cd7cb02', '6bbaa83c-f7a0-36b1-a2df-e22aa45f99d2', '2011-11-27 03:11:51', '1991-08-09 09:05:48', 5, 0),
(24, 'ef8ddd6c-81cb-38dd-a528-d14fd2648641', 'fros', 'dolore', 'Earum veniam itaque atque libero autem. Quod odio iste quaerat illum. Nobis culpa animi ullam.', 'e67a96fd-4d0e-3ee8-82b0-b37787f1753e', 'a25acc94-5143-36e8-9b1a-32a5c1701e79', '1997-06-22 06:22:13', '1984-05-25 09:01:27', 9, 0),
(25, 'cde5ff1b-1a9b-311b-94ee-a42e9f18f3ad', 'kxxv', 'corrupti', 'Eos corrupti sed ut dolorem quam est et. Mollitia molestiae atque soluta a. Eveniet velit consequuntur explicabo distinctio.', '8ef44570-497b-333e-98a4-41b4f141ee0d', '8ede4deb-75af-3da0-af85-5170a78b9a75', '1994-11-18 02:20:25', '2013-01-13 19:05:07', 6, 1),
(26, 'ee968213-6dca-31a3-94a4-2fe397cb2bdd', 'lmzh', 'nobis', 'Ipsa maiores illo veritatis ut officia. Exercitationem unde ullam omnis et ratione tempora et. Impedit aut qui dolorum consequuntur.', '3ff78b9b-7290-3fec-9178-c1fe180b41e9', 'c1aa2b24-785e-3457-befd-ef821491067b', '1988-09-16 21:53:56', '1978-12-26 10:37:14', 0, 1),
(27, 'da77ac57-830a-3028-b37f-f8025ed79bd6', 'qrtq', 'at', 'Praesentium sunt laboriosam incidunt et. Est fugit error praesentium consequuntur quo ut harum. Est rem dolor cum tenetur.', 'd095b491-c318-355b-a780-097f2f9cf40d', 'd3a5e00d-dd44-3270-8e84-a6ac2de079d1', '1989-09-05 12:52:29', '1982-12-25 23:17:37', 5, 0),
(28, '209af56a-0c04-38fb-b1b7-1408a8c67f89', 'zoum', 'dolor', 'Numquam praesentium optio eum aut soluta enim nam qui. Alias sed et dolores illo sapiente et.', 'f2da515e-1f8d-3c75-93b9-3b88f412e7b9', 'dacb8fe1-4866-3df6-81cf-4897a5853f3a', '1995-10-30 20:00:09', '1973-07-07 20:20:28', 7, 1),
(29, '01384def-26a9-3bc1-a43b-05a2deec4b57', 'nzgm', 'sequi', 'Laborum itaque ducimus laborum error debitis omnis ipsum. Corporis deleniti voluptatem vitae sunt vitae provident. Ullam dicta nostrum est dignissimos et.', '3d4d628e-2976-363f-b097-083e03d4a555', '990dd530-ac88-357c-aec2-53c54fccd7ba', '2003-07-11 21:41:53', '1978-05-27 04:09:18', 4, 1),
(30, 'ce08ed72-983b-3841-a9d5-0c4dcf8b91a5', 'rguv', 'sequi', 'Aut et incidunt atque sed architecto. Vitae impedit facere nam est.', '4dec29d4-3a69-36ec-8b7a-c1d3f3d6c3ce', '0c7c8003-fbf7-3f71-a503-084f02251aae', '1988-01-17 18:57:54', '1994-06-11 10:36:11', 2, 1),
(31, 'f2746df7-1ace-3065-b817-72cc8ea3301b', 'gcco', 'placeat', 'Doloremque tenetur quam eum aut dolor magni. Repudiandae ullam quia consequuntur ut adipisci aperiam voluptatem. Sed ea ad et rerum dolores dolorum reiciendis. Hic nobis neque explicabo ea quidem et m', 'e1e4b8f2-7e82-352d-82c3-9a2b223fdad5', '66e7a25b-3375-3a38-971e-b368103ba36a', '1999-03-13 22:01:56', '1979-01-13 00:42:40', 9, 1),
(32, 'c9bb47ac-3251-3d56-9191-8cd7eb89acfb', 'equb', 'fugiat', 'In voluptas unde doloremque modi magnam tempora. Voluptates aliquam enim doloremque cupiditate.', 'a042fca4-f5df-35b8-acec-ea1b4d40999d', '1d4104f7-1441-39ba-96a0-d666e686d551', '1989-08-13 14:14:53', '2000-11-26 21:32:27', 6, 0),
(33, 'f833a27d-700f-3303-8351-19351df8dbe6', 'apjl', 'iusto', 'Nemo libero voluptas reprehenderit occaecati. Totam repellendus natus vel dicta iusto atque corporis. Quas debitis neque harum.', 'd6360e53-b44c-351a-84cc-777c6a09714b', '6cc5fb1a-e1fc-34ca-9caa-cb3a86ee5a2f', '2003-02-07 23:54:34', '1994-08-30 01:25:41', 1, 0),
(34, '7725106d-e312-3f7f-8f9a-a8ea46788386', 'lqeu', 'et', 'Saepe sapiente asperiores sit numquam. Odio velit temporibus dolor qui dolores itaque placeat vitae. Quam nostrum quibusdam ipsa dolor aliquid aut totam.', '74b1d867-5396-39f5-baf1-69aa9243b45c', '0ec05c6a-ef24-34d3-bb15-1a3bd4e44294', '1997-07-28 18:44:15', '1983-03-23 17:50:18', 6, 1),
(35, '6d825542-6f37-3a75-b02b-f279b5610c4e', 'owiv', 'veniam', 'Autem ducimus assumenda minus fuga nobis. Aperiam enim et quam id totam. Cum nemo reprehenderit sit.', '7cc10518-4213-386d-8be9-1affc3857109', 'f8ed7d60-ea7c-3157-9e1b-b9a0e942d299', '1995-04-25 12:14:29', '1981-09-27 04:20:34', 0, 1),
(36, '1927ef80-6ee4-3b09-8808-2704ac946059', 'ejjq', 'sequi', 'Temporibus quia voluptas maiores iure quia maxime necessitatibus. Facere repellat aut voluptatem est totam velit. Ut optio quia ut. Illum et fugiat id nobis.', '6e3f6e7a-834e-33f8-ae55-90fa6438b694', '05543b73-3732-3682-b910-4c1c124e1a9e', '1979-09-20 03:06:06', '2013-04-13 07:17:45', 7, 0),
(37, '1b6e4172-3bd7-3f58-98f7-c22830f27b22', 'qqdi', 'rem', 'Neque possimus perspiciatis sequi perferendis. Ducimus explicabo itaque qui quia commodi reprehenderit eligendi corporis. Nisi aut ipsa et.', 'b4b683fc-e451-3eea-a830-407f5cb8b624', '7d1ebc4a-c1a3-30d8-8896-1fd1d1c7e99f', '2014-12-07 23:41:56', '2014-01-23 11:13:23', 7, 1),
(38, '97d938df-8943-3804-a9cc-21c0f0236ebb', 'lowd', 'aliquam', 'Rerum distinctio reprehenderit eaque ut consectetur. Provident occaecati neque saepe sint fugiat qui labore. Ut quis quas sit illo dolores aut. Accusamus vero harum voluptate et qui aliquid facilis au', 'e4f74642-17b8-326e-9ca1-12fc56d375df', 'e40f889d-c93d-3664-a133-56ea41cc95d0', '2007-05-10 04:19:12', '1991-07-05 13:46:39', 8, 0),
(39, '5caa63ca-1a20-3e16-bd6f-88c8ea73af6a', 'ktyw', 'et', 'Incidunt sit quos iusto eos natus. Aut voluptate voluptas reiciendis eos odit. Aperiam tempora at in quod et voluptatem qui. Ullam non fugiat quo id est aut optio. Soluta illo quaerat sint.', 'c01cd878-10e8-37c0-8136-6b9fa4b93db2', 'bffe4bfa-5c77-357d-a226-d707181c1327', '2017-04-02 12:12:15', '1983-02-19 08:24:40', 3, 0),
(40, 'c7a1310b-f11d-3e15-b319-39b73c0b9d40', 'mzcc', 'quod', 'Laboriosam laboriosam esse eveniet et ab animi iusto. Soluta velit nisi ea enim rerum voluptatem corrupti. Dolore dicta quia harum dicta.', 'cd6a5260-1ee9-3a91-b489-36d483e57b6f', 'c29efa2f-ac47-386e-9f7e-f5af65463085', '1987-07-20 18:11:39', '1989-03-04 13:51:05', 7, 0),
(41, '22b78c40-c2d5-3134-b876-6fe238feb866', 'alam', 'qui', 'Porro dignissimos voluptatem qui iusto. Et quae quia nihil qui ab. Nisi sequi quis rerum.', '72c08ed0-5ca5-3d60-a7df-32cacd764f7b', 'd71ac82a-5038-39e3-a775-8c540a396e24', '1970-01-19 06:34:35', '2013-01-22 13:30:21', 2, 1),
(42, 'f15f5386-269d-35ad-9306-221ff79abc8a', 'uhmk', 'quo', 'Omnis officia reiciendis quibusdam iusto ducimus. Corporis aut consequatur necessitatibus voluptatem nobis. Quia ipsam veniam molestiae ratione consectetur. Et vel voluptas consequatur laboriosam aut ', '97ae457c-5520-39b5-9c08-8452def7f0fc', 'bfa189c4-eea7-30f6-92ca-647abf7a5929', '1981-02-06 20:00:38', '2014-03-21 22:28:27', 5, 1),
(43, '527072d6-cabf-346a-90f4-e1e7a509b916', 'kyag', 'minima', 'Ratione voluptas quia consectetur inventore et. In est ea ad non eos corporis nostrum. Reiciendis voluptates nesciunt dolor perferendis. Facere facilis quia vel.', '99159ecc-08ea-36ac-a510-de2908f05264', '1a51d351-26b1-3020-981b-5b8db4000095', '2008-08-24 11:41:46', '1978-10-19 04:16:15', 0, 1),
(44, 'e9310b03-14f1-3023-8f76-c6a07dcb8dfc', 'uspa', 'quis', 'Nihil eaque sunt eius dolor quidem sapiente. Voluptates nulla sunt ea dolore excepturi dolorem repellendus. Culpa quia autem fugit et sed voluptatum. Labore eos dolore cupiditate.', '4a2c8aac-7d78-3cb4-82cd-944385ad9561', '3ebb471a-d50a-38d9-89c7-02da8a5e34f0', '1998-02-16 10:22:12', '1987-05-26 21:31:24', 4, 0),
(45, '4118c71e-e0a5-3db6-b7cb-1975884e1313', 'gimi', 'est', 'Earum a non explicabo distinctio. Necessitatibus ut nobis quia quos sed.', 'a659dc66-94b6-372f-8515-18c50c44debe', '82bd1416-ab31-3713-a12c-9c742dae3fa7', '1993-08-21 16:08:20', '1983-11-28 07:05:15', 0, 0),
(46, '06bbe718-ea05-32c9-a277-13c13998af5f', 'gcos', 'voluptatem', 'Rem nobis qui porro cumque deleniti fuga alias est. Impedit aut explicabo cupiditate blanditiis sed dolor. Veritatis est qui id at nostrum odit.', 'bbd91543-ed3b-38b0-93fa-d0858e9f5ab3', '12048eeb-b39d-32c0-a419-edcb7dfed980', '2009-12-14 06:10:19', '1995-07-29 11:20:11', 8, 1),
(47, '54cc07d7-f948-33c9-ad3f-b901710dc3c5', 'ojfw', 'voluptatibus', 'Laboriosam ut aut voluptatum ratione. Rerum voluptate magni totam nihil mollitia. Dolor omnis possimus ab est.', '928a9ea8-b646-3927-890b-136b3f13a22d', '5f661541-4b97-3888-befc-53edbd622df2', '2016-03-04 03:24:11', '1987-04-11 05:45:35', 3, 0),
(48, '706c6bdb-ccd6-3624-bdb3-33090019d137', 'jypd', 'asperiores', 'Autem voluptate sint iste recusandae molestiae eum inventore. Eligendi repellat magnam nihil ut nulla. Molestiae qui totam harum inventore impedit ea ut. Voluptatem sed omnis esse non.', '51f09427-77ea-3584-8a0a-c2250158f185', 'f777d545-a60b-301c-8d3d-02e945121a6a', '1986-02-13 21:33:22', '2006-05-31 23:15:12', 6, 0),
(49, '1e49ac89-582a-3bd7-950b-a9ac644f0f22', 'ugoz', 'ea', 'Molestias iure placeat deserunt consequatur aperiam earum vero. Veritatis sequi doloribus autem.', 'a167b3fe-dde0-3f43-8185-e90d72616a11', '61d7ed50-99dc-3583-aad2-458c8032e9c1', '1978-07-12 01:20:43', '1971-07-09 03:24:14', 2, 0),
(50, 'd8a6ea45-9b24-3a60-964f-4cddc50e0464', 'rtdw', 'omnis', 'Aut veritatis non voluptatum rerum excepturi facere. Aliquid explicabo dolores dolores. Nihil officia reiciendis sit sit voluptatem eligendi. Eum pariatur eum autem ut asperiores cumque. Repellat aut ', 'f4c1232b-8ae5-3c21-8d84-82ea54e65732', 'f8846016-220c-381b-b862-e807f4013531', '2018-05-05 07:44:44', '2015-07-03 18:11:30', 7, 1),
(51, 'bba38896-c6e8-39fc-b251-4c3414378e74', 'eczs', 'consequatur', 'Consequatur quod qui quo. Voluptates iste porro similique in. Dignissimos ex sequi aut deleniti.', '38206672-2ff0-3451-b4fd-21855c1f4ee4', 'b0439295-cc1a-3868-80e4-a7e73001fdaf', '1985-10-26 09:22:03', '1974-12-24 03:18:27', 6, 1),
(52, 'f116a3b6-de94-3d2c-a054-2a92238ebcab', 'nyuj', 'voluptas', 'Omnis quia sint consequatur perspiciatis. Et et nobis ut corporis facere deleniti perspiciatis consequatur. Quia hic totam corporis sunt est. Minus rerum earum quis eligendi vel sint quam.', '17a8c09a-e966-3eee-b5e7-9ea7aea253c0', 'a72c853f-6704-36c0-861e-4426c8721a0f', '1994-12-11 21:43:22', '1982-10-15 21:12:22', 0, 0),
(53, '6d6f3446-f028-31a4-bdad-4824fb9dbd08', 'ziuj', 'ducimus', 'Aut suscipit unde dolorem rerum. Iusto autem vero magni rerum iure. Magnam nihil cumque similique vitae ab. Voluptatem similique laudantium in aut repellat.', 'ae0c3214-61ac-31c2-abaf-1de69799989e', '2d8b3440-5499-3cbb-834e-8fa7310550a0', '1990-03-03 23:37:14', '2017-10-28 20:20:18', 5, 1),
(54, '566fd360-4a75-3035-b40b-2d81998c7508', 'cxbz', 'earum', 'Dolorem praesentium aperiam voluptatibus modi. Ut aut aliquid sint ut. Soluta ducimus similique et corporis sunt soluta sunt.', '7f988bfc-43df-3918-bf7b-6ea82b5261ce', '7dee2b04-80ae-3e9a-821b-cd37bc4fad3f', '2010-11-16 07:58:26', '2007-11-15 20:56:56', 1, 0),
(55, '0b173115-1124-3225-87af-9a457cd0b711', 'chbs', 'autem', 'Ad voluptas nulla vel eum. Nulla qui quas molestiae voluptate. Qui modi qui natus et voluptatibus.', 'edc25daa-d603-3c07-a5bb-cb70037106bb', 'b772e626-2849-302e-b10e-d769b4d309ba', '1985-11-17 20:42:25', '1980-09-26 22:14:04', 2, 0),
(56, '46ba9ac7-adbb-37f8-b243-d9cdc0e3d295', 'bzfi', 'ea', 'Similique ex autem quidem perferendis eos natus rerum nobis. Qui magni rem corporis et ut ut. Id inventore nostrum minus quo voluptatem veritatis. Distinctio nesciunt aliquam illo est quia.', 'bb76e0c6-53dc-32c1-885e-5a0ac1d54ff4', '78bbbefd-a184-30d1-823c-13ae603429d1', '2006-06-01 22:01:20', '2016-05-22 02:38:12', 4, 1),
(57, 'b7688f3c-7ba3-3550-91fe-cc1ac5ffd955', 'jmzn', 'optio', 'Saepe quam deleniti voluptate distinctio. Quas odio sunt optio sequi commodi. Praesentium ea consectetur molestiae id sunt voluptatem. Sapiente cumque et officiis. Molestiae ut ipsum ut qui deserunt v', 'da91a691-23a4-3491-8eca-af58859ba14b', '802438f5-0e7f-3fe7-9a22-fc71cdd874fb', '2010-04-04 22:02:14', '2004-04-15 18:02:05', 4, 1),
(58, '229a6f97-62f0-3d40-ba01-acb93d60f964', 'libl', 'eum', 'Deleniti alias id voluptate repellendus ullam non voluptatum temporibus. Et ratione eveniet et voluptates eum velit sed. Dicta tempore hic asperiores. Tempore rerum omnis velit vel maxime aliquid susc', 'db94e294-b1b6-3fe1-93ab-5289b4072ca6', '62e74d95-3a3f-3752-b093-698f62723193', '1976-11-04 02:32:34', '1996-07-19 12:11:05', 8, 0),
(59, '38686aee-6de1-32f4-9bba-68be26b520cb', 'wiob', 'in', 'Et sint ab dolores quia. Est qui enim et consequatur accusantium velit sed. Ut exercitationem dolores facere illo rem totam sint. Ducimus omnis ut eius incidunt assumenda sit voluptatem molestias.', '4ea60688-6aaf-3715-b961-4f20d56d1528', '8b61736c-b2b1-3f09-8969-202d32a9e3f3', '1975-12-24 06:44:12', '1983-06-12 21:24:13', 3, 0),
(60, 'e468c56e-2ce8-3a9f-ab9d-a6421d7d7146', 'sxmm', 'dolor', 'Sint esse veniam voluptas sapiente inventore ipsa. Libero dicta odit ratione dolores. Ut consectetur tempora modi pariatur est delectus nihil.', '1f2d8f86-21d9-3cda-a082-4043de28e1a6', 'a99b0e44-77cd-336b-b2b2-2767a6a9fc5a', '1974-12-26 18:33:07', '1996-02-12 14:09:12', 2, 0),
(61, 'd63232d7-d25b-373d-abb8-a493717777e7', 'otul', 'consequatur', 'Ex aperiam voluptatem corrupti suscipit excepturi sunt. Facere nemo illo corporis sequi in libero. Quia suscipit id dolorem non eligendi autem aut.', 'f11a72ce-1604-3a0d-9329-e2c1885174ea', '0f965f9a-8fd5-3e4d-ba42-9f241c37358a', '1984-01-18 03:45:30', '2015-08-27 11:09:04', 2, 0),
(62, '16ff606e-1be2-34b7-9d1b-ee209dbd41fb', 'eidx', 'praesentium', 'Voluptas itaque quisquam accusantium perspiciatis qui suscipit. Nesciunt totam illum inventore et excepturi atque. Cum asperiores ut ea. Numquam et et amet nihil rem.', '64209646-0a41-3c40-9fa8-da5a7c87d373', '2c369828-b64b-3ae2-a7e7-5ae5bcb781e9', '1996-11-14 04:38:49', '1972-10-27 00:17:06', 2, 1),
(63, 'eafd8162-4d5f-38ef-b307-7eca05d7df6c', 'iwfm', 'officiis', 'Rerum rem necessitatibus ullam veritatis perspiciatis. Nesciunt facere et vel impedit eligendi. Ullam officiis non ut sint sequi explicabo distinctio. Aut nobis sint ipsam totam.', 'f3afe492-a8b6-3fb1-9a48-7defa51e831e', '0e7c077a-a5e1-31a8-9383-c94300d3e63f', '2013-12-22 20:57:09', '1974-06-09 11:26:51', 6, 0),
(64, 'd1989ce7-47c8-3a37-8e22-f68af4ed0b8c', 'blxp', 'quis', 'In occaecati molestiae soluta. Porro voluptatem et enim omnis. Aut facilis eligendi repellendus aut ut quo sapiente minima. Alias sed qui soluta suscipit quo voluptate officiis. Quia dignissimos paria', '57cfce91-f28f-308a-b38a-a258da7c7abd', '6b50fa78-dbd5-30cb-acd1-bf5299393ae0', '1998-01-01 18:56:10', '2015-12-22 15:26:57', 3, 1),
(65, '85c7a1ed-010d-36ae-ba16-ceb02c64d744', 'uwic', 'est', 'Rem provident officiis ratione sit provident accusamus. Sed quidem hic perspiciatis adipisci voluptatem dolore explicabo delectus. Expedita ut velit reprehenderit quibusdam neque.', 'c254eac5-8bd6-372c-83bc-92dd1317c169', '4d082ed8-add6-3a45-a814-c9d3e16681a7', '1977-12-19 09:40:44', '1987-05-21 15:06:02', 2, 1),
(66, '263d1cf2-4594-35f3-92a2-1c8926e7e749', 'yxrj', 'dolore', 'Cupiditate ut molestiae impedit rem veritatis. Soluta et consequuntur blanditiis vel temporibus dignissimos voluptatibus. Accusantium quia libero facilis qui maiores non praesentium.', '73fbab3f-7b81-312f-a3fe-9fbe8c168ead', '93ed774f-4843-3c35-9035-c2e031213db0', '2001-04-16 02:43:55', '1995-02-12 07:33:39', 4, 1),
(67, 'ffa778d7-f3de-35f5-819b-18a14c868e38', 'isoc', 'cupiditate', 'Perferendis expedita repellat qui harum quo vitae. Est tempore doloribus nisi molestiae iste omnis. Dolores vel voluptatum quia temporibus omnis. Ut temporibus ducimus dolor.', 'f5c6272c-a3c6-3950-8965-d12f8f5ee80e', '0bd9d446-8fdc-3b7b-8e37-aae162b8cf60', '2005-10-06 04:17:05', '1993-06-07 08:55:03', 2, 0),
(68, 'd675adb4-9e03-3d41-b314-1544ee8f415d', 'ewbp', 'distinctio', 'Ex reprehenderit veniam optio aperiam doloribus. Dolores rem minima minima qui veniam deleniti dicta. Distinctio error rerum ab alias qui qui eum.', 'f3ccc21c-4b51-33a3-ada3-77a41527263d', '82dde492-51ab-3230-b6ba-2ebce595ab0e', '2012-04-16 03:58:44', '1981-03-31 12:55:01', 9, 0),
(69, 'cf74978a-e337-3d6e-8c82-0b89e00ce04d', 'nexz', 'occaecati', 'Deleniti dolores quia nulla dolorem nihil ipsam. Aliquid itaque beatae est assumenda quis. Neque fuga veniam velit dolorum sunt ullam.', '98eff7e7-861d-3f17-a4c0-3c8b9e22a3f4', '13b6ccfa-05df-3b93-b4a1-c1568c3e58d0', '2000-09-04 11:56:14', '2001-07-08 00:58:38', 5, 0),
(70, '07ea0fdb-7688-3e22-aece-0b7350e6a5b0', 'ynxk', 'inventore', 'Cupiditate praesentium eveniet rerum vel sed. Rerum voluptatibus eligendi ullam omnis aut. Voluptatem sed harum temporibus eius placeat ex.', 'af1bac10-9f8e-3e57-8763-d223f63776fd', '866f0c56-32b9-304a-b050-1b41b50586c2', '1980-03-21 08:50:26', '1982-06-02 11:20:50', 3, 1),
(71, '5d93a04f-cf0d-38ab-8033-ff7d87a4cf13', 'thzt', 'architecto', 'Officia dolorum hic voluptatibus sed ratione. Accusantium non ullam veniam quidem. Sequi sunt minima eum est.', '7bb11303-9f05-3fef-833d-e3eb0c0c1c03', 'db23872e-8728-338e-ac5c-f239fd1a0fbe', '2002-07-21 17:06:39', '1970-03-03 05:34:54', 6, 1),
(72, '2dafd0bd-f492-3c6e-9271-77ab4da9dcc3', 'kafg', 'ut', 'Fugit exercitationem assumenda eveniet ea nobis itaque. Ipsum porro harum dolorem possimus vel molestiae mollitia. Corporis sint dolore aut amet a ratione officia.', '6cc235e2-bd88-3aa4-842b-1c8def6248a9', '3560813f-dfd9-3809-9dd1-8c268d3c45a0', '1986-10-13 14:08:30', '1982-09-10 23:49:17', 8, 0),
(73, '4b8a8093-6888-357f-87e1-858691c5abfd', 'eiqp', 'nulla', 'Quo voluptates aliquam sunt sint. Reprehenderit et iste et recusandae. Ipsam et id facere ea quibusdam. Minus vel ut temporibus.', 'bb570958-6d9f-33c0-92fd-f268462d9338', '355deeeb-57f9-3927-b462-336f58031b7b', '1999-06-13 21:03:46', '2001-10-14 00:46:07', 1, 1),
(74, 'd2a2a955-1191-36fb-8195-f749491fd928', 'wltv', 'omnis', 'Optio voluptatibus soluta laborum magni eligendi. Repudiandae et magni mollitia et. Consequatur corrupti eius deserunt voluptatem nostrum eveniet.', '9e980133-a851-302e-8652-82f3ca5e506d', '4e0d24a6-dbcb-30e5-909d-2344719d8a7a', '1970-12-22 23:05:04', '2017-12-11 04:04:15', 0, 0),
(75, '13f5fd09-46ab-3287-90ea-b5e38e06e380', 'bskc', 'nemo', 'Beatae porro quis voluptas harum porro. Saepe possimus rerum praesentium nihil quidem. Incidunt veniam minima nisi ad nemo.', '51b4d82f-6659-39f6-9046-742c47a2b554', '952578c2-6100-38b9-bfb2-602a8c00b470', '1983-02-18 06:50:21', '1976-01-12 01:09:54', 6, 1),
(76, '4cff0e6f-aa16-328c-ad29-cd514aa429ca', 'oyyj', 'architecto', 'Ut deserunt quis et vel aperiam molestiae. Molestiae consequatur corrupti eos dolores sunt quod. Eos sed aliquam numquam neque.', 'e684fc19-ca3b-3603-a701-6c4ab88d6b41', '19e367e7-0108-3fa5-8d26-4fa452c6d276', '1993-09-13 12:23:44', '1973-05-09 01:41:15', 5, 0),
(77, 'b59eef72-4de6-396a-b315-4426370a015c', 'dgww', 'aut', 'Modi dignissimos tempora ut facilis aut aut officiis. Id dolore architecto non. Aut quis culpa in veritatis enim reiciendis eveniet explicabo.', 'b33b87ee-6709-358d-bfa8-bf3d72aebbfb', 'f59b2381-9c7d-30b2-8409-269189624952', '1983-07-30 01:23:05', '1997-08-13 21:26:57', 6, 1),
(78, 'c0f16ed5-91b6-3c4c-ba88-81d40695e9b2', 'shkk', 'qui', 'Voluptas voluptates quos rem et facere aut rerum. Nam sit ut adipisci facilis dolorem architecto. Labore rerum qui molestiae maxime sunt voluptatum.', '25c30e28-3b55-3b23-95d9-3bcff171b410', 'a7c732b6-366c-389b-a1e1-775148ede39d', '2004-05-27 08:45:22', '2001-03-30 09:02:34', 1, 1),
(79, 'c7e6213f-c208-315e-8f44-3fc9080e28d6', 'bmzy', 'quas', 'Aut id aliquid enim sunt. Et temporibus id sequi et sint atque reprehenderit asperiores. Quo sit quia quo ducimus. Tempora soluta fugiat ut veniam et atque dolores.', '27c58379-6e87-37ab-8f54-8adfcdadc7dd', '4f5fca26-3964-3273-8ac9-6025de0e1534', '1998-01-29 01:05:49', '1974-06-07 23:31:06', 2, 0),
(80, '3c98cb72-b848-39bb-9dd3-0c05afec0270', 'vxft', 'sint', 'Ipsam reprehenderit ut ab natus debitis ad. Est in sit temporibus. Voluptatibus dolore est totam vitae distinctio.', 'df748c93-58fd-30f5-80eb-35955472c27c', 'fbe9a99d-4d98-3cfe-9b69-bc889b7cbc83', '1977-10-16 16:41:02', '1990-09-10 02:56:02', 7, 1),
(81, '52394b64-fc8b-3721-9db5-b4305831f789', 'nori', 'porro', 'Excepturi perspiciatis accusantium ut rerum quam eum. Possimus ea quaerat iure reprehenderit eaque rem non pariatur. Odit sed est odio. Accusantium rem fugit ipsa aut quas ut impedit omnis.', '753241b1-5ad4-3ce4-973b-0a4205a01eb0', 'f47c3afb-4aa8-391c-8f07-a676c1cfc637', '1970-03-31 00:17:07', '2006-04-29 05:36:32', 8, 1),
(82, '82b2484e-aad5-3c71-b2ea-a35523e1ce8d', 'etln', 'facilis', 'Natus soluta fuga aperiam exercitationem est adipisci modi et. Quasi ea tempore officiis nobis. Optio sit corporis nostrum corrupti fugit ipsum accusantium.', '61741f96-63d4-3f9b-ac79-9d8cdd84f0e9', '9d76165a-8d27-37c1-9ec7-fe0f88074d39', '1992-05-30 17:43:06', '1981-06-09 06:37:27', 0, 0),
(83, 'b362a404-ca63-30e3-a3f6-ffc81d14894e', 'esco', 'quisquam', 'Quia et in quod dolore. Et sit non delectus corrupti sit nam sed dolorem. Eius minus sapiente velit distinctio voluptate id soluta. Quia cupiditate odit ut asperiores deserunt et.', '88867b9b-8032-3abf-a664-078e98d387ac', 'f845c505-e685-32f7-9da7-d46f597f8b79', '2018-04-06 08:33:32', '2007-07-08 20:41:31', 5, 1),
(84, '8ff210aa-b7fe-3f8d-ad5d-f20611802bf9', 'vvsj', 'ullam', 'Quas aut libero et. Quod tenetur sint quam consequatur est accusantium exercitationem.', 'a1705043-ee66-37ac-be99-1715165c1c4f', 'cf5bea0a-dfff-3eea-a49e-9c64271b29ad', '1983-08-26 01:05:38', '1971-09-26 14:36:48', 5, 1),
(85, '401604a9-d570-371a-b379-fd74678d7ce1', 'ivzf', 'doloremque', 'Quae doloribus nisi reprehenderit eum ea. Molestiae voluptatibus vel harum consequatur. Repudiandae nulla sunt omnis et.', '32144dd6-db76-3282-991b-1d24828f225e', '908399e5-6e10-3bd5-b7bc-8ec1e3bdd67d', '1982-06-27 16:51:37', '2002-06-08 05:21:24', 5, 0),
(86, '5e4f210b-439c-3ea2-9bd8-81754e159394', 'zrmd', 'et', 'Laudantium veritatis ipsum qui voluptas sunt. Qui impedit delectus deleniti eos vero. Illo asperiores quam aut dignissimos. Praesentium omnis earum beatae omnis esse et occaecati.', '67ee592a-f52f-3f1a-9068-5d22544c3af9', 'bda2c25d-25ac-31ab-9b33-2d3751623123', '1995-12-21 01:02:30', '2014-12-22 01:26:49', 3, 0),
(87, '4a67e04d-3fe5-330d-8a52-5ac146d14317', 'jdwz', 'asperiores', 'In exercitationem aut nisi sit dolores aliquam incidunt. Quis fugit unde ut. Vel consectetur et similique doloremque. Non corporis perferendis rerum ratione qui beatae. Architecto nesciunt beatae cumq', '6bd2344f-0723-3c60-8ab2-6b81b352c052', '7ed9753a-9fb7-3e80-926c-61ff1e639fd8', '2010-08-26 04:02:27', '1972-07-18 10:48:52', 5, 0),
(88, '8b220536-5a97-3b18-8b1e-d8d20236b4ef', 'ycve', 'et', 'Similique earum eveniet nostrum voluptatem. Debitis consequatur itaque ut voluptas sed. Deleniti necessitatibus et corrupti.', '13c4717b-84d9-3db5-bac1-4a60e93173f7', 'bf5202f7-2af1-3430-9df2-c08dfc7bfa08', '1976-01-16 05:51:16', '1978-02-06 11:26:01', 9, 1),
(89, 'f140c091-b654-35e9-847a-52ed26ef6e26', 'noef', 'dolorum', 'Qui quas veritatis repellendus est. Qui voluptas quia quis voluptas qui magni iure. Odio non aliquam vitae iure doloribus at.', '1c1e6504-5c9c-308b-89da-bb1f97ad9285', '4ed847c5-1776-3435-b531-4b914c7979db', '1978-09-08 14:14:30', '2006-08-30 09:42:16', 7, 0),
(90, '1aee33fb-ab62-3acd-987f-87a979c1b58d', 'xghp', 'odio', 'Cumque eos nostrum est eligendi accusantium autem. Dicta natus sed asperiores ducimus debitis beatae neque. Cum iure deserunt nulla ea sed.', '9ba29ded-2996-38c3-a289-294c7ce684bc', 'e361724c-64f8-3759-a060-763aca7bb6b0', '1994-09-18 04:30:55', '2010-11-30 14:58:19', 9, 1),
(91, '8c0698c3-1629-31a0-adb4-778f61e19ad3', 'woki', 'aut', 'Libero ut eos aliquid temporibus dolores esse explicabo. Et dolore inventore ratione sequi nostrum quia.', '89df853d-9342-3de9-9e23-e4c5a9458181', '619831c0-abb8-3fa2-9b60-958a9304ba16', '1996-07-20 14:23:58', '2005-10-20 02:43:48', 5, 1),
(92, '0b690a0f-723d-3c79-a88b-4eda0625fe52', 'szlm', 'architecto', 'Iste velit reprehenderit magnam minima minus ut id fugit. Sunt ex neque debitis consequatur iste voluptatum consequatur. Et quidem explicabo nihil vero et ipsum.', 'a3f963fe-3fea-349e-8e7c-2c965439e7fc', '3893b267-d711-3385-b1c2-c94ca3b3cddd', '2004-10-21 16:41:25', '1971-12-19 06:21:24', 5, 0),
(93, '39d483b3-2991-3f49-8ce7-07bf9996947c', 'lnjp', 'ducimus', 'Ducimus ea earum enim consequatur sed. Non fugit quisquam et. Tempora dolore sapiente quam modi harum mollitia.', '1fbb4d7f-1f74-3022-9865-6e04c7702ba4', 'd8e4eec7-720a-35c0-99a3-8d0a4e70f047', '2011-04-05 17:51:47', '1973-02-27 14:25:27', 7, 1),
(94, '2719bc6f-253f-3346-b41a-ef0591cfb3a5', 'yhse', 'cumque', 'Ut iste quae nostrum sint et. Sit voluptatem quos sed. Beatae incidunt perspiciatis reprehenderit qui. Quo laboriosam et dicta quaerat qui odit.', '4f8cfbd0-81c4-3258-9762-d75aa2792dbe', '3a87158f-2a1c-3a77-8fa5-ce8bbab58514', '1984-05-19 12:35:10', '1994-04-07 09:30:48', 2, 1),
(95, 'fae276ec-f799-3865-b173-0657074a0ea4', 'ktfh', 'praesentium', 'Nihil id officiis iste cum accusantium. Quisquam fugit aspernatur fugiat occaecati. Delectus eligendi ut ab et rem aut numquam. Culpa excepturi eius autem ducimus.', 'dd43431f-64a7-3263-ad22-354092a5a13e', '049a2797-e629-3bda-b978-2f7948e1a26b', '1991-01-28 07:24:17', '2016-01-23 16:13:33', 0, 1),
(96, 'cbde1acb-1028-3fe4-a707-ca981fe9c703', 'abkx', 'enim', 'Quia qui consequatur rerum eaque nesciunt. Nobis sit qui maxime eos. Minus ullam quis exercitationem et nesciunt. Est nisi earum delectus cupiditate soluta ab cupiditate. Quos perspiciatis laudantium ', 'c16857e3-31c6-3029-8125-65f4612037c3', '6bbd9213-6704-35c8-9b67-d30550533f87', '1979-07-12 06:52:33', '1980-01-15 06:12:17', 9, 1),
(97, 'e4449dc9-82d2-30cd-bd3c-7b8fc8567ad9', 'ciur', 'voluptatem', 'Asperiores quis fugit ex non. Et et error aspernatur quis architecto. Aliquam est veritatis minus possimus. Quis ad similique illo et et incidunt.', '5cc91a2f-8525-3eef-b141-18f12c741d8c', 'e85d780d-8c03-3e00-a134-021bba26855b', '1981-07-01 04:06:59', '1986-04-28 13:53:38', 4, 0),
(98, '320b8f56-0226-3585-99ee-ae2382c6bb5d', 'vvms', 'nihil', 'Qui aut provident et eum beatae natus. Occaecati eos quidem explicabo voluptatem sit dolorem. Eaque harum non quia qui. Veniam maiores recusandae doloremque eligendi iure.', '6174d0a9-3dc3-38f7-abdb-fb01311c1918', 'f24e89b6-604f-3394-b614-7097c5e37d62', '1997-07-01 18:58:38', '1979-08-27 23:44:52', 4, 1),
(99, 'f7db40d8-73e4-32ba-abdd-69648835caab', 'zylu', 'nostrum', 'Magni quae et pariatur dolorum. Non a exercitationem eveniet unde. Non non id cumque maxime placeat. Fuga explicabo dolorem rerum nesciunt itaque.', '4944491c-abe8-3199-ac99-ec83848c1ac5', 'c17c0d0f-8e97-32f7-b335-21e401cf0e1e', '2005-07-14 03:17:16', '1984-05-10 10:21:48', 9, 1),
(100, '76858854-6042-3bc9-b10f-8088ec04225b', 'jsbr', 'voluptas', 'Quis ipsum culpa sit magnam id in. Ducimus dolores culpa accusantium sunt quia sit dolores. Est iste sapiente et qui laudantium. Odio quae corrupti quae quo culpa. Aut non doloremque velit aliquam.', '9fa79b82-1a92-3701-a6ff-727486edfb04', 'cf8fe452-23c2-3773-9145-e607936641aa', '2009-12-29 09:19:54', '1992-03-11 21:36:03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_traininghistory`
--

CREATE TABLE `hr_general_traininghistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `TrainingTitle` varchar(100) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `InstitutionAddress` varchar(200) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_workhistory`
--

CREATE TABLE `hr_general_workhistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `EmployerName` varchar(100) NOT NULL,
  `EmployerAddress` varchar(200) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `UserId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PasswordHash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecordedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_companies`
--

CREATE TABLE `system_companies` (
  `Id` varchar(50) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `CompanyAddress` varchar(200) NOT NULL,
  `ContactPerson` varchar(200) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `IndustryType` int(8) NOT NULL,
  `ContractType` int(11) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_companies`
--

INSERT INTO `system_companies` (`Id`, `CompanyName`, `CompanyAddress`, `ContactPerson`, `Designation`, `IndustryType`, `ContractType`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
('00ded7c0-4693-3b05-9f55-f60b120ff259', 'Torp Inc', '061 Darien Summit\nTaylorshire, NH 20479-8640', 'Silas Abshire', 'nesciunt', 1, 7, '951a8816-a798-3548-8f58-300f19af828f', '8dc92e3f-ef07-3f83-84b6-bde41b6fdf08', '2011-06-22 11:33:35', '1993-12-21 00:36:55', 7, 0),
('03628066-3427-34ff-8dcd-c10dd1a63073', 'Little, Sipes and Shields', '266 Renner Highway\nLake Alexander, NJ 89367-1460', 'Miss Makayla Cartwright DVM', 'quia', 4, 6, '67c613f6-c8e3-3791-ae5f-d20722411a51', 'f59af2bf-0b3a-3f61-9421-436111aec16f', '2015-05-31 04:41:42', '1975-09-14 12:07:13', 2, 1),
('0b423060-cfb0-39c4-99a8-b6849cc29af0', 'Hyatt Ltd', '378 Rutherford Path Apt. 490\nSouth Bellabury, ND 69573', 'Jules Ziemann', 'ratione', 4, 9, '054c7224-4d3c-3f1f-8b6b-4de66620504b', '7b9b56b6-1b4b-3aed-b2ce-fc97a1f3c48e', '1982-05-29 22:08:34', '1983-02-08 00:21:22', 9, 0),
('0c1b5838-0493-341e-8c2a-cb7cfa5e43c4', 'Gleichner, Farrell and Little', '432 Lebsack Mission Suite 781\nCartwrightmouth, WI 05726-7753', 'Rollin Kihn', 'blanditiis', 8, 2, 'b1bcaa33-b603-3c71-b314-b5f8a196dea2', 'ae00753e-b991-3bc8-bbcf-f21a615b7823', '2015-09-04 23:30:58', '1976-09-24 02:41:39', 4, 1),
('10a6cd8b-5dd7-38c4-b623-3d45df1eb5f1', 'Reilly and Sons', '810 Ledner Path Suite 592\nAbshirefurt, IL 20453-1278', 'Beryl Streich', 'molestias', 6, 0, 'd6ec7bb1-12de-38e5-b714-d4bb67c5c6c5', '5d3c1a02-872e-3d3e-9514-5bad04b1bfe1', '1982-03-20 07:10:47', '2004-07-18 12:33:25', 6, 1),
('10ab5b2c-5376-3f91-b006-bd56fa67f5bd', 'Pfeffer, Kuhlman and Hauck', '1517 Devin Wall Suite 916\nSouth Hankhaven, AR 03124-1935', 'Tremaine Deckow', 'et', 8, 2, '45a13a2d-dc9c-334f-bdb8-0d18455b64b2', '2aa25391-8ef9-300d-a7b3-3a7e317dd44e', '2005-10-09 22:05:59', '1973-10-15 11:16:04', 4, 1),
('16551db4-3a24-3324-802d-43fa9e4c44be', 'Upton Group', '5645 Trudie Crossing Apt. 270\nNew Gustave, HI 67378-0686', 'Chester Abshire', 'dolorem', 9, 7, '911a30e3-2ced-365c-816c-82dd434775c6', 'ba116c6e-9e36-3af5-9544-0f04d6742e0a', '1989-10-03 14:12:32', '2006-09-10 07:26:39', 9, 0),
('18b49aa3-08b7-34f0-b349-646f981c5138', 'Larkin, Schaden and Wuckert', '8347 Leffler Hills\nKerlukeburgh, CO 75417-0894', 'Prof. Myriam Brakus', 'ut', 8, 0, '987788bf-78a0-373a-925a-df8f4fa6cf64', 'e0fb5df4-0e15-3d85-827b-24f21609273e', '1983-04-24 16:25:52', '2012-01-21 13:26:07', 3, 1),
('1a4d8065-34b2-372e-b79d-a18c5dba3022', 'Stiedemann-Rohan', '9984 Tierra Plain\nEfrenfurt, CA 20460', 'Antonette Baumbach', 'illo', 1, 7, '19465d26-484e-3a5d-af41-4e6673457ec3', 'd356f9c2-6e5b-363a-b645-e6147c3f0714', '1980-02-14 19:01:31', '1992-07-06 15:51:21', 0, 1),
('20907e4c-edad-3aed-b34b-693978ffe855', 'Kessler, Schumm and Wintheiser', '2680 Brandon Lodge\nNorth Dennis, MS 96505', 'Tia Quitzon', 'non', 0, 1, '8e704cc2-bb33-368e-b1c7-8d2a3b5aa119', '460499c0-5382-340a-bdde-88b9dff95b2f', '2016-02-17 17:58:42', '2007-01-22 12:07:36', 7, 1),
('21e95281-546a-3e38-a9fa-acda76d45821', 'Lang Ltd', '67378 Dessie Summit\nKertzmannshire, IN 53132-6643', 'Mrs. Wendy Klein Sr.', 'corrupti', 2, 6, 'aacda193-e39b-36fd-8807-c5a2c4d204db', '227c7631-e539-333b-a94c-3eff6a4adaa9', '1978-01-19 12:06:38', '2016-07-20 02:56:37', 3, 0),
('23547e6a-c79e-3610-9007-4baea6ffe2f3', 'Littel PLC', '11110 Sauer Bypass\nLake Shawnfort, TX 97570-5416', 'Ramiro Romaguera Sr.', 'quibusdam', 8, 1, '6f89713e-a1e3-3139-97bd-7115dccb1113', '4b18f189-f761-32b3-b30e-2fc52fc2134a', '1991-02-01 01:27:59', '1982-01-23 22:05:02', 4, 1),
('26f954c3-3f60-3138-8f8a-c5e7dca08817', 'Upton LLC', '2635 Earlene Port\nCatherinefurt, IL 08146-4215', 'Mr. Earnest Olson II', 'dolor', 2, 4, '5c21c9c9-ecc6-3c35-a4a0-508ddd751831', 'cea07316-ca96-3b8d-b87a-532f7462c07a', '2012-10-08 01:34:04', '1989-07-17 18:47:30', 9, 1),
('27641d66-0d82-3cbb-a75e-b1edf176793a', 'Kshlerin, Kuvalis and Rolfson', '04122 Osvaldo Burgs\nPort Roslynhaven, MO 60799-6787', 'Ms. Jaqueline Reichert', 'ducimus', 2, 0, 'f21e4807-2811-315b-8f88-f0141436d1c4', '6e91ff02-431a-371c-8a26-b9cc236395e6', '1984-01-31 00:40:22', '1997-10-06 01:41:43', 1, 0),
('28e12740-1cb9-39df-b552-28c599bee56a', 'Heaney, Brakus and Gislason', '682 Abigayle Meadow Suite 544\nYostmouth, TX 02890', 'Charles Christiansen PhD', 'eos', 4, 2, 'eb71a55f-afd9-3796-aa1e-7e4f530690ea', '3f0fc698-a978-334f-81aa-e2b233f0164b', '2002-07-01 15:30:02', '2015-09-17 15:23:03', 7, 1),
('2b62d226-7793-3fbb-9ea0-1d185cf8cfb9', 'Simonis Group', '488 Ahmad Tunnel Apt. 139\nRusselside, NV 06365-2357', 'Prof. August Nienow', 'maxime', 7, 9, 'f0ed4ad2-d6af-3d7b-a502-550360182a7c', '67198991-24fc-3677-a660-0c2acdea1cf1', '2012-11-13 12:18:28', '1980-02-05 09:37:00', 5, 0),
('2cf21b4f-6832-3aba-ab14-702ab16e0004', 'Ritchie, Johns and Armstrong', '4094 Werner Ridge Suite 072\nKariview, ND 81769', 'Fatima Walker V', 'molestias', 5, 2, '4493c4fe-f1c2-3a7f-8220-db9e2879e02b', '24294c1f-ff60-3a41-a81a-a75f7dfef13f', '2002-07-17 23:32:28', '1994-07-18 11:26:08', 5, 0),
('2e5c4f14-3d36-316a-aacc-1b71aa7afb36', 'Bartoletti, Beatty and Volkman', '5792 Brakus Points\nWest Orlando, ID 32020', 'Alvina Kirlin DVM', 'vitae', 4, 5, '6d603514-1bcd-32e9-97c7-bc0440a8c9d6', '5184b3cd-db7e-3026-a24b-85c26b5c24cc', '1999-09-14 17:45:02', '1985-10-21 04:03:24', 6, 1),
('2f656487-ca64-36a8-8865-dbab3796e605', 'Ward Ltd', '73693 Edgardo Summit\nLake Reese, NY 74906-1419', 'Coty Torp I', 'nobis', 4, 5, '92858740-a239-382a-bc36-c4e7f9ed45b8', '45e0c058-e917-3ccf-b3bd-1ab0bb8ef77b', '2014-03-26 18:28:42', '1988-01-08 12:19:52', 8, 0),
('340c7693-4613-3518-bcdf-cc1a6c881b23', 'Romaguera, Langworth and Hauck', '53148 Elenora Village Suite 838\nVitochester, VT 54744-7183', 'Marisol McClure', 'sunt', 0, 4, '75aef6e1-c451-399d-a6c0-e7c54e06f11c', '9a5b952f-83da-35fe-b166-d9f528e981b4', '2001-09-30 12:50:39', '1987-11-28 02:58:31', 9, 1),
('351194c3-ef4c-3ea5-a313-8297cdf48125', 'Maggio, Sipes and Boehm', '615 Tamara Squares\nKesslerfurt, LA 10360-1825', 'Garett Wolf', 'rerum', 6, 2, 'de0afbf2-cd2f-35e8-b516-759abecd7e28', 'e1e41762-2ce6-3758-b356-76d9710946fe', '2015-08-10 13:16:38', '2011-06-23 21:01:01', 6, 0),
('371c8611-6069-3972-9422-7d4c52a85e2c', 'Zemlak, Lindgren and Gerhold', '33177 Rosemarie Shoals\nSawaynberg, CT 09770', 'Delfina Mohr Jr.', 'qui', 6, 6, '2d368b00-8e7b-35b5-8ecf-159ea51a70f4', '77275525-3034-3bab-bf8a-3c54052bbebe', '1998-11-03 23:02:56', '1982-04-07 16:28:09', 8, 1),
('38e05573-b10a-35ae-ad2a-dccab840be64', 'Christiansen-Funk', '5945 Shaina Grove\nWest Bart, IA 48886-6826', 'Ms. Paige Champlin', 'excepturi', 1, 0, '8c56485b-c4d1-37e0-b049-284caa731b5b', '85cb4841-7188-349e-a924-e66edacf3831', '2004-12-14 15:24:17', '1974-03-27 16:32:06', 5, 0),
('394b2711-ece7-3d53-b33e-2c6d79cf1b88', 'Schoen-Hodkiewicz', '1224 Russel Springs Suite 346\nSouth Aliyastad, ID 66734', 'Mr. Saul Beahan III', 'aut', 5, 1, '579011ad-52da-3d42-a0d0-9846688650e2', 'f9e7b026-2e6c-31e2-aac8-70188cda4e47', '2012-09-09 23:06:37', '2016-02-27 00:45:01', 6, 1),
('3c38b5a8-13d3-3b8f-8c7b-ff9285cff205', 'Howell PLC', '05560 Christian Burgs Suite 949\nSuzanneton, FL 36792', 'Betsy Hoeger', 'ea', 7, 8, '10d2fd88-522d-3bd6-a725-5dbd1439de3f', '5f270b60-7a59-33d0-902e-6849154d6850', '2000-04-02 05:26:35', '1980-11-07 02:43:15', 8, 1),
('3fcb0b33-2b53-364d-a63b-8ccef59d0f52', 'Daniel, Reichel and Hoppe', '660 Jacobs Plaza Suite 435\nWalterview, MN 54154-4543', 'Royce Eichmann', 'ipsum', 7, 4, '08252fb2-cd03-3f12-bf05-3de842743623', '9ba583f9-babd-3bad-a321-3fe605cd6bbe', '2013-12-28 13:50:25', '1995-08-27 14:02:05', 0, 0),
('40a15d84-5350-33f2-a6ad-5f39ce2ec620', 'Kunde, Howe and Hettinger', '806 Vernie Forge\nSouth Dagmarburgh, HI 38926', 'Dr. Kylee Zboncak I', 'aperiam', 9, 0, 'bfc2ab7e-b67e-30fb-b8f5-0f3348657fe1', 'bc4f5b92-b35a-3fc3-a945-aa3507ba8ccd', '2005-11-28 16:22:34', '1986-01-01 14:17:38', 9, 0),
('40f8b39d-95de-3bf7-9d61-8fd02be8a844', 'Hyatt-Bode', '513 Kamren Ridge\nSouth Diegofurt, MD 10787', 'Gilda Buckridge', 'placeat', 8, 3, '4b739b08-6659-3aa8-b5dc-06a1eab467f4', 'ccfb6d3f-fa78-3386-926b-17c81dd6f03b', '1992-10-28 15:27:11', '1977-02-27 03:53:43', 6, 0),
('417e97ae-2d2e-3066-8235-f1a89849e5f6', 'Bradtke PLC', '932 Streich Trail Suite 077\nPort Chelseyfurt, AK 59919-1405', 'Walter Heaney', 'quisquam', 9, 9, '9de4fcb5-3a5b-3018-8046-12b2ee219718', '0469f2f8-e1a0-3808-a34d-6ec1bc65ab5e', '1981-10-07 11:49:29', '1997-05-30 11:39:58', 1, 0),
('4309be20-32a0-33e7-a0e5-f40e60a51bd3', 'Cormier-Krajcik', '7383 Makayla Forks Suite 548\nNorth Terrill, OK 55453', 'Prof. Deonte Schaden', 'reprehenderit', 5, 8, 'bbda7367-83a4-3360-971a-515cc1383257', '4ac8deab-bccf-3696-9690-eedc9a192fd0', '1987-09-30 12:48:59', '2008-08-30 00:04:40', 7, 1),
('449d0060-2975-378d-bec0-15846ccb4137', 'Hoppe-Swift', '4041 Keeling Shoals\nPort Roscoe, WV 52328-2521', 'Anibal Jerde', 'labore', 4, 0, 'e0a271c2-66f0-3e35-86d1-21ab45d8b880', '9c2a6150-4f3f-3a16-913e-6af546fd2370', '1976-05-05 14:00:15', '1982-02-08 12:08:33', 1, 0),
('479e5c17-4e8d-30aa-a6bd-4f44d78d5ae8', 'Macejkovic, Steuber and Fadel', '598 Moore Fort\nEast Daphnee, TN 99053-3374', 'Myrtle Hyatt', 'hic', 0, 6, '570d5154-07d4-39da-bb34-7ed003df38d0', 'c43164ed-e65c-3827-81df-87ac3e38e78c', '1976-07-23 21:44:19', '2011-08-22 07:22:59', 0, 0),
('4974a3c4-b881-313f-aee9-c697e8f01b0d', 'Zemlak, Hudson and Kub', '292 Alysson Brooks Apt. 569\nHandland, NE 13954', 'Garrick Wintheiser III', 'saepe', 0, 7, 'a8637bed-3e8a-3830-90c2-a8019afbd7b8', '0ce8fb71-b875-3dcc-ad6c-1cfcb4a10909', '1989-10-02 00:26:14', '1985-03-19 14:20:16', 0, 0),
('4d1da270-7dbd-3efa-b8a6-392be83fd4a4', 'Hayes Inc', '38316 Grayce Mill Apt. 849\nWest Ellismouth, MD 70277', 'Dr. Nicklaus Larkin', 'itaque', 6, 9, '753a3243-cd8d-370e-a913-9ee0991b5c10', 'b280dd19-4d6a-3ee8-8ff4-260f69f9f8a0', '1989-11-08 12:11:41', '1992-09-04 09:59:04', 7, 1),
('4f5d96c7-15e3-3771-8363-037238bd05b5', 'Cruickshank Ltd', '044 Fahey Square\nLebsacktown, CO 15112-9615', 'Prof. Malcolm Hessel', 'eligendi', 1, 0, '2786c043-57e4-3a42-9742-25949aebcc93', '2fd7ded3-f662-3aba-af70-e3c44f30c9b7', '2011-11-07 06:11:13', '1989-08-15 23:59:18', 4, 1),
('50ebc364-99d9-355e-8126-4cb9b7f4431f', 'Bergnaum-Grimes', '072 Schroeder Springs\nNaderberg, OK 91532', 'Jamir Reichel V', 'voluptatem', 0, 4, 'ff5715cd-c132-310d-b889-4f9f9a2fe22f', 'a814f142-fe92-3cb9-834e-e83f08244caf', '2006-11-30 07:56:36', '1974-02-01 01:42:09', 8, 1),
('56d3bd54-3c24-3634-b9d5-892a4bcb217e', 'Sawayn LLC', '702 Chaz Park Apt. 423\nSouth Rosemarie, MI 29690-1918', 'Hope Larkin', 'tempora', 3, 9, 'b9635e71-39c3-330a-86d2-92eb4ce3ed97', '76b371ff-8e1c-33f1-9c91-27e80ab1ab74', '1993-11-02 12:40:42', '1987-07-06 15:00:59', 0, 1),
('56eb466f-aadb-3aaf-ab8d-14bb1f72a27d', 'Gottlieb Inc', '056 Germaine Passage Apt. 997\nDurganview, HI 37403', 'Thelma Berge I', 'velit', 1, 7, '566e94a0-5ef7-3508-8a5b-c39dd1cba331', '23bad9f2-61cd-3ee6-8f38-10a9d3b54140', '2017-11-11 21:51:49', '1985-12-26 20:11:36', 3, 0),
('5a026b01-6848-30f4-9a69-344c841c6c41', 'Hauck PLC', '98626 Friesen Plains\nFaemouth, DC 32528-7422', 'Colin Treutel', 'omnis', 2, 9, '18ea1ff3-1189-3498-91d6-b44e38582016', '50fb56ff-1c0f-35e4-8977-fa4998028191', '1999-12-28 03:37:58', '2001-06-11 08:45:11', 3, 0),
('5cc83d37-80e3-37d4-97fd-a0020ffaaf34', 'Wunsch PLC', '7255 Wiza Turnpike\nPaucekbury, CT 08716-5944', 'Emil Conn', 'ut', 1, 5, '507a7531-d524-3cd9-8e51-8db719c0e66a', 'ec9c2303-954e-369b-bf5a-e34013df776f', '2003-03-12 01:06:31', '1983-09-21 05:44:18', 1, 1),
('6164c4fb-d4b4-3984-83d9-e7688a88bf6a', 'Morar, Cormier and Bahringer', '892 Lesley Trail\nPort Zena, MT 38435', 'Niko Smitham', 'iste', 6, 8, '18f5a177-9b3f-36bc-a859-fa7e4500f0de', '099d6eb8-331c-34cb-9812-e247aeec1bb2', '1997-11-27 03:17:38', '1973-05-04 14:36:17', 9, 0),
('657cab14-8ee3-34be-a17a-6f65d25fea88', 'Tremblay, Leffler and Sauer', '4047 Parisian Hills\nLake Bridget, SD 69805', 'Merritt Goyette', 'non', 7, 8, 'e31ee5a9-f0a8-3b1c-88b3-6f7b2f1259c7', '53b504bf-dd2c-35d0-9e46-641a62211ee7', '1999-06-27 05:24:56', '2011-12-31 15:30:55', 8, 0),
('685284d3-ac46-3b21-a380-03262ec919b5', 'Kshlerin, Metz and Emard', '082 Fannie Way Apt. 987\nTheamouth, OH 58690-2862', 'Mrs. Berenice Huel IV', 'tenetur', 1, 9, '0113b162-845f-3539-ae5d-0c19c9fe9bd1', '03042639-ca9d-379c-b1ec-07ef07ae2bfb', '1993-09-09 05:31:39', '1980-05-15 12:50:47', 8, 0),
('69a04f65-e5be-3f5f-b298-3f5290e08add', 'Rice-Dietrich', '867 Keven Extension Apt. 299\nHarrisfort, AL 51214-9776', 'Prof. Wyman Aufderhar Sr.', 'incidunt', 6, 1, '942b5b89-1b8d-33b7-baf7-9dddbabcc9b5', 'b9c285d9-7839-32e6-aa77-61ab52a3710b', '1972-09-19 04:20:02', '1976-11-21 07:21:57', 1, 0),
('6b575117-4386-370a-a2f0-496a0e6cc75d', 'Rice and Sons', '77793 Salvatore Rest Suite 025\nNorth Heloise, NE 14473-6282', 'Prof. Dorcas Grady', 'recusandae', 1, 0, '8036b64c-d874-303d-ae43-7c08b3744ade', '38b0e05e-f89e-3847-8a16-94b65b51cac7', '1999-09-16 14:18:30', '1994-11-26 07:02:50', 8, 1),
('73aa2483-139d-32b8-b212-04b6fbd769c4', 'Schoen-Tillman', '0268 Yvonne Prairie\nSkileshaven, RI 44293', 'Amya Strosin', 'ut', 1, 7, '17a2a210-47de-3b99-9f1a-58c1437c5239', '659da3ba-49b2-300b-9b61-006a374974fc', '2002-07-06 07:51:03', '2013-07-31 05:38:52', 8, 0),
('75573cb7-33cb-3823-b29a-55477e912807', 'Kovacek-Carroll', '612 Welch Avenue Suite 264\nEast Helenaton, CA 47149-5570', 'Adele Abshire', 'delectus', 5, 0, '0955c47f-e930-3d38-a4aa-89390ac1c76d', '0bd9ef75-a58c-3ddd-b6b5-32f0c58f350f', '1997-03-12 11:41:28', '1972-06-27 16:08:44', 7, 1),
('7595ce70-b4b4-30d8-a939-553aeccb55e3', 'Bechtelar-Rice', '5242 Fritsch Park Suite 611\nOrtizstad, VA 16494', 'Treva Barrows MD', 'et', 6, 9, '8088d404-ba44-354b-9aad-fc5d9ea901bc', '0a335b06-67f6-3662-a08b-7ac0f5d31b7b', '2000-02-06 09:01:05', '1988-09-11 08:32:27', 6, 0),
('795ca6c2-7600-376a-af74-37cfe71b6cec', 'Casper-Barton', '954 Quigley Harbor\nLucindahaven, ID 58101', 'Jamison Kunze III', 'repudiandae', 6, 0, '7149f086-ecfc-3c81-b724-7be452c169a7', 'b72c98bb-746c-34d9-8d1f-2169783de2c4', '2010-06-15 10:07:43', '2004-11-03 01:16:31', 4, 0),
('82c4eda1-5626-3caa-9b35-64d12c88ecd4', 'Walker PLC', '7678 Von Crest\nValentinville, IN 29517', 'Clarissa Legros', 'dolorem', 3, 2, '7a062813-111c-3e3e-aed5-fb74aa7d6989', '76f6477c-925d-3a0f-860e-a624ca6e76bd', '2012-04-10 03:07:05', '2000-02-07 06:31:38', 6, 1),
('851c9be3-e006-3e72-8539-7c1358e998a0', 'Tillman Group', '770 Loy Rue Suite 453\nPort Brycenfurt, IL 31095-0780', 'Alvena Daniel', 'sint', 3, 1, '8399f425-384e-3851-94c9-6c150f92a634', '643c23ed-cfa6-3dca-a66f-375b17366a1d', '1988-11-07 16:49:33', '2003-07-04 09:37:09', 4, 1),
('8b41add6-13bc-3237-8366-cd3e82ddc121', 'Weissnat LLC', '818 Kenna Dale\nNew Berneice, AR 46773', 'Prof. Orville Frami', 'aut', 1, 1, 'dd56682a-7de0-3fb7-842e-86f13c0e3341', 'e701e4b9-5859-33c1-b592-a687c3d47331', '1984-06-16 12:40:34', '1986-04-10 15:15:00', 3, 0),
('8b636f7a-b04e-3a15-9785-12e7199bde7f', 'Pfeffer, Turner and Haley', '5353 Stroman Lodge Suite 381\nEast Jettie, AR 31665', 'David Deckow', 'qui', 5, 0, 'f74019ef-667a-31f7-98e2-1b3c46832ddf', '50c95f93-e412-3397-8b52-8cd4cc8210d7', '2002-01-13 09:46:30', '1972-03-21 00:30:59', 1, 1),
('8fe2bc5c-f3b6-30a0-bd2f-337de778b53e', 'Kemmer-Wolf', '00299 Kaya Gateway\nKingland, NC 09256', 'Brando Feil', 'pariatur', 2, 7, '19f54c55-f72f-37f0-956c-8cc7aa3f8c61', '4bd60ebf-b610-3486-a62e-2d26f5663aeb', '1977-05-29 18:41:58', '1979-06-13 00:56:02', 5, 1),
('9a498d52-4d2e-33b0-b1b3-709dfb832081', 'Kemmer Group', '300 DuBuque Corners\nAnnamariechester, NH 03745-3699', 'Terrance Dicki', 'tenetur', 2, 9, '1987e460-a700-3ca0-8c8a-192bd9b3b92e', '62355dda-2601-378f-8e9e-e8dfe68d14fe', '1976-01-12 16:16:03', '1986-01-15 10:35:00', 6, 1),
('9c17db46-4c27-38dc-a133-5117beb92a2f', 'Mayert LLC', '534 Jacynthe Knolls\nPort Gavinhaven, GA 48597', 'Ottilie Moen', 'eos', 8, 2, 'd2fa1a44-73c0-3ac8-a0d0-c840875e8368', 'ca749285-1475-3d77-b8f6-fc9fadaa043b', '2009-04-20 04:17:02', '1987-05-03 04:38:01', 8, 1),
('9cd8aecd-fbc5-3aa5-b510-b0eca5a22278', 'Jacobs Group', '85992 Lonnie Squares\nBrekkeview, WV 54603', 'Wilton Lubowitz', 'debitis', 0, 4, 'a6c84bda-7159-3a0b-8731-4f3787dcc014', '6a78cfda-65e6-33c6-a04d-837fcbb31540', '1971-04-01 18:26:01', '2001-08-20 06:20:55', 5, 1),
('9fa46b26-c1df-3d75-9ebb-9032966d57ba', 'Stanton, Brakus and Kohler', '6688 Auer Road Apt. 465\nWest Johnathon, OK 22179', 'Prof. Domingo Batz', 'facilis', 7, 2, '60894ba1-7e69-313f-9204-62b761865888', 'd6ab2550-7b88-345b-b239-de818b6ad25f', '2005-07-28 15:11:59', '1998-03-11 09:04:18', 2, 1),
('a4389b5a-590c-3209-8173-079efac926ba', 'Cruickshank Ltd', '0755 Spencer Fords Apt. 434\nBatzland, MI 34799-8822', 'Dr. Wilburn Hagenes MD', 'sint', 0, 6, '9f3d987a-8a3a-3cf3-9b70-162cf1979938', 'c922b2ee-78b4-358e-8cbe-4b1e256fccfc', '1978-06-12 03:19:33', '2018-06-08 09:03:34', 9, 0),
('a6640fd0-85e3-34eb-99ce-887c1f5b8aea', 'Kreiger and Sons', '09068 Ruecker Rapid\nNew Makenzieside, TN 47803-7299', 'Dr. Aurelie Greenholt', 'eos', 3, 2, 'eda753ef-2af2-3fe1-8561-f581a55797f7', 'fa2b6cbf-247c-3404-aa14-b8103337b685', '2001-01-11 09:02:40', '1973-09-21 17:36:07', 1, 0),
('a7123b2b-6db9-32c6-9b5a-bb2815ab3288', 'Steuber, Gleichner and Barton', '8665 Bell Trail\nRileyview, ME 55519', 'Miss Mandy Schaefer', 'distinctio', 4, 8, 'e99ee0ae-84bc-3243-b583-262da7c4d3f9', 'e1310b59-0f12-322e-ae4a-aa1eaa6e2c30', '1971-12-23 09:21:51', '2005-05-30 18:44:22', 5, 0),
('a73546e3-0aaf-432e-98d4-ca25b2077525', 'Businexus IT Solutions Inc.', 'Makati City', 'John Perry Carpio', 'President', 11, 0, 'ADMIN', 'ADMIN', '2018-10-20 11:42:16', '2018-10-20 11:42:16', 1, 1),
('ac28d3db-3017-3d1f-b876-18008cd41348', 'Bogisich-Schmeler', '1951 Twila Haven Apt. 021\nPort Alexandrea, IN 38853-2668', 'Angelina Wilkinson', 'eaque', 2, 3, 'bb96c605-10a5-3287-a8b4-871e33a40cf8', 'a7d3aac1-8c69-39db-94c6-1e0724019503', '2007-09-10 21:36:45', '1999-07-19 16:36:15', 9, 0),
('af123699-ea8e-3619-b9a1-2c1b83acd6e2', 'Durgan, Lindgren and Pfannerstill', '6440 Vernice Island\nEast Gardnertown, NC 21636-6822', 'George Upton', 'laboriosam', 3, 2, 'd96d0a40-189b-3bc4-ab64-4e8cec1d60b7', '6c4364ce-7c2f-38d2-9ae4-01de9eb6d4d8', '1976-03-18 10:01:22', '1990-07-28 05:39:04', 8, 0),
('b2117bf9-6a0d-3f27-a381-f20a69ae1f00', 'Schinner Ltd', '04220 Marquardt Valleys Suite 849\nLockmanchester, MI 82190-3903', 'Demario Crist', 'ipsam', 2, 6, 'af686598-6acf-30ff-9a56-0122ada26300', '032eb943-937e-3312-9bb9-8602322ea120', '2013-10-25 21:19:14', '1982-06-14 22:24:14', 8, 0),
('b88ee791-9c1d-3954-90b6-9b608a2767a8', 'Batz, Botsford and Weimann', '61416 Daugherty Mountain\nWest Selinafort, DE 26301', 'Omari Jast', 'ut', 8, 4, '854716d4-5458-399e-8d31-18cb15bd1263', '2867c7bb-94b2-3556-9f83-24e53c845c72', '1987-02-15 16:10:27', '2013-09-20 08:31:13', 5, 1),
('bb360936-9d4c-3505-a413-78b0b3ce68f7', 'Herman PLC', '288 Carroll Lake Apt. 231\nFraneckihaven, MA 73724-8808', 'Mrs. Peggie Turcotte', 'delectus', 6, 6, '637f8f52-d5d3-3d23-9461-4d9cfd9456ab', '166c821c-d1e3-33fd-b1ae-3582cfe03fea', '1995-02-06 17:22:41', '2000-09-03 21:53:52', 4, 0),
('bbb1a5e7-1d02-3db9-bee1-582b20369eec', 'Beahan-Beer', '8758 Dejuan Stream Apt. 994\nJevonfurt, MA 02709-6118', 'Odie Torphy', 'neque', 6, 4, '2a278867-f8a3-30bc-bab8-7f24cb05a9b1', '8ad22138-f672-3e5d-bd47-8abcbf39fcc4', '1992-08-12 10:33:12', '1981-11-21 09:25:23', 2, 1),
('be40ded3-a164-3588-b840-7d2fd4f392c4', 'Ullrich PLC', '39826 Fletcher Views\nLake Lincoln, AR 61388', 'Elian Bahringer', 'omnis', 2, 4, 'c693e0a0-c294-3c83-af08-11835ee8dbbc', 'c1576a59-4b86-391f-b4a8-1ce2b0c9a213', '1970-03-12 23:53:21', '2001-04-23 18:08:20', 7, 0),
('bf9cfc37-e3e4-323b-9c8d-4847263d6f0b', 'Hessel LLC', '412 Vernie Motorway Suite 369\nPort Andy, ME 43986', 'Dorcas Veum', 'et', 3, 1, 'e136a0f2-8740-360b-aca5-932c9eeb70f3', '3c5b8774-7c55-3b7b-a669-ef0242500420', '2005-07-03 17:02:02', '1999-04-22 18:42:36', 0, 0),
('c559dbcd-d2ff-3709-af46-b8deebf6f668', 'Adams-Reilly', '00416 Jerel Plains Suite 078\nLake Jo, AK 78947-0664', 'Izabella Keebler Sr.', 'officia', 8, 5, '81896e3c-6735-330b-b418-28134e91c0a7', '9214aa08-64c4-3fb4-90d4-c8c1658a4ed2', '2012-02-27 11:45:40', '1992-11-12 07:51:36', 8, 0),
('c5e52fc6-91a7-3575-9a51-983628f23844', 'Bogan PLC', '465 Kitty Isle\nLake Tristin, UT 56711-5562', 'Ruben Kassulke', 'praesentium', 6, 0, '1052ac1c-fa3d-3776-afef-9d27c51125f5', '41fec8bc-f0bd-3acb-b47e-964f1e8dc318', '1974-06-29 22:44:49', '1976-12-09 20:18:21', 6, 0),
('c76f4ab6-1e8e-3624-aeb4-28bae82043eb', 'Altenwerth Inc', '54370 Marjorie Plain Apt. 678\nLake Jeremie, ME 68573-8246', 'Lucio McGlynn Sr.', 'delectus', 9, 4, '40f34896-4b82-3eda-b068-65bf965dfe15', 'f155f436-c12d-385d-befe-15d456d97387', '1993-07-30 19:36:20', '1982-12-12 07:30:22', 7, 0),
('cb7414d5-93e9-3a72-af84-9efd41834177', 'Feeney, Walsh and VonRueden', '951 Dessie Fields Apt. 494\nMacejkovictown, NJ 36950-1850', 'Freda Medhurst', 'eveniet', 8, 0, 'a0e88df4-d6d0-3673-916d-4c01d68abccc', '28dc4179-fc80-3b32-a6e1-e1ec69391422', '2010-12-21 01:57:26', '1990-11-07 07:22:03', 7, 0),
('cc08b97b-a288-3654-80bf-03aa656e0937', 'Thiel PLC', '6470 Lockman Hollow\nAshlyside, AK 13511', 'Prof. Lonie Batz III', 'adipisci', 8, 7, '6b2f2d45-4037-3217-9c8a-84aba3e6ac7c', 'c56e8760-1244-37c8-b89b-0d094856b306', '1980-12-11 06:50:53', '1990-12-06 14:45:03', 4, 1),
('cf1c9477-304f-3e06-b3bd-6329cb5852e9', 'Steuber-Rau', '5623 Pagac Views Suite 463\nWest Shanna, WY 89594', 'Ms. Fannie Nolan', 'quas', 6, 6, '758dbe9c-54e4-382b-8c1b-d796e6958132', 'bc691d75-61b3-33b0-95d2-1b5be471dcf7', '2006-06-15 02:37:27', '1993-03-31 17:12:23', 6, 0),
('d2a2d852-eedf-3b6d-a79c-e817e754b5c3', 'Hoeger and Sons', '96369 Earline Port\nNew Royborough, MS 53440', 'Janet Medhurst Sr.', 'velit', 2, 5, '51456285-ccaa-3ff4-9446-6be89fb47b40', '0be86f05-c4bc-3b47-9e5f-03ae9883fee1', '1992-04-28 23:12:28', '1995-10-23 10:22:56', 0, 0),
('d4ede790-cc26-393a-b93c-7311576b565b', 'Kulas LLC', '9189 Balistreri Corners\nEast Retaton, AL 30074-7443', 'Clair Little', 'iure', 6, 8, '2387980d-ef68-31f4-a168-44134905a9b6', '4bd3810e-315a-37a6-b8b2-08e3acae7186', '1973-11-17 06:20:34', '1997-01-21 18:16:08', 4, 0),
('d752647c-15fc-30c5-b05f-4ce372ab0f29', 'Miller Group', '093 Lois Parkway\nHeidenreichbury, FL 34880-0169', 'Brenden Hagenes', 'repellendus', 0, 1, '587c4830-ffcf-3d2d-9f9f-03b75ea234d2', 'b4bcba8e-6bbe-33d6-9d4f-5ee13e34f332', '2006-09-15 11:26:34', '2006-10-13 04:08:01', 6, 1),
('d7cfba86-dc3e-329f-a507-dcd16ded5468', 'Spencer-Gutkowski', '522 Labadie Walk Suite 112\nEast Jany, IL 87637-5698', 'Terrance Sauer', 'dolor', 2, 3, '7c3e93c7-86d3-31d0-b355-e7b73df97b45', '9c905844-811d-3808-b80c-9ae54dde8f13', '2016-11-24 16:24:04', '2012-03-20 17:15:40', 1, 1),
('d8088323-1cc8-3ae2-8ad9-2a65d02d8954', 'Runolfsdottir-Schoen', '691 Fritsch Harbor Apt. 728\nNorth Deanna, IL 97172-1865', 'Mattie Gusikowski', 'est', 0, 1, '12a58432-2128-3507-b5a0-ca0fb314909a', 'a5111217-3706-3104-998e-3e8ab5ebdb1d', '1981-07-31 06:03:05', '2004-03-08 02:17:16', 7, 1),
('d8c0bc9e-0de1-3e07-8fc1-5df2c5c317cd', 'Schmitt, Cassin and Morar', '398 Renner Haven\nHoegermouth, IA 15995', 'Roy Gleason', 'at', 9, 1, '2862f020-b523-31fe-9d3f-f289dc0ee019', 'eb5aa8ac-332b-36f5-b5c3-d90b25789bcc', '1974-04-26 06:06:00', '1975-02-14 05:14:41', 3, 1),
('daa59fcf-1037-395e-980d-cb63791be2f3', 'Blick, Muller and Denesik', '555 Samir Groves\nLake Edgardo, KY 45618', 'Jaron Marquardt III', 'deleniti', 0, 2, 'e0786310-242c-3b53-a2fc-aafbd1018dbe', '7301bbf7-1c9b-3d79-88d9-1fb92eac3da8', '1975-01-18 00:22:36', '2000-07-19 02:42:43', 5, 0),
('db0c368f-5022-3857-adc3-9b823af4053c', 'Hammes Inc', '3377 Myrtle Extensions Apt. 787\nNew Amymouth, CO 89953', 'Selmer Thompson MD', 'eos', 7, 6, 'c56849f5-8146-3950-8e88-c0e94dbf394e', 'fa5bb13e-f41f-3bb8-941e-6501e0600b57', '2016-09-26 15:08:54', '1997-04-22 15:11:18', 3, 0),
('db49ae4c-9197-3d70-987f-8527f3048c9e', 'Zboncak, Osinski and Jaskolski', '31425 Miller Burg\nRyleighfurt, DE 56061', 'Ayana DuBuque', 'molestiae', 4, 3, '090135d8-e2ee-37af-93ce-20d2dcc9fde3', '3b163e41-3834-31d3-b148-694164f9bf68', '2015-09-18 19:20:15', '1970-07-26 04:43:22', 0, 1),
('db722477-9809-39d9-8ac0-f83eba91b158', 'Abernathy and Sons', '201 Homenick Well Suite 634\nHalvorsonchester, MT 59593-3733', 'Fidel Dach I', 'ut', 3, 5, 'a0ba3fd6-3675-32c8-82b4-c74d5975d2c1', '20360f43-2889-3116-94ba-03b4f8f6e274', '2000-07-18 22:38:08', '1994-01-29 03:53:14', 0, 1),
('dbe6f0e5-ea25-309d-ab7e-9c42d5db0687', 'Hahn, Kutch and Bartoletti', '69470 Lazaro Drive\nHesselfurt, NM 54976', 'Jarod Lowe', 'hic', 9, 5, 'ab383e11-8571-332f-8091-41dd11fd4a92', '7edded78-bb81-32c7-96c3-734345b880d0', '1977-01-03 14:11:14', '2014-04-06 09:01:05', 9, 0),
('e014cce8-3550-338f-85fe-33ae1cf16dfe', 'Satterfield Inc', '105 Dietrich Spurs\nWest Arthur, NH 56885-9136', 'Cruz Bradtke', 'et', 7, 3, 'b26c31b6-e5fb-38a0-ab3b-413e7494905e', '0389ac66-e645-3eff-ba73-20feccb802be', '1984-11-02 16:41:08', '1993-05-04 16:22:07', 9, 0),
('e0ba48a7-12c5-3448-af87-a0a63cef284a', 'Douglas-Cartwright', '9737 Dickens Rapid\nNew Helga, AR 11688', 'Dr. William Wisozk', 'consectetur', 8, 1, '988f56d3-d2d3-315b-abc5-f649b6c6d607', '4b43def1-82f2-34f9-ba00-2804bec579d8', '1989-02-13 00:03:05', '1981-04-06 23:54:34', 5, 0),
('e12514fd-b2ea-3d0c-93aa-29631b1a5c67', 'Leuschke, Kassulke and Kiehn', '087 Baumbach Place Apt. 362\nLake Gretchen, FL 66099-4887', 'Taurean Will', 'ipsum', 7, 0, 'de75943a-b41c-3690-87fe-3f095d764e43', 'f83897ae-7c8e-3d62-acb1-fe22d421771a', '1998-06-06 22:05:54', '2017-01-17 17:53:01', 2, 1),
('e2ed44ea-5ff2-34dc-be0a-2c3e5af5b3db', 'Shanahan LLC', '310 Kris Creek Apt. 674\nNew Antoinette, SC 89461-4395', 'Lindsay Boyer', 'corporis', 5, 3, 'd116a5b1-2caa-38fc-b7ec-ecba0f516957', '54942575-58ba-378c-9bf0-6b700b44ed76', '1977-07-25 10:16:42', '1971-07-30 01:51:04', 0, 0),
('eb2120a5-b6f6-37d9-b934-bacac23718c5', 'Dach, Ullrich and Renner', '5804 Wiegand Glens\nCarlottaview, MT 16995-2818', 'Mr. Abdullah Roob', 'necessitatibus', 0, 8, '9cc7ea81-5be6-375f-8508-0eb3d4830a30', '08a2f207-62a2-3e25-925d-a539d40dbd55', '1979-10-22 16:10:08', '1979-08-13 06:04:32', 2, 0),
('ec8cf633-4b67-3003-9a6d-ca42f4ce704d', 'Bailey and Sons', '96736 Gretchen Forge\nBergeton, NH 00446', 'Dr. Joanie Reynolds', 'excepturi', 5, 5, '7da2bd35-d881-3fb2-ad72-d4176e77a137', '0da59c52-7450-3d89-b3f1-5fab4d76f114', '2001-05-17 23:19:17', '1995-08-17 06:07:41', 9, 1),
('f366d936-33d1-35f9-b68f-5ee6434a1acd', 'Turner PLC', '798 Lera Track Apt. 078\nHermanmouth, AZ 36160-7606', 'Belle Pacocha', 'hic', 6, 0, 'f6d9bfdf-aeb4-3278-8162-5bf21d57aa29', '000376a9-22ae-376f-8631-f068c184ec82', '2007-12-11 14:47:25', '1980-01-19 14:21:14', 2, 1),
('f6b0a108-99cb-38e5-9225-1d770d079105', 'Hickle-Volkman', '321 Marcella Spur\nNorth Allisonmouth, OH 77590-6649', 'Nasir Ferry', 'est', 7, 3, '1ffd9c3a-4ee9-34ec-a7f7-a69f89de14e2', 'afc08982-d4c5-3e36-900e-b5c86d94d714', '1997-05-03 13:32:14', '1995-12-18 18:06:28', 6, 1),
('f89d028b-adb6-3e0c-a79b-8f6b6aeef527', 'Murray, Goodwin and Conn', '459 Theron Canyon\nPort Anna, MD 96650', 'Ephraim Mitchell PhD', 'rem', 1, 4, '3131163a-ef18-35d1-bc98-a0483982deb4', 'c1825501-c83b-3b45-ae81-7c8453c0428d', '1975-12-13 19:22:26', '1978-11-20 01:30:13', 8, 1),
('f9e4ffe7-7044-395d-8f24-abb08d8c49c3', 'Cartwright and Sons', '29009 Harvey Falls Apt. 003\nEast Janefort, NE 55191-7428', 'Aileen Stiedemann', 'et', 8, 8, 'b891c5e8-111f-3e96-915d-2378b5f74780', 'c8b2f9e3-819e-32af-b25e-6cd0d4bf5d76', '1980-10-18 01:22:55', '1993-11-02 04:53:26', 6, 1),
('faedac97-c4e2-3cf4-ad2a-88c38c9a3d80', 'O\'Keefe, Gerhold and Jakubowski', '4599 Kyleigh Drives Suite 886\nKoelpinmouth, AZ 46526-9241', 'Valentine Sporer III', 'saepe', 9, 3, '3c8700e3-19db-31e1-98de-7e21523cd754', '9ecf9943-5e33-3ad4-9510-2d6ad8ae8e79', '1972-03-01 06:45:44', '2003-07-22 17:33:03', 9, 1),
('fc14a6f8-1286-31d0-a36f-33aaafc2ab76', 'Schneider Group', '5347 Brown Motorway\nDimitriview, ND 87568-2720', 'Kathleen Reynolds', 'tenetur', 5, 3, '2b3f37e0-875e-30e9-8722-e098b6aa1ee9', '75590055-469d-30c6-830c-568d31526414', '2012-10-01 13:54:36', '1975-01-20 09:56:41', 5, 0),
('fde02dab-dae0-347a-b2a6-d002c8547ec3', 'Lynch-Schmeler', '4900 Goldner Flats Apt. 142\nLillafort, TN 07066-7485', 'Miss Gwen Dach MD', 'animi', 0, 2, 'df13d212-d0d2-3a56-8ae9-8e2bbdec0a68', '0646f527-955c-3b46-840b-f966e540dd7f', '2009-06-22 10:20:14', '1973-06-03 09:44:29', 3, 1),
('ffedd435-344f-376f-89c6-dfd1c11f4713', 'Nikolaus, Becker and Bashirian', '342 Langosh Extensions\nWest Rosalyn, AK 00999-6282', 'Ryder Rau', 'ut', 8, 0, 'f60c9d08-78e3-3d17-a228-59128ece3ce7', 'c7975e3b-2636-39fb-bd1c-b50f87b6e7ca', '1974-06-09 04:40:15', '1974-07-06 07:26:32', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_company_services`
--

CREATE TABLE `system_company_services` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `ServiceId` varchar(50) NOT NULL,
  `ContractType` int(8) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_company_services`
--

INSERT INTO `system_company_services` (`Id`, `CompanyId`, `ServiceId`, `ContractType`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'a73546e3-0aaf-432e-98d4-ca25b2077525', '1', 0, 'ADMIN', 'ADMIN', '2018-10-20 12:09:40', '2018-10-20 12:09:40', 1, 1),
(2, 'a73546e3-0aaf-432e-98d4-ca25b2077525', '2', 0, 'ADMIN', 'ADMIN', '2018-10-20 12:09:40', '2018-10-20 12:09:40', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_contracts`
--

CREATE TABLE `system_contracts` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_industries`
--

CREATE TABLE `system_industries` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_industries`
--

INSERT INTO `system_industries` (`Id`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'AGRI', 'Agriculture, Hunting, and Forestry', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(2, 'FISH', 'Fishing', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(3, 'MINE', 'Mining and Quarrying', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(4, 'MANUF', 'Manufacturing', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(5, 'UTIL', 'Electricity, Gas, and Water', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(6, 'CONST', 'Construction', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(7, 'TRADE', 'Wholesale and Retail Trade', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(8, 'HOTEL', 'Hotels and Restaurants', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(9, 'HSC', 'Transport, Storage, and Communication', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(10, 'FINCE', 'Financial Intermediation', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(11, 'BPO', 'Real Estate, Renting, and Business Services', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(12, 'EDUC', 'Private Education', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(13, 'HEALTH', 'Health and Social Work', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(14, 'COMM', 'Other Community, Social, and Personal Services', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(15, 'ALL', 'All Other Sectors', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserId` varchar(50) NOT NULL,
  `Action` varchar(191) NOT NULL,
  `Entity` varchar(191) NOT NULL,
  `ActionData` text NOT NULL,
  `IpAddress` varchar(191) NOT NULL,
  `Device` varchar(191) NOT NULL,
  `Platform` varchar(30) NOT NULL,
  `UserAgent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_logs`
--

INSERT INTO `system_logs` (`id`, `Timestamp`, `UserId`, `Action`, `Entity`, `ActionData`, `IpAddress`, `Device`, `Platform`, `UserAgent`) VALUES
(1, '2018-10-26 09:09:57', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '127.0.0.1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `system_modules`
--

CREATE TABLE `system_modules` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `ServiceId` int(8) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_modules`
--

INSERT INTO `system_modules` (`Id`, `Code`, `Name`, `ServiceId`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'EMP', 'Employees Management', 1, '', 'ADMIN', 'ADMIN', '2018-10-17 18:15:57', '2018-10-17 18:15:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_services`
--

CREATE TABLE `system_services` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_services`
--

INSERT INTO `system_services` (`Id`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'Human Resource', 'Human Resource Information System', '', 'ADMIN', 'ADMIN', '2018-10-17 18:15:57', '2018-10-17 18:15:57', 1, 1),
(2, 'Payroll', 'Payroll Management System', '', 'ADMIN', 'ADMIN', '2018-10-17 18:15:57', '2018-10-17 18:15:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CompanyId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoginName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PasswordHash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SecurityUserLevelId` int(11) NOT NULL,
  `PasswordNeverExpires` tinyint(1) NOT NULL,
  `UserCantChangePassword` tinyint(1) NOT NULL,
  `UserChangePasswordNextLogon` tinyint(1) NOT NULL,
  `PasswordDate` date NOT NULL,
  `VersionNo` int(11) NOT NULL DEFAULT '1',
  `PeopleId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserPhoto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivationCode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedById` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ModifiedById` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `CompanyId`, `UserCode`, `FirstName`, `LastName`, `LoginName`, `PasswordHash`, `SecurityUserLevelId`, `PasswordNeverExpires`, `UserCantChangePassword`, `UserChangePasswordNextLogon`, `PasswordDate`, `VersionNo`, `PeopleId`, `Email`, `UserPhoto`, `ActivationCode`, `Remarks`, `remember_token`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `Active`) VALUES
('0e3cf593-9d7e-39d5-9684-4ac651abf8e2', '85515a2b-eff0-3768-86bc-a83eeb063a4d', 'xeqy', 'Louvenia', 'Bartoletti', 'jarrell.wilkinson@example.net', '83a802b2af96bec0afa94461770f22429e048eeb', 1, 2, 8, 1, '2008-02-25', 0, '40dc8b2b-413b-398f-b71f-26623253637d', 'gulgowski.nils@example.com', '/03cc0b454c9d5c3749d2c782ba654ab3.jpg', 'ncmv', 'Omnis esse distinctio rerum et delectus voluptate. Explicabo voluptas quos non totam doloremque itaque dignissimos. Porro quam voluptates nostrum nesciunt fugiat dolorem rerum. Eaque ut id ex et neque vel.', NULL, '12a89381-6b1f-3532-8727-d644e98149f6', 'ac70c2ac-6354-3162-80a6-a09039b7b544', '1999-12-25 09:54:19', '1970-02-07 03:22:38', 1),
('2670699b-fe3a-34f9-90b9-34063cf5b708', '54f2313d-ea65-3755-8a57-472f22c40ca8', 'yrlu', 'Ottis', 'Kutch', 'alana45@example.net', '20e7b65907c153e0928e6437c2a21e18615cb30d', 7, 1, 2, 4, '1978-03-14', 9, 'ae4ddbbe-5ae8-35d1-adf9-ed5b0d20bc6e', 'angelina64@example.org', '/295928c082c79a245ac31f30e4c57fe2.jpg', 'jumx', 'Sed et quo hic voluptatem aut. Culpa aliquid eius nostrum explicabo autem dolore. Accusantium sed et aspernatur inventore.', NULL, '71d2cf1a-cfa9-3a9a-9676-b6a9b514ba66', 'f4c3a6b0-73c4-34ae-ae26-e979e8bd61c9', '1996-07-08 01:52:11', '1991-01-22 22:16:13', 0),
('2a9780bb-8398-32f2-b231-ff2d5087f4ca', 'b4e5f169-b013-305a-bfa0-325d53b242ba', 'qfvx', 'Helmer', 'Bergstrom', 'ramiro.larkin@example.org', 'b839a1df87169fa2df00f57c230f364128cbb3c9', 0, 0, 6, 9, '2009-04-24', 9, 'ffbc8e08-6ce0-30fd-879b-f404a3e01f4d', 'hintz.julien@example.net', '/0845e2e007b7c0bd9fe751a5acefffce.jpg', 'xeyp', 'Et reprehenderit qui culpa est repudiandae ipsam alias. Nisi suscipit sed suscipit aut quam atque harum. Id rerum laudantium dolore dignissimos fuga repellendus. Numquam autem facilis esse deserunt et sit pariatur vel.', NULL, '45d18dba-8e0f-35a1-b88f-71a0735a93f1', 'babf5d24-790c-3b01-81be-01eacf8b9076', '2011-05-02 16:59:01', '2011-12-25 14:00:22', 0),
('33406739-f76d-3db8-943b-84eec067b92b', 'd25535de-ac81-3190-8401-aea31f57e1e0', 'jhzh', 'Torrey', 'Altenwerth', 'wayne37@example.net', '9920e896ad787af2b26b01f1e3c7d6a65234f94d', 3, 2, 5, 8, '1978-05-25', 8, 'c02d4973-0d5c-3c75-a6ad-6766d8c4ceac', 'elton.mills@example.org', '/50595aec94aa23be61ca5bda1e8addcf.jpg', 'iena', 'Harum aut placeat dolore sed. Voluptatem aut qui et omnis maxime nesciunt iusto minima. Dolore voluptates officia iure voluptatem in sit sit. Tempora consequatur quaerat illo consequatur vitae eos sint.', NULL, 'b50ec36d-fbce-3417-897f-f2a73ed90cf1', '01d19e2f-0f97-3a26-8843-243b5161927d', '2013-03-26 19:56:05', '2004-07-19 17:31:16', 1),
('58fa037a-c504-451d-bc12-b505aa92d585', 'a73546e3-0aaf-432e-98d4-ca25b2077525', '9999', 'Administrator', '', 'admin', '6188b90b33da003b7b67c509540231cbe3b354ec259a8e9699da4b0655b2c854a6307fae6683b9bd908ad9cd41fb95bf2a9c073f3ab99c485e45088fec92ea0c', 99, 1, 1, 1, '2018-10-17', 1, '', 'isystem20@gmail.com', '', '', '', NULL, '58fa037a-c504-451d-bc12-b505aa92d585', '58fa037a-c504-451d-bc12-b505aa92d585', '2018-10-16 20:04:05', '2018-10-16 20:04:05', 1),
('ef2a803c-4002-3b73-b18c-7095d4b51790', '17d1c06a-ac2d-353f-98df-07118ebe3e27', 'wsch', 'Kathryn', 'O\'Kon', 'derdman@example.net', '21f0011735d7a1aa76f496c96d21bd90c0e839ec', 4, 7, 5, 2, '1983-08-13', 9, '0c0c6ac1-424a-38e2-8588-a290cc59a4d5', 'keely74@example.net', '/531b2e7998b5af935335322d636103b1.jpg', 'lmba', 'Facere eligendi esse cum et maiores. Ut et nobis maxime aut illo. Voluptas quaerat dolorem autem voluptas.', NULL, 'fc3a125a-2e9f-325a-b0b0-41e79d559d96', 'e611a5c2-c764-37a6-a86a-eb21e9b139bd', '1989-05-17 06:51:33', '1994-05-14 04:10:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_modules`
--

CREATE TABLE `system_user_modules` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  `ServiceId` int(8) NOT NULL,
  `ModuleId` int(8) NOT NULL,
  `AllowAdd` tinyint(1) NOT NULL,
  `AllowEdit` tinyint(1) NOT NULL,
  `AllowDelete` tinyint(1) NOT NULL,
  `AllowRead` tinyint(1) NOT NULL,
  `AllowPrint` tinyint(1) NOT NULL,
  `AllowExport` tinyint(1) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_user_modules`
--

INSERT INTO `system_user_modules` (`Id`, `CompanyId`, `UserId`, `ServiceId`, `ModuleId`, `AllowAdd`, `AllowEdit`, `AllowDelete`, `AllowRead`, `AllowPrint`, `AllowExport`, `isAdmin`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'a73546e3-0aaf-432e-98d4-ca25b2077525', '58fa037a-c504-451d-bc12-b505aa92d585', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'ADMIN', 'ADMIN', '2018-10-20 12:07:32', '2018-10-20 12:07:32', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hr_general_awardhistory`
--
ALTER TABLE `hr_general_awardhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_certificates`
--
ALTER TABLE `hr_general_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_certifications`
--
ALTER TABLE `hr_general_certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_changehistory`
--
ALTER TABLE `hr_general_changehistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_costcenters`
--
ALTER TABLE `hr_general_costcenters`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_darecords`
--
ALTER TABLE `hr_general_darecords`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_departments`
--
ALTER TABLE `hr_general_departments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_dependents`
--
ALTER TABLE `hr_general_dependents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_employees`
--
ALTER TABLE `hr_general_employees`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_emptypes`
--
ALTER TABLE `hr_general_emptypes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_leaves`
--
ALTER TABLE `hr_general_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_loans`
--
ALTER TABLE `hr_general_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_offenses`
--
ALTER TABLE `hr_general_offenses`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_positions`
--
ALTER TABLE `hr_general_positions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_ranks`
--
ALTER TABLE `hr_general_ranks`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_schoolhistory`
--
ALTER TABLE `hr_general_schoolhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_sites`
--
ALTER TABLE `hr_general_sites`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_skills`
--
ALTER TABLE `hr_general_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_traininghistory`
--
ALTER TABLE `hr_general_traininghistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_workhistory`
--
ALTER TABLE `hr_general_workhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_companies`
--
ALTER TABLE `system_companies`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_company_services`
--
ALTER TABLE `system_company_services`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_contracts`
--
ALTER TABLE `system_contracts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_industries`
--
ALTER TABLE `system_industries`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_modules`
--
ALTER TABLE `system_modules`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_services`
--
ALTER TABLE `system_services`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_sys_securityusers_loginname_unique` (`LoginName`);

--
-- Indexes for table `system_user_modules`
--
ALTER TABLE `system_user_modules`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hr_general_awardhistory`
--
ALTER TABLE `hr_general_awardhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `hr_general_certificates`
--
ALTER TABLE `hr_general_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `hr_general_certifications`
--
ALTER TABLE `hr_general_certifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `hr_general_changehistory`
--
ALTER TABLE `hr_general_changehistory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_costcenters`
--
ALTER TABLE `hr_general_costcenters`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hr_general_darecords`
--
ALTER TABLE `hr_general_darecords`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_departments`
--
ALTER TABLE `hr_general_departments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `hr_general_dependents`
--
ALTER TABLE `hr_general_dependents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_emptypes`
--
ALTER TABLE `hr_general_emptypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hr_general_leaves`
--
ALTER TABLE `hr_general_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_loans`
--
ALTER TABLE `hr_general_loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_offenses`
--
ALTER TABLE `hr_general_offenses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_positions`
--
ALTER TABLE `hr_general_positions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `hr_general_ranks`
--
ALTER TABLE `hr_general_ranks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `hr_general_schoolhistory`
--
ALTER TABLE `hr_general_schoolhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_sites`
--
ALTER TABLE `hr_general_sites`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `hr_general_skills`
--
ALTER TABLE `hr_general_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `hr_general_traininghistory`
--
ALTER TABLE `hr_general_traininghistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_workhistory`
--
ALTER TABLE `hr_general_workhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_company_services`
--
ALTER TABLE `system_company_services`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_contracts`
--
ALTER TABLE `system_contracts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_industries`
--
ALTER TABLE `system_industries`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_modules`
--
ALTER TABLE `system_modules`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_services`
--
ALTER TABLE `system_services`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_user_modules`
--
ALTER TABLE `system_user_modules`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
