require 'rails_helper'

describe Lesson do

  it { should validate_presence_of :name }
  it { should validate_presence_of :text }
  it { should validate_numericality_of :lesson }

end
