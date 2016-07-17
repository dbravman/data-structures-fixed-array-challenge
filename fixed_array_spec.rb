require_relative 'fixed_array'

describe FixedArray do
  let(:fixed_array) { FixedArray.new(3) }

  it "has get" do
    expect(fixed_array.get(0)).to be_nil
    expect(fixed_array.get(1)).to be_nil
    expect(fixed_array.get(2)).to be_nil
    expect {fixed_array.get(3)}.to raise_error("OutOfBoundsException")
  end

  it "has set" do
    expect(fixed_array.set(0,"test")).to eq("test")
    expect {fixed_array.set(3,"test")}.to raise_error("OutOfBoundsException")
  end 
end
