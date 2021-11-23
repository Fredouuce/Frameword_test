-- --------------------------------------------------------
-- Hôte:                         localhost
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table testframework.menu : ~4 rows (environ)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `menu_name`, `lien`, `created_at`) VALUES
	(2, 'Articles', '/posts', '2021-11-22 00:00:00'),
	(9, 'Post4(edited)', '/posts/4', '2021-11-22 15:10:58'),
	(10, 'Login', '/login', '2021-11-23 08:33:55'),
	(12, 'Diaporama', '/diaporama', '2021-11-23 10:57:59'),
	(15, 'Homonculus', '/posts/6', '2021-11-23 18:31:12');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Listage des données de la table testframework.menu_post : ~1 rows (environ)
/*!40000 ALTER TABLE `menu_post` DISABLE KEYS */;
INSERT INTO `menu_post` (`id`, `post_id`, `lien_id`) VALUES
	(1, 2, 10);
/*!40000 ALTER TABLE `menu_post` ENABLE KEYS */;

-- Listage des données de la table testframework.posts : ~5 rows (environ)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
	(1, 'Mon premier article', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', '2021-11-15 08:35:36'),
	(2, 'Mon article a été modifié', 'A été édité une seconde fois avec les tags', '2021-11-15 08:36:19'),
	(3, 'Mon super nouvelle article', 'YESSSSSSIIIR', '2021-11-16 13:32:44'),
	(4, 'Créer un article fonctionne', 'Oui cela fonctionne', '2021-11-22 13:57:03'),
	(5, 'Lorem article', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, quibusdam ipsum. Natus doloribus, autem maiores numquam voluptate rerum iste cumque dicta esse aspernatur, nulla aliquid! Nemo praesentium modi quis saepe?', '2021-11-23 10:13:04'),
	(6, 'Homonculus', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur natus obcaecati architecto officiis similique dolorum quas doloribus quidem laboriosam explicabo? Sunt eius quas quisquam reiciendis, ratione error aliquam itaque repellendus!\r\nCorrupti dolorum ipsa deserunt doloremque id harum dolores, nobis, tempora quod voluptates iure temporibus ducimus. Velit corrupti iste nesciunt a sit minima nostrum! Ut illum, esse deleniti velit vitae harum!\r\nVelit expedita doloribus omnis iusto tenetur pariatur optio voluptas dolorem ad labore odit et, quasi exercitationem in sed aliquid delectus suscipit. Illum assumenda numquam sed officiis amet, vitae culpa repudiandae!\r\nEligendi animi dolorem cupiditate dignissimos voluptatibus nostrum reiciendis. Voluptatem delectus impedit inventore quod dolorem minus eaque officia natus a beatae. Nam tempore, cum suscipit recusandae voluptatibus iusto hic eveniet dolore?\r\nVeniam quis debitis repudiandae, quidem ullam pariatur dolorem maiores laborum officiis aliquid! Enim consequatur quae tenetur a labore excepturi magnam totam assumenda nihil officia, exercitationem provident qui. Incidunt, magnam repellendus.\r\nHic et, nam, voluptates dolor in, exercitationem est eaque blanditiis neque doloremque nulla rerum eligendi odio iste aperiam rem voluptate amet quis laborum earum. Quisquam est itaque incidunt eligendi iure!\r\nSit eveniet sunt, mollitia in debitis laudantium natus quibusdam. Tempore qui perspiciatis sapiente nam dolor vero dolores, soluta accusantium possimus consequatur, reprehenderit, enim eligendi ipsa maxime ad numquam libero veritatis!\r\nReiciendis hic ipsam eveniet dignissimos consequuntur non voluptate aut repudiandae nostrum error ut possimus vel iste voluptatem, perspiciatis quae nobis maxime ex doloremque fuga veritatis a! Corrupti ullam quasi ipsa?\r\nPerferendis fugit quibusdam doloremque distinctio inventore ipsa harum natus? Consectetur sunt suscipit sapiente ipsam cum accusamus, accusantium temporibus voluptatibus amet ab reiciendis aspernatur. Dolorum reprehenderit deleniti ab. Quasi, natus obcaecati?\r\nPlaceat, ea accusamus soluta nam, ullam debitis aliquam optio explicabo quas, quisquam tempora quod ipsum assumenda voluptatibus. Iusto, ea obcaecati! Dolores aliquid excepturi odit voluptates ipsam, debitis provident sequi sit.\r\nDoloribus, repellat. Dolor aspernatur quos nisi eius sed iusto velit itaque nesciunt magnam natus quod ab quibusdam ducimus voluptatem explicabo officia soluta pariatur, maxime quas commodi, expedita eum? Unde, optio.\r\nTotam iusto doloremque eligendi tenetur veniam beatae debitis sed, impedit commodi perspiciatis sit ea, adipisci blanditiis nobis magnam, a odio temporibus itaque eaque recusandae quos necessitatibus aliquam saepe! Dicta, quas?\r\nAmet magnam voluptas, atque dolor earum possimus. Nostrum ipsam nam qui voluptate a, impedit non repellendus nulla assumenda nesciunt iure velit est minus. Nisi laudantium, animi quam quis in nobis!\r\nMinus, tenetur suscipit. Provident eveniet quos quam voluptatum sapiente laudantium, corporis dolores modi alias et tenetur nobis incidunt fugiat amet accusamus nam debitis, hic, soluta voluptatem magni repudiandae ipsa! Ut.\r\nNobis labore laboriosam neque error, veniam recusandae blanditiis dicta voluptatem illum tenetur, doloremque non numquam ipsam est delectus assumenda possimus praesentium inventore, suscipit quae iste. Quis ratione vero asperiores iusto?\r\nIn quisquam asperiores laudantium praesentium dolores totam aspernatur fugit adipisci vitae accusamus sapiente corrupti est soluta aut doloribus blanditiis natus, illo commodi impedit tempore magnam. Accusamus laborum veritatis perspiciatis modi?\r\nNulla dolor, sint explicabo ullam velit ex consequatur reiciendis est. Voluptatum cum, reprehenderit itaque quo vero magni nisi harum earum eum. Mollitia nobis praesentium molestiae doloremque eligendi, laboriosam ipsum dolores!\r\nNon, ratione mollitia, asperiores doloribus tenetur ea illo ad tempora voluptatum, at et! Repellendus adipisci cum quas sed quos sapiente obcaecati eaque incidunt animi unde, ipsam dolorum dolores ipsum vel.\r\nQuisquam assumenda quam nostrum eveniet, accusantium aliquid voluptatem fugit perspiciatis maxime, necessitatibus culpa dignissimos illum doloremque modi nesciunt cumque quibusdam nihil. Ipsa deserunt, qui doloribus at quaerat molestiae alias quis?\r\nDolore, magnam. Non odit cumque tempora, esse voluptate quos placeat temporibus asperiores illo eum veritatis ullam fugit debitis delectus dignissimos obcaecati nobis pariatur? Autem debitis soluta, nostrum temporibus quibusdam reiciendis!\r\nIllo cumque doloribus voluptate iure, provident sequi temporibus, ex totam velit vero cum eveniet! Doloribus, consequatur. Earum veniam velit doloribus explicabo, laboriosam et quo qui incidunt libero quasi ipsam facere.\r\nNatus consequuntur labore cupiditate quidem placeat voluptatibus aut tempora. Ipsam, est sunt recusandae laudantium iusto placeat fugit a quasi eos illo voluptates, nesciunt in asperiores necessitatibus mollitia at ducimus explicabo.\r\nVoluptatem, itaque nulla? Dolores adipisci eligendi deserunt! Totam aliquid aliquam sunt minima quibusdam, nihil nesciunt omnis explicabo fuga veniam facere adipisci unde vero dolores perspiciatis inventore, quod eius, animi obcaecati?\r\nCupiditate tempora sunt pariatur mollitia quod nulla nostrum ipsa officiis non quidem, vero, error explicabo quo aliquid architecto quasi animi nesciunt iste? Quibusdam non eum magnam architecto at. Ipsam, ratione?\r\nIllum ipsum maxime laboriosam, facilis aliquam magnam, unde officia hic quasi commodi cumque ad deserunt quod voluptate beatae. Beatae eius, dolores voluptatem esse id sed! Optio eaque ad iusto dolorum?\r\nEnim temporibus quaerat non recusandae qui, consequatur iusto quis? Libero obcaecati incidunt in doloribus, fugit iure nulla officiis eum natus, quisquam quae. Assumenda quaerat est quod debitis nam, cupiditate iusto!\r\nTempora magni corporis numquam odit, optio, nemo cupiditate neque in veritatis voluptatem dolorum ex nisi doloribus eius earum laboriosam debitis excepturi velit quae. Ut eveniet inventore vero itaque dolor velit.\r\nTempora deserunt asperiores, laudantium, quidem nemo iste dicta est repudiandae quas dolorum earum, repellat mollitia dolor inventore. Dolores porro soluta facilis aliquid, adipisci voluptate iure, cupiditate repellendus neque sit sapiente.\r\nPerspiciatis ad earum exercitationem tempora sint fugit voluptatem vitae porro deleniti aliquam, nemo voluptas quidem nihil quisquam facere dolorem laborum. Ratione minima eum laborum esse labore totam facilis repudiandae doloremque!\r\nHarum quos, quas quod veritatis, repudiandae saepe voluptatum iste soluta eum ab ut deleniti reiciendis laboriosam optio cupiditate fuga voluptas culpa eveniet sunt assumenda officia ipsum! Nobis esse eveniet nesciunt!\r\nEos corrupti minus voluptatem recusandae molestias eaque expedita adipisci numquam ratione harum, iste deleniti unde, magni fugiat? Iure vitae eum accusamus eveniet, tempora quam corrupti? Vitae natus quo totam suscipit.\r\nEum exercitationem magnam dolores voluptatum quo consectetur tempore, deserunt perferendis ea illum asperiores cum deleniti minus quisquam aperiam quae! Ratione rem nemo alias officia dicta eius laudantium itaque assumenda explicabo!\r\nCorrupti optio inventore id voluptates, mollitia, voluptatibus maiores repudiandae culpa tenetur vitae ad a cupiditate similique autem repellat ratione, eius nostrum architecto dolorum enim praesentium voluptatum minima quo. Harum, odit.\r\nQuos est et voluptatum nobis corrupti sequi exercitationem eaque possimus, mollitia doloremque saepe asperiores, rerum, dolor voluptatibus. Vitae exercitationem, fuga, modi velit at maiores eos voluptas ut, impedit minus praesentium.\r\nImpedit assumenda magni dolorum, consequatur nulla adipisci laborum beatae sunt. Assumenda voluptate eius doloremque nam ipsa et sapiente, ipsam minus deleniti ex. Ea facere porro quod tenetur exercitationem dignissimos ex.\r\nCorrupti voluptatem quis autem, asperiores officiis aspernatur porro eum, quam pariatur officia consequuntur perspiciatis non repudiandae consequatur optio, distinctio modi similique ducimus obcaecati rem. Nihil voluptatem sapiente placeat ut ullam.\r\nPariatur autem veniam rerum eius labore vitae exercitationem inventore quibusdam repudiandae maxime quasi libero corrupti, ratione dolorum sit illum repellat in sequi nam? Totam enim expedita laboriosam, tempore eos odit!\r\nEaque amet fuga quibusdam eligendi voluptatibus, quod cum quas doloribus repellendus eos perspiciatis! Tempora similique exercitationem rerum perspiciatis! Nemo voluptatum architecto corrupti dignissimos laborum facilis? Nobis distinctio dolor possimus accusantium!\r\nMinima id unde laudantium officiis soluta nihil dicta saepe suscipit cupiditate sunt? Cupiditate similique quae cumque consequuntur veritatis consectetur unde maiores vero magni officiis ex nostrum nisi optio, numquam architecto!\r\nQuae quia perferendis provident odio! A eum nisi minus ut cum? Sapiente sequi odio nam distinctio libero ipsa optio explicabo nostrum molestias officia, ad accusamus modi quisquam quos veniam esse.\r\nDelectus, tempore cumque. Laboriosam beatae, quos mollitia possimus deleniti expedita, adipisci voluptates totam facere quam autem placeat soluta velit molestiae consectetur consequuntur aliquam. Quasi deleniti vel facere rem quidem a?\r\nNihil quae quo atque, odio sapiente praesentium, voluptas, neque nulla excepturi natus veniam magni? Consequatur inventore voluptatibus tempora repellendus odio dolore numquam illum exercitationem beatae tenetur. Repellendus nesciunt eius veritatis.\r\nQuaerat fugiat quasi, repellat voluptatem laboriosam aspernatur dolorum possimus corrupti magni consequuntur dicta eum cupiditate, a rem deserunt, tempora beatae. Alias commodi consectetur quisquam rerum, atque exercitationem aliquid. Consequatur, possimus!\r\nItaque illum placeat totam ratione fuga, molestiae eum. Ex, hic maxime ea excepturi aut dignissimos, quisquam quidem laboriosam quia cum reprehenderit rem error maiores perspiciatis vitae corporis sed tenetur! Id!\r\nEos omnis dolorem accusamus voluptatem deleniti sit minima! Quae aut ut nobis, iusto, recusandae deserunt commodi distinctio consequatur similique eum, excepturi non voluptates sunt ducimus porro ipsa magni perspiciatis repudiandae.\r\nImpedit nulla, libero cupiditate facilis, molestiae beatae, illum debitis quia modi voluptatem sint. Laboriosam nihil deserunt in, soluta cumque laborum dolorum, exercitationem repellat recusandae qui fuga corporis voluptates harum quas.\r\nId est adipisci consectetur esse? Provident, asperiores enim? Blanditiis tempore nobis quis? Quibusdam voluptate consequatur asperiores, atque rem dignissimos quia delectus, libero distinctio, illo optio debitis dicta! Tempora, hic sapiente!\r\nNesciunt facere voluptatibus beatae enim mollitia quibusdam, sequi facilis saepe iste exercitationem, repellendus minima non. Pariatur voluptas praesentium rem repellendus, placeat necessitatibus officiis, quidem molestiae ipsam, aliquam doloremque veniam sunt.\r\nDeserunt facilis amet magnam est pariatur doloribus sit animi quas consectetur, facere eligendi recusandae quod saepe inventore similique architecto fugiat quidem atque esse aut ab. Ex eos esse maiores rerum!\r\nAsperiores maiores id exercitationem quibusdam. Esse in, ipsa veniam, rem porro a illo nam eveniet ratione nostrum itaque illum consequuntur dolorem neque dolorum ex. Praesentium consequuntur mollitia voluptate. Porro, libero!', '2021-11-23 17:53:36');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Listage des données de la table testframework.post_tag : ~11 rows (environ)
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
	(1, 1, 1),
	(6, 2, 4),
	(7, 2, 2),
	(8, 2, 1),
	(9, 3, 2),
	(10, 3, 1),
	(15, 4, 4),
	(16, 4, 3),
	(17, 5, 4),
	(18, 5, 3),
	(19, 5, 2),
	(20, 6, 3),
	(21, 6, 1);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;

-- Listage des données de la table testframework.tags : ~4 rows (environ)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `created_at`) VALUES
	(1, 'PHP', '2021-11-15 15:22:45'),
	(2, 'JS', '2021-11-15 15:22:52'),
	(3, 'HTML/CSS', '2021-11-15 15:23:00'),
	(4, 'PYTHON', '2021-11-15 15:23:37');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Listage des données de la table testframework.t_photo : ~0 rows (environ)
/*!40000 ALTER TABLE `t_photo` DISABLE KEYS */;
INSERT INTO `t_photo` (`id`, `nom_fichier`) VALUES
	(5, 'img_619cf0a8918d2.JPG'),
	(6, 'img_619cf933605cb.jpg'),
	(7, 'img_619cf9bf0b833.jpg');
/*!40000 ALTER TABLE `t_photo` ENABLE KEYS */;

-- Listage des données de la table testframework.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `admin`) VALUES
	(1, 'admin', '$2y$10$csfsPgljufkxFR66VIQhwe1oJ3PoeJGzKE84TqJHpMO1kMtNly4FG', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
