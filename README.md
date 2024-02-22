# Radio Network Database Schema

This repository contains SQL scripts to create and populate tables for managing a radio network's operations, including stations, hosts, shows, partnerships, awards, and online presence.

## Database Schema

### Stations Table
- `StationID`: INT (Primary Key)
- `StationName`: VARCHAR(255)
- `Location`: VARCHAR(255)
- `Frequency`: DECIMAL(5,2)
- `LaunchDate`: DATE

### Hosts Table
- `HostID`: INT (Primary Key)
- `HostName`: VARCHAR(255)
- `ShowCount`: INT
- `JoinDate`: DATE

### Shows Table
- `ShowID`: INT (Primary Key)
- `ShowName`: VARCHAR(255)
- `HostID`: INT (Foreign Key referencing Hosts table)
- `StationID`: INT (Foreign Key referencing Stations table)
- `LaunchDate`: DATE

### Partnerships Table
- `PartnershipID`: INT (Primary Key)
- `PartnerName`: VARCHAR(255)
- `PartnershipType`: VARCHAR(100)
- `StartDate`: DATE
- `EndDate`: DATE

### ShowPartnerships Table
- `ShowID`: INT (Foreign Key referencing Shows table)
- `PartnershipID`: INT (Foreign Key referencing Partnerships table)

### Awards Table
- `AwardID`: INT (Primary Key)
- `AwardName`: VARCHAR(255)
- `Year`: INT
- `ShowID`: INT (Foreign Key referencing Shows table)

### OnlinePresence Table
- `PresenceID`: INT (Primary Key)
- `PlatformName`: VARCHAR(255)
- `Link`: VARCHAR(255)
- `LaunchDate`: DATE

## Sample Data

Sample data has been inserted into the tables to facilitate analysis and testing of SQL queries.

## SQL Queries

SQL queries are provided within the SQL script for data retrieval and analysis.

## Questions 

1) Retrieve all stations in the "East" region?
2) List all shows hosted by "Vrajesh Hirjee"?
3) Count the number of awards each show has won?
4) Find shows that have partnerships with "Spotify"?
5) Retrieve hosts who joined before 2010?
6) List the shows and their launch dates in descending order of launch date?
7) Find the total count of shows for each host?
8) Show the online presence platforms with their links?
9) Retrieve the stations in the "South" region launched after 2010?
10) Rank hosts based on the number of shows they have hosted?

Feel free to explore the SQL scripts and data provided to understand the radio network's operations.

