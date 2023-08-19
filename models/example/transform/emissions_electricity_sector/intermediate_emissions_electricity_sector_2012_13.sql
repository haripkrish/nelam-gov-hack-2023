select 
    reporting_entity as entity,
    facility_name,
    type,
    null as state,

    electricity_production__gj_ as production_in_gj,
    electricity_production__gj_ * 0.2777777778 as production_in_mwh,

    greenhouse_gas_emissions_scope_1__t_co2_e_ as scope_1_in_t_co2_e,
    greenhouse_gas_emissions_scope_2__t_co2_e_ as scope_2_in_t_co2_e,
    greenhouse_gas_emissions_total_emissions__t_co2_e_ as total_emissions_in_t_co2_e,

    null as emission_intensity_in_t_co2_e_mwh,
    
    null as grid_connected_status,
    null as grid,
    null as primary_fuel,

    important_notes
from 
    gov-hack-2023.raw_data.emissions_electricity_sector_2012_13
