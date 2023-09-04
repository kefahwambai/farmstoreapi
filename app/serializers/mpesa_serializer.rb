class MpesaSerializer < ActiveModel::Serializer
  attributes :id, :phonenumber, :amount, :checkoutRequestID, :merchantRequestID, :mpesaReceiptNumber
end
