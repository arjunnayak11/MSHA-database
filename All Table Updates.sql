
-- First update for msha_Mine_mine_id for Primary Key
Use MSHA
UPDATE MSHA_Mine
SET MSHA_Mine.msha_Mine_mine_id = MSHA_Full.msha_Mine_mine_id
FROM MSHA_Full
WHERE MSHA_Mine.msha_Mine_mine_id = MSHA_Full.msha_Mine_mine_id
INSERT INTO MSHA_Mine
(msha_Mine_mine_id)
SELECT DISTINCT msha_Mine_mine_id
FROM MSHA_Full

-- All updates to MSHA_Mine table 
Use MSHA
UPDATE MSHA_Mine
SET MSHA_Mine.msha_Mine_curr_mine_nm = MSHA_Full.msha_Mine_curr_mine_nm,
	MSHA_Mine.msha_Mine_c_m_ind = MSHA_Full.msha_Mine_c_m_ind, 
	MSHA_Mine.msha_Mine_mine_type_cd = MSHA_Full.msha_Mine_mine_type_cd,
	MSHA_Mine.msha_Mine_curr_stat_cd = MSHA_Full.msha_Mine_curr_stat_cd,
	MSHA_Mine.msha_Mine_curr_stat_dt = MSHA_Full.msha_Mine_curr_stat_dt,
	MSHA_Mine.msha_Mine_controller_id = MSHA_Full.msha_Mine_controller_id,
	MSHA_Mine.msha_Mine_controller_nm = MSHA_Full.msha_Mine_controller_nm,
	MSHA_Mine.msha_Mine_oper_id = MSHA_Full.msha_Mine_oper_id,
	MSHA_Mine.msha_Mine_oper_nm = MSHA_Full.msha_Mine_oper_nm,
	MSHA_Mine.msha_Mine_state_abbr = MSHA_Full.msha_Mine_state_abbr,
	MSHA_Mine.msha_Mine_fips_cnty_nm = MSHA_Full.msha_Mine_fips_cnty_nm,
	MSHA_Mine.msha_Mine_curr_ownr_beg_dt = MSHA_Full.msha_Mine_curr_ownr_beg_dt,
	MSHA_Mine.msha_Mine_full_sic_cd = MSHA_Full.msha_Mine_full_sic_cd,
	MSHA_Mine.msha_Mine_sic_desc = MSHA_Full.msha_Mine_sic_desc,
	MSHA_Mine.msha_Mine_bom_state_cd = MSHA_Full.msha_Mine_bom_state_cd,
	MSHA_Mine.msha_Mine_fips_cnty_cd = MSHA_Full.msha_Mine_fips_cnty_cd,
	MSHA_Mine.msha_Mine_cong_dist_cd = MSHA_Full.msha_Mine_cong_dist_cd,
	MSHA_Mine.msha_Mine_company_type = MSHA_Full.msha_Mine_company_type,
	MSHA_Mine.msha_Mine_district = MSHA_Full.msha_Mine_district,
	MSHA_Mine.msha_Mine_office_cd = MSHA_Full.msha_Mine_office_cd,
	MSHA_Mine.msha_Mine_office_name = MSHA_Full.msha_Mine_office_name,
	MSHA_Mine.msha_Mine_assess_ctrl_no = MSHA_Full.msha_Mine_assess_ctrl_no,
	MSHA_Mine.msha_Mine_primary_sic_cd_grp = MSHA_Full.msha_Mine_primary_sic_cd_grp,
	MSHA_Mine.msha_Mine_primary_sic_cd_sfx = MSHA_Full.msha_Mine_primary_sic_cd_sfx,
	MSHA_Mine.msha_Mine_secondary_sic_cd = MSHA_Full.msha_Mine_secondary_sic_cd,
	MSHA_Mine.msha_Mine_secondary_sic_desc = MSHA_Full.msha_Mine_secondary_sic_desc,
	MSHA_Mine.msha_Mine_secondary_sic_cd_sfx = MSHA_Full.msha_Mine_secondary_sic_cd_sfx,
	MSHA_Mine.msha_Mine_secondary_sic_cd_grp = MSHA_Full.msha_Mine_secondary_sic_cd_grp,
	MSHA_Mine.msha_Mine_primary_canvass_cd = MSHA_Full.msha_Mine_primary_canvass_cd,
	MSHA_Mine.msha_Mine_primary_canvass_desc = MSHA_Full.msha_Mine_primary_canvass_desc,
	MSHA_Mine.msha_Mine_secondary_canvass_cd = MSHA_Full.msha_Mine_secondary_canvass_cd,
	MSHA_Mine.msha_Mine_secondary_canvass_desc = MSHA_Full.msha_Mine_secondary_canvass_desc,
	MSHA_Mine.msha_Mine_mine_103i_desc = MSHA_Full.msha_Mine_mine_103i_desc,
	MSHA_Mine.msha_Mine_curr_103i_cd = MSHA_Full.msha_Mine_curr_103i_cd,
	MSHA_Mine.msha_Mine_curr_103i_dt = MSHA_Full.msha_Mine_curr_103i_dt,
	MSHA_Mine.msha_Mine_port_oprn_ind = MSHA_Full.msha_Mine_port_oprn_ind,
	MSHA_Mine.msha_Mine_port_fips_state_cd = MSHA_Full.msha_Mine_port_fips_state_cd,
	MSHA_Mine.msha_Mine_days_per_week = MSHA_Full.msha_Mine_days_per_week,
	MSHA_Mine.msha_Mine_hrs_per_shift = MSHA_Full.msha_Mine_hrs_per_shift,
	MSHA_Mine.msha_Mine_prod_shifts_per_day = MSHA_Full.msha_Mine_prod_shifts_per_day,
	MSHA_Mine.msha_Mine_maint_shifts_per_day = MSHA_Full.msha_Mine_maint_shifts_per_day,
	MSHA_Mine.msha_Mine_employee_cnt = MSHA_Full.msha_Mine_employee_cnt,
	MSHA_Mine.msha_Mine_exempt_ind = MSHA_Full.msha_Mine_exempt_ind,
	MSHA_Mine.msha_Mine_longitude = MSHA_Full.msha_Mine_longitude,
	MSHA_Mine.msha_Mine_latitude = MSHA_Full.msha_Mine_latitude,
	MSHA_Mine.msha_Mine_avg_mine_height = MSHA_Full.msha_Mine_avg_mine_height,
	MSHA_Mine.msha_Mine_mine_gas_category_cd = MSHA_Full.msha_Mine_mine_gas_category_cd,
	MSHA_Mine.msha_Mine_methn_librtn = MSHA_Full.msha_Mine_methn_librtn,
	MSHA_Mine.msha_Mine_prod_pits_cnt = MSHA_Full.msha_Mine_prod_pits_cnt,
	MSHA_Mine.msha_Mine_non_prod_pits_cnt = MSHA_Full.msha_Mine_non_prod_pits_cnt,
	MSHA_Mine.msha_Mine_tail_pond_cnt = MSHA_Full.msha_Mine_tail_pond_cnt,
	MSHA_Mine.msha_Mine_pillar_rcvry_ind = MSHA_Full.msha_Mine_pillar_rcvry_ind,
	MSHA_Mine.msha_Mine_highwall_mnr_ind = MSHA_Full.msha_Mine_highwall_mnr_ind,
	MSHA_Mine.msha_Mine_multiple_pits_ind = MSHA_Full.msha_Mine_multiple_pits_ind,
	MSHA_Mine.msha_Mine_miners_rep_ind = MSHA_Full.msha_Mine_miners_rep_ind,
	MSHA_Mine.msha_Mine_safety_committee_ind = MSHA_Full.msha_Mine_safety_committee_ind,
	MSHA_Mine.msha_Mine_mine_miles_ofc = MSHA_Full.msha_Mine_mine_miles_ofc,
	MSHA_Mine.msha_Mine_directions_to_mine = MSHA_Full.msha_Mine_directions_to_mine,
	MSHA_Mine.msha_Mine_nearest_town = MSHA_Full.msha_Mine_nearest_town,
	MSHA_Mine.msha_Mine_sic_code_4_digit = MSHA_Full.msha_Mine_sic_code_4_digit
FROM MSHA_Full
WHERE MSHA_Mine.msha_Mine_mine_id = MSHA_Full.msha_Mine_mine_id
GO

--------------------------------------------------------------------------------------------------

-- First update for msha_Inspect_event_no AND msha_Inspect_mine_id for Composite Primary Key
Use MSHA
UPDATE MSHA_Inspect
SET MSHA_Inspect.msha_Inspect_event_no = MSHA_Full.msha_Inspect_event_no,
	MSHA_Inspect.msha_Mine_mine_id = MSHA_Full.msha_Inspect_mine_id --used from mine table since it's the same data
FROM MSHA_Full
WHERE MSHA_Inspect.msha_Inspect_event_no = MSHA_Full.msha_Inspect_event_no
	AND MSHA_Inspect.msha_Mine_mine_id = MSHA_Full.msha_Inspect_mine_id
INSERT INTO MSHA_Inspect
(msha_Inspect_event_no, msha_Mine_mine_id)
SELECT DISTINCT msha_Inspect_event_no, msha_Inspect_mine_id
FROM MSHA_Full
GO

-- All updates to MSHA_Inspect table 

Use MSHA
UPDATE MSHA_Inspect
SET	MSHA_Inspect.msha_Inspect_acty_cd = MSHA_Full.msha_Inspect_acty_cd,
	MSHA_Inspect.msha_Inspect_acty_desc = MSHA_Full.msha_Inspect_acty_desc,
	MSHA_Inspect.msha_Inspect_beg_dt = MSHA_Full.msha_Inspect_beg_dt,
	MSHA_Inspect.msha_Inspect_end_dt = MSHA_Full.msha_Inspect_end_dt,
	MSHA_Inspect.msha_Mine_controller_id = MSHA_Full.msha_Inspect_controller_id,--created a table for controller using this ID from Mine table
	MSHA_Inspect.msha_Mine_controller_nm = MSHA_Full.msha_Inspect_controller_name,--created a table for controller using this name from Mine table
	MSHA_Inspect.msha_Inspect_operator_id = MSHA_Full.msha_Inspect_operator_id,
	MSHA_Inspect.msha_Inspect_operator_name = MSHA_Full.msha_Inspect_operator_name,
	MSHA_Inspect.msha_Inspect_cal_yr = MSHA_Full.msha_Inspect_cal_yr,
	MSHA_Inspect.msha_Inspect_cal_qtr = MSHA_Full.msha_Inspect_cal_qtr,
	MSHA_Inspect.msha_Inspect_fiscal_yr = MSHA_Full.msha_Inspect_fiscal_yr,
	MSHA_Inspect.msha_Inspect_fiscal_qtr = MSHA_Full.msha_Inspect_fiscal_qtr,
	MSHA_Inspect.msha_Inspect_inspect_office_cd = MSHA_Full.msha_Inspect_inspect_office_cd,
	MSHA_Inspect.msha_Inspect_active_sections = MSHA_Full.msha_Inspect_active_sections,
	MSHA_Inspect.msha_Inspect_idle_sections = MSHA_Full.msha_Inspect_idle_sections,
	MSHA_Inspect.msha_Inspect_shaft_slope_sink = MSHA_Full.msha_Inspect_shaft_slope_sink,
	MSHA_Inspect.msha_Inspect_impound_constr = MSHA_Full.msha_Inspect_impound_constr,
	MSHA_Inspect.msha_Inspect_bldg_constr_sites = MSHA_Full.msha_Inspect_bldg_constr_sites,
	MSHA_Inspect.msha_Inspect_draglines = MSHA_Full.msha_Inspect_draglines,
	MSHA_Inspect.msha_Inspect_unclassified_constr = MSHA_Full.msha_Inspect_unclassified_constr,
	MSHA_Inspect.msha_Inspect_co_records = MSHA_Full.msha_Inspect_co_records,
	MSHA_Inspect.msha_Inspect_surf_ug_mine = MSHA_Full.msha_Inspect_surf_ug_mine,
	MSHA_Inspect.msha_Inspect_surf_facility_mine = MSHA_Full.msha_Inspect_surf_facility_mine,
	MSHA_Inspect.msha_Inspect_refuse_piles = MSHA_Full.msha_Inspect_refuse_piles,
	MSHA_Inspect.msha_Inspect_explosive_storage = MSHA_Full.msha_Inspect_explosive_storage,
	MSHA_Inspect.msha_Inspect_outby_areas = MSHA_Full.msha_Inspect_outby_areas,
	MSHA_Inspect.msha_Inspect_major_constr = MSHA_Full.msha_Inspect_major_constr,
	MSHA_Inspect.msha_Inspect_shafts_slopes = MSHA_Full.msha_Inspect_shafts_slopes,
	MSHA_Inspect.msha_Inspect_impoundments = MSHA_Full.msha_Inspect_impoundments,
	MSHA_Inspect.msha_Inspect_misc_area = MSHA_Full.msha_Inspect_misc_area,
	MSHA_Inspect.msha_Inspect_program_area = MSHA_Full.msha_Inspect_program_area,------
	MSHA_Inspect.msha_Inspect_sample_cnt_air = MSHA_Full.msha_Inspect_sample_cnt_air,
	MSHA_Inspect.msha_Inspect_sample_cnt_dustspot = MSHA_Full.msha_Inspect_sample_cnt_dustspot,
	MSHA_Inspect.msha_Inspect_sample_cnt_dustsurvey = MSHA_Full.msha_Inspect_sample_cnt_dustsurvey,
	MSHA_Inspect.msha_Inspect_sample_cnt_respdust = MSHA_Full.msha_Inspect_sample_cnt_respdust,
	MSHA_Inspect.msha_Inspect_sample_cnt_noise = MSHA_Full.msha_Inspect_sample_cnt_noise,
	MSHA_Inspect.msha_Inspect_sample_cnt_other = MSHA_Full.msha_Inspect_sample_cnt_other,
	MSHA_Inspect.msha_Inspect_nbr_inspectors = MSHA_Full.msha_Inspect_nbr_inspectors,
	MSHA_Inspect.msha_Inspect_total_on_site_hours = MSHA_Full.msha_Inspect_total_on_site_hours,
	MSHA_Inspect.msha_Inspect_total_insp_hours = MSHA_Full.msha_Inspect_total_insp_hours,
	MSHA_Inspect.msha_Inspect_coal_metal_ind = MSHA_Full.msha_Inspect_coal_metal_ind,
	MSHA_Inspect.msha_Inspect_inspection_begin_year = MSHA_Full.msha_Inspect_inspection_begin_year,
	MSHA_Inspect.msha_Inspect_inspection_end_year = MSHA_Full.msha_Inspect_inspection_end_year,
	MSHA_Inspect.msha_Inspect_state_abbr = MSHA_Full.msha_Inspect_state_abbr,
	MSHA_Inspect.msha_Inspect_sic_code_4_digit = MSHA_Full.msha_Inspect_sic_code_4_digit,
	MSHA_Inspect.msha_Mine_mine_type_cd = MSHA_Full.msha_Inspect_mine_type_cd, --used from mine table since it's the same data
	MSHA_Inspect.msha_Mine_curr_mine_nm = MSHA_Full.msha_Inspect_curr_mine_nm,--used from mine table since it's the same data
	MSHA_Inspect.msha_Inspect_curr_stat_cd = MSHA_Full.msha_Inspect_curr_stat_cd,
	MSHA_Inspect.msha_inspect_curr_stat_dt = MSHA_Full.msha_inspect_curr_stat_dt,
	MSHA_Inspect.msha_Inspect_sig_sub_y = MSHA_Full.msha_Inspect_sig_sub_y,
	MSHA_Inspect.msha_Inspect_sig_sub_n = MSHA_Full.msha_Inspect_sig_sub_n	   
FROM MSHA_Full
WHERE MSHA_Inspect.msha_Inspect_event_no = MSHA_Full.msha_Inspect_event_no 
	AND MSHA_Inspect.msha_Mine_mine_id = MSHA_Full.msha_Inspect_mine_id
GO

--------------------------------------------------------------------------------------------------

-- First update for msha_mine_contractor_cntctr_id for Primary Key
Use MSHA
UPDATE MSHA_Contractor
SET MSHA_Contractor.msha_mine_contractor_cntctr_id = MSHA_Full.msha_mine_contractor_cntctr_id
FROM MSHA_Full
WHERE MSHA_Contractor.msha_mine_contractor_cntctr_id = MSHA_Full.msha_mine_contractor_cntctr_id
	INSERT INTO MSHA_Contractor 
	(msha_mine_contractor_cntctr_id)
SELECT DISTINCT msha_mine_contractor_cntctr_id
FROM MSHA_Full
GO

-- All updates to MSHA_Contractor table 

Use MSHA
UPDATE MSHA_Contractor
SET	MSHA_Contractor.msha_mine_contractor_cntctr_id = MSHA_Full.msha_mine_contractor_cntctr_id,
	MSHA_Contractor.msha_mine_contractor_cntctr_nm = MSHA_Full.msha_mine_contractor_cntctr_nm,
	MSHA_Contractor.msha_Mine_mine_id = MSHA_Full.msha_mine_contractor_mine_id,--used from mine table since it's the same data
	MSHA_Contractor.msha_mine_contractor_cntctr_start_dt = MSHA_Full.msha_mine_contractor_cntctr_start_dt,
	MSHA_Contractor.msha_mine_contractor_cntctr_end_dt = MSHA_Full.msha_mine_contractor_cntctr_end_dt
FROM MSHA_Full
WHERE MSHA_Contractor.msha_mine_contractor_cntctr_id = MSHA_Full.msha_mine_contractor_cntctr_id
GO

--------------------------------------------------------------------------------------------------

-- First update for msha_Mine_controller_id for Primary Key
Use MSHA
UPDATE MSHA_Controller
SET MSHA_Controller.msha_Mine_controller_id = MSHA_Full.msha_controller_history_ctrlr_id
FROM MSHA_Full
WHERE MSHA_Controller.msha_Mine_controller_id = MSHA_Full.msha_controller_history_ctrlr_id
	INSERT INTO MSHA_Controller
	(msha_Mine_controller_id)
SELECT DISTINCT msha_controller_history_ctrlr_id
FROM MSHA_Full
GO

-- All updates to MSHA_Controller table 

Use MSHA
UPDATE MSHA_Controller
SET	MSHA_Controller.msha_Mine_controller_id = MSHA_Full.msha_controller_history_ctrlr_id, --used from mine table since it's the same data
	MSHA_Controller.msha_Mine_controller_nm = MSHA_Full.msha_controller_history_ctrlr_nm,--used from mine table since it's the same data
	MSHA_Controller.msha_controller_history_oper_id = MSHA_Full.msha_controller_history_oper_id,
	MSHA_Controller.msha_controller_history_ctrlr_start_dt = MSHA_Full.msha_controller_history_ctrlr_start_dt,
	MSHA_Controller.msha_controller_history_ctrlr_end_dt = MSHA_Full.msha_controller_history_ctrlr_end_dt,
	MSHA_Controller.msha_controller_history_oper_nm = MSHA_Full.msha_controller_history_oper_nm
FROM MSHA_Full
WHERE MSHA_Controller.msha_Mine_controller_id = MSHA_Full.msha_controller_history_ctrlr_id 
GO

--------------------------------------------------------------------------------------------------
-- First update for msha_Mine_full_sic_cd for Primary Key
Use MSHA
UPDATE MSHA_Commodity
SET MSHA_Commodity.msha_Mine_full_sic_cd = MSHA_Full.msha_commodity_lookup_cmmdty_cd
FROM MSHA_Full
WHERE MSHA_Commodity.msha_Mine_full_sic_cd = MSHA_Full.msha_commodity_lookup_cmmdty_cd
	INSERT INTO MSHA_Commodity
	(msha_Mine_full_sic_cd)
SELECT DISTINCT msha_commodity_lookup_cmmdty_cd
FROM MSHA_Full
GO

-- All updates to MSHA_Commodity table 

Use MSHA
UPDATE MSHA_Commodity
SET	MSHA_Commodity.msha_Mine_sic_desc = MSHA_Full.msha_commodity_lookup_cmmdty_desc,
	MSHA_Commodity.msha_commodity_lookup_naics_cd = MSHA_Full.msha_commodity_lookup_naics_cd,
	MSHA_Commodity.msha_commodity_lookup_sffx_cd = MSHA_Full.msha_commodity_lookup_sffx_cd,
	MSHA_Commodity.msha_commodity_lookup_old_sic_cd = MSHA_Full.msha_commodity_lookup_old_sic_cd,
	MSHA_Commodity.msha_commodity_lookup_actv_ind = MSHA_Full.msha_commodity_lookup_actv_ind,
	MSHA_Commodity.msha_commodity_lookup_actv_dt = MSHA_Full.msha_commodity_lookup_actv_dt,
	MSHA_Commodity.msha_commodity_lookup_inactv_dt = MSHA_Full.msha_commodity_lookup_inactv_dt
FROM MSHA_Full
WHERE MSHA_Commodity.msha_Mine_full_sic_cd = MSHA_Full.msha_commodity_lookup_cmmdty_cd
GO


--Employee table
.
Use MSHA
UPDATE MSHA_Employee
SET MSHA_Employee.msha_Mine_mine_id = MSHA_Full.msha_Mine_mine_id
FROM MSHA_Full
WHERE MSHA_Employee.msha_Mine_mine_id = MSHA_Full.msha_Mine_mine_id
INSERT INTO MSHA_Employee
(msha_Mine_mine_id)
SELECT DISTINCT msha_Mine_mine_id
FROM MSHA_Full

Use MSHA
UPDATE MSHA_Employee
SET	MSHA_Employee.msha_Mine_mine_id =  MSHA_Full.msha_Mine_mine_id,                
	MSHA_Employee.msha_Mine_employee_cnt = MSHA_Full.msha_Mine_employee_cnt,
	MSHA_Employee.msha_Mine_exempt_ind = MSHA_Full.msha_Mine_exempt_ind,
	MSHA_Employee.msha_Mine_sic_desc = MSHA_Full.msha_Mine_sic_desc,
	MSHA_Employee.msha_Mine_maint_shifts_per_day = MSHA_Full.msha_Mine_maint_shifts_per_day,
	MSHA_Employee.msha_Mine_prod_shifts_per_day = MSHA_Full.msha_Mine_prod_shifts_per_day,
	MSHA_Employee.msha_Mine_hrs_per_shift = MSHA_Full.msha_Mine_hrs_per_shift

FROM MSHA_Full
WHERE MSHA_Employee.msha_Mine_mine_id =  MSHA_Full.msha_Mine_mine_id
GO

-- MSHA_state table update

Use MSHA
UPDATE MSHA_State
SET MSHA_State.msha_Mine_mine_id = MSHA_Full.msha_Mine_mine_id
FROM MSHA_Full
WHERE MSHA_State.msha_Mine_mine_id = MSHA_Full.msha_Mine_mine_id
INSERT INTO MSHA_State
(msha_Mine_mine_id)
SELECT DISTINCT msha_Mine_mine_id
FROM MSHA_Full


Use MSHA
UPDATE MSHA_State
SET	MSHA_State.msha_Mine_mine_id =  MSHA_Full.msha_Mine_mine_id,                
	MSHA_State.msha_Mine_employee_cnt = MSHA_Full.msha_Mine_employee_cnt,
	MSHA_State.msha_Mine_state_abbr = MSHA_Full.msha_Mine_state_abbr,
	MSHA_State.msha_Mine_oper_nm = MSHA_Full.msha_Mine_oper_nm,
	MSHA_State.msha_Mine_longitude = MSHA_Full.msha_Mine_longitude,
	MSHA_State.msha_Mine_latitude = MSHA_Full.msha_Mine_latitude,
	MSHA_State.msha_Mine_maint_shifts_per_day = MSHA_Full.msha_Mine_maint_shifts_per_day,
	MSHA_State.msha_Mine_prod_shifts_per_day = MSHA_Full.msha_Mine_prod_shifts_per_day,
	MSHA_State.msha_Mine_hrs_per_shift = MSHA_Full.msha_Mine_hrs_per_shift

FROM MSHA_Full
WHERE MSHA_State.msha_Mine_mine_id =  MSHA_Full.msha_Mine_mine_id
GO



---MineOffice table update
Use MSHA
UPDATE MSHA_MineOffice
SET MSHA_MineOffice.msha_Mine_office_cd = MSHA_Full.msha_Mine_office_cd
FROM MSHA_Full
WHERE MSHA_MineOffice.msha_Mine_office_cd = MSHA_Full.msha_Mine_office_cd
INSERT INTO MSHA_MineOffice
(msha_Mine_office_cd)
SELECT DISTINCT msha_Mine_office_cd
FROM MSHA_Full


Use MSHA
UPDATE MSHA_MineOffice
SET	MSHA_MineOffice.msha_Mine_office_cd = MSHA_Full.msha_Mine_office_cd, 
    MSHA_MineOffice.msha_Mine_office_name = MSHA_Full.msha_Mine_office_name,
	MSHA_MineOffice.msha_Mine_company_type = MSHA_Full.msha_Mine_company_type,      
	MSHA_MineOffice.msha_Mine_employee_cnt = MSHA_Full.msha_Mine_employee_cnt,
	MSHA_MineOffice.msha_Mine_state_abbr = MSHA_Full.msha_Mine_state_abbr,
	MSHA_MineOffice.msha_Mine_oper_nm = MSHA_Full.msha_Mine_oper_nm,
	MSHA_MineOffice.msha_Mine_longitude = MSHA_Full.msha_Mine_longitude,
	MSHA_MineOffice.msha_Mine_latitude = MSHA_Full.msha_Mine_latitude,
	MSHA_MineOffice.msha_Mine_maint_shifts_per_day = MSHA_Full.msha_Mine_maint_shifts_per_day,
	MSHA_MineOffice.msha_Mine_prod_shifts_per_day = MSHA_Full.msha_Mine_prod_shifts_per_day,
	MSHA_MineOffice.msha_Mine_hrs_per_shift = MSHA_Full.msha_Mine_hrs_per_shift

FROM MSHA_Full
WHERE MSHA_MineOffice.msha_Mine_office_cd =  MSHA_Full.msha_Mine_office_cd
GO

---MSHA_History (history of mining )

Use MSHA
UPDATE MSHA_History
SET MSHA_History.msha_controller_history_oper_id = MSHA_Full.msha_controller_history_oper_id
FROM MSHA_Full
WHERE MSHA_History.msha_controller_history_oper_id = MSHA_Full.msha_controller_history_oper_id
INSERT INTO MSHA_History
(msha_controller_history_oper_id)
SELECT DISTINCT msha_controller_history_oper_id
FROM MSHA_Full


Use MSHA
UPDATE MSHA_History
SET	MSHA_History.msha_controller_history_oper_id = MSHA_Full.msha_controller_history_oper_id,
	MSHA_History.msha_controller_history_ctrlr_start_dt = MSHA_Full.msha_controller_history_ctrlr_start_dt,
	MSHA_History.msha_controller_history_ctrlr_nm = MSHA_Full.msha_controller_history_ctrlr_nm,
	MSHA_History.msha_controller_history_oper_nm = MSHA_Full.msha_controller_history_oper_nm,
    MSHA_History.msha_Mine_office_cd = MSHA_Full.msha_Mine_office_cd, 
    MSHA_History.msha_Mine_office_name = MSHA_Full.msha_Mine_office_name,
	MSHA_History.msha_Mine_company_type = MSHA_Full.msha_Mine_company_type,      
	MSHA_History.msha_Mine_employee_cnt = MSHA_Full.msha_Mine_employee_cnt,
	MSHA_History.msha_Mine_state_abbr = MSHA_Full.msha_Mine_state_abbr,
	MSHA_History.msha_Mine_oper_nm = MSHA_Full.msha_Mine_oper_nm,
	MSHA_History.msha_Mine_longitude = MSHA_Full.msha_Mine_longitude,
	MSHA_History.msha_Mine_latitude = MSHA_Full.msha_Mine_latitude,
	MSHA_History.msha_Mine_maint_shifts_per_day = MSHA_Full.msha_Mine_maint_shifts_per_day,
	MSHA_History.msha_Mine_prod_shifts_per_day = MSHA_Full.msha_Mine_prod_shifts_per_day,
	MSHA_History.msha_Mine_hrs_per_shift = MSHA_Full.msha_Mine_hrs_per_shift

FROM MSHA_Full
WHERE MSHA_History.msha_controller_history_oper_id =  MSHA_Full.msha_controller_history_oper_id
GO

--- MSHA_CurrentState (Current mining status)

Use MSHA
UPDATE MSHA_CurrentState
SET MSHA_CurrentState.msha_Mine_curr_mine_nm = MSHA_Full.msha_Mine_curr_mine_nm
FROM MSHA_Full
WHERE MSHA_CurrentState.msha_Mine_curr_mine_nm = MSHA_Full.msha_Mine_curr_mine_nm
INSERT INTO MSHA_CurrentState
(msha_Mine_curr_mine_nm)
SELECT DISTINCT msha_Mine_curr_mine_nm
FROM MSHA_Full


Use MSHA
UPDATE MSHA_CurrentState
SET	MSHA_CurrentState.msha_Mine_curr_mine_nm = MSHA_Full.msha_Mine_curr_mine_nm,
	MSHA_CurrentState.msha_Mine_mine_type_cd = MSHA_Full.msha_Mine_mine_type_cd,
	MSHA_CurrentState.msha_Mine_curr_stat_cd = MSHA_Full.msha_Mine_curr_stat_cd,
	MSHA_CurrentState.msha_Mine_curr_stat_dt = MSHA_Full.msha_Mine_curr_stat_dt,
    MSHA_CurrentState.msha_Mine_office_cd = MSHA_Full.msha_Mine_office_cd, 
    MSHA_CurrentState.msha_Mine_office_name = MSHA_Full.msha_Mine_office_name,
	MSHA_CurrentState.msha_Mine_company_type = MSHA_Full.msha_Mine_company_type,      
	MSHA_CurrentState.msha_Mine_employee_cnt = MSHA_Full.msha_Mine_employee_cnt,
	MSHA_CurrentState.msha_Mine_state_abbr = MSHA_Full.msha_Mine_state_abbr,
	MSHA_CurrentState.msha_Mine_oper_nm = MSHA_Full.msha_Mine_oper_nm,
	MSHA_CurrentState.msha_Mine_longitude = MSHA_Full.msha_Mine_longitude,
	MSHA_CurrentState.msha_Mine_latitude = MSHA_Full.msha_Mine_latitude
	
FROM MSHA_Full
WHERE MSHA_CurrentState.msha_Mine_curr_mine_nm =  MSHA_Full.msha_Mine_curr_mine_nm
GO

-----MSHA_Sample table creation (Survey that was conducted)
Use MSHA
UPDATE MSHA_MineSample
SET MSHA_MineSample.msha_Mine_curr_mine_nm = MSHA_Full.msha_Mine_curr_mine_nm
FROM MSHA_Full
WHERE MSHA_MineSample.msha_Mine_curr_mine_nm = MSHA_Full.msha_Mine_curr_mine_nm
INSERT INTO MSHA_MineSample
(msha_Mine_curr_mine_nm)
SELECT DISTINCT msha_Mine_curr_mine_nm
FROM MSHA_Full


Use MSHA
UPDATE MSHA_MineSample
SET	MSHA_MineSample.msha_Mine_curr_mine_nm = MSHA_Full.msha_Mine_curr_mine_nm,
	MSHA_MineSample.msha_Inspect_sample_cnt_air = MSHA_Full.msha_Inspect_sample_cnt_air,
	MSHA_MineSample.msha_Inspect_sample_cnt_dustspot = MSHA_Full.msha_Inspect_sample_cnt_dustspot,
	MSHA_MineSample.msha_Inspect_sample_cnt_dustsurvey = MSHA_Full.msha_Inspect_sample_cnt_dustsurvey,
    MSHA_MineSample.msha_Inspect_sample_cnt_respdust = MSHA_Full.msha_Inspect_sample_cnt_respdust, 
    MSHA_MineSample.msha_Inspect_sample_cnt_noise = MSHA_Full.msha_Inspect_sample_cnt_noise,
	MSHA_MineSample.msha_Inspect_sample_cnt_other = MSHA_Full.msha_Inspect_sample_cnt_other,      
	MSHA_MineSample.msha_Mine_longitude = MSHA_Full.msha_Mine_longitude,
	MSHA_MineSample.msha_Mine_latitude = MSHA_Full.msha_Mine_latitude
	
FROM MSHA_Full
WHERE MSHA_MineSample.msha_Mine_curr_mine_nm =  MSHA_Full.msha_Mine_curr_mine_nm
GO

