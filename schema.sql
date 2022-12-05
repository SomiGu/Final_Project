                                   
CREATE TABLE IF NOT EXISTS hourly_weather(                                  
   DATE timestamp PRIMARY KEY,                                
   HourlyWindSpeed FLOAT,                                     
   HourlyPrecipitation FLOAT                                  
);                                                            
                                    
CREATE TABLE IF NOT EXISTS daily_weather(                                   
   DATE timestamp PRIMARY KEY,                                
   DailyWindSpeed FLOAT,                                      
   DailyPrecipitation FLOAT                                   
);                                                            
       
CREATE TABLE IF NOT EXISTS taxis_trips(     
   pickup_datetime timestamp, 
   tip_amount FLOAT,          
   pickup_longitude DOUBLE,   
   pickup_latitude DOUBLE,    
   dropoff_longitude DOUBLE,  
   dropoff_latitude DOUBLE,   
   distance DOUBLE            
);                            
       
CREATE TABLE IF NOT EXISTS uber_trips(      
   pickup_datetime timestamp, 
   pickup_longitude DOUBLE,   
   pickup_latitude DOUBLE,    
   dropoff_longitude DOUBLE,  
   dropoff_latitude DOUBLE,   
   distance DOUBLE            
);                            
