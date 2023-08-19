select 
    reporting_entity as entity,
    facility_name,
    type,
    CAST(null as string) as state,

    CAST(electricity_production__gj_  as int64)as production_in_gj,
    CAST(electricity_production__gj_ * 0.2777777778 as int64) as production_in_mwh,

    CAST(greenhouse_gas_emissions_scope_1__t_co2_e_ as int64) as scope_1_in_t_co2_e,
    CAST(greenhouse_gas_emissions_scope_2__t_co2_e_ as int64) as scope_2_in_t_co2_e,
    CAST(greenhouse_gas_emissions_total_emissions__t_co2_e_ as int64)as total_emissions_in_t_co2_e,

    CAST(null as FLOAT64) as emission_intensity_in_t_co2_e_mwh,
    
    CAST(null as string) as grid_connected_status,
    CAST(null as string) as grid,
    CAST(null as string) as primary_fuel,

    important_notes
from 
    gov-hack-2023.raw_data.emissions_electricity_sector_2012_13
where
    type = 'F'
