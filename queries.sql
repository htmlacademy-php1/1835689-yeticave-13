INSERT INTO `yetycave`.`lots` (`id`, `dt_add`, `category_id`, `user_id`, `title`, `description`, `image`, `cost`, `dt_end`, `step`) VALUES ('1', '2021-08-26 07:29:54', '1', '1', '2014 Rossignol District Snowboard', 'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчком и четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.', 'img/lot-1.jpg', '10999', '2021-09-26 00:00:00', '1000');
INSERT INTO `yetycave`.`lots` (`id`, `dt_add`, `category_id`, `user_id`, `title`, `description`, `image`, `cost`, `dt_end`, `step`) VALUES ('2', '2021-08-26 07:54:28', '1', '2', 'DC Ply Mens 2016/2017 Snowboard', 'Очень удобный сноуборд', 'img/lot-2.jpg', '15999', '2021-09-26 00:00:00', '1000');
INSERT INTO `yetycave`.`lots` (`id`, `dt_add`, `category_id`, `user_id`, `title`, `description`, `image`, `cost`, `dt_end`, `step`) VALUES ('3', '2021-08-26 08:23:00', '2', '3', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Закрепят все.', 'img/lot-3.jpg', '8000', '2021-09-26 00:00:00', '500');
INSERT INTO `yetycave`.`lots` (`id`, `dt_add`, `category_id`, `user_id`, `title`, `description`, `image`, `cost`, `dt_end`, `step`) VALUES ('4', '2021-08-26 08:39:27', '3', '4', 'Ботинки для сноуборда DC Mutiny Charocal', 'Самые лучшие в мире ботинки.', 'img/lot-4.jpg', '10999', '2021-09-26 00:00:00', '1000');
INSERT INTO `yetycave`.`lots` (`id`, `dt_add`, `category_id`, `user_id`, `title`, `description`, `image`, `cost`, `dt_end`, `step`) VALUES ('5', '2021-08-28 11:27:40', '4', '1', 'Куртка для сноуборда DC Mutiny Charocal', 'Эта куртка придаст скорость и поможет согреться.', 'img/lot-5.jpg', '7500', '2021-09-28 00:00:00', '500');
INSERT INTO `yetycave`.`lots` (`id`, `dt_add`, `category_id`, `user_id`, `title`, `description`, `image`, `cost`, `dt_end`, `step`) VALUES ('6', '2021-08-30 07:04:03', '6', '2', 'Маска Oakley Canopy', 'Великолепная маска, сделанная из качественных экологичных материалов', 'img/lot-6.jpg', '5400', '2021-09-30 00:00:00', '500');

INSERT INTO `yetycave`.`users` (`id`, `dt_add`, `email`, `name`, `password`, `contact`) VALUES ('1', '2021-08-26 07:16:07', 'stepankot@gmail.com', 'Степан', 'April22', '8-922-765-45-45');
INSERT INTO `yetycave`.`users` (`id`, `dt_add`, `email`, `name`, `password`, `contact`) VALUES ('2', '2021-08-27 07:39:18', 'govorucha@yandex.ru', 'Мария', 'M96govorucha', '8-913-876-54-32');
INSERT INTO `yetycave`.`users` (`id`, `dt_add`, `email`, `name`, `password`, `contact`) VALUES ('3', '2021-08-27 09:46:02', 'nelson@gmail.com', 'Константин', 'Konstantin96', '8-926-444-33-22');
INSERT INTO `yetycave`.`users` (`id`, `dt_add`, `email`, `name`, `password`, `contact`) VALUES ('4', '2021-08-28 09:52:11', 'begemot@gmail.com', 'Иван', 'ivan/Begemot', '8-930-987-55-44');

INSERT INTO `yetycave`.`rates` (`id`, `dt_add`, `cost_rate`, `user_id`, `lot_id`) VALUES ('1', '2021-08-28 10:09:29', '11999', '4', '1');
INSERT INTO `yetycave`.`rates` (`id`, `dt_add`, `cost_rate`, `user_id`, `lot_id`) VALUES ('2', '2021-08-28 10:13:21', '6900', '3', '6');

SELECT `name` FROM `categories`;

SELECT `title`, `image`, `cost`, `c`.`name`, `r`.`cost_rate` FROM `lots` `l` JOIN `categories` `c` ON `l`.`category_id` = `c`.`id` JOIN `rates` `r` ON `l`.`id` = `r`.`lot_id` ORDER BY `dt_add` DESC;

SELECT `l`.`id`, `dt_add`, `user_id`, `title`, `description`, `image`, `cost`, `dt_end`, `step`, `name` FROM `lots` `l` JOIN `categories` `c` ON `l`.`category_id` = `c`.`id` WHERE `l`.`id` = 6;

UPDATE `lots` SET `title` = 'DC Ply Mens 2016/2017 Snowboard' WHERE `id` = 1;

SELECT `r`.`dt_add`, `cost_rate` FROM `rates` `r` JOIN `lots` `l` ON `r`.`lot_id` = `l`.`id` WHERE `l`.`id` = 6 ORDER BY `r`.`dt_add` DESC;