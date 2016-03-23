# Rounders::CssSelectorMatcher [![Build Status](https://travis-ci.org/rike422/rounders-css_selector_matcher.svg?branch=master)](https://travis-ci.org/rike422/rounders-css_selector_matcher) [![Code Climate](https://codeclimate.com/github/rike422/rounders-css_selector_matcher/badges/gpa.svg)](https://codeclimate.com/github/rike422/rounders-css_selector_matcher) [![Coverage Status](https://coveralls.io/repos/github/rike422/rounders-css_selector_matcher/badge.svg?branch=master)](https://coveralls.io/github/rike422/rounders-css_selector_matcher?branch=master)


[Rounders plugin](https://github.com/rike422/rounders), be able to matches by css selector

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rounders'
gem 'rounders-css_selector_matcher'
```

## Usage

```ruby
module Rounders
  module Handlers
    class YourHandler < Rounders::Handlers::Handler
      # css selector match 
      on({ css_selector: 'body .header h2' }, method1)
		  
      def method1(mail)
        matches[:css_selector]
        # =>[#<Nokogiri::XML::Element:0x3fc6d77f6ccc name="h2" children=[#<Nokogiri::XML::Text:0x3fc6d77f6ad8 " head text ">]>]
        matches[:css_selector].to_s
        # => '<h2> head text </h2>'
      end
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rounders-css_selector_matcher. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

