json.extract! thing, :id, :thing_image, :title, :description, :owner_id, :loanee_id, :category_id, :user_id, :created_at, :updated_at
json.url thing_url(thing, format: :json)