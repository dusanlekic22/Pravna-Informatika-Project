(import-rdf "facts.rdf")
		(export-rdf export.rdf  illegal_fishing_lvl1 illegal_fishing_lvl2 to_pay_min to_pay_max max_imprisonment_months max_imprisonment_years)
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_ban_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "adequate_tool")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "no_harm")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		(declare (superior rule1 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_banned_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "adequate_tool")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "no_harm")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule3
		(declare (superior rule2 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "explosives")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "no_harm")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule4
		(declare (superior rule3 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "electrical_current")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "no_harm")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule5
		(declare (superior rule4 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "stun_agent")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "no_harm")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule6
		(declare (superior rule5 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "adequate_tool")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "harm_to_reproduction")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule7
		(declare (superior rule6 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "adequate_tool")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "mass_destruction")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule8
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule9
		(declare (superior rule7 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "adequate_tool")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "no_harm")
	)  
	(lc:case 
		(
		 lc:fish ?Fish)
	
		(
		 lc:have "greater_biological_worth")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:destroys_fish "no")
	) 
  => 
	 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule10
		(declare (superior rule9 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_during "hunting_regulated_period")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:catches_in "hunting_regulated_waters")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:uses "adequate_tool")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:causes "no_harm")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:fish_number ?fish_number)
	) 
		(test 
		(>  ?fish_number 5
		)
	)
	
  => 
	 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule11
		(declare (superior rule10 rule1 )) 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(illegal_fishing_confiscation 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule12
		 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(illegal_fishing_confiscation 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule pen1
		 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen2
		 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max 
		(
		 value 2000)
	) 
) 
	
(defeasiblerule pen3
		 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_months 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pen1
		 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min 
		(
		 value 500)
	) 
) 
	
(defeasiblerule pen2
		 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max 
		(
		 value 2000)
	) 
) 
	
(defeasiblerule pen3
		 
	(illegal_fishing_lvl1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_months 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pen4
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_years 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen4
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_years 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen4
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_years 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen4
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_years 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen4
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_years 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen4
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_years 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pen4
		 
	(illegal_fishing_lvl2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment_years 
		(
		 value 3)
	) 
) 
	