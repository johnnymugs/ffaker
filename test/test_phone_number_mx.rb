# encoding: utf-8
# => author: guapolo github.com/guapolo
require 'helper'

class TestPhoneNumberMX < Test::Unit::TestCase
  def setup
    @tester = Faker::PhoneNumberMX
  end
  
  def test_mobile_phone_number
    assert_match /044 \d{2} \d{4} \d{4}/, @tester.mobile_phone_number
  end

  def test_home_work_phone_number
    assert_match /\d{2} \d{4} \d{4}/, @tester.home_work_phone_number
  end

  def test_phone_number
    10.times do
      assert_match /(044 )*\d{2} \d{4} \d{4}/, @tester.phone_number
    end
  end

  def test_international_mobile_phone_number
    assert_match /\+52 1 \d{2} \d{4} \d{4}/, @tester.international_mobile_phone_number
  end

  def test_international_home_work_phone_number
    assert_match /\+52 \d{2} \d{4} \d{4}/, @tester.international_home_work_phone_number
  end

  def test_international_phone_number
    10.times do
      assert_match /\+52 (\d )*\d{2} \d{4} \d{4}/, @tester.international_phone_number
    end
  end
  
  def test_toll_free_phone_number
    assert_match /01 800 \d{3} \d{4}/, @tester.toll_free_number
  end
end

