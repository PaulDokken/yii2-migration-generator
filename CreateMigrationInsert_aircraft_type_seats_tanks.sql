SELECT CONCAT("if(AircraftTypeSeats::find()->where(['aircraft_type_id'=>",aircraft_type_id,
			",'name'=>'",IFNULL(name,'NULL') ,"'",
			"])->one() == null){",
			"$this->insert('aircraft_type_seats',['aircraft_type_id'=>",aircraft_type_id,
			",'name'=>'",IFNULL(name,'NULL'),"'",
			",'code'=>'",IFNULL(code,'NULL'),"'",
			",'weight'=>",IFNULL(weight,'NULL'),
			",'weight_units_id'=>",IFNULL(weight_units_id,'NULL'),
			",'position_fixed'=>",IFNULL(position_fixed,'NULL'),
			",'position_fixed_col'=>",IFNULL(position_fixed_col,'NULL'),
			",'position_fixed_row'=>",IFNULL(position_fixed_row,'NULL'),
			",'bench_seat'=>",IFNULL(bench_seat,'NULL'),
			",'bench_seat_count'=>",IFNULL(bench_seat_count,'NULL'),
			",'grid_size_cols'=>",IFNULL(grid_size_cols,'NULL'),
			",'grid_size_rows'=>",IFNULL(grid_size_rows,'NULL'),
			",'grid_margin_top'=>",IFNULL(grid_margin_top,'NULL'),
			",'grid_margin_right'=>",IFNULL(grid_margin_right,'NULL'),
			",'grid_margin_bottom'=>",IFNULL(grid_margin_bottom,'NULL'),
			",'grid_margin_left'=>",IFNULL(grid_margin_left,'NULL'),
			",'grid_empty_top'=>",IFNULL(grid_empty_top,'NULL'),
			",'grid_empty_right'=>",IFNULL(grid_empty_right,'NULL'),
			",'grid_empty_bottom'=>",IFNULL(grid_empty_bottom,'NULL'),
			",'grid_empty_left'=>",IFNULL(grid_empty_left,'NULL'),
			",'html_available'=>'",IFNULL(html_available,'NULL'),"']);}")
FROM aircraft_type_seats ats 
ORDER BY id;
SELECT CONCAT("if(AircraftTypeTanks::find()->where(['aircraft_type_id'=>",aircraft_type_id,
			",'aircraft_fuel_id'=>",IFNULL(aircraft_fuel_id,'NULL') ,
			",'name'=>'",IFNULL(name,'NULL') ,"'",
			"])->one() == null){",
			"$this->insert('aircraft_type_tanks',['aircraft_type_id'=>",aircraft_type_id,
			",'aircraft_fuel_id'=>'",IFNULL(aircraft_fuel_id,'NULL'),"'",
			",'name'=>'",IFNULL(name,'NULL'),"'",
			",'position'=>",IFNULL(position,'NULL'),
			",'single'=>",IFNULL(single,'NULL'),
			",'capacity'=>",IFNULL(capacity,'NULL'),
			",'capacity_units_id'=>",IFNULL(capacity_units_id,'NULL'),
			",'external'=>",IFNULL(external,'NULL'),
			",'external_weight'=>",IFNULL(external_weight,'NULL'),
			",'external_weight_units_id'=>",IFNULL(external_weight_units_id,'NULL'),
			"]);}")
FROM aircraft_type_tanks att
ORDER BY id

