require "spec_helper"

describe Philippines do

  context "constants" do
    it { should have_constant(:REGIONS) }
    it { should have_constant(:PROVINCES) }
    it { should have_constant(:CITIES) }
    it { should have_constant(:MUNICIPALITIES) }
  end

  context "::REGIONS" do
    it "should be 17" do
      Philippines::REGIONS.count.should == 17
    end
  end
  context "::PROVINCES" do
    it "should be 80 + 1 (Metro Manila)" do
      Philippines::PROVINCES.count.should == 81
    end
  end
  context "::CITIES" do
    it "should be 143" do
      Philippines::CITIES.count.should == 143
    end
  end
  context "::MUNICIPALITIES" do
    it "should be 1491" do
      Philippines::MUNICIPALITIES.count.should == 1491
    end
  end

  context "::REGION_DATA" do
    let(:cities_from_region) { Philippines::REGION_DATA.map { |_, v| v["provinces"] }.flatten.sort }

    it "provinces should be consistent with PROVINCES" do
      cities_from_region.should == Philippines::PROVINCES
    end
  end
end
