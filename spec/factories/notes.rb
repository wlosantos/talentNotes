FactoryBot.define do
  factory :note do
    title { Faker::Lorem.sentence(word_count: 9, supplemental: true) }
    content { Faker::Lorem.paragraph(sentence_count: 80, supplemental: true, random_sentences_to_add: 4) }
    published { "2021-10-27 09:44:21" }
    priority { %i[low media high].sample }
    user { User.all.sample }
  end
end
