class Note < ApplicationRecord

  enum priority: %i[low media high], _default: :low

  validates :title, presence: true
  validates :content, presence: true

  before_validation :date_published

  private

  def date_published
    self.published = Time.now
  end
end
