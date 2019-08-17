-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2019 at 03:24 PM
-- Server version: 5.7.26-0ubuntu0.18.10.1
-- PHP Version: 7.0.33-8+ubuntu18.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MyMovie`
--

-- --------------------------------------------------------

--
-- Table structure for table `MovieData`
--

CREATE TABLE `MovieData` (
  `ID` varchar(255) NOT NULL,
  `Title` text NOT NULL,
  `ReleaseDate` text NOT NULL,
  `Rating` text NOT NULL,
  `Overview` text NOT NULL,
  `ImagesPath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MovieData`
--

INSERT INTO `MovieData` (`ID`, `Title`, `ReleaseDate`, `Rating`, `Overview`, `ImagesPath`) VALUES
('102382', 'The Amazing Spider-Man 2', '2014-04-16', '6.4', 'For Peter Parker, life is busy. Between taking out the bad guys as Spider-Man and spending time with the person he loves, Gwen Stacy, high school graduation cannot come quickly enough. Peter has not forgotten about the promise he made to Gwenâ€™s father to protect her by staying away, but that is a promise he cannot keep. Things will change for Peter when a new villain, Electro, emerges, an old friend, Harry Osborn, returns, and Peter uncovers new clues about his past.', 'https://image.tmdb.org/t/p/w500/mUjWof8LHDgCZC9mFp0UYKBf1Dm.jpg'),
('166822', 'Big Ass Spider!', '2013-10-17', '5.5', 'When a giant alien spider escapes from a military lab and rampages across the city of Los Angeles, it is up to one clever exterminator and his security guard sidekick to kill the creature before the entire city is destroyed.', 'https://image.tmdb.org/t/p/w500/g4iOcEQMBfxHJsPg3cublh1Z0Su.jpg'),
('2043', 'Along Came a Spider', '2001-04-06', '6.3', 'When a teacher kidnaps a girl from a prestigious school, homicide detective, Alex Cross takes the case and teams up with young security agent, Jezzie Flannigan in hope of finding the girl and stopping the brutal psychopath.', 'https://image.tmdb.org/t/p/w500/1ZjDmPKMUtout8hR77qmK1llgls.jpg'),
('211387', 'Marvel One-Shot: Agent Carter', '2013-09-08', '7.6', 'The film takes place one year after the events of Captain America: The First Avenger, in which Agent Carter, a member of the Strategic Scientific Reserve, is in search of the mysterious Zodiac.', 'https://image.tmdb.org/t/p/w500/eiw4sh6ieAVuJq6E1bSHQkZPfwm.jpg'),
('24428', 'The Avengers', '2012-04-25', '7.6', 'When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!', 'https://image.tmdb.org/t/p/w500/cezWGskPY5x7GaglTTRN4Fugfb8.jpg'),
('252516', 'The Masked Marvel', '1943-11-06', '4', 'A team of two-fisted insurance investigators (one of whom disguises himself as The Masked Marvel)  endeavor to discover and thwart the loathsome saboteur Sakima.', 'https://image.tmdb.org/t/p/w500/xjFLhd9pQmUJYHVxnOpQ7bFMhVQ.jpg'),
('253617', 'LEGO Marvel Super Heroes: Maximum Overload', '2013-11-05', '6.5', 'Villainous Loki is amassing an army to conquer Earth! His antics are keeping Spider-Man and S.H.I.E.L.D. busy as they tackle a host of bad guys.', 'https://image.tmdb.org/t/p/w500/kZgXXEzgldKseNBezbXa03kXNzG.jpg'),
('253980', 'Marvel One-Shot: All Hail the King', '2014-02-04', '7', 'A documentary filmmaker interviews the now-famous Trevor Slattery from behind bars.', 'https://image.tmdb.org/t/p/w500/iVtM6mybR5kq3aE4opGnm9EIffF.jpg'),
('258670', 'Marvel Renaissance', '2014-02-28', '4', '', 'https://image.tmdb.org/t/p/w500/2kwR7ErqMg2ZJ9I4XREpKMPcfzf.jpg'),
('299537', 'Captain Marvel', '2019-03-06', '7', 'The story follows Carol Danvers as she becomes one of the universeâ€™s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races. Set in the 1990s, Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Universe.', 'https://image.tmdb.org/t/p/w500/AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg'),
('31013', 'Earth vs. the Spider', '2001-10-07', '4.5', 'A shy comic book fan is injected with an experimental serum and starts turning into a spider. When web covered bodies start appearing a policeman starts to investigate the strange case.', 'https://image.tmdb.org/t/p/w500/nROvHpH4DmKs8rdJGmRqPIkCBj0.jpg'),
('315635', 'Spider-Man: Homecoming', '2017-07-05', '7.4', 'Following the events of Captain America: Civil War, Peter Parker, with the help of his mentor Tony Stark, tries to balance his life as an ordinary high school student in Queens, New York City, with fighting crime as his superhero alter ego Spider-Man as a new threat, the Vulture, emerges.', 'https://image.tmdb.org/t/p/w500/kY2c7wKgOfQjvbqe7yVzLTYkxJO.jpg'),
('324857', 'Spider-Man: Into the Spider-Verse', '2018-12-06', '8.4', 'Miles Morales is juggling his life between being a high school student and being a spider-man. When Wilson \"Kingpin\" Fisk uses a super collider, others from across the Spider-Verse are transported to this dimension.', 'https://image.tmdb.org/t/p/w500/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg'),
('429617', 'Spider-Man: Far from Home', '2019-06-28', '7.6', 'Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to agree to help Nick Fury uncover the mystery of creatures that cause natural disasters and destruction throughout the continent.', 'https://image.tmdb.org/t/p/w500/2cAc4qH9Uh2NtSujJ90fIAMrw7T.jpg'),
('474227', 'Inhumans: The First Chapter', '2017-09-01', '5', 'After the Royal Family of Inhumans is splintered by a military coup, they barely escape to Hawaii where their surprising interactions with the lush world and humanity around them may prove to not only save them, but Earth itself.', 'https://image.tmdb.org/t/p/w500/p1f444t4JGF0t8HnRJAcS8xndxF.jpg'),
('508941', 'Untitled Marvel Project (1)', '2022-02-18', '0', 'Plot unknown.', 'https://image.tmdb.org/t/p/w500'),
('557', 'Spider-Man', '2002-05-01', '7.1', 'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers.', 'https://image.tmdb.org/t/p/w500/rZd0y1X1Gw4t5B3f01Qzj8DYY66.jpg'),
('559', 'Spider-Man 3', '2007-05-01', '6.1', 'The seemingly invincible Spider-Man goes up against an all-new crop of villainsâ€”including the shape-shifting Sandman. While Spider-Manâ€™s superpowers are altered by an alien organism, his alter ego, Peter Parker, deals with nemesis Eddie Brock and also gets caught up in a love triangle.', 'https://image.tmdb.org/t/p/w500/2N9lhZg6VtVJoGCZDjXVC3a81Ea.jpg'),
('609681', 'Captain Marvel 2', '', '0', 'Upcoming sequel to Captain Marvel (2019).', 'https://image.tmdb.org/t/p/w500/3BINA6kL4YvsTV66uBLqn64Glb1.jpg'),
('61020', 'Adventures of Captain Marvel', '1941-03-28', '6.8', 'On a scientific expedition to Siam young Billy Batson is given the ability to change himself into the super-powered Captain Marvel by the wizard Shazam, who tells him his powers will last only as long as the Golden Scorpion idol is threatened. Finding the idol, the scientists realize it could be the most powerful weapon in the world and remove the lenses that energize it, distributing them among themselves so that no one would be able to use the idol by himself. Back in the US, Billy Batson, as Captain Marvel, wages a battle against an evil, hooded figure, the Scorpion, who hopes to accumulate all five lenses, thereby gaining control of the super-powerful weapon', 'https://image.tmdb.org/t/p/w500/8lw00AKUPzDfQ78MzZQLCMcaVAb.jpg'),
('9613', 'Spider', '2002-12-13', '6.6', 'A mentally disturbed man takes residence in a halfway house. His mind gradually slips back into the realm created by his illness, where he replays a key part of his childhood.', 'https://image.tmdb.org/t/p/w500/8H4vgZbD2SZGV8ddOmgmt603lyR.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MovieData`
--
ALTER TABLE `MovieData`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
