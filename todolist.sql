-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: to_do_list
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'eveniet','2021-02-06 13:21:52','2021-02-06 13:21:52'),(2,'at','2021-02-06 17:38:18','2021-02-06 17:38:18'),(3,'harum','2021-02-06 17:38:28','2021-02-06 17:38:28'),(4,'ullam','2021-02-06 17:38:51','2021-02-06 17:38:51'),(5,'culpa','2021-02-06 17:40:01','2021-02-06 17:40:01'),(6,'esse','2021-02-06 17:40:10','2021-02-06 17:40:10'),(7,'incidunt','2021-02-06 17:40:17','2021-02-06 17:40:17'),(8,'quam','2021-02-06 17:40:18','2021-02-06 17:40:18'),(9,'nihil','2021-02-06 17:41:32','2021-02-06 17:41:32'),(10,'harum','2021-02-06 17:41:37','2021-02-06 17:41:37'),(11,'soluta','2021-02-06 17:41:43','2021-02-06 17:41:43'),(12,'dolores','2021-02-06 17:42:01','2021-02-06 17:42:01'),(13,'commodi','2021-02-06 17:42:06','2021-02-06 17:42:06'),(14,'sint','2021-02-06 17:42:08','2021-02-06 17:42:08'),(15,'aliquam','2021-02-06 17:42:09','2021-02-06 17:42:09'),(16,'facilis','2021-02-06 17:42:09','2021-02-06 17:42:09'),(17,'unde','2021-02-06 17:42:45','2021-02-06 17:42:45'),(18,'consequatur','2021-02-06 17:43:19','2021-02-06 17:43:19'),(19,'reprehenderit','2021-02-06 17:43:23','2021-02-06 17:43:23'),(20,'ratione','2021-02-06 17:43:26','2021-02-06 17:43:26'),(21,'et','2021-02-06 17:43:29','2021-02-06 17:43:29'),(22,'ullam','2021-02-06 17:43:33','2021-02-06 17:43:33'),(23,'vel','2021-02-06 17:43:36','2021-02-06 17:43:36'),(24,'dignissimos','2021-02-06 17:43:39','2021-02-06 17:43:39');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Waiting','In_Progresss','Done') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Waiting',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `time_spent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Mr. Einar Lockman','Done','Qui sequi sit molestias. Aperiam facere et sit nesciunt voluptatem omnis. Architecto ut non autem rem in provident.',1,1456,1,'2021-02-06 13:21:52','2020-07-21 17:40:18','2021-02-06 13:21:52'),(2,'Dena Runte','Done','Corrupti nulla commodi consequatur ea est ipsum. Unde minima nemo quos sint accusantium illum neque perspiciatis. Molestias corrupti dolorum incidunt delectus rerum iste ratione.',1,5454,1,NULL,'2020-07-21 17:40:18','2021-02-06 13:21:52'),(3,'Mr. Kristopher Gutkowski','Done','Officiis excepturi voluptas magni vel odio. Praesentium non esse qui voluptates. Hic quasi aut et et. Velit quo exercitationem voluptatem iste deserunt voluptatem et ex.',2,54545,1,NULL,'2021-02-06 13:21:52','2021-02-06 13:21:52'),(4,'Pamela Rohan','Waiting','Ex voluptates voluptas nihil tempore. Est quibusdam voluptas qui ex minima. Aut eum facere earum ipsam. Et corporis veniam rerum adipisci vero aspernatur. Earum beatae architecto aut.',1,54546,1,NULL,'2021-02-06 13:21:52','2021-02-06 13:21:52'),(5,'Alexanne O\'Kon','Waiting','Modi quidem sed impedit ipsa tempore qui. Et aut facere ratione numquam. Fugiat sunt itaque quidem nisi. Sed ipsa laudantium voluptas consectetur earum quia non ipsam.',1,0,1,NULL,'2021-02-06 13:21:52','2021-02-06 13:21:52'),(6,'Ressie O\'Kon','Waiting','Molestiae quaerat est quia ut. Odio fugiat tenetur sint optio vel voluptatem. Assumenda praesentium quidem explicabo repellendus. Amet libero excepturi quidem explicabo veniam quisquam.',1,0,1,NULL,'2021-02-06 13:21:52','2021-02-06 13:21:52'),(7,'Elsa Breitenberg','Waiting','Voluptate cupiditate deleniti ipsa dicta. Enim aut quia ipsum ut. Ullam suscipit id aperiam omnis quo ratione qui.',1,0,1,NULL,'2021-02-06 13:21:53','2021-02-06 13:21:53'),(8,'Ruben Stamm','Waiting','Quo cum fugit hic rerum accusamus. Enim explicabo quod inventore amet. Aspernatur voluptate facilis fugiat atque quos ab. Voluptas deserunt excepturi sit qui est.',1,0,1,NULL,'2021-02-06 13:21:53','2021-02-06 13:21:53'),(9,'Cali Bins V','Waiting','Non eos odit dolor in est in doloremque doloribus. Voluptatem recusandae enim debitis quas est. Molestiae qui reiciendis qui atque et hic. Similique sint eum in praesentium aspernatur.',1,0,1,NULL,'2021-02-06 13:21:53','2021-02-06 13:21:53'),(10,'Gilberto Collins','Done','Quisquam ducimus dolore ea. Velit qui deserunt enim nobis quam dolorum quo.',1,645465,1,NULL,'2021-02-06 13:21:53','2021-02-06 13:21:53'),(11,'Jeramie Rodriguez DDS','Waiting','Porro a iure quod distinctio. Exercitationem recusandae porro nisi. Architecto illo aliquam autem officiis vel velit eos sunt.',3,0,1,NULL,'2021-01-06 17:38:28','2021-02-06 17:38:28'),(12,'Ms. Rae Hessel DVM','Waiting','Aut delectus aut eveniet quasi dicta consectetur blanditiis beatae. Enim omnis atque libero eligendi exercitationem vel qui. Corrupti quos sit facere tempora tenetur quibusdam sed.',3,0,1,NULL,'2021-01-06 17:38:28','2021-02-06 17:38:28'),(13,'Elvis Lang','Waiting','Enim cumque iusto magnam dolorum. Temporibus minima qui voluptatum. Laborum non rerum voluptatem similique. Cum dolorem doloribus eos deserunt aut corrupti in perferendis.',4,0,1,NULL,'2021-01-31 17:38:51','2021-02-06 17:38:51'),(14,'Alvena Kozey I','Waiting','Quia veniam rerum voluptas ipsam consequatur hic dolorum. Unde ipsum minus quia natus. Qui ipsa assumenda modi ratione non consequatur. Error nihil beatae quis delectus necessitatibus.',4,0,1,NULL,'2021-01-31 17:38:51','2021-02-06 17:38:51'),(15,'Mara Erdman','Waiting','Aut voluptatem autem cum. Aut cumque recusandae eius rerum est occaecati corrupti.',5,0,1,NULL,'2020-11-08 17:40:01','2021-02-06 17:40:01'),(16,'Anabel Kiehn','Waiting','Consequatur et enim earum est quibusdam. Dolor doloribus ad hic odit laborum dolorem illo. Rem pariatur unde voluptas maiores consequuntur consequatur aliquid vitae. Deserunt qui dolores numquam.',5,0,1,NULL,'2020-11-08 17:40:01','2021-02-06 17:40:01'),(17,'Dr. Christophe Crona Sr.','Waiting','Quis ratione aut qui rerum voluptate aut facere. Voluptatem aperiam sunt quasi ut iste. Est nisi aut est. Fuga praesentium quia dolores labore et.',6,0,1,NULL,'2020-10-09 17:40:10','2021-02-06 17:40:10'),(18,'Dr. Gaetano Howe PhD','Waiting','Modi odit est at ipsum aspernatur rem magni cum. Neque quo non architecto eaque sit ut.',6,0,1,NULL,'2020-10-09 17:40:10','2021-02-06 17:40:10'),(19,'Mrs. Elta Hoppe IV','Waiting','Quis eum rerum explicabo repudiandae. Est molestias officiis aperiam nihil. Doloremque id dolor ut doloribus. Eaque tempore placeat et illum repellat.',7,0,1,NULL,'2020-07-21 17:40:17','2021-02-06 17:40:17'),(20,'Andy Metz','Waiting','Perspiciatis earum doloremque accusamus illo et quia. Voluptatem numquam qui ab eos. Fugiat natus quis officia ut quo.',7,0,1,NULL,'2020-07-21 17:40:17','2021-02-06 17:40:17'),(21,'Cleve Kuphal','Waiting','Ut explicabo hic inventore nemo id natus. Voluptatem sapiente laborum laboriosam qui et pariatur vero laudantium. Eligendi aut non id. Quas rerum omnis qui exercitationem repellat sed eaque.',8,0,1,NULL,'2020-07-21 17:40:18','2021-02-06 17:40:18'),(22,'Adalberto Osinski','Waiting','Eligendi excepturi aut et quos molestias et quaerat molestiae. Nesciunt blanditiis rerum ea. Sit voluptatem magni error sunt.',8,0,1,NULL,'2020-07-21 17:40:18','2021-02-06 17:40:18'),(23,'Tressa O\'Reilly','Waiting','Recusandae quis vero dicta nihil. Soluta non et autem neque. Voluptatem blanditiis consequatur dicta sunt earum error quasi. Omnis explicabo similique amet nihil fugit et expedita.',9,0,1,NULL,'2021-01-30 17:41:32','2021-02-06 17:41:32'),(24,'Prof. Ayana Abernathy III','Done','Ipsa aperiam libero eius. Nemo iusto sapiente quas quasi. Sed qui tenetur corporis libero quasi aut dolorum. Qui libero ad vel voluptatem quae quos. Adipisci vel qui dolores.',9,545,1,NULL,'2021-01-30 17:41:32','2021-02-06 17:41:32'),(25,'Mr. Rylan Kertzmann III','Waiting','Ratione odio et excepturi voluptatum eos laudantium provident eaque. Quos eligendi repellat facere esse porro ex sit maxime. Earum et eum laudantium nemo.',10,0,1,NULL,'2021-01-23 17:41:37','2021-02-06 17:41:37'),(26,'Pink Cummings MD','Waiting','Tempora earum quia ea aut nisi enim. Adipisci laborum a quod itaque ut sapiente ut. Error impedit omnis vel modi qui.',10,0,1,NULL,'2021-01-23 17:41:37','2021-02-06 17:41:37'),(27,'Sylvan Bartoletti','Waiting','Labore quisquam et laborum iure rerum eum. Praesentium debitis illo aliquam rerum saepe sit officia. Nisi aliquam dolorem doloremque ut consequatur iure ut.',11,0,1,NULL,'2021-01-16 17:41:43','2021-02-06 17:41:43'),(28,'Keanu Krajcik DDS','Waiting','Eos dolorem laborum qui. Optio porro sed sunt ullam ab possimus. Adipisci qui rerum velit delectus alias sit nostrum. Velit sed nulla id iste voluptatem.',11,0,1,NULL,'2021-01-16 17:41:43','2021-02-06 17:41:43'),(29,'Rupert Monahan PhD','Waiting','Incidunt et et enim. Fugiat nemo maxime sit cupiditate esse ut. Aut autem aut esse. Molestiae eius quibusdam aperiam et a voluptas.',12,0,1,NULL,'2020-12-06 17:42:01','2021-02-06 17:42:01'),(30,'Danika Hamill','Waiting','Vel sed et ipsam aut non tenetur. Optio est ut in error sapiente in. Neque ipsa distinctio illo neque adipisci ducimus quis. Deserunt illo et vel modi unde fugiat eaque.',12,0,1,NULL,'2020-12-06 17:42:01','2021-02-06 17:42:01'),(31,'Deangelo Ryan','Waiting','Velit est non veniam. Temporibus asperiores non eius commodi. Impedit ut voluptas ad optio. Molestias non asperiores est iusto ut harum et.',13,0,1,NULL,'2020-09-06 17:42:06','2021-02-06 17:42:06'),(32,'Mrs. Daisha Hudson MD','Waiting','Amet distinctio voluptatum consequatur officia. Qui atque quam et dolor. Architecto eaque ut neque aliquid corrupti aspernatur labore ut.',13,0,1,NULL,'2020-09-06 17:42:06','2021-02-06 17:42:06'),(33,'Prof. Penelope Ortiz','Waiting','Ab harum dolorem similique ut adipisci. Ad et et laborum vitae velit soluta et. Quidem excepturi occaecati totam quod maxime quaerat. Qui eos earum quis facilis omnis et aperiam.',14,0,1,NULL,'2020-09-06 17:42:08','2021-02-06 17:42:08'),(34,'Ms. Emily Towne','Waiting','Non ut incidunt molestias unde alias in et impedit. Tempora similique cupiditate dolores quas ipsum. Rerum totam nam nemo aut non. Beatae provident pariatur perspiciatis quaerat cupiditate et.',14,0,1,NULL,'2020-09-06 17:42:08','2021-02-06 17:42:08'),(35,'Cruz Greenfelder','Waiting','Incidunt quo consequuntur consectetur rerum voluptatem. Officia quia aut labore deleniti consequatur necessitatibus unde. Officiis vitae ut sed dolores atque.',15,0,1,NULL,'2020-09-06 17:42:09','2021-02-06 17:42:09'),(36,'Prof. Kellen Runte I','Waiting','Et tempora et eligendi corporis aut. Optio temporibus ipsum aut ut. Excepturi a non sed ut est voluptatem et. Temporibus voluptates doloribus a iusto reiciendis quos.',15,0,1,NULL,'2020-09-06 17:42:09','2021-02-06 17:42:09'),(37,'Ryley Mosciski','Waiting','Sit voluptas consequatur aut in. Ab cupiditate consequuntur eum qui qui. Tempora exercitationem molestiae eveniet eum. Consequatur eum laudantium nisi qui eius.',16,0,1,NULL,'2020-09-06 17:42:09','2021-02-06 17:42:09'),(38,'Christop Beahan','Waiting','In porro accusantium eos qui velit. Repellat aut fugiat aut quidem facere impedit suscipit. Corrupti nesciunt eius eaque molestiae ipsa. Dolorum aut corrupti necessitatibus vitae magni nam.',16,0,1,NULL,'2020-09-06 17:42:09','2021-02-06 17:42:09'),(39,'Boyd Ebert','Waiting','Qui distinctio illum veniam ratione. Ipsum eveniet aliquam laborum consequatur beatae tempora. Rerum aut omnis odit ab.',17,0,1,NULL,'2021-02-06 17:42:45','2021-02-06 17:42:45'),(40,'Veronica Schuppe IV','Waiting','Quibusdam nihil voluptatem delectus quia qui. Tempore odit ipsa sed quod qui. Voluptate qui et vitae ut aperiam dolorum.',17,0,1,NULL,'2021-02-06 17:42:45','2021-02-06 17:42:45'),(41,'Karson Green','Waiting','Quam eos aut nihil amet rerum. Blanditiis soluta nihil aliquam voluptas repellat. Itaque accusamus quia mollitia praesentium.',18,0,1,NULL,'2020-08-06 17:43:19','2021-02-06 17:43:19'),(42,'Evan Bruen','Waiting','Doloremque necessitatibus maxime quia dolores quidem aut. Voluptatem pariatur doloremque est earum. Enim aperiam ullam voluptate commodi dolore.',18,0,1,NULL,'2020-08-06 17:43:19','2021-02-06 17:43:19'),(43,'Therese Tillman','Waiting','Et voluptates expedita numquam ut nostrum molestias. Quod consequatur omnis minima dolor accusamus inventore omnis. Maxime molestiae itaque nobis et molestias.',19,0,1,NULL,'2020-06-06 17:43:23','2021-02-06 17:43:23'),(44,'Dr. Emmanuel Robel IV','Waiting','Et quibusdam voluptatum et vel beatae voluptas. Sed asperiores sit et.',19,0,1,NULL,'2020-06-06 17:43:23','2021-02-06 17:43:23'),(45,'Jamar Adams','Waiting','Et ducimus minus voluptate rem ipsam eius. Similique autem rerum dolores temporibus repudiandae unde libero.',20,0,1,NULL,'2020-04-06 17:43:26','2021-02-06 17:43:26'),(46,'Mr. Forest Schneider IV','Waiting','Odit recusandae rerum explicabo enim dolor quam quia. Quo non velit et quam aliquid id est. Qui at debitis dolor quam atque. Magni odit quo laudantium accusantium delectus.',20,0,1,NULL,'2020-04-06 17:43:26','2021-02-06 17:43:26'),(47,'Mr. Ezequiel Gleichner','Waiting','Qui et esse dolores cupiditate non. Aut odio corrupti quidem modi nemo laudantium dolorem eum. Officiis ullam ab voluptates eveniet sunt impedit. Sed nisi magni optio tempora.',21,0,1,NULL,'2020-02-06 17:43:29','2021-02-06 17:43:29'),(48,'Camille Trantow DVM','Waiting','Et consequuntur qui est in quidem deserunt. Numquam qui magni doloremque dolorem soluta natus. Aut non eum non necessitatibus ea aut. Consequatur facilis facere harum reiciendis.',21,0,1,NULL,'2020-02-06 17:43:29','2021-02-06 17:43:29'),(49,'Mr. Jarrett Bartell','Waiting','Exercitationem eum veritatis aut doloremque. Similique ullam fuga eos aliquam. Sunt fugiat voluptatem nihil voluptates voluptatem non repellat eaque. Temporibus iusto voluptas est veritatis.',22,0,1,NULL,'2019-12-06 17:43:33','2021-02-06 17:43:33'),(50,'Wilford Mosciski','Waiting','Nemo aut omnis fugit minima ut sunt. Quam vel laborum aperiam reiciendis. Quis quo delectus perspiciatis corporis sint sed. Est tenetur inventore consequatur corporis et.',22,0,1,NULL,'2019-12-06 17:43:33','2021-02-06 17:43:33'),(51,'Keely Bruen','Waiting','Nam quia ut voluptate deleniti tempora molestiae magnam. Molestiae a in voluptatem. Iusto animi aut corporis neque est.',23,0,1,NULL,'2019-10-06 17:43:36','2021-02-06 17:43:36'),(52,'Bradly Flatley','Waiting','Nobis natus atque sit consequatur ut cum. Temporibus iure iure quia repellendus ut.',23,0,1,NULL,'2019-10-06 17:43:36','2021-02-06 17:43:36'),(53,'Eliezer Hand I','Waiting','Qui quia nemo delectus earum debitis qui ad. Tempora recusandae est veniam cupiditate eveniet deserunt. Harum delectus saepe qui voluptatem explicabo.',24,0,1,NULL,'2019-06-06 17:43:39','2021-02-06 17:43:39'),(54,'Nola Bashirian','Waiting','Molestiae quo quis tempore autem accusantium et quaerat. Officiis aperiam nulla quasi culpa excepturi enim. Molestiae sit quam ab deleniti explicabo fugiat voluptas.',24,0,1,NULL,'2019-06-06 17:43:39','2021-02-06 17:43:39');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (23,'2021_02_06_150316_create_category_table',1),(37,'2014_10_12_000000_create_users_table',2),(38,'2014_10_12_100000_create_password_resets_table',2),(39,'2019_08_19_000000_create_failed_jobs_table',2),(40,'2021_02_05_215739_create_items_table',2),(41,'2021_02_06_150420_create_categories_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Davonte Bechtelar','kertzmann.peter@example.net','2021-02-06 13:21:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dlGZCYLrPr','2021-02-06 13:21:52','2021-02-06 13:21:52'),(2,'Freda Rice','rharris@example.org','2021-02-06 17:38:18','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hGICLYzoHt','2021-02-06 17:38:18','2021-02-06 17:38:18'),(3,'Ashlynn Murazik','bethany57@example.net','2021-02-06 17:38:28','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3sEfwNyXFl','2021-02-06 17:38:28','2021-02-06 17:38:28'),(4,'Angeline Zulauf','okonopelski@example.net','2021-02-06 17:38:51','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yzMZSw8L3o','2021-02-06 17:38:51','2021-02-06 17:38:51'),(5,'Mrs. Zelda Bradtke Jr.','alycia.sipes@example.org','2021-02-06 17:40:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Bx8S9f2pp3','2021-02-06 17:40:01','2021-02-06 17:40:01'),(6,'Prof. Nolan Wiegand','marks.ansel@example.net','2021-02-06 17:40:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zfjllH8NTC','2021-02-06 17:40:10','2021-02-06 17:40:10'),(7,'Kareem Ernser','trevor.bergnaum@example.org','2021-02-06 17:40:17','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','01oorboDyG','2021-02-06 17:40:17','2021-02-06 17:40:17'),(8,'Mr. Demetrius Collins DDS','keebler.kevon@example.org','2021-02-06 17:40:18','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HryWNjDi49','2021-02-06 17:40:18','2021-02-06 17:40:18'),(9,'Prof. Laney Price IV','chanel.runolfsson@example.org','2021-02-06 17:41:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','d5ae21uucF','2021-02-06 17:41:32','2021-02-06 17:41:32'),(10,'Mireille Bartell','dereck.rice@example.com','2021-02-06 17:41:37','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JEPlsLCrf1','2021-02-06 17:41:37','2021-02-06 17:41:37'),(11,'Dr. Dorothy Schulist','kerluke.myles@example.org','2021-02-06 17:41:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tZwVQNkR1R','2021-02-06 17:41:43','2021-02-06 17:41:43'),(12,'Ms. Kamille Welch MD','homenick.jasmin@example.com','2021-02-06 17:42:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','J6e0E1Qf0h','2021-02-06 17:42:01','2021-02-06 17:42:01'),(13,'Leatha Jerde','ruthie98@example.net','2021-02-06 17:42:06','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','aHDg4rqzSx','2021-02-06 17:42:06','2021-02-06 17:42:06'),(14,'Mr. Joshuah Cummings Sr.','mcole@example.com','2021-02-06 17:42:08','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qQxUDcsix3','2021-02-06 17:42:08','2021-02-06 17:42:08'),(15,'Heber Koss','juana.reilly@example.com','2021-02-06 17:42:09','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xECALqFvEn','2021-02-06 17:42:09','2021-02-06 17:42:09'),(16,'Reynold Veum','osinski.jasper@example.org','2021-02-06 17:42:09','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Var605ApzG','2021-02-06 17:42:09','2021-02-06 17:42:09'),(17,'Tess King','cummerata.thaddeus@example.org','2021-02-06 17:42:45','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DAfTeCqtwJ','2021-02-06 17:42:45','2021-02-06 17:42:45'),(18,'Zachariah Haag','julianne.heathcote@example.org','2021-02-06 17:43:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BgrQum82qR','2021-02-06 17:43:19','2021-02-06 17:43:19'),(19,'Joana Huel','tzboncak@example.net','2021-02-06 17:43:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BN3H1OM4Zi','2021-02-06 17:43:23','2021-02-06 17:43:23'),(20,'Kendra Denesik','karley16@example.org','2021-02-06 17:43:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','SsyGPDNtmP','2021-02-06 17:43:26','2021-02-06 17:43:26'),(21,'Dr. Gudrun Collier','rosetta01@example.com','2021-02-06 17:43:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mbOmWXO2CZ','2021-02-06 17:43:29','2021-02-06 17:43:29'),(22,'Ken Becker','nlittle@example.org','2021-02-06 17:43:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','x8kC1Xfg25','2021-02-06 17:43:33','2021-02-06 17:43:33'),(23,'Jose Stokes','pkemmer@example.org','2021-02-06 17:43:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7xB6qUrjqA','2021-02-06 17:43:36','2021-02-06 17:43:36'),(24,'Yvonne Mraz DDS','iraynor@example.net','2021-02-06 17:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RD4yrLgezu','2021-02-06 17:43:39','2021-02-06 17:43:39'),(25,'Mr. Louisa Stiedemann MD','memmerich@example.com','2021-02-06 17:44:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yhQlDeBX9c','2021-02-06 17:44:42','2021-02-06 17:44:42'),(26,'Prof. Makenzie Larson MD','ocasper@example.net','2021-02-06 17:44:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tMzZLHEK0t','2021-02-06 17:44:49','2021-02-06 17:44:49'),(27,'Natalia Breitenberg','pwillms@example.org','2021-02-06 17:48:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ni1iGZeqoa','2021-02-06 17:48:27','2021-02-06 17:48:27'),(28,'Thalia Lueilwitz','stiedemann.rudy@example.net','2021-02-06 17:48:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zagdv5Tb0A','2021-02-06 17:48:42','2021-02-06 17:48:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-08 20:14:48
