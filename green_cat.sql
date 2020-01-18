-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 18 2020 г., 17:45
-- Версия сервера: 5.1.73
-- Версия PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `green_cat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `administration`
--

INSERT INTO `administration` (`id`, `login`, `password`) VALUES
(1, 'admin', '20c831bf434067f8754f6058e67e38af48199bc6 ');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_pic` text NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `m_pic`, `title`, `description`, `date`) VALUES
(1, 'https://www.allnews.ge//images/2019/ryanairqveynebi.jpg', 'Ryanair-ი სამოგზაუროდ ყველაზე იაფ ქალაქებს ასახელებს', '<p>მოგზაურობა ძალიან ბევრი ადამიანისთვის განუხორციელებელ ოცნებას წარმოადგენს. ისინი ფიქრობენ, რომ მოგზაურობა უზარმაზარ თანხებთანაა დაკავშირებული, რაზეც მათ ხელი არ მიუწვდებათ.<br />\r\n<br />\r\nიმის დასამტკიცებლად, რომ მოგზაურობა სულაც არაა შეუძლებელი, ირლანდიური დაბალბიუჯეტიანი ავიაკომპანია Ryanair გვთავაზობს მოგზაურობისათვის ყველაზე ხელმისაწვდომი ქალაქების სიას.<br />\r\n<br />\r\n<strong>ბუქარესტი</strong><br />\r\n<br />\r\nრუმინეთის დედაქალაქი ბუქარესტი ევროპის ერთ-ერთი ყველაზი იაფი ქალაქია, სადაც მოგზაურობას ხელმისაწვდომ ფასად შეძლებთ. ქალაქის დასათვალიერებლად რამდენიმე დღე სრულიად საკმარისია.<br />\r\n<br />\r\nფასები:<br />\r\n<br />\r\nტაქსი 1კმ-ზე: &euro;0.38<br />\r\n<br />\r\nადგილობრივი ლუდი (0.5ლ): &euro;1.69<br />\r\n<br />\r\nყავა: &euro;1.85<br />\r\n<br />\r\nსადილი იაფ რესტორანში: &euro;7.41<br />\r\n<br />\r\n1 ბოთლი ღვინის ფასი: &euro;4.24<br />\r\n<br />\r\n<strong>კრაკოვი</strong><br />\r\n<br />\r\nის ფაქტი, რომ პოლონეთი</p>\r\n\r\n<p>ევროპის ერთ-ერთი ყველაზე იაფი ქვეყანაა, ბევრისთვის სიახლეს არ წარმოადგენს. კრაკოვი პოლონეთის ყველაზე გამორჩეული ქალაქია, რომელიც შუა საუკუნეებში პოლონეთის სამეფოს დედაქალაქი იყო. აქ უამრავი საინტერესო ისტორიული შენობაა. ქალაქის ძველი ნაწილი იუნესკოს კულტურული მემკვიდრეობის სიაში შედის.<br />\r\n<br />\r\nფასები:<br />\r\n<br />\r\nტაქსი 1კმ-ზე: &euro;0.52<br />\r\n<br />\r\nადგილობრივი ლუდი (0.5ლ): &euro;1.88<br />\r\n<br />\r\nყავა: &euro;1.90<br />\r\n<br />\r\nსადილი იაფ რესტორანში: &euro;5.64<br />\r\n<br />\r\n1 ბოთლი ღვინის ფასი: &euro;5.88<br />\r\n<br />\r\n<strong>ბუდაპეშტი</strong><br />\r\n<br />\r\nუნგრეთით დედაქალაქი ბუდაპეშტი ნამდვილად წარმოადგენს ევროპის ერთ-ერთ ყველაზე გამორჩეულ ქალაქს. აქ თქვენ შეგიძლიათ ნახოთ ქალაქის ისტორიული ნაწილი, უნგრეთის ცნობილი პარლამენტის შენობა და ბუნებრივად თერმული წყლები.<br />\r\n<br />\r\nფასები:<br />\r\n<br />\r\nტაქსი 1კმ-ზე: &euro;0.93<br />\r\n<br />\r\nადგილობრივი ლუდი (0.5ლ): &euro;1.39<br />\r\n<br />\r\nყავა: &euro;1.44<br />\r\n<br />\r\nსადილი იაფ რესტორანში: &euro;6.18<br />\r\n<br />\r\n1 ბოთლი ღვინის ფასი: &euro;4.32<br />\r\n<br />\r\n<strong>ვილნიუსი</strong><br />\r\n<br />\r\nლიეტუვა აღმოსავლეთ ევროპის ერთ-ერთი უიაფესი ქვეყანაა. დედაქალაქ ვილნიუსის გარდა თქვენ აქ შეგიძლიათ ციხესიმაგრე და ულამაზესი ბუნება ნახოთ.<br />\r\n<br />\r\nფასები:<br />\r\n<br />\r\nტაქსი 1კმ-ზე: &euro;0.65<br />\r\n<br />\r\nადგილობრივი ლუდი (0.5ლ): &euro;3.00<br />\r\n<br />\r\nყავა: &euro;2.20<br />\r\n<br />\r\nსადილი იაფ რესტორანში: &euro;8.00<br />\r\n<br />\r\n1 ბოთლი ღვინის ფასი: &euro;6.50<br />\r\n<br />\r\n<strong>კიევი</strong><br />\r\n<br />\r\nუკრაინის დედაქალაქ კიევს განსაკუთრებული არქიტექტურა, ეკლესიები და ქანადაკებები გამოარჩევს. ქალაქის ისტორიული ნაწილი და უძველესი ეკლესიები ერთმანეთთან ახლოს მდებარეობს და მათ მოსანახულებლად ტრანპორტის გამოყენება არ დაგჭირდებათ.<br />\r\n<br />\r\nფასები:<br />\r\n<br />\r\nტაქსი 1კმ-ზე: &euro;0.23<br />\r\n<br />\r\nადგილობრივი ლუდი (0.5ლ): &euro;0.84<br />\r\n<br />\r\nყავა: &euro;1.01<br />\r\n<br />\r\nსადილი იაფ რესტორანში: &euro;5.02<br />\r\n<br />\r\n1 ბოთლი ღვინის ფასი: &euro;3.35</p>\r\n', '2020-01-17'),
(2, 'https://www.allnews.ge//images/2019/belugaxl.png', 'Airbus-ის ახალი მოდელის ლაინერი, რომელიც ვეშაპს ჰგავს', '<p>ავიამშენებელი კორპორაცია Airbus-ი მის სამოდელო ხაზში ახალი სატრანსპორტო თვითმფრინავის BelugaXL-ის ექსპლუატაციას იწყებს. კომპანიის მიერ გავრცელებული ინფორმაციის თანახმად, ახალმა მოდელმა მისი პირველი საექსპლუატაციო გაფრენა 9 იანვარს განახორციელა.<br />\r\n<br />\r\n&bdquo;ეს არის 6-დან პირველი BelugaXL, რომელთა გამოყენება მოხდება მათ წინამორბედ BelugaST-თან ერთად და ექსპლუატაციაში ჩაერთვებიან 2020-2023 წლებში&ldquo;, - იუწყება Airbus. კომპანიაში ამბობენ, რომ პროექტის რეალიზება დაიწყო 2014 წელს. როგორც კორპორაცია აღნიშნავს, BelugaXL არის ევროპის ავიაციის სააგენტოს მიერ სერტიფიცირებული ხომალდი, რომელმაც საცდელი 200-მდე გაფრენა განახორციელა. ჯამში საცდელი ფრენების ხანგრძლივობამ 700 საათი შეადგინა.<br />\r\n<br />\r\nBelugaXL შექმნილია ავიალაინერ</p>\r\n\r\n<p>A330-200 Freighter-ის ბაზაზე. ახალი სატრანსპორტო საშუალების სიგრძეა 63 მეტრი, ფრთების გაშლის დიამეტრი 60 მეტრი, ფუზელაჟის სიგანე 8 მეტრი. ის გამორჩეულია საბარგულის ყველაზე დიდი მოცულობით ამ ტიპის თვითმფრინავებს შორის. მისი მაქსიმალური სასარგებლო დატვირთვა 51 ტონაა. ფრენის სიშორე 4000 კმ.</p>\r\n', '2020-01-18'),
(3, 'https://www.allnews.ge//images/goderzisugeltexilitovli.jpg', 'როგორი ამინდია მოსალოდნელი კვირის ბოლოს?', '<p>17 იანვარს, დასავლეთ საქართველოში უმეტესად უნალექო ამინდი იქნება. შავი ზღვის სანაპირო რაიონებში, ზემო იმერეთსა და კოლხეთის დაბლობზე იქროლებს აღმოსავლეთის მიმართულების ძლიერი ქარი. 18-20 იანვარს ზოგან შესაძლოა მცირე ნალექი აღინიშნოს. ჰაერის ტემპერატურა დღის საათებში დაბლობ რაიონებში +7, +12 გრადუსი დაფიქსირდება.<br />\r\n<br />\r\n17 იანვარს, აღმოსავლეთ საქართველოში შენარჩუნებული იქნება ცივი და ღრუბლიანი ამინდი, ზოგან მცირე თოვლი და ნისლია მოსალოდნელი. ჰაერის ტემპერატურა დღის საათებში ბარში +1, +6 გრადუსი დაფიქსირდება. 18 იანვარს გამოიდარებს, ღამის საათებში ჰაერის ტემპერატურა ბარში ზოგან -8 გრადუსამდე</p>\r\n\r\n<p>დაიკლებს. 19-20 იანვარს ისევ მოიღრუბლება და მცირე ნალექი, უმეტესად თოვლის სახითაა მოსალოდნელი.<br />\r\n<br />\r\nთბილისში 17 იანვარს ცივი, ღრუბლიანი ამინდი შენარჩუნდება, მოსალოდნელია მცირე თოვლჭყაპი. ჰაერის ტემპერატურა დღისით +4, +6 გრადუსი იქნება. 18 იანვარს ნალექი მოსალოდნელი არ არის, ღამის საათებში ტემპერატურა -2, -4 გრადუსამდე დაიკლებს.<br />\r\n<br />\r\n19-20 იანვარს ისევ შესაძლოა მცირე თოვლჭყაპი აღინიშნოს.</p>\r\n', '2020-01-18');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;