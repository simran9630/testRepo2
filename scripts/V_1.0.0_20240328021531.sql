CREATE TABLE `student` (
  `stdId` int NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `height` int DEFAULT NULL,
  PRIMARY KEY (`stdId`),
  UNIQUE KEY `for_student` (`firstName`),
  UNIQUE KEY `for_std` (`firstName`),
  UNIQUE KEY `for_stdE` (`firstName`),
  KEY `idx_lastname` (`lastName`,`firstName`),
  KEY `idx_name` (`firstName`),
  CONSTRAINT `student_chk_1` CHECK ((`height` > 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
