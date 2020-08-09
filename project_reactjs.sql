-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 09:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_reactjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `meta` varchar(255) NOT NULL,
  `content` text,
  `cate_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `img`, `meta`, `content`, `cate_id`, `created_at`, `updated_at`) VALUES
(1, 'ádasd', 'https://res.cloudinary.com/plasst/image/upload/v1596783551/react_image/heaqqckqc3lofhwmwd5n.jpg', 'ádadasd', '<p><a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s20-ultra\"><strong>Samsung Galaxy S20 Ultra</strong></a><strong> là chiếc điện thoại sẽ thay đổi tương lai của nhiếp ảnh smartphone. Cùng khám phá bước tiến mang tính lịch sử với 5 ống kính camera 108MP siêu nét, quay phim chuẩn điện ảnh 8K trên S20 Ultra.</strong></p><figure class=\"image\"><img src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s20-ultra-1.jpg\" alt=\"Samsung Galaxy S20 Ultra\"></figure><h3><strong>Tận hưởng màn hình lớn 6,9 inch chuẩn điện ảnh</strong></h3><p>Bạn sẽ được đắm chìm trong những thước phim sống động trên màn hình lớn tràn viền 6,9 inch Infinity-O của Samsung Galaxy S20 Ultra. Màn hình với công nghệ Dynamic AMOLED cao cấp, hỗ trợ HDR10+ và độ phân giải QuadHD+ siêu nét, giúp mọi hình ảnh trở nên chân thực chưa từng thấy cùng độ tương phản, màu sắc ấn tượng.</p><figure class=\"image\"><img src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s20-ultra-2.jpg\" alt=\"màn hình Samsung Galaxy S20 Ultra\"></figure><h3><strong>Màn hình 120Hz, mượt mà trong từng cử chỉ</strong></h3><p>Samsung S20 Ultra sở hữu màn hình có tần số quét 120Hz, gấp đôi so với các màn hình khác trên thị trường. Nhờ tần số quét cao, mọi thứ sẽ phản hồi nhanh chóng và mượt mà hơn. Trải nghiệm game của bạn cũng được nâng tầm khi tốc độ khung hình vượt qua ngưỡng chuẩn 60fps thông thường, cho sự mượt mà hoàn hảo và thao tác chính xác trong từng trận chiến.</p><figure class=\"image\"><img src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s20-ultra-3.jpg\" alt=\"màn hình Samsung Galaxy S20 Ultra\"></figure>', 3, '2020-08-07 07:17:42', '2020-08-07 00:17:42'),
(2, 'asz', 'acs', 'acx', '<p><a href=\"https://fptshop.com.vn/dien-thoai/samsung-galaxy-s20-ultra\"><strong>Samsung Galaxy S20 Ultra</strong></a><strong> là chiếc điện thoại sẽ thay đổi tương lai của nhiếp ảnh smartphone. Cùng khám phá bước tiến mang tính lịch sử với 5 ống kính camera 108MP siêu nét, quay phim chuẩn điện ảnh 8K trên S20 Ultra.</strong></p><figure class=\"image\"><img src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s20-ultra-1.jpg\" alt=\"Samsung Galaxy S20 Ultra\"></figure><h3><strong>Tận hưởng màn hình lớn 6,9 inch chuẩn điện ảnh</strong></h3><p>Bạn sẽ được đắm chìm trong những thước phim sống động trên màn hình lớn tràn viền 6,9 inch Infinity-O của Samsung Galaxy S20 Ultra. Màn hình với công nghệ Dynamic AMOLED cao cấp, hỗ trợ HDR10+ và độ phân giải QuadHD+ siêu nét, giúp mọi hình ảnh trở nên chân thực chưa từng thấy cùng độ tương phản, màu sắc ấn tượng.</p><figure class=\"image\"><img src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s20-ultra-2.jpg\" alt=\"màn hình Samsung Galaxy S20 Ultra\"></figure><h3><strong>Màn hình 120Hz, mượt mà trong từng cử chỉ</strong></h3><p>Samsung S20 Ultra sở hữu màn hình có tần số quét 120Hz, gấp đôi so với các màn hình khác trên thị trường. Nhờ tần số quét cao, mọi thứ sẽ phản hồi nhanh chóng và mượt mà hơn. Trải nghiệm game của bạn cũng được nâng tầm khi tốc độ khung hình vượt qua ngưỡng chuẩn 60fps thông thường, cho sự mượt mà hoàn hảo và thao tác chính xác trong từng trận chiến.</p><figure class=\"image\"><img src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-s20-ultra-3.jpg\" alt=\"màn hình Samsung Galaxy S20 Ultra\"></figure>', 1, '2020-08-07 07:05:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, 'Điện thoại samsung'),
(3, 'Điện thoại apple'),
(4, 'Máy tính bảng');

-- --------------------------------------------------------

--
-- Table structure for table `cate_blog`
--

CREATE TABLE `cate_blog` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate_blog`
--

INSERT INTO `cate_blog` (`id`, `cate_name`) VALUES
(1, 'Bài viết kỹ thuật'),
(2, 'Bài viết tuyển dụng'),
(3, 'Bài viết giới thiệu'),
(4, 'Bài viết sản phẩm');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `meta` varchar(255) NOT NULL,
  `content` text,
  `id_dm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name_product`, `img`, `price`, `sale_price`, `meta`, `content`, `id_dm`) VALUES
(7, 'OPPO RENO4', 'https://res.cloudinary.com/plasst/image/upload/v1596733872/react_image/mip2epmj000rmay0xymi.jpg', 10000000, 8000000, 'Toàn bộ công nghệ vượt trội được gói gọn trong thiết kế mỏng nhẹ, hoàn thiện bậc nhất. Màn hình cong tràn viền sang trọng', 'Toàn bộ công nghệ vượt trội được gói gọn trong thiết kế mỏng nhẹ, hoàn thiện bậc nhất. Màn hình cong tràn viền sang trọng', 1),
(8, 'iPhone 11 Pro Max 512GB', 'https://res.cloudinary.com/plasst/image/upload/v1596733975/react_image/vcyjaaevgl8bp8cpwfx0.jpg', 11000000, 7000000, 'iPhone 11 Pro Max 512GB là phiên bản có bộ nhớ nhiều nhất, màn hình lớn nhất và thời lượng pin tuyệt vời nhất hiện nay. Bạn sẽ được cầm trên tay chiếc điện thoại đẳng cấp mà bất cứ ai cũng mơ ước.', '<p>iPhone 11 Pro Max 512GB là phiên bản có bộ nhớ nhiều nhất, màn hình lớn nhất và thời lượng pin tuyệt vời nhất hiện nay. Bạn sẽ được cầm trên tay chiếc điện thoại đẳng cấp mà bất cứ ai cũng mơ ước.</p>', 3),
(9, 'Samsung Galaxy S20 Ultra', 'https://res.cloudinary.com/plasst/image/upload/v1596734208/react_image/kp0amu8t7q0jtwgbrehj.jpg', 14000000, 12000000, 'Samsung Galaxy S20 Ultra là chiếc điện thoại sẽ thay đổi tương lai của nhiếp ảnh smartphone', '<p>Samsung Galaxy S20 Ultra là chiếc điện thoại sẽ thay đổi tương lai của nhiếp ảnh smartphone</p>', 2),
(10, 'iPhone 11 64GB', 'https://res.cloudinary.com/plasst/image/upload/v1596734284/react_image/tbi2zt1547rsvtssfggn.jpg', 9000000, 7000000, 'iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội', '<p>iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội</p>', 3),
(11, 'Galaxy Note20', 'https://res.cloudinary.com/plasst/image/upload/v1596734334/react_image/pmcgn1cemwfcudqn3bff.jpg', 14000000, 13000000, 'Galaxy Note20 | Note20 Ultra', '<p>Galaxy Note20 | Note20 Ultra</p>', 2),
(12, 'Samsung Galaxy A51', 'https://res.cloudinary.com/plasst/image/upload/v1596734381/react_image/ko1njbh94cikzuce0drt.jpg', 12500000, 11000000, 'Sự hào là smartphone đầu tiên trên thế giới được tích hợp camera Macro hỗ trợ chụp ảnh cận cảnh', 'Sự hào là smartphone đầu tiên trên thế giới được tích hợp camera Macro hỗ trợ chụp ảnh cận cảnh', 1),
(13, 'Vsmart Live 4GB-64GB', 'https://res.cloudinary.com/plasst/image/upload/v1596734442/react_image/iiumhe58cguyhggblnlt.jpg', 13000000, 11000000, 'Siêu phẩm Vsmart Live 4GB-64GB đã xuất hiện. Với 3 camera đẳng cấp', 'Siêu phẩm Vsmart Live 4GB-64GB đã xuất hiện. Với 3 camera đẳng cấp', 1),
(14, 'Vivo U10 4GB-64GB', 'https://res.cloudinary.com/plasst/image/upload/v1596734477/react_image/lwiawl7tei2dsxvk41wb.jpg', 14000000, 7000000, 'Vivo U10 sở hữu hiệu năng và thời lượng pin đáng kinh ngạc ở phân khúc giá rẻ', 'Vivo U10 sở hữu hiệu năng và thời lượng pin đáng kinh ngạc ở phân khúc giá rẻ', 1),
(15, 'MacBook Air 13\" 2017 1.8GHz Core i5 128GB', 'https://res.cloudinary.com/plasst/image/upload/v1596734555/react_image/nlnippjo7gtozsm9w4vw.jpg', 21000000, 19000000, 'Macbook Air 13 128 GB MQD32SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng', '<p>Macbook Air 13 128 GB MQD32SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng</p>', 4),
(16, 'HP 15s-fq1107TU i3 1005G1/4GB/256GB SSD/WIN10', 'https://res.cloudinary.com/plasst/image/upload/v1596734597/react_image/v1uvl8yzx5lomefnjlpf.jpg', 20000000, 18000000, 'HP 15s-fq1107TU là chiếc laptop màn hình 15,6 inch rất đáng mua', '<p>HP 15s-fq1107TU là chiếc laptop màn hình 15,6 inch rất đáng mua</p>', 4),
(17, 'Lenovo IdeaPad S145-15API R5 3500U/8GB/512GB SSD/WIN10', 'https://res.cloudinary.com/plasst/image/upload/v1596734647/react_image/qw6unrrgbjyhkdu8fu1t.jpg', 1000000, 9600000, 'Với bộ vi xử lý AMD Ryzen 5 3000 series mạnh mẽ, 8GB RAM và 512GB ổ cứng SSD', '<p>Với bộ vi xử lý AMD Ryzen 5 3000 series mạnh mẽ, 8GB RAM và 512GB ổ cứng SSD</p>', 4),
(18, 'Asus VivoBook M413IA-EK480T R5-4500U/8GB/512GB SSD/Win10', 'https://res.cloudinary.com/plasst/image/upload/v1596734687/react_image/oc0pklxvp6wvgi5rhk58.jpg', 14000000, 13500000, 'Không chỉ là chiếc laptop siêu mỏng nhẹ với thiết kế cá tính, Asus VivoBook M413IA-EK480T còn mang trên mình sức mạnh', '<p>Không chỉ là chiếc laptop siêu mỏng nhẹ với thiết kế cá tính, Asus VivoBook M413IA-EK480T còn mang trên mình sức mạnh</p>', 4),
(23, 'danh muc 24', 'https://res.cloudinary.com/plasst/image/upload/v1596765499/react_image/wuv4jwwaxtmaw9exd0za.jpg', 1000000, 123123, 'ádadasd', '<h2>thi dz</h2>', 1),
(24, 'lethi', 'https://res.cloudinary.com/plasst/image/upload/v1596809407/react_image/wh1migqcxrm1ciu59sfi.png', 12312312, 12312312, 'ádas', '<p>ádasdasdasd</p>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate_blog`
--
ALTER TABLE `cate_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cate_blog`
--
ALTER TABLE `cate_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
