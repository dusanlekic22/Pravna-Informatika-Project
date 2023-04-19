([pen4-defeasibly-dot] of derived-attribute-rule
   (pos-name pen4-defeasibly-dot-gen428)
   (depends-on declare max_imprisonment_years illegal_fishing_lvl2 max_imprisonment_years)
   (implies max_imprisonment_years)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen4] ) ) ) ?gen290 <- ( max_imprisonment_years ( value 3 ) ( positive 1 ) ( positive-derivator pen4 $? ) ) ( test ( eq ( class ?gen290 ) max_imprisonment_years ) ) ( not ( and ?gen297 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen296 & : ( >= ?gen296 1 ) ) ) ?gen290 <- ( max_imprisonment_years ( negative ~ 2 ) ( positive-overruled $?gen292 & : ( not ( member$ pen4 $?gen292 ) ) ) ) ) ) => ?gen290 <- ( max_imprisonment_years ( positive 0 ) )"))

([pen4-defeasibly] of derived-attribute-rule
   (pos-name pen4-defeasibly-gen430)
   (depends-on declare illegal_fishing_lvl2 max_imprisonment_years)
   (implies max_imprisonment_years)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen4] ) ) ) ?gen297 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen296 & : ( >= ?gen296 1 ) ) ) ?gen290 <- ( max_imprisonment_years ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen292 & : ( not ( member$ pen4 $?gen292 ) ) ) ) ( test ( eq ( class ?gen290 ) max_imprisonment_years ) ) => ?gen290 <- ( max_imprisonment_years ( positive 1 ) ( positive-derivator pen4 ?gen297 ) )"))

([pen4-overruled-dot] of derived-attribute-rule
   (pos-name pen4-overruled-dot-gen432)
   (depends-on declare max_imprisonment_years illegal_fishing_lvl2 max_imprisonment_years)
   (implies max_imprisonment_years)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen4] ) ) ) ?gen290 <- ( max_imprisonment_years ( value 3 ) ( negative-support $?gen293 ) ( negative-overruled $?gen294 & : ( subseq-pos ( create$ pen4-overruled $?gen293 $$$ $?gen294 ) ) ) ) ( test ( eq ( class ?gen290 ) max_imprisonment_years ) ) ( not ( and ?gen297 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen296 & : ( >= ?gen296 1 ) ) ) ?gen290 <- ( max_imprisonment_years ( positive-defeated $?gen292 & : ( not ( member$ pen4 $?gen292 ) ) ) ) ) ) => ( calc ( bind $?gen295 ( delete-member$ $?gen294 ( create$ pen4-overruled $?gen293 ) ) ) ) ?gen290 <- ( max_imprisonment_years ( negative-overruled $?gen295 ) )"))

([pen4-overruled] of derived-attribute-rule
   (pos-name pen4-overruled-gen434)
   (depends-on declare illegal_fishing_lvl2 max_imprisonment_years)
   (implies max_imprisonment_years)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen4] ) ) ) ?gen297 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen296 & : ( >= ?gen296 1 ) ) ) ?gen290 <- ( max_imprisonment_years ( value 3 ) ( negative-support $?gen293 ) ( negative-overruled $?gen294 & : ( not ( subseq-pos ( create$ pen4-overruled $?gen293 $$$ $?gen294 ) ) ) ) ( positive-defeated $?gen292 & : ( not ( member$ pen4 $?gen292 ) ) ) ) ( test ( eq ( class ?gen290 ) max_imprisonment_years ) ) => ( calc ( bind $?gen295 ( create$ pen4-overruled $?gen293 $?gen294 ) ) ) ?gen290 <- ( max_imprisonment_years ( negative-overruled $?gen295 ) )"))

([pen4-support] of derived-attribute-rule
   (pos-name pen4-support-gen436)
   (depends-on declare illegal_fishing_lvl2 max_imprisonment_years)
   (implies max_imprisonment_years)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen4] ) ) ) ?gen289 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ?gen290 <- ( max_imprisonment_years ( value 3 ) ( positive-support $?gen292 & : ( not ( subseq-pos ( create$ pen4 ?gen289 $$$ $?gen292 ) ) ) ) ) ( test ( eq ( class ?gen290 ) max_imprisonment_years ) ) => ( calc ( bind $?gen295 ( create$ pen4 ?gen289 $?gen292 ) ) ) ?gen290 <- ( max_imprisonment_years ( positive-support $?gen295 ) )"))

([pen3-defeasibly-dot] of derived-attribute-rule
   (pos-name pen3-defeasibly-dot-gen468)
   (depends-on declare max_imprisonment_months illegal_fishing_lvl1 max_imprisonment_months)
   (implies max_imprisonment_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen3] ) ) ) ?gen254 <- ( max_imprisonment_months ( value 6 ) ( positive 1 ) ( positive-derivator pen3 $? ) ) ( test ( eq ( class ?gen254 ) max_imprisonment_months ) ) ( not ( and ?gen261 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen254 <- ( max_imprisonment_months ( negative ~ 2 ) ( positive-overruled $?gen256 & : ( not ( member$ pen3 $?gen256 ) ) ) ) ) ) => ?gen254 <- ( max_imprisonment_months ( positive 0 ) )"))

([pen3-defeasibly] of derived-attribute-rule
   (pos-name pen3-defeasibly-gen470)
   (depends-on declare illegal_fishing_lvl1 max_imprisonment_months)
   (implies max_imprisonment_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen3] ) ) ) ?gen261 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen254 <- ( max_imprisonment_months ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen256 & : ( not ( member$ pen3 $?gen256 ) ) ) ) ( test ( eq ( class ?gen254 ) max_imprisonment_months ) ) => ?gen254 <- ( max_imprisonment_months ( positive 1 ) ( positive-derivator pen3 ?gen261 ) )"))

([pen3-overruled-dot] of derived-attribute-rule
   (pos-name pen3-overruled-dot-gen472)
   (depends-on declare max_imprisonment_months illegal_fishing_lvl1 max_imprisonment_months)
   (implies max_imprisonment_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen3] ) ) ) ?gen254 <- ( max_imprisonment_months ( value 6 ) ( negative-support $?gen257 ) ( negative-overruled $?gen258 & : ( subseq-pos ( create$ pen3-overruled $?gen257 $$$ $?gen258 ) ) ) ) ( test ( eq ( class ?gen254 ) max_imprisonment_months ) ) ( not ( and ?gen261 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen254 <- ( max_imprisonment_months ( positive-defeated $?gen256 & : ( not ( member$ pen3 $?gen256 ) ) ) ) ) ) => ( calc ( bind $?gen259 ( delete-member$ $?gen258 ( create$ pen3-overruled $?gen257 ) ) ) ) ?gen254 <- ( max_imprisonment_months ( negative-overruled $?gen259 ) )"))

([pen3-overruled] of derived-attribute-rule
   (pos-name pen3-overruled-gen474)
   (depends-on declare illegal_fishing_lvl1 max_imprisonment_months)
   (implies max_imprisonment_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen3] ) ) ) ?gen261 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen254 <- ( max_imprisonment_months ( value 6 ) ( negative-support $?gen257 ) ( negative-overruled $?gen258 & : ( not ( subseq-pos ( create$ pen3-overruled $?gen257 $$$ $?gen258 ) ) ) ) ( positive-defeated $?gen256 & : ( not ( member$ pen3 $?gen256 ) ) ) ) ( test ( eq ( class ?gen254 ) max_imprisonment_months ) ) => ( calc ( bind $?gen259 ( create$ pen3-overruled $?gen257 $?gen258 ) ) ) ?gen254 <- ( max_imprisonment_months ( negative-overruled $?gen259 ) )"))

([pen3-support] of derived-attribute-rule
   (pos-name pen3-support-gen476)
   (depends-on declare illegal_fishing_lvl1 max_imprisonment_months)
   (implies max_imprisonment_months)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen3] ) ) ) ?gen253 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ?gen254 <- ( max_imprisonment_months ( value 6 ) ( positive-support $?gen256 & : ( not ( subseq-pos ( create$ pen3 ?gen253 $$$ $?gen256 ) ) ) ) ) ( test ( eq ( class ?gen254 ) max_imprisonment_months ) ) => ( calc ( bind $?gen259 ( create$ pen3 ?gen253 $?gen256 ) ) ) ?gen254 <- ( max_imprisonment_months ( positive-support $?gen259 ) )"))

([pen2-defeasibly-dot] of derived-attribute-rule
   (pos-name pen2-defeasibly-dot-gen478)
   (depends-on declare to_pay_max illegal_fishing_lvl1 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen2] ) ) ) ?gen245 <- ( to_pay_max ( value 2000 ) ( positive 1 ) ( positive-derivator pen2 $? ) ) ( test ( eq ( class ?gen245 ) to_pay_max ) ) ( not ( and ?gen252 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( to_pay_max ( negative ~ 2 ) ( positive-overruled $?gen247 & : ( not ( member$ pen2 $?gen247 ) ) ) ) ) ) => ?gen245 <- ( to_pay_max ( positive 0 ) )"))

([pen2-defeasibly] of derived-attribute-rule
   (pos-name pen2-defeasibly-gen480)
   (depends-on declare illegal_fishing_lvl1 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen2] ) ) ) ?gen252 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( to_pay_max ( value 2000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen247 & : ( not ( member$ pen2 $?gen247 ) ) ) ) ( test ( eq ( class ?gen245 ) to_pay_max ) ) => ?gen245 <- ( to_pay_max ( positive 1 ) ( positive-derivator pen2 ?gen252 ) )"))

([pen2-overruled-dot] of derived-attribute-rule
   (pos-name pen2-overruled-dot-gen482)
   (depends-on declare to_pay_max illegal_fishing_lvl1 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen2] ) ) ) ?gen245 <- ( to_pay_max ( value 2000 ) ( negative-support $?gen248 ) ( negative-overruled $?gen249 & : ( subseq-pos ( create$ pen2-overruled $?gen248 $$$ $?gen249 ) ) ) ) ( test ( eq ( class ?gen245 ) to_pay_max ) ) ( not ( and ?gen252 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( to_pay_max ( positive-defeated $?gen247 & : ( not ( member$ pen2 $?gen247 ) ) ) ) ) ) => ( calc ( bind $?gen250 ( delete-member$ $?gen249 ( create$ pen2-overruled $?gen248 ) ) ) ) ?gen245 <- ( to_pay_max ( negative-overruled $?gen250 ) )"))

([pen2-overruled] of derived-attribute-rule
   (pos-name pen2-overruled-gen484)
   (depends-on declare illegal_fishing_lvl1 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen2] ) ) ) ?gen252 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( to_pay_max ( value 2000 ) ( negative-support $?gen248 ) ( negative-overruled $?gen249 & : ( not ( subseq-pos ( create$ pen2-overruled $?gen248 $$$ $?gen249 ) ) ) ) ( positive-defeated $?gen247 & : ( not ( member$ pen2 $?gen247 ) ) ) ) ( test ( eq ( class ?gen245 ) to_pay_max ) ) => ( calc ( bind $?gen250 ( create$ pen2-overruled $?gen248 $?gen249 ) ) ) ?gen245 <- ( to_pay_max ( negative-overruled $?gen250 ) )"))

([pen2-support] of derived-attribute-rule
   (pos-name pen2-support-gen486)
   (depends-on declare illegal_fishing_lvl1 to_pay_max)
   (implies to_pay_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen2] ) ) ) ?gen244 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ?gen245 <- ( to_pay_max ( value 2000 ) ( positive-support $?gen247 & : ( not ( subseq-pos ( create$ pen2 ?gen244 $$$ $?gen247 ) ) ) ) ) ( test ( eq ( class ?gen245 ) to_pay_max ) ) => ( calc ( bind $?gen250 ( create$ pen2 ?gen244 $?gen247 ) ) ) ?gen245 <- ( to_pay_max ( positive-support $?gen250 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen488)
   (depends-on declare to_pay_min illegal_fishing_lvl1 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen236 <- ( to_pay_min ( value 500 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen236 ) to_pay_min ) ) ( not ( and ?gen243 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( to_pay_min ( negative ~ 2 ) ( positive-overruled $?gen238 & : ( not ( member$ pen1 $?gen238 ) ) ) ) ) ) => ?gen236 <- ( to_pay_min ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen490)
   (depends-on declare illegal_fishing_lvl1 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen243 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( to_pay_min ( value 500 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen238 & : ( not ( member$ pen1 $?gen238 ) ) ) ) ( test ( eq ( class ?gen236 ) to_pay_min ) ) => ?gen236 <- ( to_pay_min ( positive 1 ) ( positive-derivator pen1 ?gen243 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen492)
   (depends-on declare to_pay_min illegal_fishing_lvl1 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen236 <- ( to_pay_min ( value 500 ) ( negative-support $?gen239 ) ( negative-overruled $?gen240 & : ( subseq-pos ( create$ pen1-overruled $?gen239 $$$ $?gen240 ) ) ) ) ( test ( eq ( class ?gen236 ) to_pay_min ) ) ( not ( and ?gen243 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( to_pay_min ( positive-defeated $?gen238 & : ( not ( member$ pen1 $?gen238 ) ) ) ) ) ) => ( calc ( bind $?gen241 ( delete-member$ $?gen240 ( create$ pen1-overruled $?gen239 ) ) ) ) ?gen236 <- ( to_pay_min ( negative-overruled $?gen241 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen494)
   (depends-on declare illegal_fishing_lvl1 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen243 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( to_pay_min ( value 500 ) ( negative-support $?gen239 ) ( negative-overruled $?gen240 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen239 $$$ $?gen240 ) ) ) ) ( positive-defeated $?gen238 & : ( not ( member$ pen1 $?gen238 ) ) ) ) ( test ( eq ( class ?gen236 ) to_pay_min ) ) => ( calc ( bind $?gen241 ( create$ pen1-overruled $?gen239 $?gen240 ) ) ) ?gen236 <- ( to_pay_min ( negative-overruled $?gen241 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen496)
   (depends-on declare illegal_fishing_lvl1 to_pay_min)
   (implies to_pay_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen235 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ?gen236 <- ( to_pay_min ( value 500 ) ( positive-support $?gen238 & : ( not ( subseq-pos ( create$ pen1 ?gen235 $$$ $?gen238 ) ) ) ) ) ( test ( eq ( class ?gen236 ) to_pay_min ) ) => ( calc ( bind $?gen241 ( create$ pen1 ?gen235 $?gen238 ) ) ) ?gen236 <- ( to_pay_min ( positive-support $?gen241 ) )"))

([rule12-defeasibly-dot] of derived-attribute-rule
   (pos-name rule12-defeasibly-dot-gen498)
   (depends-on declare illegal_fishing_confiscation illegal_fishing_lvl1 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule12] ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule12 $? ) ) ( test ( eq ( class ?gen227 ) illegal_fishing_confiscation ) ) ( not ( and ?gen234 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( positive ~ 2 ) ( negative-overruled $?gen229 & : ( not ( member$ rule12 $?gen229 ) ) ) ) ) ) => ?gen227 <- ( illegal_fishing_confiscation ( negative 0 ) )"))

([rule12-defeasibly] of derived-attribute-rule
   (pos-name rule12-defeasibly-gen500)
   (depends-on declare illegal_fishing_lvl1 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule12] ) ) ) ?gen234 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen229 & : ( not ( member$ rule12 $?gen229 ) ) ) ) ( test ( eq ( class ?gen227 ) illegal_fishing_confiscation ) ) => ?gen227 <- ( illegal_fishing_confiscation ( negative 1 ) ( negative-derivator rule12 ?gen234 ) )"))

([rule12-overruled-dot] of derived-attribute-rule
   (pos-name rule12-overruled-dot-gen502)
   (depends-on declare illegal_fishing_confiscation illegal_fishing_lvl1 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule12] ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( positive-support $?gen230 ) ( positive-overruled $?gen231 & : ( subseq-pos ( create$ rule12-overruled $?gen230 $$$ $?gen231 ) ) ) ) ( test ( eq ( class ?gen227 ) illegal_fishing_confiscation ) ) ( not ( and ?gen234 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( negative-defeated $?gen229 & : ( not ( member$ rule12 $?gen229 ) ) ) ) ) ) => ( calc ( bind $?gen232 ( delete-member$ $?gen231 ( create$ rule12-overruled $?gen230 ) ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( positive-overruled $?gen232 ) )"))

([rule12-overruled] of derived-attribute-rule
   (pos-name rule12-overruled-gen504)
   (depends-on declare illegal_fishing_lvl1 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule12] ) ) ) ?gen234 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( positive-support $?gen230 ) ( positive-overruled $?gen231 & : ( not ( subseq-pos ( create$ rule12-overruled $?gen230 $$$ $?gen231 ) ) ) ) ( negative-defeated $?gen229 & : ( not ( member$ rule12 $?gen229 ) ) ) ) ( test ( eq ( class ?gen227 ) illegal_fishing_confiscation ) ) => ( calc ( bind $?gen232 ( create$ rule12-overruled $?gen230 $?gen231 ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( positive-overruled $?gen232 ) )"))

([rule12-support] of derived-attribute-rule
   (pos-name rule12-support-gen506)
   (depends-on declare illegal_fishing_lvl1 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule12] ) ) ) ?gen226 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ?gen227 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( negative-support $?gen229 & : ( not ( subseq-pos ( create$ rule12 ?gen226 $$$ $?gen229 ) ) ) ) ) ( test ( eq ( class ?gen227 ) illegal_fishing_confiscation ) ) => ( calc ( bind $?gen232 ( create$ rule12 ?gen226 $?gen229 ) ) ) ?gen227 <- ( illegal_fishing_confiscation ( negative-support $?gen232 ) )"))

([rule11-defeated-dot] of derived-attribute-rule
   (pos-name rule11-defeated-dot-gen508)
   (depends-on declare illegal_fishing_confiscation illegal_fishing_lvl2)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule11] ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( positive-defeated $?gen221 & : ( subseq-pos ( create$ rule11-defeated rule10 rule1 $$$ $?gen221 ) ) ) ) ( test ( eq ( class ?gen218 ) illegal_fishing_confiscation ) ) ( not ?gen225 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ) => ( calc ( bind $?gen220 ( delete-member$ $?gen221 ( create$ rule11-defeated rule10 rule1 ) ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( positive-defeated $?gen220 ) )"))

([rule11-defeated] of derived-attribute-rule
   (pos-name rule11-defeated-gen510)
   (depends-on declare illegal_fishing_lvl2 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule11] ) ) ) ?gen225 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( positive-defeated $?gen221 & : ( not ( subseq-pos ( create$ rule11-defeated rule10 rule1 $$$ $?gen221 ) ) ) ) ) ( test ( eq ( class ?gen218 ) illegal_fishing_confiscation ) ) => ( calc ( bind $?gen220 ( create$ rule11-defeated rule10 rule1 $?gen221 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( positive-defeated $?gen220 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen512)
   (depends-on declare illegal_fishing_confiscation illegal_fishing_lvl2 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule11 $? ) ) ( test ( eq ( class ?gen218 ) illegal_fishing_confiscation ) ) ( not ( and ?gen225 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( positive ~ 2 ) ( negative-overruled $?gen220 & : ( not ( member$ rule11 $?gen220 ) ) ) ) ) ) => ?gen218 <- ( illegal_fishing_confiscation ( negative 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen514)
   (depends-on declare illegal_fishing_lvl2 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen225 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen220 & : ( not ( member$ rule11 $?gen220 ) ) ) ) ( test ( eq ( class ?gen218 ) illegal_fishing_confiscation ) ) => ?gen218 <- ( illegal_fishing_confiscation ( negative 1 ) ( negative-derivator rule11 ?gen225 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen516)
   (depends-on declare illegal_fishing_confiscation illegal_fishing_lvl2 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( positive-support $?gen221 ) ( positive-overruled $?gen222 & : ( subseq-pos ( create$ rule11-overruled $?gen221 $$$ $?gen222 ) ) ) ) ( test ( eq ( class ?gen218 ) illegal_fishing_confiscation ) ) ( not ( and ?gen225 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( negative-defeated $?gen220 & : ( not ( member$ rule11 $?gen220 ) ) ) ) ) ) => ( calc ( bind $?gen223 ( delete-member$ $?gen222 ( create$ rule11-overruled $?gen221 ) ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( positive-overruled $?gen223 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen518)
   (depends-on declare illegal_fishing_lvl2 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen225 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( positive-support $?gen221 ) ( positive-overruled $?gen222 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen221 $$$ $?gen222 ) ) ) ) ( negative-defeated $?gen220 & : ( not ( member$ rule11 $?gen220 ) ) ) ) ( test ( eq ( class ?gen218 ) illegal_fishing_confiscation ) ) => ( calc ( bind $?gen223 ( create$ rule11-overruled $?gen221 $?gen222 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( positive-overruled $?gen223 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen520)
   (depends-on declare illegal_fishing_lvl2 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen217 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ?gen218 <- ( illegal_fishing_confiscation ( defendant ?Defendant ) ( negative-support $?gen220 & : ( not ( subseq-pos ( create$ rule11 ?gen217 $$$ $?gen220 ) ) ) ) ) ( test ( eq ( class ?gen218 ) illegal_fishing_confiscation ) ) => ( calc ( bind $?gen223 ( create$ rule11 ?gen217 $?gen220 ) ) ) ?gen218 <- ( illegal_fishing_confiscation ( negative-support $?gen223 ) )"))

([rule10-defeated-dot] of derived-attribute-rule
   (pos-name rule10-defeated-dot-gen522)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10] ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen204 & : ( subseq-pos ( create$ rule10-defeated rule9 $$$ $?gen204 ) ) ) ) ( test ( eq ( class ?gen201 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ( test ( > ?fish_number 5 ) ) ) ) => ( calc ( bind $?gen203 ( delete-member$ $?gen204 ( create$ rule10-defeated rule9 ) ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen203 ) )"))

([rule10-defeated] of derived-attribute-rule
   (pos-name rule10-defeated-gen524)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10] ) ) ) ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ( test ( > ?fish_number 5 ) ) ?gen201 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen204 & : ( not ( subseq-pos ( create$ rule10-defeated rule9 $$$ $?gen204 ) ) ) ) ) ( test ( eq ( class ?gen201 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen203 ( create$ rule10-defeated rule9 $?gen204 ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen203 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen526)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen201 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ( test ( > ?fish_number 5 ) ) ?gen201 <- ( illegal_fishing_lvl2 ( negative ~ 2 ) ( positive-overruled $?gen203 & : ( not ( member$ rule10 $?gen203 ) ) ) ) ) ) => ?gen201 <- ( illegal_fishing_lvl2 ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen528)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ( test ( > ?fish_number 5 ) ) ?gen201 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen203 & : ( not ( member$ rule10 $?gen203 ) ) ) ) ( test ( eq ( class ?gen201 ) illegal_fishing_lvl2 ) ) => ?gen201 <- ( illegal_fishing_lvl2 ( positive 1 ) ( positive-derivator rule10 ?gen208 ?gen210 ?gen212 ?gen214 ?gen216 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen530)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen204 ) ( negative-overruled $?gen205 & : ( subseq-pos ( create$ rule10-overruled $?gen204 $$$ $?gen205 ) ) ) ) ( test ( eq ( class ?gen201 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ( test ( > ?fish_number 5 ) ) ?gen201 <- ( illegal_fishing_lvl2 ( positive-defeated $?gen203 & : ( not ( member$ rule10 $?gen203 ) ) ) ) ) ) => ( calc ( bind $?gen206 ( delete-member$ $?gen205 ( create$ rule10-overruled $?gen204 ) ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen206 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen532)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen208 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen207 & : ( >= ?gen207 1 ) ) ) ?gen210 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen212 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ( test ( > ?fish_number 5 ) ) ?gen201 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen204 ) ( negative-overruled $?gen205 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen204 $$$ $?gen205 ) ) ) ) ( positive-defeated $?gen203 & : ( not ( member$ rule10 $?gen203 ) ) ) ) ( test ( eq ( class ?gen201 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen206 ( create$ rule10-overruled $?gen204 $?gen205 ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen206 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen534)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen195 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen197 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen198 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen199 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ) ( test ( > ?fish_number 5 ) ) ?gen201 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive-support $?gen203 & : ( not ( subseq-pos ( create$ rule10 ?gen195 ?gen196 ?gen197 ?gen198 ?gen199 $$$ $?gen203 ) ) ) ) ) ( test ( eq ( class ?gen201 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen206 ( create$ rule10 ?gen195 ?gen196 ?gen197 ?gen198 ?gen199 $?gen203 ) ) ) ?gen201 <- ( illegal_fishing_lvl2 ( positive-support $?gen206 ) )"))

([rule9-defeated-dot] of derived-attribute-rule
   (pos-name rule9-defeated-dot-gen536)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9] ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen180 & : ( subseq-pos ( create$ rule9-defeated rule7 $$$ $?gen180 ) ) ) ) ( test ( eq ( class ?gen177 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen184 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen183 & : ( >= ?gen183 1 ) ) ) ?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen185 & : ( >= ?gen185 1 ) ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ) ) => ( calc ( bind $?gen179 ( delete-member$ $?gen180 ( create$ rule9-defeated rule7 ) ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen179 ) )"))

([rule9-defeated] of derived-attribute-rule
   (pos-name rule9-defeated-gen538)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9] ) ) ) ?gen184 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen183 & : ( >= ?gen183 1 ) ) ) ?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen185 & : ( >= ?gen185 1 ) ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen180 & : ( not ( subseq-pos ( create$ rule9-defeated rule7 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen177 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen179 ( create$ rule9-defeated rule7 $?gen180 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen179 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen540)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen177 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen184 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen183 & : ( >= ?gen183 1 ) ) ) ?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen185 & : ( >= ?gen185 1 ) ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( negative ~ 2 ) ( positive-overruled $?gen179 & : ( not ( member$ rule9 $?gen179 ) ) ) ) ) ) => ?gen177 <- ( illegal_fishing_lvl2 ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen542)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen184 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen183 & : ( >= ?gen183 1 ) ) ) ?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen185 & : ( >= ?gen185 1 ) ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen179 & : ( not ( member$ rule9 $?gen179 ) ) ) ) ( test ( eq ( class ?gen177 ) illegal_fishing_lvl2 ) ) => ?gen177 <- ( illegal_fishing_lvl2 ( positive 1 ) ( positive-derivator rule9 ?gen184 ?gen186 ?gen188 ?gen190 ?gen192 ?gen194 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen544)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen180 ) ( negative-overruled $?gen181 & : ( subseq-pos ( create$ rule9-overruled $?gen180 $$$ $?gen181 ) ) ) ) ( test ( eq ( class ?gen177 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen184 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen183 & : ( >= ?gen183 1 ) ) ) ?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen185 & : ( >= ?gen185 1 ) ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( positive-defeated $?gen179 & : ( not ( member$ rule9 $?gen179 ) ) ) ) ) ) => ( calc ( bind $?gen182 ( delete-member$ $?gen181 ( create$ rule9-overruled $?gen180 ) ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen182 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen546)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen184 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen183 & : ( >= ?gen183 1 ) ) ) ?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen185 & : ( >= ?gen185 1 ) ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen180 ) ( negative-overruled $?gen181 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen180 $$$ $?gen181 ) ) ) ) ( positive-defeated $?gen179 & : ( not ( member$ rule9 $?gen179 ) ) ) ) ( test ( eq ( class ?gen177 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen182 ( create$ rule9-overruled $?gen180 $?gen181 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen182 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen548)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen172 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen174 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen175 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ) ?gen176 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen177 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive-support $?gen179 & : ( not ( subseq-pos ( create$ rule9 ?gen171 ?gen172 ?gen173 ?gen174 ?gen175 ?gen176 $$$ $?gen179 ) ) ) ) ) ( test ( eq ( class ?gen177 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen182 ( create$ rule9 ?gen171 ?gen172 ?gen173 ?gen174 ?gen175 ?gen176 $?gen179 ) ) ) ?gen177 <- ( illegal_fishing_lvl2 ( positive-support $?gen182 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen550)
   (depends-on declare illegal_fishing_lvl1 illegal_fishing_lvl2 illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8 $? ) ) ( test ( eq ( class ?gen163 ) illegal_fishing_lvl1 ) ) ( not ( and ?gen170 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( positive ~ 2 ) ( negative-overruled $?gen165 & : ( not ( member$ rule8 $?gen165 ) ) ) ) ) ) => ?gen163 <- ( illegal_fishing_lvl1 ( negative 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen552)
   (depends-on declare illegal_fishing_lvl2 illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen170 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen165 & : ( not ( member$ rule8 $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) illegal_fishing_lvl1 ) ) => ?gen163 <- ( illegal_fishing_lvl1 ( negative 1 ) ( negative-derivator rule8 ?gen170 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen554)
   (depends-on declare illegal_fishing_lvl1 illegal_fishing_lvl2 illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive-support $?gen166 ) ( positive-overruled $?gen167 & : ( subseq-pos ( create$ rule8-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( test ( eq ( class ?gen163 ) illegal_fishing_lvl1 ) ) ( not ( and ?gen170 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( negative-defeated $?gen165 & : ( not ( member$ rule8 $?gen165 ) ) ) ) ) ) => ( calc ( bind $?gen168 ( delete-member$ $?gen167 ( create$ rule8-overruled $?gen166 ) ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( positive-overruled $?gen168 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen556)
   (depends-on declare illegal_fishing_lvl2 illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen170 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive-support $?gen166 ) ( positive-overruled $?gen167 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( negative-defeated $?gen165 & : ( not ( member$ rule8 $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) illegal_fishing_lvl1 ) ) => ( calc ( bind $?gen168 ( create$ rule8-overruled $?gen166 $?gen167 ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( positive-overruled $?gen168 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen558)
   (depends-on declare illegal_fishing_lvl2 illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen162 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ?gen163 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative-support $?gen165 & : ( not ( subseq-pos ( create$ rule8 ?gen162 $$$ $?gen165 ) ) ) ) ) ( test ( eq ( class ?gen163 ) illegal_fishing_lvl1 ) ) => ( calc ( bind $?gen168 ( create$ rule8 ?gen162 $?gen165 ) ) ) ?gen163 <- ( illegal_fishing_lvl1 ( negative-support $?gen168 ) )"))

([rule7-defeated-dot] of derived-attribute-rule
   (pos-name rule7-defeated-dot-gen560)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7] ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen149 & : ( subseq-pos ( create$ rule7-defeated rule6 $$$ $?gen149 ) ) ) ) ( test ( eq ( class ?gen146 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen152 & : ( >= ?gen152 1 ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen157 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen156 & : ( >= ?gen156 1 ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ( positive ?gen158 & : ( >= ?gen158 1 ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ) ) => ( calc ( bind $?gen148 ( delete-member$ $?gen149 ( create$ rule7-defeated rule6 ) ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen148 ) )"))

([rule7-defeated] of derived-attribute-rule
   (pos-name rule7-defeated-gen562)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7] ) ) ) ?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen152 & : ( >= ?gen152 1 ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen157 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen156 & : ( >= ?gen156 1 ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ( positive ?gen158 & : ( >= ?gen158 1 ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen149 & : ( not ( subseq-pos ( create$ rule7-defeated rule6 $$$ $?gen149 ) ) ) ) ) ( test ( eq ( class ?gen146 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen148 ( create$ rule7-defeated rule6 $?gen149 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen148 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen564)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen146 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen152 & : ( >= ?gen152 1 ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen157 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen156 & : ( >= ?gen156 1 ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ( positive ?gen158 & : ( >= ?gen158 1 ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( negative ~ 2 ) ( positive-overruled $?gen148 & : ( not ( member$ rule7 $?gen148 ) ) ) ) ) ) => ?gen146 <- ( illegal_fishing_lvl2 ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen566)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen152 & : ( >= ?gen152 1 ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen157 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen156 & : ( >= ?gen156 1 ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ( positive ?gen158 & : ( >= ?gen158 1 ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen148 & : ( not ( member$ rule7 $?gen148 ) ) ) ) ( test ( eq ( class ?gen146 ) illegal_fishing_lvl2 ) ) => ?gen146 <- ( illegal_fishing_lvl2 ( positive 1 ) ( positive-derivator rule7 ?gen153 ?gen155 ?gen157 ?gen159 ?gen161 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen568)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen149 ) ( negative-overruled $?gen150 & : ( subseq-pos ( create$ rule7-overruled $?gen149 $$$ $?gen150 ) ) ) ) ( test ( eq ( class ?gen146 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen152 & : ( >= ?gen152 1 ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen157 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen156 & : ( >= ?gen156 1 ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ( positive ?gen158 & : ( >= ?gen158 1 ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( positive-defeated $?gen148 & : ( not ( member$ rule7 $?gen148 ) ) ) ) ) ) => ( calc ( bind $?gen151 ( delete-member$ $?gen150 ( create$ rule7-overruled $?gen149 ) ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen151 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen570)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen152 & : ( >= ?gen152 1 ) ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen157 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen156 & : ( >= ?gen156 1 ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ( positive ?gen158 & : ( >= ?gen158 1 ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen149 ) ( negative-overruled $?gen150 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen149 $$$ $?gen150 ) ) ) ) ( positive-defeated $?gen148 & : ( not ( member$ rule7 $?gen148 ) ) ) ) ( test ( eq ( class ?gen146 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen151 ( create$ rule7-overruled $?gen149 $?gen150 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen151 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen572)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen142 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen143 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen144 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen146 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive-support $?gen148 & : ( not ( subseq-pos ( create$ rule7 ?gen141 ?gen142 ?gen143 ?gen144 ?gen145 $$$ $?gen148 ) ) ) ) ) ( test ( eq ( class ?gen146 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen151 ( create$ rule7 ?gen141 ?gen142 ?gen143 ?gen144 ?gen145 $?gen148 ) ) ) ?gen146 <- ( illegal_fishing_lvl2 ( positive-support $?gen151 ) )"))

([rule6-defeated-dot] of derived-attribute-rule
   (pos-name rule6-defeated-dot-gen574)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6] ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen128 & : ( subseq-pos ( create$ rule6-defeated rule5 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen125 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ) ) => ( calc ( bind $?gen127 ( delete-member$ $?gen128 ( create$ rule6-defeated rule5 ) ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen127 ) )"))

([rule6-defeated] of derived-attribute-rule
   (pos-name rule6-defeated-gen576)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6] ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen128 & : ( not ( subseq-pos ( create$ rule6-defeated rule5 $$$ $?gen128 ) ) ) ) ) ( test ( eq ( class ?gen125 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen127 ( create$ rule6-defeated rule5 $?gen128 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen127 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen578)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen125 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( negative ~ 2 ) ( positive-overruled $?gen127 & : ( not ( member$ rule6 $?gen127 ) ) ) ) ) ) => ?gen125 <- ( illegal_fishing_lvl2 ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen580)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen127 & : ( not ( member$ rule6 $?gen127 ) ) ) ) ( test ( eq ( class ?gen125 ) illegal_fishing_lvl2 ) ) => ?gen125 <- ( illegal_fishing_lvl2 ( positive 1 ) ( positive-derivator rule6 ?gen132 ?gen134 ?gen136 ?gen138 ?gen140 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen582)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen128 ) ( negative-overruled $?gen129 & : ( subseq-pos ( create$ rule6-overruled $?gen128 $$$ $?gen129 ) ) ) ) ( test ( eq ( class ?gen125 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( positive-defeated $?gen127 & : ( not ( member$ rule6 $?gen127 ) ) ) ) ) ) => ( calc ( bind $?gen130 ( delete-member$ $?gen129 ( create$ rule6-overruled $?gen128 ) ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen130 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen584)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen131 & : ( >= ?gen131 1 ) ) ) ?gen134 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen135 & : ( >= ?gen135 1 ) ) ) ?gen138 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen128 ) ( negative-overruled $?gen129 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen128 $$$ $?gen129 ) ) ) ) ( positive-defeated $?gen127 & : ( not ( member$ rule6 $?gen127 ) ) ) ) ( test ( eq ( class ?gen125 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen130 ( create$ rule6-overruled $?gen128 $?gen129 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen130 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen586)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen121 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ) ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen125 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive-support $?gen127 & : ( not ( subseq-pos ( create$ rule6 ?gen120 ?gen121 ?gen122 ?gen123 ?gen124 $$$ $?gen127 ) ) ) ) ) ( test ( eq ( class ?gen125 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen130 ( create$ rule6 ?gen120 ?gen121 ?gen122 ?gen123 ?gen124 $?gen127 ) ) ) ?gen125 <- ( illegal_fishing_lvl2 ( positive-support $?gen130 ) )"))

([rule5-defeated-dot] of derived-attribute-rule
   (pos-name rule5-defeated-dot-gen588)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5] ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen107 & : ( subseq-pos ( create$ rule5-defeated rule4 $$$ $?gen107 ) ) ) ) ( test ( eq ( class ?gen104 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ( positive ?gen114 & : ( >= ?gen114 1 ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ) ) => ( calc ( bind $?gen106 ( delete-member$ $?gen107 ( create$ rule5-defeated rule4 ) ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen106 ) )"))

([rule5-defeated] of derived-attribute-rule
   (pos-name rule5-defeated-gen590)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5] ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ( positive ?gen114 & : ( >= ?gen114 1 ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen107 & : ( not ( subseq-pos ( create$ rule5-defeated rule4 $$$ $?gen107 ) ) ) ) ) ( test ( eq ( class ?gen104 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen106 ( create$ rule5-defeated rule4 $?gen107 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen106 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen592)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen104 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ( positive ?gen114 & : ( >= ?gen114 1 ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( negative ~ 2 ) ( positive-overruled $?gen106 & : ( not ( member$ rule5 $?gen106 ) ) ) ) ) ) => ?gen104 <- ( illegal_fishing_lvl2 ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen594)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ( positive ?gen114 & : ( >= ?gen114 1 ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen106 & : ( not ( member$ rule5 $?gen106 ) ) ) ) ( test ( eq ( class ?gen104 ) illegal_fishing_lvl2 ) ) => ?gen104 <- ( illegal_fishing_lvl2 ( positive 1 ) ( positive-derivator rule5 ?gen111 ?gen113 ?gen115 ?gen117 ?gen119 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen596)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen107 ) ( negative-overruled $?gen108 & : ( subseq-pos ( create$ rule5-overruled $?gen107 $$$ $?gen108 ) ) ) ) ( test ( eq ( class ?gen104 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ( positive ?gen114 & : ( >= ?gen114 1 ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( positive-defeated $?gen106 & : ( not ( member$ rule5 $?gen106 ) ) ) ) ) ) => ( calc ( bind $?gen109 ( delete-member$ $?gen108 ( create$ rule5-overruled $?gen107 ) ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen109 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen598)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ( positive ?gen114 & : ( >= ?gen114 1 ) ) ) ?gen117 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen116 & : ( >= ?gen116 1 ) ) ) ?gen119 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen107 ) ( negative-overruled $?gen108 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen107 $$$ $?gen108 ) ) ) ) ( positive-defeated $?gen106 & : ( not ( member$ rule5 $?gen106 ) ) ) ) ( test ( eq ( class ?gen104 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen109 ( create$ rule5-overruled $?gen107 $?gen108 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen109 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen600)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen104 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive-support $?gen106 & : ( not ( subseq-pos ( create$ rule5 ?gen99 ?gen100 ?gen101 ?gen102 ?gen103 $$$ $?gen106 ) ) ) ) ) ( test ( eq ( class ?gen104 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen109 ( create$ rule5 ?gen99 ?gen100 ?gen101 ?gen102 ?gen103 $?gen106 ) ) ) ?gen104 <- ( illegal_fishing_lvl2 ( positive-support $?gen109 ) )"))

([rule4-defeated-dot] of derived-attribute-rule
   (pos-name rule4-defeated-dot-gen602)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4] ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen86 & : ( subseq-pos ( create$ rule4-defeated rule3 $$$ $?gen86 ) ) ) ) ( test ( eq ( class ?gen83 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen89 & : ( >= ?gen89 1 ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen95 & : ( >= ?gen95 1 ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ) ) => ( calc ( bind $?gen85 ( delete-member$ $?gen86 ( create$ rule4-defeated rule3 ) ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen85 ) )"))

([rule4-defeated] of derived-attribute-rule
   (pos-name rule4-defeated-gen604)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4] ) ) ) ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen89 & : ( >= ?gen89 1 ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen95 & : ( >= ?gen95 1 ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen86 & : ( not ( subseq-pos ( create$ rule4-defeated rule3 $$$ $?gen86 ) ) ) ) ) ( test ( eq ( class ?gen83 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen85 ( create$ rule4-defeated rule3 $?gen86 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen85 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen606)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen83 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen89 & : ( >= ?gen89 1 ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen95 & : ( >= ?gen95 1 ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( negative ~ 2 ) ( positive-overruled $?gen85 & : ( not ( member$ rule4 $?gen85 ) ) ) ) ) ) => ?gen83 <- ( illegal_fishing_lvl2 ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen608)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen89 & : ( >= ?gen89 1 ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen95 & : ( >= ?gen95 1 ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen85 & : ( not ( member$ rule4 $?gen85 ) ) ) ) ( test ( eq ( class ?gen83 ) illegal_fishing_lvl2 ) ) => ?gen83 <- ( illegal_fishing_lvl2 ( positive 1 ) ( positive-derivator rule4 ?gen90 ?gen92 ?gen94 ?gen96 ?gen98 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen610)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen86 ) ( negative-overruled $?gen87 & : ( subseq-pos ( create$ rule4-overruled $?gen86 $$$ $?gen87 ) ) ) ) ( test ( eq ( class ?gen83 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen89 & : ( >= ?gen89 1 ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen95 & : ( >= ?gen95 1 ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( positive-defeated $?gen85 & : ( not ( member$ rule4 $?gen85 ) ) ) ) ) ) => ( calc ( bind $?gen88 ( delete-member$ $?gen87 ( create$ rule4-overruled $?gen86 ) ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen88 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen612)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen89 & : ( >= ?gen89 1 ) ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen94 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen95 & : ( >= ?gen95 1 ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen86 ) ( negative-overruled $?gen87 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen86 $$$ $?gen87 ) ) ) ) ( positive-defeated $?gen85 & : ( not ( member$ rule4 $?gen85 ) ) ) ) ( test ( eq ( class ?gen83 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen88 ( create$ rule4-overruled $?gen86 $?gen87 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen88 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen614)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen83 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive-support $?gen85 & : ( not ( subseq-pos ( create$ rule4 ?gen78 ?gen79 ?gen80 ?gen81 ?gen82 $$$ $?gen85 ) ) ) ) ) ( test ( eq ( class ?gen83 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen88 ( create$ rule4 ?gen78 ?gen79 ?gen80 ?gen81 ?gen82 $?gen85 ) ) ) ?gen83 <- ( illegal_fishing_lvl2 ( positive-support $?gen88 ) )"))

([rule3-defeated-dot] of derived-attribute-rule
   (pos-name rule3-defeated-dot-gen616)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3] ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen65 & : ( subseq-pos ( create$ rule3-defeated rule2 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen62 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ( positive ?gen72 & : ( >= ?gen72 1 ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ) ) => ( calc ( bind $?gen64 ( delete-member$ $?gen65 ( create$ rule3-defeated rule2 ) ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen64 ) )"))

([rule3-defeated] of derived-attribute-rule
   (pos-name rule3-defeated-gen618)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ( positive ?gen72 & : ( >= ?gen72 1 ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-defeated $?gen65 & : ( not ( subseq-pos ( create$ rule3-defeated rule2 $$$ $?gen65 ) ) ) ) ) ( test ( eq ( class ?gen62 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen64 ( create$ rule3-defeated rule2 $?gen65 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( negative-defeated $?gen64 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen620)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen62 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ( positive ?gen72 & : ( >= ?gen72 1 ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( negative ~ 2 ) ( positive-overruled $?gen64 & : ( not ( member$ rule3 $?gen64 ) ) ) ) ) ) => ?gen62 <- ( illegal_fishing_lvl2 ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen622)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ( positive ?gen72 & : ( >= ?gen72 1 ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen64 & : ( not ( member$ rule3 $?gen64 ) ) ) ) ( test ( eq ( class ?gen62 ) illegal_fishing_lvl2 ) ) => ?gen62 <- ( illegal_fishing_lvl2 ( positive 1 ) ( positive-derivator rule3 ?gen69 ?gen71 ?gen73 ?gen75 ?gen77 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen624)
   (depends-on declare illegal_fishing_lvl2 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen65 ) ( negative-overruled $?gen66 & : ( subseq-pos ( create$ rule3-overruled $?gen65 $$$ $?gen66 ) ) ) ) ( test ( eq ( class ?gen62 ) illegal_fishing_lvl2 ) ) ( not ( and ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ( positive ?gen72 & : ( >= ?gen72 1 ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( positive-defeated $?gen64 & : ( not ( member$ rule3 $?gen64 ) ) ) ) ) ) => ( calc ( bind $?gen67 ( delete-member$ $?gen66 ( create$ rule3-overruled $?gen65 ) ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen67 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen626)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ( positive ?gen72 & : ( >= ?gen72 1 ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( negative-support $?gen65 ) ( negative-overruled $?gen66 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen65 $$$ $?gen66 ) ) ) ) ( positive-defeated $?gen64 & : ( not ( member$ rule3 $?gen64 ) ) ) ) ( test ( eq ( class ?gen62 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen67 ( create$ rule3-overruled $?gen65 $?gen66 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( negative-overruled $?gen67 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen628)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen58 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen61 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen62 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ( positive-support $?gen64 & : ( not ( subseq-pos ( create$ rule3 ?gen57 ?gen58 ?gen59 ?gen60 ?gen61 $$$ $?gen64 ) ) ) ) ) ( test ( eq ( class ?gen62 ) illegal_fishing_lvl2 ) ) => ( calc ( bind $?gen67 ( create$ rule3 ?gen57 ?gen58 ?gen59 ?gen60 ?gen61 $?gen64 ) ) ) ?gen62 <- ( illegal_fishing_lvl2 ( positive-support $?gen67 ) )"))

([rule2-defeated-dot] of derived-attribute-rule
   (pos-name rule2-defeated-dot-gen630)
   (depends-on declare illegal_fishing_lvl1 lc:case lc:case lc:case lc:case lc:case)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule2] ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative-defeated $?gen44 & : ( subseq-pos ( create$ rule2-defeated rule1 $$$ $?gen44 ) ) ) ) ( test ( eq ( class ?gen41 ) illegal_fishing_lvl1 ) ) ( not ( and ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen53 & : ( >= ?gen53 1 ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ) ) => ( calc ( bind $?gen43 ( delete-member$ $?gen44 ( create$ rule2-defeated rule1 ) ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( negative-defeated $?gen43 ) )"))

([rule2-defeated] of derived-attribute-rule
   (pos-name rule2-defeated-gen632)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule2] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen53 & : ( >= ?gen53 1 ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative-defeated $?gen44 & : ( not ( subseq-pos ( create$ rule2-defeated rule1 $$$ $?gen44 ) ) ) ) ) ( test ( eq ( class ?gen41 ) illegal_fishing_lvl1 ) ) => ( calc ( bind $?gen43 ( create$ rule2-defeated rule1 $?gen44 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( negative-defeated $?gen43 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen634)
   (depends-on declare illegal_fishing_lvl1 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen41 ) illegal_fishing_lvl1 ) ) ( not ( and ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen53 & : ( >= ?gen53 1 ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( negative ~ 2 ) ( positive-overruled $?gen43 & : ( not ( member$ rule2 $?gen43 ) ) ) ) ) ) => ?gen41 <- ( illegal_fishing_lvl1 ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen636)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen53 & : ( >= ?gen53 1 ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen43 & : ( not ( member$ rule2 $?gen43 ) ) ) ) ( test ( eq ( class ?gen41 ) illegal_fishing_lvl1 ) ) => ?gen41 <- ( illegal_fishing_lvl1 ( positive 1 ) ( positive-derivator rule2 ?gen48 ?gen50 ?gen52 ?gen54 ?gen56 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen638)
   (depends-on declare illegal_fishing_lvl1 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative-support $?gen44 ) ( negative-overruled $?gen45 & : ( subseq-pos ( create$ rule2-overruled $?gen44 $$$ $?gen45 ) ) ) ) ( test ( eq ( class ?gen41 ) illegal_fishing_lvl1 ) ) ( not ( and ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen53 & : ( >= ?gen53 1 ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( positive-defeated $?gen43 & : ( not ( member$ rule2 $?gen43 ) ) ) ) ) ) => ( calc ( bind $?gen46 ( delete-member$ $?gen45 ( create$ rule2-overruled $?gen44 ) ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( negative-overruled $?gen46 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen640)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen51 & : ( >= ?gen51 1 ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen53 & : ( >= ?gen53 1 ) ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen55 & : ( >= ?gen55 1 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative-support $?gen44 ) ( negative-overruled $?gen45 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen44 $$$ $?gen45 ) ) ) ) ( positive-defeated $?gen43 & : ( not ( member$ rule2 $?gen43 ) ) ) ) ( test ( eq ( class ?gen41 ) illegal_fishing_lvl1 ) ) => ( calc ( bind $?gen46 ( create$ rule2-overruled $?gen44 $?gen45 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( negative-overruled $?gen46 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen642)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen41 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive-support $?gen43 & : ( not ( subseq-pos ( create$ rule2 ?gen36 ?gen37 ?gen38 ?gen39 ?gen40 $$$ $?gen43 ) ) ) ) ) ( test ( eq ( class ?gen41 ) illegal_fishing_lvl1 ) ) => ( calc ( bind $?gen46 ( create$ rule2 ?gen36 ?gen37 ?gen38 ?gen39 ?gen40 $?gen43 ) ) ) ?gen41 <- ( illegal_fishing_lvl1 ( positive-support $?gen46 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen644)
   (depends-on declare illegal_fishing_lvl1 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen20 ) illegal_fishing_lvl1 ) ) ( not ( and ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( negative ~ 2 ) ( positive-overruled $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ) ) => ?gen20 <- ( illegal_fishing_lvl1 ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen646)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ( test ( eq ( class ?gen20 ) illegal_fishing_lvl1 ) ) => ?gen20 <- ( illegal_fishing_lvl1 ( positive 1 ) ( positive-derivator rule1 ?gen27 ?gen29 ?gen31 ?gen33 ?gen35 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen648)
   (depends-on declare illegal_fishing_lvl1 lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative-support $?gen23 ) ( negative-overruled $?gen24 & : ( subseq-pos ( create$ rule1-overruled $?gen23 $$$ $?gen24 ) ) ) ) ( test ( eq ( class ?gen20 ) illegal_fishing_lvl1 ) ) ( not ( and ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( positive-defeated $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ) ) => ( calc ( bind $?gen25 ( delete-member$ $?gen24 ( create$ rule1-overruled $?gen23 ) ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( negative-overruled $?gen25 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen650)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ( positive ?gen28 & : ( >= ?gen28 1 ) ) ) ?gen31 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ( positive ?gen30 & : ( >= ?gen30 1 ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( negative-support $?gen23 ) ( negative-overruled $?gen24 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen23 $$$ $?gen24 ) ) ) ) ( positive-defeated $?gen22 & : ( not ( member$ rule1 $?gen22 ) ) ) ) ( test ( eq ( class ?gen20 ) illegal_fishing_lvl1 ) ) => ( calc ( bind $?gen25 ( create$ rule1-overruled $?gen23 $?gen24 ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( negative-overruled $?gen25 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen652)
   (depends-on declare lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen17 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen18 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen19 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ?gen20 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ( positive-support $?gen22 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 ?gen17 ?gen18 ?gen19 $$$ $?gen22 ) ) ) ) ) ( test ( eq ( class ?gen20 ) illegal_fishing_lvl1 ) ) => ( calc ( bind $?gen25 ( create$ rule1 ?gen15 ?gen16 ?gen17 ?gen18 ?gen19 $?gen22 ) ) ) ?gen20 <- ( illegal_fishing_lvl1 ( positive-support $?gen25 ) )"))

([pen4-deductive] of ntm-deductive-rule
   (pos-name pen4-deductive-gen367)
   (depends-on illegal_fishing_lvl2 max_imprisonment_years)
   (implies max_imprisonment_years)
   (deductive-rule "?gen289 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ( not ( max_imprisonment_years ( value 3 ) ) ) => ( max_imprisonment_years ( value 3 ) )")
   (production-rule "( defrule pen4-deductive-gen367 ( declare ( salience ( calc-salience max_imprisonment_years ) ) ) ( run-deductive-rules ) ( object ( name ?gen289 ) ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment_years ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment_years 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment_years 3 ) ) ) ( make-instance ?oid of max_imprisonment_years ( value 3 ) ) )")
   (derived-class max_imprisonment_years))

([pen3-deductive] of ntm-deductive-rule
   (pos-name pen3-deductive-gen366)
   (depends-on illegal_fishing_lvl1 max_imprisonment_months)
   (implies max_imprisonment_months)
   (deductive-rule "?gen253 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ( not ( max_imprisonment_months ( value 6 ) ) ) => ( max_imprisonment_months ( value 6 ) )")
   (production-rule "( defrule pen3-deductive-gen366 ( declare ( salience ( calc-salience max_imprisonment_months ) ) ) ( run-deductive-rules ) ( object ( name ?gen253 ) ( is-a illegal_fishing_lvl1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment_months ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment_months 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment_months 6 ) ) ) ( make-instance ?oid of max_imprisonment_months ( value 6 ) ) )")
   (derived-class max_imprisonment_months))

([pen2-deductive] of ntm-deductive-rule
   (pos-name pen2-deductive-gen365)
   (depends-on illegal_fishing_lvl1 to_pay_max)
   (implies to_pay_max)
   (deductive-rule "?gen244 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ( not ( to_pay_max ( value 2000 ) ) ) => ( to_pay_max ( value 2000 ) )")
   (production-rule "( defrule pen2-deductive-gen365 ( declare ( salience ( calc-salience to_pay_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen244 ) ( is-a illegal_fishing_lvl1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max ) ( value 2000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max 2000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max 2000 ) ) ) ( make-instance ?oid of to_pay_max ( value 2000 ) ) )")
   (derived-class to_pay_max))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen364)
   (depends-on illegal_fishing_lvl1 to_pay_min)
   (implies to_pay_min)
   (deductive-rule "?gen235 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ( not ( to_pay_min ( value 500 ) ) ) => ( to_pay_min ( value 500 ) )")
   (production-rule "( defrule pen1-deductive-gen364 ( declare ( salience ( calc-salience to_pay_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen235 ) ( is-a illegal_fishing_lvl1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min ) ( value 500 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min 500 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min 500 ) ) ) ( make-instance ?oid of to_pay_min ( value 500 ) ) )")
   (derived-class to_pay_min))

([rule12-deductive] of ntm-deductive-rule
   (pos-name rule12-deductive-gen363)
   (depends-on illegal_fishing_lvl1 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (deductive-rule "?gen226 <- ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ( not ( illegal_fishing_confiscation ( defendant ?Defendant ) ) ) => ( illegal_fishing_confiscation ( defendant ?Defendant ) )")
   (production-rule "( defrule rule12-deductive-gen363 ( declare ( salience ( calc-salience illegal_fishing_confiscation ) ) ) ( run-deductive-rules ) ( object ( name ?gen226 ) ( is-a illegal_fishing_lvl1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a illegal_fishing_confiscation ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_confiscation ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_confiscation ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_confiscation ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_confiscation))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen362)
   (depends-on illegal_fishing_lvl2 illegal_fishing_confiscation)
   (implies illegal_fishing_confiscation)
   (deductive-rule "?gen217 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ( not ( illegal_fishing_confiscation ( defendant ?Defendant ) ) ) => ( illegal_fishing_confiscation ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen362 ( declare ( salience ( calc-salience illegal_fishing_confiscation ) ) ) ( run-deductive-rules ) ( object ( name ?gen217 ) ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a illegal_fishing_confiscation ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_confiscation ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_confiscation ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_confiscation ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_confiscation))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen361)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (deductive-rule "?gen195 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen197 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen198 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen199 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ) ( test ( > ?fish_number 5 ) ) ( not ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen361 ( declare ( salience ( calc-salience illegal_fishing_lvl2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen196 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen197 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( object ( name ?gen198 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( object ( name ?gen199 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fish_number ?fish_number ) ) ( test ( > ?fish_number 5 ) ) ( not ( object ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl2 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl2))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen360)
   (depends-on lc:case lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (deductive-rule "?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen172 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen174 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen175 <- ( lc:case ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ) ?gen176 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen360 ( declare ( salience ( calc-salience illegal_fishing_lvl2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen171 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen172 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen173 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( object ( name ?gen174 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( object ( name ?gen175 ) ( is-a lc:case ) ( lc:fish ?Fish ) ( lc:have \"greater_biological_worth\" ) ) ( object ( name ?gen176 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl2 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl2))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen359)
   (depends-on illegal_fishing_lvl2 illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (deductive-rule "?gen162 <- ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ( not ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen359 ( declare ( salience ( calc-salience illegal_fishing_lvl1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen162 ) ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a illegal_fishing_lvl1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl1 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl1 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl1))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen358)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (deductive-rule "?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen142 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen143 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen144 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen358 ( declare ( salience ( calc-salience illegal_fishing_lvl2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen142 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen143 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( object ( name ?gen144 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"mass_destruction\" ) ) ( object ( name ?gen145 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl2 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl2))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen357)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (deductive-rule "?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen121 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ) ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen357 ( declare ( salience ( calc-salience illegal_fishing_lvl2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen120 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen121 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen122 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( object ( name ?gen123 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"harm_to_reproduction\" ) ) ( object ( name ?gen124 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl2 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl2))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen356)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (deductive-rule "?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen356 ( declare ( salience ( calc-salience illegal_fishing_lvl2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen99 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen100 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen101 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"stun_agent\" ) ) ( object ( name ?gen102 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( object ( name ?gen103 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl2 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl2))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen355)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen355 ( declare ( salience ( calc-salience illegal_fishing_lvl2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen79 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen80 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"electrical_current\" ) ) ( object ( name ?gen81 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( object ( name ?gen82 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl2 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl2))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen354)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl2)
   (implies illegal_fishing_lvl2)
   (deductive-rule "?gen57 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen58 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen61 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl2 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen354 ( declare ( salience ( calc-salience illegal_fishing_lvl2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen57 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen58 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen59 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"explosives\" ) ) ( object ( name ?gen60 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( object ( name ?gen61 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl2 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl2 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl2))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen353)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (deductive-rule "?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen353 ( declare ( salience ( calc-salience illegal_fishing_lvl1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen36 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_regulated_period\" ) ) ( object ( name ?gen37 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_banned_waters\" ) ) ( object ( name ?gen38 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( object ( name ?gen39 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( object ( name ?gen40 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl1 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl1 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl1))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen352)
   (depends-on lc:case lc:case lc:case lc:case lc:case illegal_fishing_lvl1)
   (implies illegal_fishing_lvl1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ?gen17 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ?gen18 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ?gen19 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( illegal_fishing_lvl1 ( defendant ?Defendant ) ) ) => ( illegal_fishing_lvl1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen352 ( declare ( salience ( calc-salience illegal_fishing_lvl1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_during \"hunting_ban_period\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:catches_in \"hunting_regulated_waters\" ) ) ( object ( name ?gen17 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:uses \"adequate_tool\" ) ) ( object ( name ?gen18 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:causes \"no_harm\" ) ) ( object ( name ?gen19 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:destroys_fish \"no\" ) ) ( not ( object ( is-a illegal_fishing_lvl1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat illegal_fishing_lvl1 ?Defendant ) ) ) ( make-instance ?oid of illegal_fishing_lvl1 ( defendant ?Defendant ) ) )")
   (derived-class illegal_fishing_lvl1))

