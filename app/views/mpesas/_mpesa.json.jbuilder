json.extract! mpesa, :id, :phonenumber, :amount, :checkoutRequestID, :merchantRequestID, :mpesaReceiptNumber, :created_at, :updated_at
json.url mpesa_url(mpesa, format: :json)
