select 
    controlling_corporation as entity,
    facility_name,
    type,
    state,

    electricity_production__gj_ as production_in_gj,
    electricity_production__mwh_ as production_in_mwh,

    total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
    total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
    total_emissions__t_co2_e_ as total_emissions_in_t_co2_e,

    emission_intensity__t_mwh_ as emission_intensity_in_t_co2_e_mwh,
    
    grid_connected as grid_connected_status,
    grid,
    primary_fuel,

    important_notes
from 
    gov-hack-2023.raw_data.emissions_electricity_sector_2015_16