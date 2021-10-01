# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'abc', price: 9.99, date: 2020-01-01)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
      subject.author = nil
      expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
      subject.price = nil
      expect(subject).not_to be_valid
  end

  it 'is not valid with a negative price' do
      subject.price = -1
      expect(subject).not_to be_valid
  end

  it 'is not valid without a published date' do
      subject.date = nil
      expect(subject).not_to be_valid
  end
  
end
