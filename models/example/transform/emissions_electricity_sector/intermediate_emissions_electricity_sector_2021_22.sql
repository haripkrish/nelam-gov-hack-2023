select 
    reporting_entity as entity,
    facility_name,
    type,
    state,

    cast(electricity_production__gj_ as int64) as production_in_gj,
    cast(electricity_production__mwh_ as int64) as production_in_mwh,

    cast(total_scope_1_emissions___t_co2_e_ as int64) as scope_1_in_t_co2_e,
    cast(total_scope_2_emissions___t_co2_e_ as int64) as scope_2_in_t_co2_e,
    cast(total_emissions___t_co2_e_ as int64)as total_emissions_in_t_co2_e,

    CAST(emission_intensity___t_co2_e__mwh_ AS FLOAT64) as emission_intensity_in_t_co2_e_mwh,
    
    grid_connected as grid_connected_status,
    grid,
    primary_fuel,

    important_notes
from 
    gov-hack-2023.raw_data.emissions_electricity_sector_2021_22
where
  type = 'F'
