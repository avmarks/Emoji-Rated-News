INSERT INTO `user` VALUES (1,'Alex','Marks','alexmarks','tasty'),(2,'Morticia','Addams','maddams','immortal'),(3,'The','Thing','thething','something'),(17,'stest','stestsdfsdf','stest','stest');
INSERT INTO `role` VALUES (1,'admin','alexmarks',1),(2,'registered-user','maddams',2),(3,'registered-user','alexmarks',1),(4,'registered-user','thething',3),(18,'registered-user','stest',17);
INSERT INTO `recipe` VALUES (1,'chicken curry');
INSERT INTO `food` VALUES (1,'strawberry',33,1),(2,'onion',40,1),(3,'tomato',18,1),(4,'celery',16,1),(5,'pumpkin',20,1),(6,'cabbage',20,1),(7,'chicken breast cooked',165,1),(8,'pomelo',40,1),(9,'rice cooked',130,1),(10,'onion',45,2),(11,'cucumber',1,1),(12,'brains raw',250,2),(13,'potato boiled',100,1),(14,'bell pepper',26,1),(15,'sour cream',214,1);
INSERT INTO `ingredient` VALUES (1,100,2,1),(2,300,3,1);
INSERT INTO `calories` VALUES (1,'2018-05-02',1,120),(2,'2018-05-02',1,300),(3,'2018-05-02',1,400);