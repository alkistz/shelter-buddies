class Shelter::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:name, :address, :description])
    permit(:account_update, keys: [:name, :address, :description])
  end
end
