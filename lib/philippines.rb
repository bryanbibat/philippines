require "philippines/version"
require "yaml"

module Philippines
  
  REGION_DATA = YAML.load_file(File.join(File.dirname(__FILE__),"philippines", "data", "regions_provinces.yml"))

  REGIONS = REGION_DATA.keys

  PROVINCE_DATA = YAML.load_file(File.join(File.dirname(__FILE__),"philippines", "data", "provinces_municipalities.yml"))

  PROVINCES = PROVINCE_DATA.keys.sort

  CITIES = PROVINCE_DATA.map { |_, v| v["cities"] }.flatten.compact.sort
  MUNICIPALITIES = PROVINCE_DATA.map { |_, v| v["municipalities"] }.flatten.compact.sort
  MUNICIPALITIES_WITH_PROVINCE = PROVINCE_DATA.map do |province, v| 
    v["municipalities"].map { |m| "#{m}, #{province}"}
  end.flatten.sort

end
