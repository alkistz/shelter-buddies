class Shelter::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:name, :address, :description, :photo])
    permit(:account_update, keys: [:name, :address, :description, :photo])
  end
end
