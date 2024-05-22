CREATE TABLE `program` (
	`programId`	bigint primary key auto_increment	NOT NULL,
	`locationId`	bigint	NOT NULL,
	`categoryId`	bigint	NOT NULL,
	`programName`	varchar(100)	NOT NULL,
	`programInfo`	text	NOT NULL,
	`bookableDate`	datetime	NOT NULL,
	`imgUrl`	varchar(100)	NULL,
	`age`	int	NOT NULL,
	`runtime`	int	NOT NULL,
	`salerInfo`	text	NULL,
	`createdAt`	datetime	NOT NULL,
	`modifiedAt`	datetime	NULL
);

CREATE TABLE `reservation` (
	`reservationId`	bigint primary key auto_increment	NOT NULL,
	`userId`	bigint	NOT NULL,
	`seatId`	bigint	NOT NULL,
	`programId`	bigint	NOT NULL,
	`ticketNumber`	varchar(50)	NOT NULL,
	`createdAt`	datetime	NOT NULL,
	`payMethod`	varchar(200)	NOT NULL,
	`price`	int	NOT NULL,
	`pointPayment`	int	NOT NULL,
	`state`	boolean	NOT NULL	DEFAULT true,
	`requestLimit`	int	NOT NULL	DEFAULT 500,
    `refund`	int	NOT NULL	DEFAULT 0
);

CREATE TABLE `category` (
	`categoryId`	bigint primary key auto_increment	NOT NULL,
	`parentId`	bigint	NOT NULL,
	`categoryName`	varchar(50)	NOT NULL
);

CREATE TABLE `like` (
	`likeId`	bigint  primary key auto_increment	NOT NULL,
	`userId`	bigint	NOT NULL,
	`programId`	bigint	NOT NULL
);

CREATE TABLE `exchange` (
	`exchangeId`	bigint primary key auto_increment	NOT NULL,
	`reservationId1`	bigint	NOT NULL,
	`reservationId2`	bigint	NOT NULL,
	`isSuccesed`	boolean	NOT NULL	DEFAULT false,
	`createdAt`	datetime	NOT NULL,
	`progressState`	boolean	NULL	DEFAULT false
);

CREATE TABLE `review_performance` (
	`pfReviewId`	bigint primary key auto_increment	NOT NULL,
	`reservationId2`	bigint	NOT NULL,
	`content`	text	NOT NULL,
	`createdAt`	datetime	NOT NULL,
	`star`	int	NOT NULL
);

CREATE TABLE `chatroom` (
	`chatbotId`	bigint primary key auto_increment	NOT NULL,
	`adminId`	bigint	NOT NULL,
	`userId`	bigint	NOT NULL,
	`createdAt`	datetime	NOT NULL,
	`title`	varchar(200)	NULL
);

CREATE TABLE `location` (
	`locationId`	bigint primary key auto_increment	NOT NULL,
	`name`	varchar(20)	NOT NULL,
	`address_name`	varchar(200)	NULL,
	`region_1depth_name`	varchar(50)	NULL,
	`region_2depth_name`	varchar(50)	NULL,
	`region_3depth_name`	varchar(50)	NULL,
	`region_3depth_h_name`	varchar(100)	NULL,
	`x`	int	NULL,
	`y`	int	NULL,
	`seatImg`	varchar(100)	NULL,
	`photo`	varchar(100)	NULL
);

CREATE TABLE `rule` (
	`ruleId`	bigint primary key auto_increment	NOT NULL,
	`programId`	bigint	NOT NULL,
	`notice`	text	NOT NULL
);

CREATE TABLE `section` (
	`sectionId`	bigint	NOT NULL,
	`locationId`	bigint	NOT NULL,
	`section`	varchar(10)	NULL,
	`seatCount`	int	NULL
);

CREATE TABLE `grade` (
	`gradeId`	bigint  primary key auto_increment	NOT NULL,
	`programId`	bigint	NOT NULL,
	`grade`	varchar(10)	NOT NULL,
	`price`	int	NOT NULL
);

CREATE TABLE `chat` (
	`messageId`	bigint  primary key auto_increment	NOT NULL,
	`userId`	bigint	NOT NULL,
	`adminId`	bigint	NOT NULL,
	`chatbotId`	bigint	NOT NULL,
	`message`	text	NOT NULL,
	`createdAt`	datetime	NOT NULL
);

CREATE TABLE `times` (
	`timesId`	bigint  primary key auto_increment	NOT NULL,
	`programId`	bigint	NOT NULL,
	`date`	datetime	NOT NULL,
	`showtime`	datetime	NOT NULL,
	`round`	int	NULL
);

CREATE TABLE `seat` (
	`seatId`	bigint primary key auto_increment	NOT NULL,
	`timesId`	bigint	NOT NULL,
	`section`	varchar(10)	NULL,
	`seatStatus`	boolean	NOT NULL	DEFAULT false,
	`seatNumber`	int	NOT NULL
);

CREATE TABLE `point` (
	`pointId`	bigint primary key auto_increment	NOT NULL,
	`userId`	bigint	NOT NULL,
	`value`	int	NOT NULL,
	`createdAt`	datetime	NOT NULL,
	`getOrLose`	boolean	NOT NULL
);

CREATE TABLE `admin` (
	`adminId`	bigint primary key auto_increment	NOT NULL,
	`id`	varchar(20)	NOT NULL,
	`password`	varchar(200)	NOT NULL
);

CREATE TABLE `user` (
	`userId`	bigint primary key auto_increment	NOT NULL,
	`name`	varchar(20)	NOT NULL,
	`email`	varchar(30)	NOT NULL,
	`id`	varchar(20)	NOT NULL,
	`password`	varchar(200)	NOT NULL,
	`createdAt`	datetime	NOT NULL,
	`modifiedAt`	datetime	NULL,
	`loginType`	varchar(30)	NOT NULL,
	`status`	boolean	NOT NULL	DEFAULT true,
	`point`	int	NULL,
	`address_name`	varchar(200)	NULL,
	`region_1depth_name`	varchar(50)	NULL,
	`region_2depth_name`	varchar(50)	NULL,
	`region_3depth_name`	varchar(50)	NULL,
	`region_3depth_h_name`	varchar(50)	NULL
);

ALTER TABLE `program` ADD CONSTRAINT `FK_location_TO_program_1` FOREIGN KEY (
	`locationId`
)
REFERENCES `location` (
	`locationId`
);

ALTER TABLE `program` ADD CONSTRAINT `FK_category_TO_program_1` FOREIGN KEY (
	`categoryId`
)
REFERENCES `category` (
	`categoryId`
);

ALTER TABLE `reservation` ADD CONSTRAINT `FK_user_TO_reservation_1` FOREIGN KEY (
	`userId`
)
REFERENCES `user` (
	`userId`
);

ALTER TABLE `reservation` ADD CONSTRAINT `FK_seat_TO_reservation_1` FOREIGN KEY (
	`seatId`
)
REFERENCES `seat` (
	`seatId`
);

ALTER TABLE `reservation` ADD CONSTRAINT `FK_program_TO_reservation_1` FOREIGN KEY (
	`programId`
)
REFERENCES `program` (
	`programId`
);

ALTER TABLE `category` ADD CONSTRAINT `FK_category_TO_category_1` FOREIGN KEY (
	`parentId`
)
REFERENCES `category` (
	`categoryId`
);

ALTER TABLE `like` ADD CONSTRAINT `FK_user_TO_like_1` FOREIGN KEY (
	`userId`
)
REFERENCES `user` (
	`userId`
);

ALTER TABLE `like` ADD CONSTRAINT `FK_program_TO_like_1` FOREIGN KEY (
	`programId`
)
REFERENCES `program` (
	`programId`
);

ALTER TABLE `exchange` ADD CONSTRAINT `FK_reservation_TO_exchange_1` FOREIGN KEY (
	`reservationId1`
)
REFERENCES `reservation` (
	`reservationId`
);

ALTER TABLE `exchange` ADD CONSTRAINT `FK_reservation_TO_exchange_2` FOREIGN KEY (
	`reservationId2`
)
REFERENCES `reservation` (
	`reservationId`
);

ALTER TABLE `review_performance` ADD CONSTRAINT `FK_reservation_TO_review_performance_1` FOREIGN KEY (
	`reservationId2`
)
REFERENCES `reservation` (
	`reservationId`
);

ALTER TABLE `chatroom` ADD CONSTRAINT `FK_admin_TO_chatroom_1` FOREIGN KEY (
	`adminId`
)
REFERENCES `admin` (
	`adminId`
);

ALTER TABLE `chatroom` ADD CONSTRAINT `FK_user_TO_chatroom_1` FOREIGN KEY (
	`userId`
)
REFERENCES `user` (
	`userId`
);

ALTER TABLE `rule` ADD CONSTRAINT `FK_program_TO_rule_1` FOREIGN KEY (
	`programId`
)
REFERENCES `program` (
	`programId`
);

ALTER TABLE `section` ADD CONSTRAINT `FK_location_TO_section_1` FOREIGN KEY (
	`locationId`
)
REFERENCES `location` (
	`locationId`
);

ALTER TABLE `grade` ADD CONSTRAINT `FK_program_TO_grade_1` FOREIGN KEY (
	`programId`
)
REFERENCES `program` (
	`programId`
);

ALTER TABLE `chat` ADD CONSTRAINT `FK_user_TO_chat_1` FOREIGN KEY (
	`userId`
)
REFERENCES `user` (
	`userId`
);

ALTER TABLE `chat` ADD CONSTRAINT `FK_admin_TO_chat_1` FOREIGN KEY (
	`adminId`
)
REFERENCES `admin` (
	`adminId`
);

ALTER TABLE `chat` ADD CONSTRAINT `FK_chatroom_TO_chat_1` FOREIGN KEY (
	`chatbotId`
)
REFERENCES `chatroom` (
	`chatbotId`
);

ALTER TABLE `times` ADD CONSTRAINT `FK_program_TO_times_1` FOREIGN KEY (
	`programId`
)
REFERENCES `program` (
	`programId`
);

ALTER TABLE `seat` ADD CONSTRAINT `FK_times_TO_seat_1` FOREIGN KEY (
	`timesId`
)
REFERENCES `times` (
	`timesId`
);

ALTER TABLE `point` ADD CONSTRAINT `FK_user_TO_point_1` FOREIGN KEY (
	`userId`
)
REFERENCES `user` (
	`userId`
);

