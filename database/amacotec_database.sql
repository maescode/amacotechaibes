-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2022 at 02:27 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amacotec_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2021-12-16 17:34:36', ''),
(2, 'admin@amacotechaibes.com', '3236b0d2cd62baf4345015d68ea618f0', '2021-12-17 17:34:42', '19-12-2021 07:23:09 PM');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `author` varchar(30) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `entry_text` longtext NOT NULL,
  `image` varchar(250) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `author`, `date_created`, `entry_text`, `image`, `time`) VALUES
(22, 'The Blessed and the Accursed', ' FR. HUGH BARBOUR, O. PRAEM', 'December 8, 2020', '<p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\"><span style=\"font-weight: bolder;\">Have you ever played â€œairplaneâ€ with a baby</span>Â who was reluctant to eat? If you were lucky, your antics delighted theÂ <em>bambino</em>, and into the hangar went the plane, loaded with applesauce. But we all know how resolute a baby can be in refusing, with lips firmly closed and head turning from side to side. Even though the mouthful is something he usually likes, no amount of signaling can get the plane to land and park.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">The baby is gradually discovering something, namely, that even though he has many needs for things he likes and for which he must cry out and on which he is utterly dependent, he is also able to be autonomous; he is able to say â€œnoâ€ even to things he ordinarily likes.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">Thus the child learns a new delightâ€”not something to see, or hear, or touch, or smell, or taste, or imagine, but just one thing: the satisfaction of having oneâ€™s own will.Â  Now this is fine and good if what he wills is something good for him. But as he grows older the possibility develops of just loving his own will because it is his own will. This is almost, if not entirely, the definition of sin.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">The fact is that if we really understand sin and virtue, we will see that every material aspect of a sin is not something bad or evil; all the aspects of the things we want to do or say or think about or use are just good, created qualities. When we misuse those good things slightly or seriously, we sin. The misuse is not due to their nature, but to our own self-will. Beautiful bodies, sums of wealth, effective words, possessions, associations, skills, and talents are all good in themselves. It is our willed misuse of them that constitutes sin.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">This is necessarily true because everything is created by God, and God did not create anything evil. Even our will is so good that we cannot choose evil unless we pretend to ourselves that it is really good. Evil is not a thing; it is rather something missing, a lack of good, a disorder.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\"><span style=\"font-weight: bolder;\">This has everything to do with how Christ our Lord and Creator</span>Â judges and rewards our actions. He rewards those who are about to enter heaven for using the good things that God has given them so as to fulfill his commandments; that is, to do his will. Their actions showed that they prayed sincerely, â€œThy kingdom come, thy will be done on earth as it is in heaven,â€ and now they are finally going there!Â  They were positively blessed by the Father because they are going to that happiness that was prepared for all human goodness by the creator of human goodness.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">They sinned, yes, but their love, especially their works of mercy (yes, thatâ€™s what Our Lord says!) made them blessed by the Father, since these very works and their reward were prepared for them by him. God is the Creator of all things, but most of all of loving persons and their actions. â€œLove covers a multitude of sins,â€ the apostle tells us.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">In the case of those who are sent away to the fires of hell, yes, they are accursed, but not â€œby my Father.â€ St. Thomas, explicitly following Origen on this point, tells us that the blessed are blessed by God, but those who are cursed have theirÂ <em>own curse</em>Â that does not come from him.Â  Their curse cannot ultimately be the work of God. He can bless after a curse, but he does not curse definitively because his curse is ultimately not on any of his creatures, but only on sin.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">Thomas, following St. Gregory, says that God takes no delight or complacency in the condemnation of the wicked; rather he loves his goodness and therefore cannot love, cannot reward, the evil in which they persist. Hell, Gregory tells us, is not for any good nature, angelic or human, but is prepared simply for sin. Heaven, on the other hand, is God and all he has created come to the fullest perfection. Compared to this, hell is a shadow as close to nothing as nothing can be.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\"><span style=\"font-weight: bolder;\">â€œAnd of his fullness we have all received,â€</span>Â St. John tells us. This can give us some insight into the mercy of God. He really does not hate the sinner (that means you and me!), but only the sin. Hell is the condemnation of a sinful will, and only accidentally the eternal condemnation of those who will not rid themselves of it. Christ our King knows that everything you have, and especially the will that you can use to love or offend him, is good and comes from him. He loves your will even more than you do. Just as the babyâ€™s mother loves his potential health and happiness more than he does, even though she knows he can resist her love.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">So letâ€™s not be stubborn, loving our own will against our own true good, but repent and begin to love as our King enthroned in judgment has taught us, and then some great day we will hear him say, â€œCome, blessed of my Fatherâ€¦â€</p>', './blogimage/charity.jpg', '2020-12-08 12:53:55'),
(23, 'The Coming Fire', ' FR. HUGH BARBOUR, O. PRAEM', 'December 8, 2020', '<p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">A holy Italian sister, a consecrated woman and foundress whom I had the good fortune to know once, told me that when she heard warnings of dire punishments from Our Lady in one of the current apparitions she wanted to say, â€œ<em>Madonna mia, lascia mi vivere!â€”Â </em>â€œMy dear Madonna, let me live!â€</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">This lady had spent her life promoting devotion to Our Lady, and she was completely orthodox. If we examine the matter in our own hearts, we may find that we have a similar reaction. Who is more loving and reassuring than the Mother of God? And so it is distressing to hear her tell of coming chastisements.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">Well, the readings of the beginning of Advent and the weeks at the end of the Churchâ€™s year are full of warnings about coming judgment. These warnings come from the prophets and from the prophet of prophets St. John the Baptist, and most of all, from Our Lord himself. And in our own times even Our Lady has come to warn and admonish us.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">All of the readings for this second Sunday of Advent provide us with the key for understanding what could seem so harsh. â€œComfort, give comfort to my people.â€</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">â€œSpeak tenderly to Jerusalem.â€ â€œHe is patient with you, not wishing that anyone should perish.â€ â€œJohn appearedâ€¦proclaiming a baptism of repentance for the forgiveness of sins.â€</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">Yes, this old world will be destroyed by fire at the end, but the next instant is a â€œnew heaven and a new earth where righteousness dwells.â€</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">The Lordâ€™s and the prophetâ€™s and the apostleâ€™s warnings are always accompanied by the promise of forgiveness and future happiness. As we have just seen they speak of comfort and of tender speech and forgiveness. At Fatima just a hundred years ago Our Lady told us, â€œMy Immaculate Heart will be your refuge and the way that will lead you to God.â€</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\"><span style=\"font-weight: bolder;\">Yet when we hear St. Peter tell us,</span>Â  â€œSince everything is to be dissolved in this way, what sort of persons ought you to be, conducting yourselves in holiness and devotion, waiting for and hastening the coming of the day of Godâ€ we can feel more than a little pang. Yes, indeed, what sort of persons ought we to be, given the knowledge we have of the coming judgment and the end of this world?</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">Sometimes our lives can seem just a mass of imperfections and sins, great and small. What are we to do? The answer is simple. We must repent, not once, or twice, but daily. The Savior said that he came to call sinners, not the righteous to repentance. The prospect of punishment is only a warning of love, and the Lord always points to his Sacred Heart as our refuge and the source of unfailing mercy.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: \"open sans\", sans-serif; font-size: 18px;\">In these very trying times on so many fronts, we should rejoice that we know the way, and we do not need to be perplexed or discouraged by disorder, whether in ourselves or in the world around us. We have been warned, but we have also been unutterably loved, and if we turn to God daily and continually Our Lord and his Blessed Mother will â€œlet us live.â€</p>', './blogimage/b-a.jpg', '2020-12-08 12:57:18'),
(24, 'Ask an Apostle: Should our family gather for Christmas?', 'Unknown', 'December 8, 2020', '<p style=\"margin: 5px 0px 15px; padding: 0px; font-size: 18px; color: rgb(148, 148, 148); line-height: 26px; font-family: Roboto-light;\">Among the 110 people killed, roughly 30 people were beheaded by the militants, according to Reuters. Amnesty International has also reported that 10 women are missing after the attack.</p><p style=\"margin: 5px 0px 15px; padding: 0px; font-size: 18px; color: rgb(148, 148, 148); line-height: 26px; font-family: Roboto-light;\">No group has claimed responsibility for the attack, but local anti-jihadist militia told AFP that the Boko Haram operate in the area and frequently attack farmers. The Islamic State West Africa Province (ISWAP) has also been named as a possible perpetrator of the massacre.</p><p style=\"margin: 5px 0px 15px; padding: 0px; font-size: 18px; color: rgb(148, 148, 148); line-height: 26px; font-family: Roboto-light;\">More than 12,000 Christians in Nigeria have been killed in Islamist attacks since June 2015, according to a 2020 report by the Nigerian human rights organization, the International Society for Civil Liberties and the Rule of Law (Intersociety).&nbsp;</p><p style=\"margin: 5px 0px 15px; padding: 0px; font-size: 18px; color: rgb(148, 148, 148); line-height: 26px; font-family: Roboto-light;\">The same report found that 600 Christians were killed in Nigeria in the first five months of 2020.&nbsp;</p><p style=\"margin: 5px 0px 15px; padding: 0px; font-size: 18px; color: rgb(148, 148, 148); line-height: 26px; font-family: Roboto-light;\">Christians in Nigeria have been beheaded and set on fire,&nbsp;farms have been&nbsp;set ablaze, and priests and seminarians have been targeted for kidnapping and ransom.</p><p style=\"margin: 5px 0px 15px; padding: 0px; font-size: 18px; color: rgb(148, 148, 148); line-height: 26px; font-family: Roboto-light;\">Fr. Matthew Dajo, a priest from the Archdiocese of Abuja, was&nbsp;<a href=\"https://www.catholicnewsagency.com/news/catholic-archbishop-pray-for-priest-kidnapped-in-nigeria-83341\" style=\"color: rgb(0, 102, 153); display: inline-block; outline: none; text-transform: uppercase; font-size: 16px; margin-top: 10px; font-weight: 700;\">KIDNAPPED</a>&nbsp;on Nov. 22. He&nbsp;has not been released, according to the archdiocesan spokesman.</p><p style=\"margin: 5px 0px 15px; padding: 0px; font-size: 18px; color: rgb(148, 148, 148); line-height: 26px; font-family: Roboto-light;\">Dajo was abducted by gunmen during an attack on the town of Yangoji, where his parish St. Anthonyâ€™s Catholic Church is located. Archbishop Ignatius Kaigama of Abuja has issued a call for prayers for his safe release.</p><div data-v-499bc41c=\"\" style=\"color: rgb(0, 0, 0); font-family: &quot;open sans&quot;, sans-serif; font-size: 18px;\"></div>', './blogimage/verse.jpg', '2020-12-08 13:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `author` varchar(30) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `entry_text` longtext NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `author`, `date_created`, `entry_text`, `image`) VALUES
(19, 'Second Round of Grant Funding Awarded to Researchers Studying the Future of the Internet', 'Mabel Gunda', 'June 18, 2021', '<p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Hind, Helvetica, Arial, sans-serif; color: rgb(12, 28, 44); line-height: 1.3; font-size: 21px;\">From the environment to the economy, the Internet is reshaping several sectors of our society. What might future patterns of disruption look like? How will these changes affect all of us?</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Hind, Helvetica, Arial, sans-serif; color: rgb(12, 28, 44); line-height: 1.3; font-size: 21px;\">At the Internet Society Foundation, we believe the answers to these questions and many others can be found in research. Thatâ€™s why in September 2020&nbsp;<a href=\"https://www.isocfoundation.org/2020/09/announcing-our-new-research-grants-exploring-the-future-of-the-internet/\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; letter-spacing: 0px; font-weight: inherit; color: rgb(43, 114, 214); text-decoration-line: underline; font-size: inherit; line-height: inherit;\">we announced $1M in grants</a>&nbsp;to support researchers worldwide studying the future and sustainability of the Internet.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Hind, Helvetica, Arial, sans-serif; color: rgb(12, 28, 44); line-height: 1.3; font-size: 21px;\">Weâ€™re thrilled to announce the second cohort of our research grant recipients. Their projects will examine important issues around the Internetâ€™s relationship to society, such as the impact of climate change on Internet infrastructure, the role of blockchain economics in the Internet economy, how best to advance climate justice, and more.</p>', './blogimage/news1.jpeg'),
(20, 'Hacker Tried to Poison Water Treatment Plan That Serves San Francisco Bay Area in US: Report', 'NBC News', 'June 19, 2021', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 67, 62); width: 728px; line-height: 24px; font-family: &quot;Open Sans&quot;, HelveticaNeue, Helvetica, Arial, sans-serif;\">A hacker had accessed a water treatment plant in the San Francisco Bay Area in January and deleted programs that were used to treat drinking water, the US media reported. In the latest cyberattack to come to light on an American facility, the hacker used the username and password of a former employee to log into the system on January 15 and altered the settings. The security breach was detected the next day and the California facility changed the protocols and reinstalled the programs.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 67, 62); width: 728px; line-height: 24px; font-family: &quot;Open Sans&quot;, HelveticaNeue, Helvetica, Arial, sans-serif;\">NBC&nbsp;<a href=\"https://www.nbcnews.com/tech/security/hacker-tried-poison-calif-water-supply-was-easy-entering-password-rcna1206\" rel=\"nofollow\" target=\"_blank\" style=\"color: rgb(218, 0, 0); cursor: pointer;\">reported</a>&nbsp;that the hacker, whose name and motives&nbsp;are yet unknown, tried to poison the water of area that is close to the Silicon Valley, the global centre of high technology and software innovations. It cited a private report prepared by the regional intelligence centre in February. The report did not identify the facility.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 67, 62); width: 728px; line-height: 24px; font-family: &quot;Open Sans&quot;, HelveticaNeue, Helvetica, Arial, sans-serif;\"><br></p>', './blogimage/news_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Food', 'Amacotech food', '2021-12-17 14:38:54', NULL),
(8, 'Book', 'A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover', '2021-12-19 16:26:54', NULL),
(9, 'ELECTRONICS', 'Stage lighting parts for various stage lighting fixtures are available. Solar systems to light up your events arena and homes also in stock.', '2021-12-19 21:11:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `timeupload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `caption`, `picture`, `timeupload`) VALUES
(1, 'AMACOTECH', 'gallery/20190303_170916.jpg', '2021-07-29 04:22:23'),
(2, 'AMACOTECH 1', 'gallery/20190303_170727.jpg', '2021-07-29 04:22:50'),
(3, 'AMACOTECH', 'gallery/20190303_170916.jpg', '2021-07-29 04:23:15'),
(4, 'AMACOTECH', 'gallery/20191223_113905.jpg', '2021-07-29 04:23:15'),
(5, 'AMACOTECH', 'gallery/20200108_195852.jpg', '2021-07-29 04:23:34'),
(6, 'AMACOTECH', 'gallery/20200109_101744.jpg', '2021-07-29 04:23:50'),
(7, 'AMACOTECH', 'gallery/Advert.jpeg', '2021-07-29 04:25:10'),
(8, 'AMACOTECH', 'gallery/WhatsApp Image 2021-06-13 at 5.50.36 PM (1).jpeg', '2021-07-29 04:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(17, 'saqew@we.wo'),
(19, ''),
(20, ''),
(21, 'olagokeabel@gmail.com'),
(22, 'olagokeabel1991@gmail.com'),
(23, 'adewale@gmail.com'),
(24, 'Olagoke@gmail.com'),
(25, 'Hello@gmail.com'),
(26, 'a@gmail.com'),
(27, 'olagoke'),
(28, 'amacotechaibes.com@buycodeshop.com'),
(29, 'petersonlori@gmail.com'),
(30, 'stvnsruby@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(2, 7, 1, '5 litres ', 'Amacotech Akwa Palm oil', 5000, 5200, 'Amacotech Akwa Palm Oil is produced and packaged fresh, and certified by NAFDAC. It is natural and healthy, without colourants, rich in vitamins A and E with an unbeatable test, price and value for your money. There are 6 pieces in a carton.<br>', '5 L.jpg', '5 L.jpg', '5 L.jpg', 500, 'In Stock', '2021-12-19 21:36:17', NULL),
(3, 7, 1, '3.5 Litres', 'Amacotech Akwa Palm oil', 3400, 3500, 'Amacotech Akwa Palm Oil is produced and packaged fresh, and certified by\r\n NAFDAC. It is natural and healthy, without colourants, rich in vitamins\r\n A and E with an unbeatable test, price and value for your money. There \r\nare 6 pieces in a carton.<br>', '3.5 L.jpg', 'B3.jpg', 'B3.jpg', 500, 'In Stock', '2021-12-19 21:43:06', NULL),
(4, 7, 1, '3 Litres', 'Amacotech Akwa Palm oil', 3000, 3200, '\r\n\r\n<p class=\"MsoNormal\">Amacotech Akwa Palm Oil is produced and packaged fresh, and\r\ncertified by NAFDAC. It is natural and healthy, without additives, colourants, rich in\r\nvitamins A and E with an unbeatable test, price and value for your money. There\r\nare 6 pieces in a carton.</p>\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\n  DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"267\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->', '3 L.png', '3 L.png', '3 L.png', 500, 'In Stock', '2021-12-20 22:10:21', NULL),
(5, 7, 1, '2 Litres', 'Amacotech Akwa Palm oil', 2000, 2200, '\r\n\r\n<p class=\"MsoNormal\">Amacotech Akwa Palm Oil is produced and packaged fresh, and\r\ncertified by NAFDAC. It is natural and healthy, without additives, colourants, rich in\r\nvitamins A and E with an unbeatable test, price and value for your money. There\r\nare 6 pieces in a carton.</p>\r\n\r\n<!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\n  DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"267\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->', '2-litres-amacotech-akwa-palm-oil EDITED.jpg', '2-litres-amacotech-akwa-palm-oil EDITED.jpg', '2L 1.jpg', 500, 'In Stock', '2021-12-20 22:14:58', NULL),
(6, 7, 1, '1000ML', 'Amacotech Akwa Palm oil', 1050, 1200, '\r\n\r\n<p class=\"MsoNormal\">Amacotech Akwa Palm Oil is produced and packaged fresh, and\r\ncertified by NAFDAC. It is natural and healthy, without additives, colourants, rich in\r\nvitamins A and E with an unbeatable test, price and value for your money. There\r\nare 16 pieces in a carton.</p>\r\n\r\n', '1000ML.png', '1000ML.png', '1000ML.png', 500, 'In Stock', '2021-12-20 22:17:16', NULL),
(7, 7, 1, '750ML', 'Amacotech Akwa Palm oil', 800, 900, '\r\n\r\n<p class=\"MsoNormal\">Amacotech Akwa Palm Oil is produced and packaged fresh, and\r\ncertified by NAFDAC. It is natural and healthy, without additives, colourants, rich in\r\nvitamins A and E with an unbeatable test, price and value for your money. There\r\nare 16 pieces in a carton.</p>\r\n\r\n', '750ML.png', '750ML.png', '750ML.png', 500, 'In Stock', '2021-12-20 22:18:40', NULL),
(8, 7, 2, '1000ML', 'Amacotech Natural Honey', 4000, 4200, 'Pure and Natural honey, healthy for food and medicinal purposes.<br>', '1LITRE 1 EDITED.jpg', '1LITRE 1 EDITED.jpg', '1LITRE 1 EDITED.jpg', 500, 'In Stock', '2021-12-20 22:45:33', NULL),
(9, 7, 2, '750ML', 'Amacotech Natural Honey', 3000, 3100, 'Pure and natural honey, healthy for food and medicinal purposes<br>', '750ML TWIN 3 EDITED.jpg', '750ML TWIN 3 EDITED.jpg', '750ML TWIN 3 EDITED.jpg', 500, 'In Stock', '2021-12-20 22:51:08', NULL),
(10, 7, 2, '500ML', 'Amacotech Natural Honey', 2000, 2100, 'Pure and natural honey, healthy for food and medicinal purposes<br>', '500ML 2EDITED.jpg', '500ML 2EDITED.jpg', '500ML 2EDITED.jpg', 500, 'In Stock', '2021-12-20 22:53:50', NULL),
(11, 7, 2, '380ML', 'Amacotech Natural Honey', 1650, 1700, 'Pure and natural honey, healthy for food and medicinal purposes<br>', '380ML TWIN 4 EDITED.jpg', '380ML TWIN 4 EDITED.jpg', '380ML TWIN 4 EDITED.jpg', 500, 'In Stock', '2021-12-20 22:55:51', NULL),
(12, 7, 2, '300ML', 'Amacotech Natural Honey', 1420, 1500, 'Pure and natural honey, healthy for food and medicinal purposes<br>', '300ML 4EDITED.jpg', '300ML 4EDITED.jpg', '300ML 4EDITED.jpg', 500, 'In Stock', '2021-12-20 22:57:57', NULL),
(13, 7, 2, '250ML', 'Amacotech Natural Honey', 1200, 1250, 'Pure and natural honey, healthy for food and medicinal purposes<br>', '250ML TRIPLET 2 EDITED.jpg', '250ML TRIPLET 2 EDITED.jpg', '250ML TRIPLET 2 EDITED.jpg', 500, 'In Stock', '2021-12-20 22:59:33', NULL),
(14, 7, 11, 'MEDIUM FLAT RATE USPS priority mail box', 'UHSC ORGANIC PEPPER', 0, 0, 'Ghost (RED) and Cameroon (PURPLE) Pepper; very hot and spicy with great aroma.<br>', 'mixed ghost & cameroon pepper edited.jpg', 'packaged pepper edited.jpg', 'pepper production edited.jpg', 0, 'In Stock', '2021-12-20 23:15:51', NULL),
(15, 8, 10, 'CHOOSING A CAREER: ARTS', 'CAREER EDUCATION', 1300, 1500, 'Choosing a career is academic, professional and vocational; ideal and resourceful for students, parents, career counsellors and those seeking a fulfilled career path.<br>', 'ARTS edited.jpg', 'ARTS edited.jpg', 'ARTS edited.jpg', 0, 'In Stock', '2021-12-20 23:29:32', NULL),
(16, 8, 10, 'CHOOSING A CAREER: SOCIAL SCIENCES', 'AMACOTECH CAREER EDUCATION', 1300, 1500, 'Choosing a career is academic, professional and vocational; ideal and \r\nresourceful for students, parents, career counsellors and those seeking a\r\n fulfilled career path.<br>', 'SOCIAL SCIENCES edited.jpg', 'SOCIAL SCIENCES edited.jpg', 'SOCIAL SCIENCES edited.jpg', 0, 'In Stock', '2021-12-20 23:32:04', NULL),
(17, 8, 10, 'CHOOSING A CAREER: SCIENCES', 'AMACOTECH CAREER EDUCATION', 1800, 2000, 'Choosing a career is academic, professional and vocational; ideal and \r\nresourceful for students, parents, career counsellors and those seeking a\r\n fulfilled career path.<br>', 'SCIENCES edited.jpg', 'SCIENCES edited.jpg', 'SCIENCES edited.jpg', 0, 'In Stock', '2021-12-20 23:34:08', NULL),
(18, 7, 11, 'MEDIUM FLAT RATE USPS priority mail box', 'UHSC ORGANIC PEPPER', 0, 0, 'Organic red ghost and purple Cameroon pepper, very hot and spicy with great aroma.<br>', 'packaged pepper edited.jpg', 'Cameroon pepper.jpg', 'pepper production edited.jpg', 0, 'In Stock', '2021-12-20 23:51:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 7, 'Amachotech Oil', '2021-12-17 14:39:11', NULL),
(2, 7, 'Amachotech Honey', '2021-12-17 14:39:48', NULL),
(5, 8, 'Motivational Books', '2021-12-19 16:30:24', NULL),
(6, 8, 'Leadership Books', '2021-12-19 16:30:43', NULL),
(7, 9, 'Stage lighting fixtures', '2021-12-19 21:12:13', NULL),
(8, 9, 'Stage lighting spares for moving head and non-moving head', '2021-12-19 21:13:01', NULL),
(9, 9, 'Solar systems', '2021-12-19 21:13:27', NULL),
(10, 8, 'Career Education', '2021-12-19 21:14:07', NULL),
(11, 7, 'Fresh Organic pepper', '2021-12-19 21:15:38', NULL),
(12, 7, 'Fresh Organic garden egg', '2021-12-19 21:16:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `portfolio` varchar(250) NOT NULL,
  `testimony` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `portfolio`, `testimony`) VALUES
(1, 'BAQ CONNECTS ', 'Distributor', 'My distributorship experience of Amacotech Akwa palm oil is satisfactory, as the brand is of high quality with an unbeatable price.'),
(2, 'DR. MAYOWA', 'Staff at UCH', 'I have bought and used different types of palm oil. And I love cooking and eating healthy food. This brand, Amacotech Akwa palm oil is just exceptionally different. I sent the palm oil to my people in Lagos, after using the oil, they ordered for more and introduced more people to me.'),
(3, 'Mr Wale', 'Sound Engineer at AEC', 'My wife cannot cook soup or beans without using Amacotech Akwa palm oil. She must notify me two weeks before the oil finishes. The oil is so nice and taste very natural.  '),
(4, 'MRS MICHELLE E ADEBISI', 'Nurse and co-owner of Marella School', 'Amacotech Akwa Palm oil is very good for cooking and frying. I have never regretted using and introducing my friends to it. The oil is just very healthy and affordable for all. Also, Amacotech natural honey is pure and natural. I use it with my family for beverages and tea every morning.'),
(5, 'Mrs Oluwakami', 'Dealer at Dugbe Market', 'Amacotech Akwa Palm oil subscription plan is amazing, rewarding and second to none. It has helped me in my business to buy and pay for goods with ease, save more money and make additional money (Interest) on my savings. I have also enjoyed a friendly business relationship with the company through their products and services.      '),
(6, 'Mrs', 'CEO at Zooma Supermarket ', 'Amacotech Akwa palm oil is natural; no fuming, and no staining. It is just the best'),
(7, 'MUMMY AYO', 'Dealer at UI 2nd gate', 'I am one of the distributors of Amacotech Akwa Palm oil. I have used it and made a lot of sales from it since I was introduced to this product and I have also introduced it to so many of my customers. I have never received any bad news from them. The oil does not have any colouring agents in it  '),
(8, 'Mrs  Mary Jonathan KYARI', 'Dealer at Kaduna state', 'Amacotech Akwa palm oil is a very good oil which I have used for my cooking and frying and I have also sold to my colleagues at my workplace. They love the palm oil such that they even bring me more customers. Presently, I had to take a salary loan so that I can meet up with the demand. '),
(9, 'Rev. Sr. Mary Frances O. ', 'Principal, Regina Caeli Secondary School, Ibadan', 'Choosing a career: A professional guide\' is an invaluable handbook for schools. I have had cause to refer to it often in the last two years especially when directing and guiding students on possible career paths. What I find most useful is it\'s categorization into Arts, Science and Commercial as well as the wide array of career options available in each category. It\'s been on our book list for students since I got to know the book and has made career counseling an easy and interesting task in the school. I recommend it for schools not for the library shelves but particularly to students and school counsellors. You will not regret it. Thank you.\r\n\r\n'),
(10, 'Sr. Feliicia Gyang ', 'Religious at O.L.A.', 'AMACOTECH career education has helped students and youths to buid Determination, honesty and self-discipline towards a healthy and fulfilling career lifestyle. Do well to embrace them because success will be yours.');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming`
--

CREATE TABLE `upcoming` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `venue` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcoming`
--

INSERT INTO `upcoming` (`id`, `title`, `description`, `from_date`, `to_date`, `venue`) VALUES
(1, 'Zoom Online Class', 'For enquiries on our ongoing online ICT training: Whatsapp: 0805-328-3153', '13th May, 2020', '1st December, 2020', 'Zoom Webinar');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-17 15:21:00', NULL, 0),
(25, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-17 15:21:51', '17-12-2021 09:06:58 PM', 1),
(26, 'admin@amacotechaibes.com', 0x3a3a3100000000000000000000000000, '2021-12-18 17:48:54', NULL, 0),
(27, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-18 17:49:07', '18-12-2021 11:19:11 PM', 1),
(28, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-18 19:30:20', '19-12-2021 01:00:34 AM', 1),
(29, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-18 19:47:13', '19-12-2021 01:17:16 AM', 1),
(30, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-18 19:53:05', '19-12-2021 01:23:09 AM', 1),
(31, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-18 19:55:03', '19-12-2021 01:25:05 AM', 1),
(32, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-18 19:55:33', '19-12-2021 01:25:35 AM', 1),
(33, 'olagokeabel@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-18 19:55:51', '19-12-2021 01:25:54 AM', 1),
(34, 'olagokeabel@gmail.com', 0x3130352e3131322e34302e3737000000, '2021-12-19 13:37:45', '19-12-2021 07:08:02 PM', 1),
(35, 'olagokeabel@gmial.com', 0x3139372e3231302e36352e3231350000, '2021-12-19 15:46:43', NULL, 0),
(36, 'olagokeabel@gmail.com', 0x3139372e3231302e36352e3231350000, '2021-12-19 15:46:59', '19-12-2021 09:17:20 PM', 1),
(37, 'admin@amacotech.com', 0x3139372e3231302e36352e3231350000, '2021-12-19 19:33:02', NULL, 0),
(38, 'admin@amacotechaibes.com', 0x3130352e3131322e32322e3132320000, '2021-12-20 09:40:18', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Abel Olayinka', 'olagokeabel@gmail.com', 234806618, '4fd909075643728b0f78e76747598fcf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-17 15:21:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `link`) VALUES
(13, '@ AMACOTECH we believe that YOU deserve 100% value for your money, and your fundamental right to natural and healthy living!  So, go ahead and watch, like, share and subscribe to why thousands choose AMACOTECH AKWA PALM OIL for their cooking and other industrial usages!', 'https://www.youtube.com/embed/xnPy_tTj5qo'),
(15, '@ AMACOTECH we believe that YOU deserve 100% value for your money, and your fundamental right to natural and healthy living!  So, go ahead and watch, like, share and subscribe to why thousands choose AMACOTECH AKWA PALM OIL for their cooking and other industrial usages!', 'https://www.youtube.com/embed/1z43ClUjlvk'),
(31, '@ AMACOTECH LIGHTING CLINIQUE, WE MAINTAIN, REPAIR, SERVICE,  DESIGN, PROGRAM, CONTROL, TRAIN AND RESTORE STAGE LIGHTING FIXTURES TO 100% WORKING CONDITION', 'https://www.youtube.com/embed/tublLgelGbY');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming`
--
ALTER TABLE `upcoming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `upcoming`
--
ALTER TABLE `upcoming`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
