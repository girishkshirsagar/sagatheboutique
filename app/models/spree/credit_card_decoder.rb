Spree::CreditCard.class_eval do

  remove_method :number
  remove_method :number=
  remove_method :verification_value
  remove_method :verification_value=

end
