require 'philippines'
require 'active_support/all'

# Generate region files/directories

# Generate complete region data
File.open("region_data.xml", "w") { |f| f.write Philippines::REGION_DATA.to_xml }
File.open("region_data.js", "w") { |f|  f.write Philippines::REGION_DATA.to_json }

# Generate region list
File.open("regions.xml", "w") { |f| f.write Philippines::REGIONS.to_xml }
File.open("regions.js", "w") { |f| f.write Philippines::REGIONS.to_json }

# Generate regions directory
Dir.mkdir("regions") unless Dir.exists?("regions")
Dir.chdir("regions") do
  Philippines::REGION_DATA.each do |region, data|

    # Generate individual region information
    File.open("#{region}.xml", "w") do |f|
      f.write( { name: region }.merge(data).to_xml )
    end
    File.open("#{region}.js", "w") do |f| 
      f.write( { name: region }.merge(data).to_json )
    end

    # Generate province lists inside region directories
    Dir.mkdir(region) unless Dir.exists?(region)
    Dir.chdir(region) do
      File.open("provinces.xml", "w") { |f| f.write data["provinces"].to_xml }
      File.open("provinces.js", "w") { |f| f.write data["provinces"].to_json }
    end
  end
end

# Generate province files/directories

# Generate complete province data
File.open("province_data.xml", "w") { |f| f.write Philippines::PROVINCE_DATA.to_xml }
File.open("province_data.js", "w") { |f|  f.write Philippines::PROVINCE_DATA.to_json }

# Generate province list
File.open("provinces.xml", "w") { |f| f.write Philippines::PROVINCES.to_xml }
File.open("provinces.js", "w") { |f| f.write Philippines::PROVINCES.to_json }

# Generate provinces directory
Dir.mkdir("provinces") unless Dir.exists?("provinces")
Dir.chdir("provinces") do
  Philippines::PROVINCE_DATA.each do |province, data|

    # Generate individual province information
    File.open("#{province}.xml", "w") do |f|
      f.write( { name: province }.merge(data).to_xml )
    end
    File.open("#{province}.js", "w") do |f| 
      f.write( { name: province }.merge(data).to_json )
    end

    # Generate city/municipality lists inside province directories
    Dir.mkdir(province) unless Dir.exists?(province)
    Dir.chdir(province) do
      File.open("cities.xml", "w") { |f| f.write data["cities"].to_xml }
      File.open("cities.js", "w") { |f| f.write data["cities"].to_json }
      File.open("municipalities.xml", "w") { |f| f.write data["municipalities"].to_xml }
      File.open("municipalities.js", "w") { |f| f.write data["municipalities"].to_json }
      File.open("cities_and_municipalities.xml", "w") do |f| 
        f.write( (data["cities"] + data["municipalities"]).to_xml )
      end
      File.open("cities_and_municipalities.js", "w") do |f| 
        f.write( (data["cities"] + data["municipalities"]).to_json )
      end
    end
  end
end

# Generate cities list
File.open("cities.xml", "w") { |f| f.write Philippines::CITIES.to_xml }
File.open("cities.js", "w") { |f| f.write Philippines::CITIES.to_json }

# Generate municipalities list
File.open("municipalities.xml", "w") { |f| f.write Philippines::MUNICIPALITIES.to_xml }
File.open("municipalities.js", "w") { |f| f.write Philippines::MUNICIPALITIES.to_json }

# Generate municipalities with province list
File.open("municipalities_with_province.xml", "w") { |f| f.write Philippines::MUNICIPALITIES_WITH_PROVINCE.to_xml }
File.open("municipalities_with_province.js", "w") { |f| f.write Philippines::MUNICIPALITIES_WITH_PROVINCE.to_json }
