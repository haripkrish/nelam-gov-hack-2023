select 
    reporting_entity as entity,
    facility_name,
    type,
    state,

    CAST(electricity_production__gj_ AS INT64) as production_in_gj,
    CAST(electricity_production__mwh_ AS INT64) as production_in_mwh,

    CAST(total_scope_1_emissions__t_co2_e_ AS INT64) as scope_1_in_t_co2_e,
    CAST(total_scope_2_emissions__t_co2_e_2 AS INT64) as scope_2_in_t_co2_e,
    CAST(total_emissions__t_co2_e_ AS INT64) as total_emissions_in_t_co2_e,

    CAST(emission_intensity__t_mwh_ AS FLOAT64) as emission_intensity_in_t_co2_e_mwh,
    
    grid_connected2 as grid_connected_status,
    grid,
    primary_fuel,

    important_notes
from 
    gov-hack-2023.raw_data.emissions_electricity_sector_2016_17
where
  type = 'F'
