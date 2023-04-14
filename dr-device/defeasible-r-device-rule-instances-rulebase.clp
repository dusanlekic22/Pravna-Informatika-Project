([rule1] of defeasible-rule
   (rule-name rule1)
   (original-rule "rule1 ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl1 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl1)
   (negated no)
   (superior)
   (deductive-rule rule1-deductive)
   (overruled-rule rule1-overruled)
   (system no)
   (support-rule rule1-support)
   (defeasibly-rule rule1-defeasibly)
   (defeated-rule nil))

([rule2] of defeasible-rule
   (rule-name rule2)
   (original-rule "rule2 ( declare ( superior rule1 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl1 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl1)
   (negated no)
   (superior rule1)
   (deductive-rule rule2-deductive)
   (overruled-rule rule2-overruled)
   (system no)
   (support-rule rule2-support)
   (defeasibly-rule rule2-defeasibly)
   (defeated-rule rule2-defeated))

([rule3] of defeasible-rule
   (rule-name rule3)
   (original-rule "rule3 ( declare ( superior rule2 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl2)
   (negated no)
   (superior rule2)
   (deductive-rule rule3-deductive)
   (overruled-rule rule3-overruled)
   (system no)
   (support-rule rule3-support)
   (defeasibly-rule rule3-defeasibly)
   (defeated-rule rule3-defeated))

([rule4] of defeasible-rule
   (rule-name rule4)
   (original-rule "rule4 ( declare ( superior rule3 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl2)
   (negated no)
   (superior rule3)
   (deductive-rule rule4-deductive)
   (overruled-rule rule4-overruled)
   (system no)
   (support-rule rule4-support)
   (defeasibly-rule rule4-defeasibly)
   (defeated-rule rule4-defeated))

([rule5] of defeasible-rule
   (rule-name rule5)
   (original-rule "rule5 ( declare ( superior rule4 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl2)
   (negated no)
   (superior rule4)
   (deductive-rule rule5-deductive)
   (overruled-rule rule5-overruled)
   (system no)
   (support-rule rule5-support)
   (defeasibly-rule rule5-defeasibly)
   (defeated-rule rule5-defeated))

([rule6] of defeasible-rule
   (rule-name rule6)
   (original-rule "rule6 ( declare ( superior rule5 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl2)
   (negated no)
   (superior rule5)
   (deductive-rule rule6-deductive)
   (overruled-rule rule6-overruled)
   (system no)
   (support-rule rule6-support)
   (defeasibly-rule rule6-defeasibly)
   (defeated-rule rule6-defeated))

([rule7] of defeasible-rule
   (rule-name rule7)
   (original-rule "rule7 ( declare ( superior rule6 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl2)
   (negated no)
   (superior rule6)
   (deductive-rule rule7-deductive)
   (overruled-rule rule7-overruled)
   (system no)
   (support-rule rule7-support)
   (defeasibly-rule rule7-defeasibly)
   (defeated-rule rule7-defeated))

([rule8] of defeasible-rule
   (rule-name rule8)
   (original-rule "rule8 ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) => ( not ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl1)
   (negated yes)
   (superior)
   (deductive-rule rule8-deductive)
   (overruled-rule rule8-overruled)
   (system no)
   (support-rule rule8-support)
   (defeasibly-rule rule8-defeasibly)
   (defeated-rule nil))

([rule9] of defeasible-rule
   (rule-name rule9)
   (original-rule "rule9 ( declare ( superior rule7 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl2)
   (negated no)
   (superior rule7)
   (deductive-rule rule9-deductive)
   (overruled-rule rule9-overruled)
   (system no)
   (support-rule rule9-support)
   (defeasibly-rule rule9-defeasibly)
   (defeated-rule rule9-defeated))

([rule10] of defeasible-rule
   (rule-name rule10)
   (original-rule "rule10 ( declare ( superior rule9 ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ) ( test ( > ?fish_number 5 ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_lvl2)
   (negated no)
   (superior rule9)
   (deductive-rule rule10-deductive)
   (overruled-rule rule10-overruled)
   (system no)
   (support-rule rule10-support)
   (defeasibly-rule rule10-defeasibly)
   (defeated-rule rule10-defeated))

([rule11] of defeasible-rule
   (rule-name rule11)
   (original-rule "rule11 ( declare ( superior rule10 rule1 ) ) ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) => ( not ( illegal_fishing_confiscation ( defendant ?Defendant ) ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_confiscation)
   (negated yes)
   (superior rule10 rule1)
   (deductive-rule rule11-deductive)
   (overruled-rule rule11-overruled)
   (system no)
   (support-rule rule11-support)
   (defeasibly-rule rule11-defeasibly)
   (defeated-rule rule11-defeated))

([rule12] of defeasible-rule
   (rule-name rule12)
   (original-rule "rule12 ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) => ( not ( illegal_fishing_confiscation ( defendant ?Defendant ) ) )")
   (condition-classes)
   (conclusion-class illegal_fishing_confiscation)
   (negated yes)
   (superior)
   (deductive-rule rule12-deductive)
   (overruled-rule rule12-overruled)
   (system no)
   (support-rule rule12-support)
   (defeasibly-rule rule12-defeasibly)
   (defeated-rule nil))

([pen1] of defeasible-rule
   (rule-name pen1)
   (original-rule "pen1 ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) => ( to_pay_min ( value 500 ) )")
   (condition-classes)
   (conclusion-class to_pay_min)
   (negated no)
   (superior)
   (deductive-rule pen1-deductive)
   (overruled-rule pen1-overruled)
   (system no)
   (support-rule pen1-support)
   (defeasibly-rule pen1-defeasibly)
   (defeated-rule nil))

([pen2] of defeasible-rule
   (rule-name pen2)
   (original-rule "pen2 ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) => ( to_pay_max ( value 2000 ) )")
   (condition-classes)
   (conclusion-class to_pay_max)
   (negated no)
   (superior)
   (deductive-rule pen2-deductive)
   (overruled-rule pen2-overruled)
   (system no)
   (support-rule pen2-support)
   (defeasibly-rule pen2-defeasibly)
   (defeated-rule nil))

([pen3] of defeasible-rule
   (rule-name pen3)
   (original-rule "pen3 ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) => ( max_imprisonment ( value 6 ) )")
   (condition-classes)
   (conclusion-class max_imprisonment)
   (negated no)
   (superior)
   (deductive-rule pen3-deductive)
   (overruled-rule pen3-overruled)
   (system no)
   (support-rule pen3-support)
   (defeasibly-rule pen3-defeasibly)
   (defeated-rule nil))

([pen4] of defeasible-rule
   (rule-name pen4)
   (original-rule "pen4 ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) => ( max_imprisonment ( value 3 ) )")
   (condition-classes)
   (conclusion-class max_imprisonment)
   (negated no)
   (superior)
   (deductive-rule pen4-deductive)
   (overruled-rule pen4-overruled)
   (system no)
   (support-rule pen4-support)
   (defeasibly-rule pen4-defeasibly)
   (defeated-rule nil))

