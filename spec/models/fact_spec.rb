require 'rails_helper'

describe Fact do
  it {should validate_presence_of :title}
end
