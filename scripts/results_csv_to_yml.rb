#!/usr/bin/env ruby

require "csv"
require "yaml"

results = { "contestants" => { 
  "cadet" => [], "cadet_top"  => [],
  "junior" => [], "junior_top" => [],
  "senior" => [], "senior_top" => [] 
  } }
secret = { "cadet" => 8, "junior" => 9, "senior" => 8 }

CSV.foreach("final.csv", {:encoding => 'utf-8', :headers => true}) do |row|

  cat = case row[3]
    when "CAD"
       "cadet"
    when "JUN"
      "junior"
    when "SEN"
      "senior"
  end

  year = case row[15].to_i
  when 7
     "year_1st"
  when 8
     "year_2nd"
  when 9
     "year_3rd"
  when 10
     "year_4th"
  when 11
     "year_5th"
  when 12
     "year_6th"
  end

  position = row[7].to_i

  if position <= secret[cat]
    results["contestants"]["#{cat}_top"] << {
      :lastname => row[2],
      :name => "#{row[1]} #{row[2]}",
      :school => row[13],
      :year => year
    }
  else
    results["contestants"][cat] << {
      :position => position,
      :score => row[6].to_i,
      :name => "#{row[1]} #{row[2]}",
      :school => row[13],
      :year => year
    }
  end
end

results["contestants"]["cadet_top"].sort_by! { |c| c[:lastname] }
results["contestants"]["junior_top"].sort_by! { |c| c[:lastname] }
results["contestants"]["senior_top"].sort_by! { |c| c[:lastname] }

puts results.to_yaml
