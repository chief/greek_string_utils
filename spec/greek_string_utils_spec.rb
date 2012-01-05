# encoding: utf-8

require 'greek_string_utils'

describe 'GreekStringUtils' do

  include GreekStringUtils

  it 'should upcase greek letters' do
    a = 'αυτό είναι ένα τεστ'
    upperfix(a).should eql('ΑΥΤΟ ΕΙΝΑΙ ΕΝΑ ΤΕΣΤ')
  end

  it 'should upcase greek letters mixin with english' do
    a = 'αυτό einai ένα test'
    upperfix(a).should eql('ΑΥΤΟ EINAI ΕΝΑ TEST')
  end

end
