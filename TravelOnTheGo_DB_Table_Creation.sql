/*A travel company TravelOnTheGo maintains the record of passengers and price to travel
between two cities, for bus types (Sitting and Sleeper).*/
# TravelOnTheGo Database Creation:

create database if not exists `TravelOnTheGo` ;
use `TravelOnTheGo`;

# PASSENGER Table Creation:

create table if not exists `Passenger`(
 Passenger_name varchar (20) , 
 Category varchar (10) , 
 Gender varchar (10) , 
 Boarding_City varchar (20) ,
 Destination_City varchar (20) , 
 Distance int , 
 Bus_Type varchar (10) 
 );

# PRICE Table Creation:

create table if not exists `Price`(
  Bus_Type varchar (10) ,
  Distance int , 
  Price int
  );