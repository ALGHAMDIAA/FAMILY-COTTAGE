--
-- Database: `familycottage`
--

-- --------------------------------------------------------

--
-- Table structure for table `cottages`
--

CREATE TABLE `cottages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `p1` varchar(50) NOT NULL,
  `p2` varchar(50) NOT NULL,
  `p3` varchar(50) NOT NULL,
  `p4` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `location_map` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cottages`
--

INSERT INTO `cottages` (`id`, `name`, `title`, `description`, `p1`, `p2`, `p3`, `p4`, `price`, `location_map`) VALUES
(1, 'Bruern', 'Luxury Natural Beauty Cottage', 'Bruern Holiday Cottages in the Cotswolds are stunning. The 12 very luxurious, very tasteful and very stylish self-catering cottages are to be found in an area of outstanding natural beauty - that should include the grounds too as they are incredible. Expect traditional with open fires, antique furniture, four poster beds combined with state of the art bathrooms and kitchens in perfect measure. Child friendly cottages they are in abundance - parent friendly too!\n\nBeautifully decorated with a tremendous sense of style and comfort Bruern''s cottages "offer the comfort and attention to detail of a good hotel; the privacy, independence and space of home and the civilised ease and style of country house living".\n', 'a6.jpg', 'a1.jpg', 'a2.jpg', 'a3.jpg', '800', 'loc01.jpg'),
(2, 'Godford', 'Farm Paradise', 'Godford Farm Holiday Cottages, Honiton near Exeter have two 4 star holiday cottages that can each sleep a family of four. Located in South Devon near the coast you are staying on a working dairy farm, on edge of small rural village, overlooking the Blackdown Hills Area of Outstanding Natural Beauty. There are enclosed gardens for children to play in with lots of ride-on toys and a playhouse.', 'b4.jpg', 'b1.jpg', 'b2.jpg', 'b3.jpg', '600', 'loc02.jpg'),
(3, 'Bishopstrow', 'Historic View Holiday', 'Built in 1817 the gorgeously luxurious Bishopstrow Hotel and Spa has undergone a makeover thanks to Longleat Enterprises Ltd the owners of the infamous Longleat Safari Park. Set in 27 acres of tranquility this child-friendly hotel offers elegant and contemporary bedrooms and suites, a very warm welcome, excellent food and fantastic days out opportunities for all the family - quite the perfect family break venue! \r\n\r\nKaren and her girls visited:\r\n\r\nBishopstrow does not readily jump to mind as a family friendly hotel but under new ownership and perfectly located for day trips to Longleat, Bath or Stonehenge it is putting all the ingredients in place to become a family favourite.', 'c8.jpg', 'c1.jpg', 'c2.jpg', 'c3.jpg', '900', 'loc03.jpg'),
(4, 'Sanford', 'Creek Gardens Apartments', 'Ideal for families, this property enjoy a lovely balcony which allows guests to take advantage of the wonderful view over the creek. ', 'd1.jpg', 'd2.jpg', 'd3.jpg', 'd4.jpg', '219', 'loc05.jpg'),
(5, 'Brading', 'Moles Leap', 'Seaside towns of Sandown and Ryde close by, with sandy beaches and family entertainment, scenic walks to stunning coastline. ', 'leap1.jpg', 'leap2.jpg', 'leap3.jpg', 'leap4.jpg', '240', 'loc06.jpg'),
(6, 'Claremont', 'Claremont House', 'Relax in the shared hot tub or take advantage of the gym and beauty salon at this holiday property.', 'e1.jpg', 'e2.jpg', 'e3.jpg', 'e4.jpg', '219', 'loc07.jpg'),
(7, 'Needles', 'Needles and Winds', 'This holiday property is ideal for a couple who wish to explore the attractions of the island and enjoy spectacular sea views.', 'f1.jpg', 'f2.jpg', 'f3.jpg', 'f4.jpg', '240', 'loc08.jpg'),
(10, 'Solent View ', 'Solent View & Brambles Cottage - Brambles Cottage', 'Built in 1817 the gorgeously luxurious Bishopstrow Hotel and Spa has undergone a makeover thanks to Longleat Enterprises Ltd the owners of the infamous Longleat Safari Park. Set in 27 acres of tranquility this child-friendly hotel offers elegant and contemporary bedrooms and suites, a very warm welcome, excellent food and fantastic days out opportunities for all the family - quite the perfect family break venue! \r\n\r\nKaren and her girls visited:\r\n\r\nBishopstrow does not readily jump to mind as a family friendly hotel but under new ownership and perfectly located for day trips to Longleat, Bath or Stonehenge it is putting all the ingredients in place to become a family favourite.', 'g1.jpg', 'g2.jpg', 'g3.jpg', 'g4.jpg', '900', 'loc04.jpg');


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'abdullah.elat@gmail.com', '$2y$10$botsZhT4JPYAnN90s3K.jO1Xa7CfepbcxpLGJgszRPLG2jR2RSOYu', '2018-06-08 09:58:40'),
(2, 'aaa@aaa.com', '$2y$10$E/hcIPTgQKaz3fFTKUGBpe3cuA1N54Hty.7c0DMSKLP2Lum60jJzq', '2018-06-08 10:07:11'),
(3, 'vbnvbn@vbbnbvn.vb', '$2y$10$2hMA/vbh6tnMmMs5ujW8pOIXRz2gAEXzT52/zJJGjDldaLrYo/Fte', '2018-06-22 11:26:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cottages`
--
ALTER TABLE `cottages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cottages`
--
ALTER TABLE `cottages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
