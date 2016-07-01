require './lib/models/order'

describe Order do
  it { is_expected.to have_property :id }
  it { is_expected.to have_property :created_on }
  it { is_expected.to have_property :active }
  it { is_expected.to have_many :order_items }
end
