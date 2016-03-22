module Rounders
  module CssSelectorMatcher
    class CssSelector < Rounders::Machers::Matcher
      def match(mail)
        return if mail.html_part.blank?
        html_part = Nokogiri::HTML(mail.html_part)
        html_part.css(pattern)
      end
    end
  end
end
