require 'spec_helper'

describe 'randomization in RSpec' do
  it 'works' do
    5.times { print rand(99) }
  end
end
