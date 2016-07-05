json.array!(@incomes) do |income|
  json.extract! income, :id, :title, :content, :user_id
  json.url income_url(income, format: :json)
end
