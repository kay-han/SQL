CREATE TABLE planets
(
  pl_ID number,
  pl_name VARCHAR2(20),
  pl_diameter number,
  pl_class VARCHAR2(20),
  pl_mass number,
  pl_dist_fr_sun number,
  pl_num_moons number,
  pl_rings char(3)
);

CREATE TABLE planets2 (pl_ID number, picture BLOB);

DROP TABLE planets3;
CREATE TABLE planets3 (pl_ID number, essay CLOB);
CREATE TABLE planets4 (pl_ID number, music BLOB);

INSERT INTO planets Values (1, 'Mercury', 4879.4,'Terrestrial',0.364,36,0,'No');
INSERT INTO planets Values (2, 'Venus', 12103.6,'Terrestrial',5.37,67.2,0,'No');
INSERT INTO planets Values (3, 'Earth', 12742,'Terrestrial', 6.58, 93,1,'No');
INSERT INTO planets	Values (4, 'Mars', 6779,'Terrestrial',0.708, 141.6,2,'No');
INSERT INTO planets Values (5, 'Jupiter', 139822,'Jovian',2093,483.8,67, 'Yes');
INSERT INTO planets	Values (6, 'Saturn', 116464,'Jovian',627,890.8,62,'Yes');
INSERT INTO planets	Values (7, 'Uranus', 50724,'Jovian',95.7,1784.8,27,'Yes');
INSERT INTO planets	Values (8, 'Neptune',49244,'Jovian',113,2793.1,14,'Yes');
INSERT INTO planets Values (9, 'Pluto', 1400 , 'Terrestrial',0.0144,3647.2,5,'No');
INSERT INTO planets Values (10, 'PlanetX',99999 ,'Unknown',99999,9999 ,99,'No');
commit;

INSERT INTO planets2 values(1, EMPTY_BLOB());
INSERT INTO planets2 values(2, EMPTY_BLOB());
INSERT INTO planets2 values(3, EMPTY_BLOB());
INSERT INTO planets2 values(4, EMPTY_BLOB());
INSERT INTO planets2 values(5, EMPTY_BLOB());
INSERT INTO planets2 values(6, EMPTY_BLOB());
INSERT INTO planets2 values(7, EMPTY_BLOB());
INSERT INTO planets2 values(8, EMPTY_BLOB());
INSERT INTO planets2 values(9, EMPTY_BLOB());
INSERT INTO planets2 values(10, EMPTY_BLOB());
commit;

INSERT INTO planets3 values(1, EMPTY_CLOB());
INSERT INTO planets3 values(2, EMPTY_CLOB());
INSERT INTO planets3 values(3, EMPTY_CLOB());
INSERT INTO planets3 values(4, EMPTY_CLOB());
INSERT INTO planets3 values(5, EMPTY_CLOB());
INSERT INTO planets3 values(6, EMPTY_CLOB());
INSERT INTO planets3 values(7, EMPTY_CLOB());
INSERT INTO planets3 values(8, EMPTY_CLOB());
INSERT INTO planets3 values(9, EMPTY_CLOB());
INSERT INTO planets3 values(10,Empty_CLOB());
commit;

INSERT INTO planets4 values(1, EMPTY_BLOB());
INSERT INTO planets4 values(2, EMPTY_BLOB());
INSERT INTO planets4 values(3, EMPTY_BLOB());
INSERT INTO planets4 values(4, EMPTY_BLOB());
INSERT INTO planets4 values(5, EMPTY_BLOB());
INSERT INTO planets4 values(6, EMPTY_BLOB());
INSERT INTO planets4 values(7, EMPTY_BLOB());
INSERT INTO planets4 values(8, EMPTY_BLOB());
INSERT INTO planets4 values(9, EMPTY_BLOB());
INSERT INTO planets4 values(10,Empty_BLOB());
commit;

SELECT pl1.pl_ID, pl1.pl_name, pl2.picture, pl3.essay
FROM planets pl1, planets2 pl2, planets3 pl3
WHERE pl1.pl_ID = pl2.pl_ID and pl1.pl_ID = pl3.pl_ID;

SELECT pl1.pl_ID, pl1.pl_name, pl2.picture, pl3.essay
FROM planets pl1, planets2 pl2, planets4 pl4, planets3 pl3
WHERE pl1.pl_ID = pl2.pl_ID and pl1.pl_ID = pl4.pl_ID;

SELECT pl1.pl_ID, pl1.pl_name, pl2.picture, pl4.music
FROM planets pl1, planets2 pl2, planets4 pl4
WHERE pl1.pl_ID = pl2.pl_ID and pl1.pl_ID = pl4.pl_ID;

INSERT INTO planets Values (11, 'Sun', 864000,'Star',1989100000000000000000000000000,0,9,'Yes');
INSERT INTO planets Values (12, 'PlanetY',99999 ,'Unknown',99999,9999 ,99,'Yes');
INSERT INTO planets2 values(11, EMPTY_BLOB());
INSERT INTO planets3 values(11, EMPTY_CLOB());
INSERT INTO planets4 values(11, Empty_BLOB());
INSERT INTO planets2 values(12, EMPTY_BLOB());
INSERT INTO planets3 values(12, EMPTY_CLOB());
INSERT INTO planets4 values(12, Empty_BLOB());
commit;


SELECT pl1.pl_ID, pl1.pl_name, pl2.picture, pl4.music
FROM planets pl1
JOIN planets2 pl2 ON pl1.pl_ID = pl2.pl_ID
JOIN planets4 pl4 ON pl1.pl_ID = pl4.pl_ID;

