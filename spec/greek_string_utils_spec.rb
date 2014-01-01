# coding: utf-8

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

  it 'should remove accents & diaeresis' do
    a = 'αυτο είναι μϊα φράση με τόνους και δΪαρεΐσεις'
    remove_accents(a).should eql('αυτο ειναι μια φραση με τονους και δΙαρεισεις')
  end

  it 'should make valid sorting to greek letters' do
    a = %w(α ά)
    greek_sort(a).should eql(%w(ά α))
  end

  it 'should detect accents in greek letters' do
    a = 'τραγούδι'
    has_accent?(a).should eql(true)
  end

  it 'should make valid sorting to greek word' do
    a = %w(άβ αα)
    greek_sort(a).should eql(%w(αα άβ))
  end

  it 'should sort valid taking account accents' do
    a = %w(αβ άβ άα αα)
    greek_sort(a).should eql(%w(άα αα άβ αβ))
  end

  it 'should sort mixed letters' do
    a = %w(α αβ άβας)
    greek_sort(a).should eql(%w(α αβ άβας))
  end

  it 'should keep ή in upcase as Ή' do
    a = 'ή'
    upperfix(a).should eql('Ή')
  end

end
