select cast(_latin1 0xA3 as char(1) character set utf8);
WHERE DATE_SUB(CURDATE(),INTERVAL 1 DAY) <= published_date;
