(import-rdf )
(import-rdf-files facts.rdf)
(load-compiled-dr-device rulebase.clp)
(go-dr-device)
(dr-device_export_rdf rulebase.ruleml export.rdf proof.ruleml illegal_fishing_lvl1 illegal_fishing_lvl2 to_pay_min to_pay_max max_imprisonment_months max_imprisonment_years)
