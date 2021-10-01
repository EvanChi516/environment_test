require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
	described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '20', publish_date: '1997-06-26')
  end

  it 'title is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'title is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
	described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '20', publish_date: '1997-06-26')
  end

  it 'author is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'author is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
	described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '20', publish_date: '1997-06-26')
  end

  it 'price is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'price is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
	described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '20', publish_date: '1997-06-26')
  end

  it 'publish date is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'publish date is not valid without a date' do
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end
end