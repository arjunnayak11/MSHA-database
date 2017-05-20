--  MSHA_Mine Table Creation

USE MSHA;  

IF OBJECT_ID (N'dbo.MSHA_Mine', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_Mine;
GO

CREATE TABLE MSHA_Mine(
	msha_Mine_mine_id VARCHAR(50),
	msha_Mine_curr_mine_nm VARCHAR(500),
	msha_Mine_c_m_ind VARCHAR(50),
	msha_Mine_mine_type_cd VARCHAR(50),
	msha_Mine_curr_stat_cd VARCHAR(50),
	msha_Mine_curr_stat_dt VARCHAR(50),
	msha_Mine_controller_id VARCHAR(50),--created a table for controller using this ID
	msha_Mine_controller_nm VARCHAR(500),--created a table for controller using this name
	msha_Mine_oper_id VARCHAR(50),
	msha_Mine_oper_nm VARCHAR(500),
	msha_Mine_state_abbr VARCHAR(50),
	msha_Mine_fips_cnty_nm VARCHAR(500),
	msha_Mine_curr_ownr_beg_dt VARCHAR(50),
	msha_Mine_full_sic_cd VARCHAR(50),
	msha_Mine_sic_desc VARCHAR(500),
	msha_Mine_bom_state_cd VARCHAR(50),
	msha_Mine_fips_cnty_cd VARCHAR(50),
	msha_Mine_cong_dist_cd VARCHAR(50),
	msha_Mine_company_type VARCHAR(50),
	msha_Mine_district VARCHAR(50),
	msha_Mine_office_cd VARCHAR(50),
	msha_Mine_office_name VARCHAR(500),
	msha_Mine_assess_ctrl_no VARCHAR(50),
	msha_Mine_primary_sic_cd_grp VARCHAR(50),
	msha_Mine_primary_sic_cd_sfx VARCHAR(50),
	msha_Mine_secondary_sic_cd VARCHAR(50),
	msha_Mine_secondary_sic_desc VARCHAR(500),
	msha_Mine_secondary_sic_cd_sfx VARCHAR(50),
	msha_Mine_secondary_sic_cd_grp VARCHAR(50),
	msha_Mine_primary_canvass_cd VARCHAR(50),
	msha_Mine_primary_canvass_desc VARCHAR(500),
	msha_Mine_secondary_canvass_cd VARCHAR(50),
	msha_Mine_secondary_canvass_desc VARCHAR(500),
	msha_Mine_mine_103i_desc VARCHAR(500),
	msha_Mine_curr_103i_cd VARCHAR(50),
	msha_Mine_curr_103i_dt VARCHAR(50),
	msha_Mine_port_oprn_ind VARCHAR(50),
	msha_Mine_port_fips_state_cd VARCHAR(50),
	msha_Mine_days_per_week VARCHAR(50),
	msha_Mine_hrs_per_shift VARCHAR(50),
	msha_Mine_prod_shifts_per_day VARCHAR(50),
	msha_Mine_maint_shifts_per_day VARCHAR(50),
	msha_Mine_employee_cnt VARCHAR(50),
	msha_Mine_exempt_ind VARCHAR(50),
	msha_Mine_longitude VARCHAR(50),
	msha_Mine_latitude VARCHAR(50),
	msha_Mine_avg_mine_height VARCHAR(50),
	msha_Mine_mine_gas_category_cd VARCHAR(50),
	msha_Mine_methn_librtn VARCHAR(50),
	msha_Mine_prod_pits_cnt VARCHAR(50),
	msha_Mine_non_prod_pits_cnt VARCHAR(50),
	msha_Mine_tail_pond_cnt VARCHAR(50),
	msha_Mine_pillar_rcvry_ind VARCHAR(50),
	msha_Mine_highwall_mnr_ind VARCHAR(50),
	msha_Mine_multiple_pits_ind VARCHAR(50),
	msha_Mine_miners_rep_ind VARCHAR(50),
	msha_Mine_safety_committee_ind VARCHAR(50),
	msha_Mine_mine_miles_ofc VARCHAR(50),
	msha_Mine_directions_to_mine VARCHAR(3500),
	msha_Mine_nearest_town VARCHAR(50),
	msha_Mine_sic_code_4_digit VARCHAR(50)
	PRIMARY KEY (msha_Mine_mine_id))
GO

--  MSHA_Inspect Table Creation

USE MSHA;

IF OBJECT_ID (N'dbo.MSHA_Inspect', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_Inspect;
GO

CREATE TABLE MSHA_Inspect (
    msha_Inspect_event_no VARCHAR(50),
	msha_Mine_mine_id VARCHAR(50), --used from mine table since it's the same data
	msha_Inspect_acty_cd VARCHAR(50),
	msha_Inspect_acty_desc VARCHAR(500),
	msha_Inspect_beg_dt VARCHAR(50),
	msha_Inspect_end_dt VARCHAR(50),
	msha_Mine_controller_id VARCHAR(50),--created a table for controller using this ID from Mine table
	msha_Mine_controller_nm VARCHAR(500),--created a table for controller using this name from Mine table
	msha_Inspect_operator_id VARCHAR(50),
	msha_Inspect_operator_name VARCHAR(500),
	msha_Inspect_cal_yr VARCHAR(50),
	msha_Inspect_cal_qtr VARCHAR(50),
	msha_Inspect_fiscal_yr VARCHAR(50),
	msha_Inspect_fiscal_qtr VARCHAR(50),
	msha_Inspect_inspect_office_cd VARCHAR(50),
	msha_Inspect_active_sections VARCHAR(50),
	msha_Inspect_idle_sections VARCHAR(50),
	msha_Inspect_shaft_slope_sink VARCHAR(50),
	msha_Inspect_impound_constr VARCHAR(50),
	msha_Inspect_bldg_constr_sites VARCHAR(50),
	msha_Inspect_draglines VARCHAR(50),
	msha_Inspect_unclassified_constr VARCHAR(50),
	msha_Inspect_co_records VARCHAR(50),
	msha_Inspect_surf_ug_mine VARCHAR(50),
	msha_Inspect_surf_facility_mine VARCHAR(50),
	msha_Inspect_refuse_piles VARCHAR(50),
	msha_Inspect_explosive_storage VARCHAR(50),
	msha_Inspect_outby_areas VARCHAR(50),
	msha_Inspect_major_constr VARCHAR(50),
	msha_Inspect_shafts_slopes VARCHAR(50),
	msha_Inspect_impoundments VARCHAR(50),
	msha_Inspect_misc_area VARCHAR(50),
	msha_Inspect_program_area VARCHAR(50),
	msha_Inspect_sample_cnt_air VARCHAR(50),
	msha_Inspect_sample_cnt_dustspot VARCHAR(50),
	msha_Inspect_sample_cnt_dustsurvey VARCHAR(50),
	msha_Inspect_sample_cnt_respdust VARCHAR(50),
	msha_Inspect_sample_cnt_noise VARCHAR(50),
	msha_Inspect_sample_cnt_other VARCHAR(50),
	msha_Inspect_nbr_inspectors VARCHAR(50),
	msha_Inspect_total_on_site_hours VARCHAR(50),
	msha_Inspect_total_insp_hours VARCHAR(50),
	msha_Inspect_coal_metal_ind VARCHAR(50),
	msha_Inspect_inspection_begin_year VARCHAR(50),
	msha_Inspect_inspection_end_year VARCHAR(50),
	msha_Inspect_state_abbr VARCHAR(50),
	msha_Inspect_sic_code_4_digit VARCHAR(50),
	msha_Mine_mine_type_cd VARCHAR(50),	--used from mine table since it's the same data
	msha_Mine_curr_mine_nm VARCHAR(500),--used from mine table since it's the same data
	msha_Inspect_curr_stat_cd VARCHAR(50),
	msha_inspect_curr_stat_dt VARCHAR(50),
	msha_Inspect_sig_sub_y VARCHAR(500),
	msha_Inspect_sig_sub_n VARCHAR(50)
	PRIMARY KEY (msha_Inspect_event_no, msha_Mine_mine_id)) --Composite Key
GO  

--  MSHA_Contractor Table Creation

USE MSHA;  

IF OBJECT_ID (N'dbo.MSHA_Contractor', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_Contractor;
GO

CREATE TABLE MSHA_Contractor(
	msha_mine_contractor_cntctr_id VARCHAR(50),
	msha_mine_contractor_cntctr_nm VARCHAR(500),
	msha_Mine_mine_id VARCHAR(50),--used from mine table since it's the same data
	msha_mine_contractor_cntctr_start_dt VARCHAR(500),
	msha_mine_contractor_cntctr_end_dt VARCHAR(50)
	PRIMARY KEY (msha_mine_contractor_cntctr_id))
GO

--  MSHA_Controller Table Creation

USE MSHA;  

IF OBJECT_ID (N'dbo.MSHA_Controller', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_Controller;
GO

CREATE TABLE MSHA_Controller(
	msha_Mine_controller_id VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_controller_nm VARCHAR(500),--used from mine table since it's the same data
	msha_controller_history_oper_id VARCHAR(50),
	msha_controller_history_ctrlr_start_dt VARCHAR(50),
	msha_controller_history_ctrlr_end_dt VARCHAR(50),
	msha_controller_history_oper_nm VARCHAR(500)
	PRIMARY KEY (msha_Mine_controller_id))
GO

--  MSHA_Commodity Table Creation

USE MSHA;  

IF OBJECT_ID (N'dbo.MSHA_Commodity', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_Commodity;
GO

CREATE TABLE MSHA_Commodity(
	msha_Mine_full_sic_cd VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_sic_desc VARCHAR(500), --used from mine table since it's the same data
	msha_commodity_lookup_naics_cd VARCHAR(50),
	msha_commodity_lookup_sffx_cd VARCHAR(50),
	msha_commodity_lookup_old_sic_cd VARCHAR(50),
	msha_commodity_lookup_actv_ind VARCHAR(50),
	msha_commodity_lookup_actv_dt VARCHAR(50),
	msha_commodity_lookup_inactv_dt VARCHAR(50)
	PRIMARY KEY (msha_Mine_full_sic_cd))
GO

IF OBJECT_ID (N'dbo.MSHA_Employee', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_Employee;
GO

CREATE TABLE MSHA_Employee(
    msha_Mine_mine_id VARCHAR(50),
	msha_Mine_employee_cnt VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_exempt_ind VARCHAR(50),
	msha_Mine_sic_desc VARCHAR(500), --used from mine table since it's the same data
	msha_Mine_maint_shifts_per_day VARCHAR(50),
	msha_Mine_prod_shifts_per_day VARCHAR(50),
	msha_Mine_hrs_per_shift VARCHAR(50),
	PRIMARY KEY (msha_Mine_mine_id))
GO


IF OBJECT_ID (N'dbo.MSHA_State', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_State;
GO

CREATE TABLE MSHA_State(
    msha_Mine_mine_id VARCHAR(50),
	msha_Mine_employee_cnt VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_state_abbr VARCHAR(50),
	msha_Mine_oper_nm VARCHAR(500),
	msha_Mine_longitude VARCHAR(50),
	msha_Mine_latitude VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_maint_shifts_per_day VARCHAR(50),
	msha_Mine_prod_shifts_per_day VARCHAR(50),
	msha_Mine_hrs_per_shift VARCHAR(50),
	PRIMARY KEY (msha_Mine_mine_id))
GO


IF OBJECT_ID (N'dbo.MSHA_MineOffice', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_MineOffice;
GO

CREATE TABLE MSHA_MineOffice(
    msha_Mine_office_cd VARCHAR(50),
	msha_Mine_office_name VARCHAR(50),
	msha_Mine_company_type VARCHAR(50),
	msha_Mine_employee_cnt VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_state_abbr VARCHAR(50),
	msha_Mine_oper_nm VARCHAR(500),
	msha_Mine_longitude VARCHAR(50),
	msha_Mine_latitude VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_maint_shifts_per_day VARCHAR(50),
	msha_Mine_prod_shifts_per_day VARCHAR(50),
	msha_Mine_hrs_per_shift VARCHAR(50),
	PRIMARY KEY (msha_Mine_office_cd))
GO


IF OBJECT_ID (N'dbo.MSHA_History', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_History;
GO

CREATE TABLE MSHA_History(
    msha_controller_history_oper_id VARCHAR(50),
	msha_controller_history_ctrlr_start_dt VARCHAR(50),
	msha_controller_history_ctrlr_nm VARCHAR(500),
	msha_controller_history_oper_nm VARCHAR(500),
    msha_Mine_office_cd VARCHAR(50),
	msha_Mine_office_name VARCHAR(50),
	msha_Mine_company_type VARCHAR(50),
	msha_Mine_employee_cnt VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_state_abbr VARCHAR(50),
	msha_Mine_oper_nm VARCHAR(500),
	msha_Mine_longitude VARCHAR(50),
	msha_Mine_latitude VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_maint_shifts_per_day VARCHAR(50),
	msha_Mine_prod_shifts_per_day VARCHAR(50),
	msha_Mine_hrs_per_shift VARCHAR(50),
	PRIMARY KEY (msha_controller_history_oper_id))
GO


IF OBJECT_ID (N'dbo.MSHA_CurrentState', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_CurrentState;
GO

CREATE TABLE MSHA_CurrentState(
    
	msha_Mine_curr_mine_nm VARCHAR(500),
	msha_Mine_mine_type_cd VARCHAR(50),
	msha_Mine_curr_stat_cd VARCHAR(50),
	msha_Mine_curr_stat_dt VARCHAR(50),
    msha_Mine_office_cd VARCHAR(50),
	msha_Mine_office_name VARCHAR(50),
	msha_Mine_company_type VARCHAR(50),
	msha_Mine_employee_cnt VARCHAR(50), --used from mine table since it's the same data
	msha_Mine_state_abbr VARCHAR(50),
	msha_Mine_oper_nm VARCHAR(500),
	msha_Mine_longitude VARCHAR(50),
	msha_Mine_latitude VARCHAR(50), --used from mine table since it's the same data
	PRIMARY KEY (msha_Mine_curr_mine_nm))
GO


IF OBJECT_ID (N'dbo.MSHA_MineSample', N'U') IS NOT NULL
DROP TABLE dbo.MSHA_MineSample;
GO

CREATE TABLE MSHA_MineSample(
    msha_Mine_curr_mine_nm VARCHAR(500),
	msha_Inspect_sample_cnt_air VARCHAR(50),
	msha_Inspect_sample_cnt_dustspot VARCHAR(50),
	msha_Inspect_sample_cnt_dustsurvey VARCHAR(50),
	msha_Inspect_sample_cnt_respdust VARCHAR(50),
	msha_Inspect_sample_cnt_noise VARCHAR(50),
	msha_Inspect_sample_cnt_other VARCHAR(50),
	msha_Mine_longitude VARCHAR(50),
	msha_Mine_latitude VARCHAR(50),
PRIMARY KEY (msha_Mine_curr_mine_nm))
GO



