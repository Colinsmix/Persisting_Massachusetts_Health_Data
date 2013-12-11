class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.timestamps
      t.string :geography
      t.integer :total_pop_2005
      t.integer :age_0_to_19_2005
      t.integer :age_65_plus_2005
      t.integer :per_capita_income_2000
      t.integer :persons_living_below_200_percent_poverty_2000
      t.float :percent_all_persons_living_below_200_percent_poverty_level_2000
      t.float :percent_adequacy_prenatal_care_kotelchuck
      t.float :percent_c_section_deliveries_2005_to_2008
      t.integer :number_of_infant_deaths_2005_to_2008
      t.float :infant_mortality_rate_deaths_per_1000_live_births_2005_to_2008
      t.float :percent_low_birthweight_2005_to_2008
      t.float :percent_multiple_births_2005_to_2008
      t.float :percent_publicly_financed_prenatal_care_2005_to_2008
      t.float :percent_teen_births_2005_to_2008
    end
  end
end
