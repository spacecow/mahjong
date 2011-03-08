require File.dirname(__FILE__) + '/../spec_helper'

describe Table do
  it "should be valid" do
    Table.new.should be_valid
  end
end
