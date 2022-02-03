SELECT CONCAT("if(AircraftTypeSeats::find()->where(['aircraft_type_id'=>",aircraft_type_id,
			",'name'=>'",IFNULL(name,'NULL') ,"'",
			"])->one() != null){",
			"$this->delete('aircraft_type_seats',['aircraft_type_id'=>",aircraft_type_id,
			",'name'=>'",IFNULL(name,'NULL'),"'",
			",'code'=>'",IFNULL(code,'NULL'),
			"']);}")
FROM aircraft_type_seats ats 
ORDER BY id;
SELECT CONCAT("if(AircraftTypeTanks::find()->where(['aircraft_type_id'=>",aircraft_type_id,
			",'aircraft_fuel_id'=>",IFNULL(aircraft_fuel_id,'NULL') ,
			",'name'=>'",IFNULL(name,'NULL') ,"'",
			"])->one() != null){",
			"$this->delete('aircraft_type_tanks',['aircraft_type_id'=>",aircraft_type_id,
			",'aircraft_fuel_id'=>'",IFNULL(aircraft_fuel_id,'NULL'),"'",
			",'name'=>'",IFNULL(name,'NULL'),"'",
			"]);}")
FROM aircraft_type_tanks att
ORDER BY id;

