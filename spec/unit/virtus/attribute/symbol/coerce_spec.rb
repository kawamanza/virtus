require 'spec_helper'

describe Virtus::Attribute::Symbol, '#coerce' do
  subject { attribute.coerce(value) }

  let(:attribute) { described_class.new(:code).extend(Virtus::Attribute::Coercion) }

  context 'with a string' do
    let(:value) { 'foo' }

    it { should be(:foo) }
  end
end
