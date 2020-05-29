# SQL และคำสั่งพื้นฐานในการจัดการกับ Database #

## Database ##

### Comment Code ###
```
-- สำหรับ comment ทั้งบรรทัด

/* comment code แบบ ระบุจุดเริ่มและสิ้นสุด */
```

### สร้าง DATABASE ###

```
CREATE DATABASE databasename;
```
### ลบ DATABASE ###

```
DROP DATABASE databasename;
```
### เลือก DATABASE เพื่อนำมาใช้งาน ###
```
USE databasename;
```
## TABLE ##

### สร้าง TABLE ###
```
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
    ...
);
```
### ลบ TABLE ###
```
DROP TABLE table_name;
```

### แก้ไข TABLE ###
```
ALTER TABLE table_name;
```

** การแก้ไข Table โดยจะต้องระบุ statement ด้วยว่าเราต้องการให้ทำอย่างไรบ้าง โดย statement จะมีดังนี้ **

```
    ADD column_name datatype; -- เพิ่ม column เข้าไปใน table
```

```
    DROP COLUMN column_name; -- ลบ column ออกจาก table
```

```
    MODIFY COLUMN column_name datatype; -- แก้ไข column ใน table
```

### เรียกดู TABLE ทั้งหมดใน DATABASE ###
```
SHOW TABLES;
```

## การกำหนดเงื่อนไข ในแต่ละ column ##

> **NOT NULL** กำหนดให้ค่าใน column ห้ามเป็น null

> **UNIQUE** กำหนดให้ค่าใน column ห้ามซ้ำกัน

> **PRIMARY KEY** กำหนดให้ค่าใน column เป็น คีย์หลักของข้อมูล

> **FOREIGN KEY** กำหนดให้ค่าใน column เป็น คีย์สำหรับเชื่อมความสัมพันธ์กับ table อื่น

> **CHECK** กำหนดเงื่อนให้กับค่าที่อยู่ใน column ต้องเป็นค่าที่อยู่ในรูปแบบที่กำหนดเท่านั้นถึงจะสามารถใส่ค่าเข้าไปใน column ได้

> **DEFAULT** กำหนดค่าเริ่มต้นให้กับ column ในกรณีที่ ไม่ได้ใส่ข้อมูลเข้ามาใน column นี้ จะทำการนำค่า DEFAULT ที่กำหนด ไปใส่แทน

> **INDEX** กำหนดให้ค่าใน column เป็นดัชนี เพื่อให้สามารถเข้าถึงข้อมูลได้เร็วขึ้น

> **AUTO_INCREMENT** กำหนดให้ค่าใน column เพิ่มขึ้นทีละ 1 ทุกครั้งที่มีการเพิ่มข้อมูล

***การกำหนดเงื่อนไขของ column เราจะกำหนดตั้งแต่เริ่ม CREATE TABLE หรือ อาจจะใช้คำสั่ง ALTER TABLE ในการแก้ไข column ก็ได้*
```
CREATE TABLE users(
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT
);
```

```
ALTER TABLE users
ADD username VARCHAR(50) UNIQUE NOT NULL;
```