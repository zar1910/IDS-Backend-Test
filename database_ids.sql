CREATE DATABASE ids;

USE ids;

CREATE TABLE tb_status (
  id TINYINT(1) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tb_data (
  id INT NOT NULL,
  productID VARCHAR(255) NOT NULL,
  productName VARCHAR(255) NOT NULL,
  amount VARCHAR(255) NOT NULL,
  customerName VARCHAR(255) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  transactionDate DATETIME NOT NULL,
  createBy VARCHAR(255) NOT NULL,
  createOn DATETIME NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY fk_status(`status`) REFERENCES tb_status(id)
);

INSERT INTO tb_status (id, `name`)
  VALUES (0, 'SUCCESS'), (1, 'FAILURE');

INSERT INTO tb_data(id, productID, productName, amount, customerName, `status`, transactionDate, createBy, createOn)
  VALUES (1372, '10001', 'Test 1', '1000', 'abc', 0, '2022-07-10 11:14:52', 'abc', '2022-07-10 11:14:52'),
    (1373, '10002', 'Test 2', '2000', 'abc', 0, '2022-07-11 13:14:52', 'abc', '2022-07-10 13:14:52'),
    (1374, '10001', 'Test 1', '1000', 'abc', 0, '2022-08-10 12:14:52', 'abc', '2022-07-10 12:14:52'),
    (1375, '10002', 'Test 2', '1000', 'abc', 1, '2022-08-10 13:10:52', 'abc', '2022-07-10 13:10:52'),
    (1376, '10001', 'Test 1', '1000', 'abc', 0, '2022-08-10 13:11:52', 'abc', '2022-07-10 13:11:52'),
    (1377, '10002', 'Test 2', '2000', 'abc', 0, '2022-08-12 13:14:52', 'abc', '2022-07-10 13:14:52'),
    (1378, '10001', 'Test 1', '1000', 'abc', 0, '2022-08-12 14:11:52', 'abc', '2022-07-10 14:11:52'),
    (1379, '10002', 'Test 2', '1000', 'abc', 1, '2022-09-13 11:14:52', 'abc', '2022-07-10 11:14:52'),
    (1380, '10001', 'Test 1', '1000', 'abc', 0, '2022-09-13 13:14:52', 'abc', '2022-07-10 13:14:52'),
    (1381, '10002', 'Test 2', '2000', 'abc', 0, '2022-09-14 09:11:52', 'abc', '2022-07-10 09:11:52'),
    (1382, '10001', 'Test 1', '1000', 'abc', 0, '2022-09-14 10:14:52', 'abc', '2022-07-10 10:14:52'),
    (1383, '10002', 'Test 2', '1000', 'abc', 1, '2022-08-15 13:14:52', 'abc', '2022-07-10 13:14:52');