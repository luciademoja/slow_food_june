require './lib/models/user'

describe User do
  it { is_expected.to have_property :id }
  it { is_expected.to have_property :username }
  it { is_expected.to have_property :password }
  it { is_expected.to have_property :admin }

  it 'responds to #admin? as true if admin' do
    admin = User.create(username: 'whatever',
                        password: 'password',
                        admin: true)
    expect(admin.admin?).to eq true
  end

  it 'responds to #admin? as false if visitor' do
    admin = User.create(username: 'whatever',
                        password: 'password')
    expect(admin.admin?).to eq false
  end
end