select
  '2021-01-01' as year,
  organisation_name,
  cast(identifying_details as int64) as abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2021_22
where organisation_name is not null
union all
select
  '2020-01-01' as year,
  organisation_name,
  cast(identifying_details as int64)as abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2020_21
where organisation_name is not null
union all
select
  '2019-01-01' as year,
  organisation_name,
  identifying_details as abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2019_20
where organisation_name is not null
union all
select
  '2018-01-01' as year,
  organisation_name,
  identifying_details as abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2018_19
where organisation_name is not null
union all
select
  '2017-01-01' as year,
  organisation_name,
  identifying_details as abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.corporate_emissions_and_energy_2017_18
where organisation_name is not null
union all
select
  '2016-01-01' as year,
  controlling_corporation,
  abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.corporate_emissions_and_energy_2016_17
where controlling_corporation is not null
union all
select
  '2015-01-01' as year,
  controlling_corporation,
  cast(abn as int64) as abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2015_16
where controlling_corporation is not null
union all
select
  '2014-01-01' as year,
  controlling_corporation,
  abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  net_energy_consumed__gj_ as consumption_in_gj,
  net_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2014_15
where controlling_corporation is not null
union all
select
  '2013-01-01' as year,
  controlling_corporation,
  cast(abn as int64) as abn,
  total_scope_1_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_emissions__t_co2_e_ + total_scope_2_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  total_net_energy_consumed___gj_ as consumption_in_gj,
  total_net_energy_consumed___gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2013_14
where controlling_corporation is not null
union all
select
  '2012-01-01' as year,
  controlling_corporation_name,
  cast(abn as int64) as abn,
  corporate_total_scope_1_emission__t_co2_e_ as scope_1_in_t_co2_e,
  corporate_total_scope_2_emission__t_co2_e_ as scope_2_in_t_co2_e,
  corporate_total_scope_1_emission__t_co2_e_ + corporate_total_scope_2_emission__t_co2_e_ as total_emissions_in_t_co2_e,
  corporate_total_energy_consumed__gj_ as consumption_in_gj,
  corporate_total_energy_consumed__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2012_13
where controlling_corporation_name is not null
union all
select
  '2011-01-01' as year,
  registered_corporations,
  cast(abn as int64) as abn,
  scope_1 as scope_1_in_t_co2_e,
  scope_2 as scope_2_in_t_co2_e,
  scope_1_2 as total_emissions_in_t_co2_e,
  energy_consumed as consumption_in_gj,
  energy_consumed * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2011_12
where registered_corporations is not null
union all
select
  '2010-01-01' as year,
  registered_corporations,
  cast(abn as int64) as abn,
  total_scope_1_greenhouse_gas_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_greenhouse_gas_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_greenhouse_gas_emissions__t_co2_e_ + total_scope_2_greenhouse_gas_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  total_energy_consumption__gj_ as consumption_in_gj,
  total_energy_consumption__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2010_11
where registered_corporations is not null
union all
select
  '2009-01-01' as year,
  registered_corporations,
  cast(abn as int64) as abn,
  total_scope_1_greenhouse_gas_emissions__t_co2_3_ as scope_1_in_t_co2_e,
  total_scope_2_greenhouse_gas_emissions__t_co2_3_ as scope_2_in_t_co2_e,
  total_scope_1_greenhouse_gas_emissions__t_co2_3_ + total_scope_2_greenhouse_gas_emissions__t_co2_3_ as total_emissions_in_t_co2_e,
  total_energy_consumption__gj_ as consumption_in_gj,
  total_energy_consumption__gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2009_10
where registered_corporations is not null
union all
select
  '2008-01-01' as year,
  registered_corporations,
  cast(abn as int64) as abn,
  total_scope_1_greenhouse_gas_emissions__t_co2_e_ as scope_1_in_t_co2_e,
  total_scope_2_greenhouse_gas_emissions__t_co2_e_ as scope_2_in_t_co2_e,
  total_scope_1_greenhouse_gas_emissions__t_co2_e_ + total_scope_2_greenhouse_gas_emissions__t_co2_e_ as total_emissions_in_t_co2_e,
  total_energy_consumption_3_gj_ as consumption_in_gj,
  total_energy_consumption_3_gj_ * 0.2777777778 as consumption_in_mwh
from
raw_data.emissions_corporate_2008_09
where registered_corporations is not null