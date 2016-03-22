module Rounders
  module CssSelectorMatcher
    class CssSelector < Rounders::Matchers::Matcher
      attr_reader :pattern

      def initialize(pattern)
        @pattern = pattern
      end

      def match(mail)
        return if mail.html_part.blank?
        html_part = Nokogiri::HTML(mail.html_part.body.to_s)
        node = html_part.css(pattern)
        node.present? ? node : nil
      end
    end
  end
end
