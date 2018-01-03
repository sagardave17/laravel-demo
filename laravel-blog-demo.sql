-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 26, 2017 at 12:59 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.1.11-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-blog-demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'my Education', 1, 1, 1, '2017-11-15 18:30:00', '2017-11-17 00:38:40', NULL),
(2, 'test by sudhir', 1, 1, NULL, '2017-11-16 23:34:07', '2017-11-16 23:34:07', NULL),
(3, 'Education new', 0, 1, 1, '2017-11-16 23:41:08', '2017-11-17 00:37:11', NULL),
(5, 'Animal', 1, 1, NULL, '2017-11-17 00:38:10', '2017-11-17 00:38:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_tags`
--

CREATE TABLE `blog_map_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_map_tags`
--

INSERT INTO `blog_map_tags` (`id`, `blog_id`, `tag_id`) VALUES
(11, 13, 5),
(12, 13, 6),
(13, 21, 5),
(14, 21, 6),
(15, 1, 5),
(16, 2, 6),
(17, 3, 6),
(18, 4, 6),
(19, 4, 7),
(20, 24, 5),
(21, 24, 6),
(22, 24, 7),
(23, 25, 6),
(24, 26, 6);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'My first blog', 1, 1, NULL, '2017-11-17 02:17:31', '2017-11-17 02:17:31', NULL),
(3, 'Heloo', 1, 1, 1, '2017-11-17 02:18:13', '2017-11-17 02:19:26', '2017-11-17 02:19:26'),
(4, 'Tag23', 0, 1, NULL, '2017-11-17 02:18:41', '2017-11-17 02:18:41', NULL),
(5, 'test123', 1, 1, NULL, '2017-11-17 03:29:59', '2017-11-17 03:29:59', NULL),
(6, 'test456', 1, 1, NULL, '2017-11-17 03:30:07', '2017-11-17 03:30:07', NULL),
(7, 'test789', 1, 1, NULL, '2017-11-17 03:30:13', '2017-11-17 03:30:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_17_123001_create_posts_table', 1),
(4, '2017_11_16_100103_update_posts_add_category_id', 2),
(5, '2017_11_16_100459_blog_category', 3),
(6, '2017_11_17_062831_create_blog_tags', 4),
(7, '2017_11_17_075236_update_posts_add_seo', 5),
(8, '2017_11_17_075727_create_blog_map_tags', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_category_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `blog_category_id`, `slug`, `title`, `content`, `meta_title`, `meta_description`, `meta_keywords`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'nisi-et-nulla-quae-veniam-quis-odit-rerum', 'Nisi et nulla quae veniam quis odit rerum.', '<p>Dolor et iste temporibus nemo molestiae ratione commodi magnam. Eos et ab ut voluptatem. Eaque quis cupiditate quasi suscipit culpa consectetur tempore. Quisquam sed sunt iure incidunt culpa. Illum tempora amet accusantium beatae unde rerum alias. Est expedita beatae quis voluptas excepturi est cumque odio. Aperiam molestias cum voluptatem et. Facilis nemo officia laboriosam hic totam. Aut aut dolore sit hic asperiores. Est cumque velit et molestiae est ad deleniti. Amet saepe quibusdam eum fugiat enim vitae possimus. Omnis in magni reiciendis labore nihil quis sint. Quaerat et nesciunt qui alias quos est. Dicta ut nemo excepturi et. Non est similique et nostrum quis deserunt. Occaecati vel veniam pariatur tempore tenetur aut consequatur. Qui facere officia sunt distinctio ratione et et.</p>', NULL, NULL, NULL, '2017-11-17 12:25:13', '2017-11-16 04:21:01', '2017-11-17 06:55:13'),
(2, 1, 'molestiae-beatae-rerum-quidem-sunt-sint', 'Molestiae beatae rerum quidem sunt sint.', '<p>Blanditiis sint sed aspernatur ea nisi adipisci dicta. Veritatis est quos ad sit maxime provident tempore iste. Ut voluptate sapiente alias amet velit. Dolor nisi debitis perspiciatis velit inventore minima quaerat. Consequatur vel et sed voluptas tenetur praesentium. Similique rem esse aliquid et maxime et rem. Id modi minus doloribus est est et consectetur. Magni ex et eum dicta. Esse excepturi nulla nulla voluptatem ut. Beatae perferendis ex et ut molestiae rerum. Omnis quia delectus nulla eligendi.</p>', NULL, NULL, NULL, '2017-11-17 12:25:20', '2017-11-16 04:21:01', '2017-11-17 06:55:20'),
(3, 1, 'iusto-autem-voluptatem-quis-sit-facilis-temporibus', 'Iusto autem voluptatem quis sit facilis temporibus.', '<p>Quo id voluptas consequuntur modi eligendi adipisci. Vel aspernatur quidem rerum neque dignissimos. Enim excepturi quisquam molestiae quia placeat placeat laudantium. Officia necessitatibus laboriosam vel non dolore itaque. Ratione aut pariatur vitae voluptatum laborum. Exercitationem voluptatem eos facilis temporibus quia corrupti. Perspiciatis blanditiis quas rem nobis soluta qui accusantium. Nulla non incidunt qui asperiores. Et quibusdam tempora facilis in assumenda corporis id. Maiores ullam repudiandae fugiat explicabo iure iure possimus. Sit aut vitae sapiente. Dolor adipisci iusto qui provident dicta corporis quo. Rerum sed deleniti assumenda voluptas sunt. Cum ullam impedit asperiores itaque debitis magnam.</p>', NULL, NULL, NULL, '2017-11-17 12:25:30', '2017-11-16 04:21:01', '2017-11-17 06:55:30'),
(4, 5, 'totam-perferendis-ut-adipisci-dicta', 'Totam perferendis ut adipisci dicta.', '<p>Sit dolore voluptatum earum autem amet molestiae quos ut. Sint aut blanditiis adipisci at expedita dignissimos sed. Dolore id eligendi quis omnis sit. Quia possimus optio quis qui ab. Aut sint ratione molestias molestias distinctio ducimus. Earum aperiam et sed est sint ut. Sit quibusdam adipisci qui officiis illo. Cupiditate est sit et ad. Atque iure qui repellendus voluptatem. Et ullam ut est. Animi neque nihil iusto aut voluptatem. Et sed vel ut voluptatem quis consectetur. Rerum consequatur magnam et animi distinctio accusamus at cumque. Aliquam voluptatum fuga nemo error esse pariatur autem. Alias dolore occaecati odio rerum ut odio cupiditate. Aut eveniet et officiis officiis libero tempore dolore. Quo repellat ut quisquam maxime totam et deserunt. Qui et harum sequi officia quod sapiente a. Et aut ullam doloribus in dolores debitis aspernatur. Sit accusamus consectetur excepturi voluptas officiis qui molestiae eius. Aut quo voluptas iste. Qui quae esse aliquid quas.</p>', NULL, NULL, NULL, '2017-11-17 12:25:41', '2017-11-16 04:21:01', '2017-11-17 06:55:41'),
(5, NULL, 'tempore-necessitatibus-dolores-numquam-error-fugiat', 'Tempore necessitatibus dolores numquam error fugiat.', 'Et autem doloremque debitis aliquam voluptas. Et magni labore praesentium unde ea expedita et. Repellendus voluptatum corporis nihil qui animi placeat quis accusamus. Quia ipsa voluptatem deleniti sapiente quia perspiciatis nemo.\n\nEst non officiis optio itaque fugiat sed quis. Similique adipisci itaque quo aut. Optio eos provident sapiente ea rem et.\n\nQuis et excepturi architecto sit id corrupti doloribus. Ut in id et ut magnam aut iste excepturi. Iusto facilis eum qui quisquam vero. Odio qui ad est provident iste nostrum mollitia.', NULL, NULL, NULL, '2017-11-02 13:22:15', '2017-11-16 04:21:01', '2017-11-16 04:21:01'),
(6, NULL, 'vitae-eos-qui-laboriosam-nostrum-ad-eligendi', 'Vitae eos qui laboriosam nostrum ad eligendi.', 'Aspernatur molestiae sed earum corrupti. Ipsum eum maiores enim numquam voluptas voluptatibus nam aspernatur. Voluptas in quis unde tempora autem dolor et blanditiis.\n\nEum temporibus sed enim ut ut mollitia. Debitis qui qui deleniti consequuntur quibusdam iure. Accusamus corrupti sunt vitae qui. Nobis repudiandae ipsam quia nemo. Quod inventore qui rerum vitae ad vero unde inventore.\n\nAb consequatur et illum qui omnis vero quos. Voluptatem omnis alias tenetur explicabo nobis. Quis nostrum aut laborum praesentium et voluptatem dolores non. Possimus accusamus facere laborum dolor et.\n\nAnimi minus alias voluptas quam aut et. Ullam et autem qui. Et rem perferendis delectus magnam quo quam. Distinctio qui minima et autem vel facilis iusto.\n\nQui consectetur et impedit quo ea reiciendis vel et. Reprehenderit consequatur facilis aperiam voluptatibus. Aspernatur aut molestiae voluptatibus et pariatur similique odio. Modi est aut qui.', NULL, NULL, NULL, '2017-11-15 18:51:01', '2017-11-16 04:21:01', '2017-11-16 04:21:01'),
(7, NULL, 'facere-incidunt-laboriosam', 'Facere incidunt laboriosam.', 'Veritatis explicabo quia cum in iusto pariatur sint. Qui temporibus voluptates libero. Et qui sint odio quia error iusto eum.\n\nAperiam corrupti ut quis deleniti. Eos voluptate tempora delectus delectus facere quia. Blanditiis dolorem quas sunt labore.\n\nMollitia quia eveniet et ut sit officiis. Ipsam est rem magni dolor est ducimus et.\n\nDeserunt aut rem iste quidem tempore quo aut. Facere voluptatum hic id. Quia voluptatem placeat quia est iure repellat perspiciatis. Dolorum blanditiis optio quo optio et.\n\nAt rerum cumque corporis velit molestias occaecati. Sit quis esse facere optio. Doloribus iusto fugiat voluptas rerum fugiat in.\n\nNulla fuga aspernatur ipsa fugit nobis. At rem optio nihil. Alias voluptas voluptas quidem qui minus.', NULL, NULL, NULL, '2017-11-10 09:36:37', '2017-11-16 04:21:01', '2017-11-16 04:21:01'),
(8, NULL, 'ducimus-hic-optio-ipsam-dolores-quia-in', 'Ducimus hic optio ipsam dolores quia in.', 'Amet qui optio in et aut voluptate voluptatem. Dolor aperiam occaecati modi numquam. Quo debitis animi doloribus eligendi necessitatibus modi sint. Provident nam velit inventore et.\n\nLaudantium maiores beatae possimus doloremque et nihil reiciendis. Veritatis accusamus voluptas voluptate earum vel laudantium. Quam harum dolor qui culpa. Et ea aut magnam veniam iste.\n\nOdit voluptas enim sint repudiandae. Placeat quasi iure possimus ipsam. Qui soluta amet sit vel. Et ad nemo laboriosam incidunt maxime.\n\nPerferendis commodi itaque dolore. Qui sed omnis enim sunt. Consectetur voluptates omnis ipsa cum.\n\nId architecto fugit perspiciatis cumque dolorem voluptas sint tempora. Consectetur vel autem asperiores iure recusandae ipsum magnam quisquam. Quis ex in natus quaerat. Alias fugiat corrupti in laboriosam.\n\nNam eius voluptate dolores ex qui dolor modi architecto. Molestiae ut nesciunt aut mollitia architecto voluptas. Praesentium adipisci autem ex modi recusandae et ratione.', NULL, NULL, NULL, '2017-11-05 20:35:35', '2017-11-16 04:21:01', '2017-11-16 04:21:01'),
(9, NULL, 'dolor-aliquid-quia', 'Dolor aliquid quia.', 'Ea quo nesciunt hic. Dolorem dolor qui sit expedita id ab itaque. Consectetur tenetur quas pariatur impedit sed. Et omnis facere qui consequatur sunt est similique.\n\nLabore qui eos eveniet. Sit et accusamus est dolor a consequatur corporis. In et qui corporis.\n\nRerum repudiandae at mollitia aliquid pariatur. Nostrum aut sint repellat mollitia numquam voluptatem. Delectus et voluptas laboriosam enim ad ea perferendis id. Error sunt reiciendis ut ipsum assumenda rerum doloribus.', NULL, NULL, NULL, '2017-11-01 15:04:08', '2017-11-16 04:21:01', '2017-11-16 04:21:01'),
(10, NULL, 'ut-corrupti-ducimus-cum-doloremque', 'Ut corrupti ducimus cum doloremque.', 'Cupiditate sit rerum eum voluptatem quidem magni. Sit maiores sint minus veritatis dolore molestias eos eum. Officiis provident blanditiis ad molestias. Aspernatur est vel asperiores voluptates aut saepe dolorem.\n\nQuod minus unde sit sed repellat aut harum ab. Quia qui aut voluptatem ad esse recusandae autem. Eaque quia accusamus aut dolor ut consequatur neque. Eaque libero provident eius exercitationem reiciendis nam.\n\nQuia vel suscipit qui quisquam. Necessitatibus nulla nihil earum. Recusandae quidem ad enim quas.', NULL, NULL, NULL, '2017-11-09 03:52:53', '2017-11-16 04:21:01', '2017-11-16 04:21:01'),
(11, NULL, 'necessitatibus-aut-consequuntur-et-perspiciatis-corporis-qui-odit', 'Necessitatibus aut consequuntur et perspiciatis corporis qui odit.', 'Molestias quia praesentium qui nulla amet. Repudiandae maxime nesciunt maiores iusto iure est qui. Ducimus exercitationem autem aliquid libero accusantium assumenda unde. Dolore commodi odio et at.\n\nQuisquam ea ipsum mollitia non et harum officiis. Vitae eligendi reprehenderit aut voluptatem. Facere libero neque illum quia facilis possimus quisquam.\n\nDelectus nobis voluptatem dicta culpa ullam. Labore vel exercitationem eaque saepe quod. Praesentium voluptatem suscipit tempora et nobis qui.\n\nOfficia eum et ipsum iste facere. Vel consequatur hic dolorum. Omnis accusamus dolorem quos ipsa ullam nisi.\n\nAut cupiditate neque porro veniam consequatur voluptate. Minima harum ut placeat mollitia adipisci ipsam.\n\nQuod officiis enim sed quis. Eveniet aspernatur eveniet possimus. Quo voluptate veniam et consequuntur accusamus suscipit distinctio velit. Aperiam consequatur unde animi consequatur sunt ullam enim.', NULL, NULL, NULL, '2017-11-07 20:41:56', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(12, NULL, 'eum-consectetur-quia-quam-natus-et-ut-dolore-facilis-totam-error', 'Eum consectetur quia quam natus et ut dolore facilis totam error.', 'Nulla culpa maxime quibusdam ipsum a. Aut error et nesciunt non dicta facere est ut. Excepturi laudantium ex quia similique qui officiis qui et. Et qui voluptas quis enim.\n\nLaboriosam sunt nihil sint aperiam iste maxime iste cumque. Sequi vel temporibus consequatur deserunt non. Aliquid natus consequatur consequatur dolorem ipsa. Amet delectus unde iusto corrupti architecto.\n\nEt et modi maxime. Dicta tempora impedit consequatur ut laborum et nihil. Quas vel rerum maiores.', NULL, NULL, NULL, '2017-11-03 16:37:45', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(13, 5, 'laborum-animi-earum-aut-nesciunt', 'Laborum animi earum aut nesciunt.', '<p>Autem ut atque sed sunt voluptas sapiente quisquam. Quis delectus amet unde alias rerum est minus. Harum eveniet magnam ipsum sed. Consequuntur culpa quos voluptatem perspiciatis quasi eveniet nobis. Et itaque repellat nihil quis repellendus. Ut nam assumenda est rerum itaque officia error provident. Id rerum consectetur necessitatibus distinctio doloremque. Maxime autem similique quaerat est. Eius eligendi aut laudantium vel minus dolor. Eum adipisci molestias assumenda atque temporibus delectus consequatur. Natus sit non sint. Doloremque unde dolores ipsum nemo. Unde blanditiis voluptatem blanditiis. Quidem ab qui et tenetur dolorem explicabo voluptatum. Iste et quibusdam ipsum ea expedita voluptatem quam. Dolorem maiores omnis incidunt maxime. Odio consequuntur odio sit consequatur quia sit. Qui nesciunt ex nostrum tempore cupiditate quia ut provident.</p>', NULL, NULL, NULL, '2017-11-17 11:35:12', '2017-11-16 04:21:02', '2017-11-17 06:05:12'),
(14, NULL, 'voluptatem-commodi-vel-eius-qui-harum-iure-quis', 'Voluptatem commodi vel eius qui harum iure quis.', 'Accusamus consectetur est fugit atque facere rerum sit. Sed labore ea omnis quaerat explicabo blanditiis tempore dolor. Cumque dolor itaque enim qui.\n\nEt velit molestias sed ea voluptatem ea quaerat. Dolore voluptate vel consequatur numquam et. Et deserunt quia rerum laboriosam quasi sequi fuga. At aperiam consectetur nisi corrupti.\n\nQuidem autem cumque id accusantium. Animi et optio id sint. Excepturi facere placeat doloribus quia quaerat labore non. Magni ipsa facere architecto distinctio expedita impedit.\n\nEt temporibus inventore reprehenderit officiis asperiores odit. Ea aspernatur quia dolorum ea facere perferendis. Consequatur ut cumque et.\n\nConsequatur sed quia sit amet molestias provident magni. Eius molestias officiis quia. Est odit exercitationem explicabo in dicta. Recusandae commodi debitis possimus commodi fugit pariatur deserunt.\n\nAd deleniti in et est quod. Dolores vitae ratione enim. Qui ex soluta nihil ut. Esse est consectetur vel accusantium in.', NULL, NULL, NULL, '2017-11-12 08:40:17', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(15, NULL, 'sit-molestiae-voluptatem-rem-id-est-et', 'Sit molestiae voluptatem rem id est et.', 'Illum fuga nesciunt numquam voluptatem sed odit nisi. Ipsam dolores ut beatae iure quisquam ut. Est quia reprehenderit officiis ut deleniti qui iure dignissimos. Voluptates officiis aut ut dolores odit et.\n\nUt molestiae et quasi eligendi id quia. Expedita enim nobis quis omnis id. Sed amet ut aut est enim consequuntur. Dolore quidem aspernatur eos esse error et blanditiis. Rerum delectus rerum velit tenetur ullam.\n\nQui voluptas animi velit nobis et quisquam natus. Perferendis voluptate dolores laudantium. Ipsum tempora quis recusandae sit labore voluptates.\n\nVeritatis eum architecto est tempora molestiae et in. Beatae corporis quis facilis vero voluptatem blanditiis cum. Maiores quidem quia voluptatem qui. Quod asperiores saepe aspernatur et qui ratione omnis.\n\nExercitationem in et similique aspernatur et. Consequatur veritatis eos est rerum ipsa vero repudiandae. Quidem quis consequatur in commodi aut modi consequuntur.\n\nOfficia doloremque suscipit non magnam omnis. Temporibus porro dolorum beatae vero est. Qui qui id fugiat repellendus laudantium voluptatibus. Nam quo ut dolores pariatur enim vel dolor.', NULL, NULL, NULL, '2017-10-30 04:21:21', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(16, NULL, 'nesciunt-quam-tenetur-deleniti-ducimus-aperiam-sint-optio', 'Nesciunt quam tenetur deleniti ducimus aperiam sint optio.', 'Minus blanditiis voluptatem aut nemo adipisci iure. Modi vitae non odio aliquid ipsam. Eligendi voluptas ut id cum vel et consequatur. Doloremque possimus illum qui recusandae aut aut quis. Aspernatur voluptas recusandae ducimus maiores ut.\n\nOdit consequatur suscipit laudantium ducimus consectetur eveniet. Eum illum animi perferendis in accusantium. Deserunt reprehenderit ex rerum debitis laboriosam vitae et dignissimos. Asperiores quo consequatur ad soluta consequatur repellendus.\n\nSimilique quidem repellendus iure sit. Ullam maiores odio rerum. Est voluptatem asperiores ut ducimus sed saepe culpa.\n\nBeatae ut earum eos illo. Voluptatibus voluptatem voluptas ratione magni esse. Quia praesentium quibusdam excepturi quia ipsum. Libero enim iste et.\n\nVoluptas occaecati sint harum non vel ullam. Et itaque velit ea et natus dolor. Voluptatem porro et enim.\n\nEst consequuntur aut veniam. A voluptatem quas numquam eum placeat ut hic. At laborum ut non ut. Consequuntur quasi consectetur sed sit omnis.', NULL, NULL, NULL, '2017-10-20 01:28:06', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(17, NULL, 'iusto-non-est-nihil-deleniti-numquam-molestias-culpa-et-est-est-ut-ut', 'Iusto non est nihil deleniti numquam molestias culpa et est est ut ut.', 'Omnis aspernatur error est ut. Ipsa et omnis dolorem tempora animi aut.\n\nEum fuga et natus aliquid quasi. Quo sapiente blanditiis qui dolores nisi aspernatur voluptatibus repudiandae. Voluptas reprehenderit amet saepe ut molestias harum asperiores. Officia eos aut sapiente magnam dolorem et.\n\nAliquam fugiat deleniti in. Molestias consequuntur laborum accusantium dolores dolorem eos. Quos odit molestiae dolores eveniet. Rerum ex enim voluptate voluptas.\n\nDolores illum voluptatem voluptate quis eaque porro voluptatem. Perspiciatis nam dolor architecto. Sit voluptatum aut suscipit aspernatur dolores necessitatibus sunt.\n\nBeatae tempore qui fugiat enim quia. Dolores sit nesciunt rerum tempora inventore consequatur veniam. Itaque sunt natus a dicta. Nobis sequi error debitis et et dolor repellendus commodi.', NULL, NULL, NULL, '2017-10-24 12:36:07', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(18, NULL, 'harum-velit-nihil-deleniti', 'Harum velit nihil deleniti.', 'In animi quibusdam autem fugiat sit. Fugit consequatur incidunt possimus cum. Modi qui dolorum architecto libero facere distinctio quibusdam. Itaque veniam sunt deleniti nisi.\n\nDeserunt laboriosam cupiditate quasi et ratione aspernatur labore. Quam illum repellat accusantium rem. Quia nisi quia nihil tempore ipsam aut.\n\nDistinctio quam voluptatem facilis voluptas ipsum qui aliquid. Eos non quam eum quaerat veniam. Molestiae quo non ad mollitia mollitia sequi. Totam cumque assumenda nisi nesciunt. Sint necessitatibus ea harum officiis totam aliquid aliquid.', NULL, NULL, NULL, '2017-10-27 01:47:53', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(20, NULL, 'possimus-vel-expedita-magni-ipsa-perferendis-eveniet-aut-ut-voluptatem-neque-et', 'Possimus vel expedita magni ipsa perferendis eveniet aut ut voluptatem neque et.', 'Quasi nesciunt et ratione et. Dolor sit molestias dignissimos labore hic non. Error aliquid est blanditiis sit molestias voluptatem.\n\nCorrupti provident aperiam nemo repellendus. Ut in aspernatur est ipsa soluta eos. Dignissimos praesentium ducimus labore impedit.\n\nUnde voluptas labore rerum cupiditate deserunt. Ducimus in dolores dolorum sint quia. Numquam voluptatum et veniam nam est atque ab.', NULL, NULL, NULL, '2017-11-12 13:26:43', '2017-11-16 04:21:02', '2017-11-16 04:21:02'),
(21, 5, 'test-blog1', 'Test blog1', '<p>Hello Guys,</p>\r\n<p>This is my first blog created by me.</p>', 'meta title', '<p>meta title</p>', 'meta title', '2017-11-25 13:20:00', '2017-11-17 03:52:15', '2017-11-17 03:52:15'),
(24, 5, 'new-one', 'New one', '<p>new one</p>', 'New one', '<p>New one</p>', 'New one', '2017-11-07 13:10:00', '2017-11-17 07:30:08', '2017-11-17 07:30:08'),
(25, 2, 'dfgfdghfhfh', 'dfgfdghfhfh', '<p>fghfgh</p>', 'fghfgh', '<p>fghfhg</p>', 'fghfg', '2017-11-21 04:15:00', '2017-11-20 00:33:37', '2017-11-20 00:33:37'),
(26, 1, 'test-sudhir', 'test sudhir', '<p>sdfsfsfd</p>', 'sdfsdfs', '<p>sdfsdf</p>', 'sdfsdf', '2017-11-19 13:00:00', '2017-11-20 01:14:41', '2017-11-20 01:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$H9n8F3JZTSnTJtN0lvU4se2EgXiErdhOAr.JmXdo.zq9Z9GI57sl2', 'WHMAb8aaxRKBRNqntBrhcWcM2w8kF211dX6IBRRbsAVfb032gUuOvdIhpL6O', '2017-11-16 04:24:46', '2017-11-16 04:24:46'),
(2, 'test', 'test@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(3, 'sudhir', 'test2@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(4, 'Imdad', 'test3@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(5, 'Test4', 'test4@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(6, 'Test5', 'test5@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(7, 'Test6', 'test6@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(8, 'Test7', 'test7@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(9, 'Test8', 'test8@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(10, 'Test9', 'test9@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(11, 'Test10', 'test10@gmail.com', '$2y$10$MWRkOuos2Qh04HCsmO2/qesWiEfhzXAtCtbczPQpPOGxmILcBHjPW', '2fCzLiEZML3e0Pi7R87tPrfLoiPGpZQZUMZfGdA4b1ZzQ2Q3I0loWqMHVL3M', '2017-11-16 06:32:37', '2017-11-16 06:32:37'),
(12, 'sudhir', 'srvirpara@cygnet-infotech.com', '$2y$10$VLMW8fidfDihRu3TqxPwmenkpk4UfwgdZHUeQ/7DKzM9GI5/H.VFO', '3DsJyzSytEl5LltGagquAi7wRVS349CoZfrSUCBzrhvAGx1fY8apAjzXfWQW', '2017-11-17 07:37:19', '2017-11-17 07:37:19'),
(13, 'Mytest', 'test1@gmail.com', '$2y$10$M8FLs5OedCdSo.BiRHR10.WL/pyyYTUQvRn4ljLURy0bVgeEONu2a', 'ycP3q0kZjl7T40Iktu9L9RjQlzX2jno4zEHxsyAyoJl7OLorP9TctRrQ039H', '2017-11-20 00:16:05', '2017-11-20 00:16:05'),
(14, 'sdsfsdf', 'sudhirvirpara@gmail.comss', '$2y$10$D4zRvDjGX3/n7SCk/sX8M.Q2JHoUJc8364VpkOFbtNNfeTETJbV7.', 'wHUr9mAfx0g2ljDdv6cvsbZv3ItczOWeMTaIuLDpiJx4zHDooS8DS6qfaHWg', '2017-11-20 00:18:00', '2017-11-20 00:18:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_tags_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_published_at_index` (`published_at`),
  ADD KEY `posts_blog_category_id_index` (`blog_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
