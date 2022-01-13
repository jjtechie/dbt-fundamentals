SELECT seq_id, 
    company_vaccine,
    CASE
        WHEN CHARINDEX('_',company_vaccine) > 0 THEN SUBSTRING(company_vaccine, 1, CHARINDEX('_',company_vaccine)-1)
        ELSE company_vaccine
    END AS company,
    CASE
        WHEN CHARINDEX('_',company_vaccine) > 0 THEN SUBSTRING(company_vaccine, CHARINDEX('_',company_vaccine)+1, length(company_vaccine))
        ELSE 'N/A'
    END AS vaccine,
    license_holder,
    company_country,
    purchaser_country,
    purchaser_country_status,
    deal_value_usd,
    num_dose_procured,
    covid_case_million,
    num_dose_per_person,
    num_people_vaccinatable,
    population,
    perc_population_to_vaccinate,
    dose_intd_to_purchase,
    num_people_vaccinatable_addtl,
    perc_population_to_vaccinate_addtl,
    limited_reg_approval,
    full_reg_approval,
    agreement_status
 FROM COVID.STG.vaccine_procurement
