CREATE DATABASE CarDB
GO

USE [CarDB]

CREATE TABLE dbo.CarSections
(
	CarSectionID INT IDENTITY PRIMARY KEY,
	CarSectionName  VARCHAR(25) NOT NULL, 
	CarSectionImage VARCHAR(250) NOT Null
)


GO 
INSERT INTO dbo.CarSections (CarSectionName)
VALUES
('Engine','https://www.drivespark.com/img/2015/04/18-1429343839-engine.jpg')
,('Type','https://www.engineeringchoice.com/ezoimgfmt/i0.wp.com/www.engineeringchoice.com/wp-content/uploads/2021/09/Sadan.jpeg?w=600&ssl=1&ezimgfmt=ng:webp/ngcb150')
,('Interior Upholstry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcf7mAq1WmSc6Yd9gkMFQc_9J2jPk52Cz_MQ&usqp=CAU')

GO

CREATE TABLE dbo.CarSectionDetail
(
	CarSectionID INT NOT NULL,
	SectionDetailID INT IDENTITY PRIMARY KEY,
	SectionTitle VARCHAR(50) NOT NULL,
	SectionDescription VARCHAR(500) NOT NULL,
	SectionImageURL VARCHAR(250) 
	FOREIGN KEY (CarSectionID) REFERENCES dbo.CarSections(CarSectionID)
)

GO

INSERT INTO dbo.CarSectionDetail (CarSectionID, SectionTitle, SectionDescription, SectionImageURL)
VALUES
(1,'Gasoline','an internal-combustion engine having its piston driven by explosions of a mixture of air and vapor of gasoline or other volatile fuel ignited by an electric spark.','https://www.drivespark.com/img/2015/04/18-1429343839-engine.jpg')
,(1,'Diesel','an internal combustion engine in which air is compressed to a temperature sufficiently high to ignite fuel injected into the cylinder where the combustion and expansion actuate a piston','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa8QgB4ZJPS07-nywJQa_4rGiW9G-zmM83TAx7zRdIIRvVon8sga4bpLuJCVPe27WZ6tk&usqp=CAU')
,(1,'Electric','An electric car motor works using a physical process developed at the end of the 19th century. This consists of using a current to create a magnetic field at the fixed part of the machine (the “stator”) whose displacement sets a rotating part (the “rotor”) in motion.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqRJxymQiavsBbcdYFRCAnP4ZL4NBQY5ZDirw-4PWOWrBZK2iA6uxP7-_91VjYey2VVQk&usqp=CAU')
,(2,'Sedan','A sedan is a common example of a four-door passenger car. Most often, sedans have a 3-box design with separate areas for the engine, passenger, and cargo, which allows for stable driving thanks to better weight distribution.','https://www.engineeringchoice.com/ezoimgfmt/i0.wp.com/www.engineeringchoice.com/wp-content/uploads/2021/09/Sadan.jpeg?w=600&ssl=1&ezimgfmt=ng:webp/ngcb150')
,(2,'Coupe','A coupe is a type of car that is defined by simplicity. The term “coupe” evokes the image of a compact sedan: a two-door car with a trunk and a fixed roof. But the exciting appeal of the vehicle is its sloping roofline which gives it a more sleek, sporty look.','https://www.engineeringchoice.com/ezoimgfmt/i0.wp.com/www.engineeringchoice.com/wp-content/uploads/2021/09/coupe.jpg?w=750&ssl=1&ezimgfmt=ng:webp/ngcb150')
,(2,'SUV','A Sport Utility Vehicle (SUV) is defined by its off-road capabilities and roominess. These types of cars are built with a long journey in mind. It boasts a comfortable ride in rough, rugged cross-country terrain. It offers a relatively high seating position which allows a better view of the road.','https://www.engineeringchoice.com/ezoimgfmt/i0.wp.com/www.engineeringchoice.com/wp-content/uploads/2021/09/SUV.jpg?w=1024&ssl=1&ezimgfmt=ng:webp/ngcb150')
,(2,'Station Wagon','Most notably, station wagons, also called estate cars, have a shape of an elongated version of a sedan, offering extra cargo space. The easier way to think about it is it’s a combination of a sedan and a hatchback.','https://www.engineeringchoice.com/ezoimgfmt/i0.wp.com/www.engineeringchoice.com/wp-content/uploads/2021/09/STATION-WAGON.png?w=480&ssl=1&ezimgfmt=ng:webp/ngcb150')
,(3,'Nylon','Nylon usually appears as fabric and is one of the most common materials manufacturers use for car seat upholstery. It is a very durable fabric, but also very porous. Use a vacuum to pick up loose dirt and dust from your car seat.','https://www.detailxperts.net/wp-content/uploads/2015/01/5-Types-of-Car-Upholstery-and-How-to-Clean-Them-300x200.jpg')
,(3,'Polyester','Polyester is most commonly used as car upholstery in the form of microsuede. It is a soft fabric that mimics the texture of suede leather, which makes it very comfortable. This quality also makes microsuede polyester a bit more difficult to clean; not only is the material porous, but its texture also makes it prone to stains and dirt.','https://static.fibre2fashion.com/ArticleResources/Images/32/3100/upholstery-in-automobiles.jpg')
,(3,'Vinyl', 'Vinyl is another common car upholstery material. Unlike fabric upholstery, you can generally wipe vinyl clean with a clean damp towel, as it is non-porous and pretty much waterproof.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo3yD08yuRg2jOZHGEgtM79qJhF1Je-qKveQ&usqp=CAU')
,(3,'Faux Leather', 'Faux leather is a popular car upholstery choice for car owners who like the leather look and who are on a budget. Like vinyl, faux leather is waterproof and takes minimal effort to wipe clean.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKRz0GS6rKzpKAhSqJW85GJSpNpwdVfbgEbw&usqp=CAU')
,(3,'Leather', 'Leather can be made from the hides of many different animals, although cow hides are most commonly used. Different kinds of leather can be yielded from cow hide, and which one you choose should depend on the look you are going for from the leather upholstery.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcf7mAq1WmSc6Yd9gkMFQc_9J2jPk52Cz_MQ&usqp=CAU')