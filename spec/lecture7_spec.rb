require "spec_helper"

describe Lecture7 do
  it "has a version number" do
    expect(Lecture7::VERSION).not_to be nil
  end

  it "returns a list of movie names" do
    VCR.use_cassette("movies") do
      search = Lecture7::Phim123.new url: "http://123phim.vn/phim"

      expect(search.movies.first).to eq "Sinh Vật Huyền Bí Và Nơi Tìm Ra Chúng"
    end
  end

  it "returns [] by default" do
    expect(Lecture7::Search.new.movies).to eq []
  end
end
