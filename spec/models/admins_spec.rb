require 'spec_helper'

describe Admin do
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :name }

end
