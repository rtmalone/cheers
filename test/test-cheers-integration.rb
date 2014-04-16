require_relative "helper"

class TestCheersIntegration < MiniTest::Unit::TestCase

  def test_with_a_normal_name
    shell_output = ""
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts "Tyler"
      pipe.close_write
      shell_output = pipe.read
    end

    expected_output = <<-EOS
What's your name?
Give me a...T
Give me a...Y
Give me a...L
Give me an..E
Give me a...R
TYLER's just GRAND
EOS

    assert_equal expected_output, shell_output
  end

  def test_with_all_lowercase
    shell_output = ""
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts "courtney"
      pipe.close_write
      shell_output = pipe.read
    end

    expected_output = <<-EOS
What's your name?
Give me a...C
Give me an..O
Give me an..U
Give me a...R
Give me a...T
Give me a...N
Give me an..E
Give me a...Y
COURTNEY's just GRAND
EOS

    assert_equal expected_output, shell_output
  end

  def test_with_all_uppercase
    shell_output = ""
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts "POPTART"
      pipe.close_write
      shell_output = pipe.read
    end

    expected_output = <<-EOS
What's your name?
Give me a...P
Give me an..O
Give me a...P
Give me a...T
Give me an..A
Give me a...R
Give me a...T
POPTART's just GRAND
EOS
    assert_equal expected_output, shell_output
  end
end
