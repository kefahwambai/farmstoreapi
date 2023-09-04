json.extract! review, :id, :username, :email, :feedback, :created_at, :updated_at
json.url review_url(review, format: :json)
