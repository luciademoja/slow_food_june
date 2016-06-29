class User
  include DataMapper::Resource

  property :id, Serial, key: true
  property :username, String, length: 128
  property :password, BCryptHash

  property :first_name, String, length: 128
  property :last_name, String, length: 128
  property :email, String, length: 128
  property :phone_number, String, length: 128

  def authenticate(attempted_password)
    if self.password == attempted_password
      true
    else
      false
    end
  end
end
