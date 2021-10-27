FactoryBot.define do
  factory :note do
    title { "MyString" }
    content { "MyText" }
    published { "2021-10-27 09:44:21" }
    priority { 1 }
  end
end
