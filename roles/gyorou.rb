name "gyorou"
description "a configure for gyorou"
run_list "recipe[gyorou::default]"
default_attributes "gyorou" => { "user" => "gyorou" }
