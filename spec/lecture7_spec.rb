require "spec_helper"

describe Lecture7 do
  it "has a version number" do
    expect(Lecture7::VERSION).not_to be nil
  end

  it "returns a list of movie names" do
    expect(Lecture7::Movie.all).to eq []
  end
end
