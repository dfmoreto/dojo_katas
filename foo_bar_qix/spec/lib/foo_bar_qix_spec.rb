require "foo_bar_qix"

describe FooBarQix do
  foo_bar_qix_cases = {
    3 => "FooFoo", 6 => "Foo", 33 => "FooFooFoo", 5 => "BarBar", 10 => "Bar*", 55 => "BarBarBar", 305 => "BarFoo*Bar", 54 => "FooBar",
    7 => "QixQix", 14 => "Qix", 77 => "QixQixQix", 27 => "FooQix", 35 => "BarQixFooBar", 101 => "1*1", 503 => "Bar*Foo", 506 => "Bar*6",
    3015 => "FooBarFoo*Bar"
  }

  context "#compute" do
    foo_bar_qix_cases.each do |number, result|
      it "with #{number} should be equal #{result}" do
        expect(FooBarQix.new(number).compute).to eq result
      end
    end
  end
end
