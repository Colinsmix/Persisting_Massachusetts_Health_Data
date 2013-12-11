# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'CSV'
def remove_commas(string)
  string.gsub(/[^\d\.]/, '')
end


filename = 'db/data/mass_health_data.csv'
CSV.foreach(filename, headers:true) do |row|
  TownHealthRecord.find_or_initialize_by({geography: row['geography']}) do |hr|
    hr.geography = row['geography']
    hr.total_pop_2005 = remove_commas(row['total_pop_2005'])
    hr.age_0_to_19_2005 = remove_commas(row['age_0_to_19_2005'])
    hr.age_65_plus_2005 = remove_commas(row['age_65_plus_2005'])
    hr.per_capita_income_2000 = remove_commas(row['per_capita_income_2000'])
    hr.persons_living_below_200_percent_poverty_2000 = remove_commas(row['persons_living_below_200_percent_poverty_2000'])
    hr.percent_all_persons_living_below_200_percent_poverty_level_2000 = remove_commas(row['percent_all_persons_living_below_200_percent_poverty_level_2000'])
    hr.percent_adequacy_prenatal_care_kotelchuck = remove_commas(row['percent_adequacy_prenatal_care_kotelchuck'])
    hr.percent_c_section_deliveries_2005_to_2008 = remove_commas(row['percent_c_section_deliveries_2005_to_2008'])
    hr.number_of_infant_deaths_2005_to_2008 = remove_commas(row['number_of_infant_deaths_2005_to_2008'])
    hr.infant_mortality_rate_deaths_per_1000_live_births_2005_to_2008 = remove_commas(row['infant_mortality_rate_deaths_per_1000_live_births_2005_to_2008'])
    hr.percent_low_birthweight_2005_to_2008 = remove_commas(row['percent_low_birthweight_2005_to_2008'])
    hr.percent_multiple_births_2005_to_2008 = remove_commas(row['percent_multiple_births_2005_to_2008'])
    hr.percent_publicly_financed_prenatal_care_2005_to_2008 = remove_commas(row['percent_publicly_financed_prenatal_care_2005_to_2008'])
    hr.percent_teen_births_2005_to_2008 = remove_commas(row['percent_teen_births_2005_to_2008'])
    hr.save!
  end
end