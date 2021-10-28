class Note < ApplicationRecord

  belongs_to :user

  enum priority: %i[low media high], _default: :low

  validates :title, presence: true
  validates :content, presence: true

  before_validation :date_published

  def priority_color
    case priority
    when 'low'
      'bg-secondary'
    when 'media'
      'bg-info'
    else
      'bg-danger'
    end
  end

  private

  def date_published
    self.published = Time.now
  end
end
