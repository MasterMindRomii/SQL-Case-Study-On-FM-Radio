-- 1) Retrieve all stations in the "East" region?
SELECT StationName FROM stations
WHERE Location='East';

-- 2) List all shows hosted by "Vrajesh Hirjee"?
SELECT ShowName FROM shows s
JOIN hosts h 
ON s.HostID=h.HostID
WHERE HostName='Vrajesh Hirjee';

-- 3) Count the number of awards each show has won?
SELECT ShowName,COUNT(*) AS 'Award_Wons'
FROM shows s
JOIN awards a 
ON s.ShowID=a.ShowID
GROUP BY ShowName;

-- 4) Find shows that have partnerships with "Spotify"?
SELECT ShowName FROM shows s
JOIN partnerships p
ON s.LaunchDate=p.StartDate
WHERE PartnerName='Spotify';

-- 5) Retrieve hosts who joined before 2010?
SELECT HostName FROM hosts
WHERE YEAR(JoinDate)<2010;

-- 6) List the shows and their launch dates in descending order of launch date?
SELECT ShowName,LaunchDate FROM shows
ORDER BY LaunchDate DESC;

-- 7) Find the total count of shows for each host?
SELECT HostName, COUNT(*) AS 'Count_of_Shows' 
FROM hosts
GROUP BY HostName;

-- 8) Show the online presence platforms with their links?
SELECT PlatformName,Link FROM onlinepresence;

-- 9) Retrieve the stations in the "South" region launched after 2010?
SELECT StationName FROM stations
WHERE Location='South' AND YEAR(LaunchDate)>2010;

-- 10) Rank hosts based on the number of shows they have hosted?
SELECT HostName,ShowCount,
ROW_NUMBER() OVER(ORDER BY ShowCount DESC) AS 'Rank' 
FROM hosts;




