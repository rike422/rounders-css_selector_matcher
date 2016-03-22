require 'spec_helper'

describe Rounders::CssSelectorMatcher::CssSelector do
  let(:described_class) { Rounders::CssSelectorMatcher::CssSelector }
  let(:described_instance) { described_class.new(*arguments) }
  let(:selector) { 'body div.header h2' }
  let(:arguments) { [selector] }
  let(:mail) do
    mail = Mail.new do
      html_part do
        content_type 'text/html; charset=UTF-8'
        body <<EOF
    <div class="header">
      <h2> head text </h2>
    </div>
    <div class="footer">
      <h2> foot text </h2>
    </div>
EOF
      end
    end
  end
  describe '#match' do
    subject { described_instance.match(mail) }
    it { expect(subject.to_s).to eql '<h2> head text </h2>' }
  end
end
