require 'rails_helper'

describe List do
  it "should validate the presence of an item" do
    list_item = List.new({:item => '' })
    expect(list_item.save).to eq false
  end
end
