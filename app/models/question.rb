class Question < ActiveRecord::Base
  attr_accessible :notes, :title

  validates_presence_of :title
  
  scope :unanswered, -> { where(answered: false) }
  scope :answered, -> { where(answered: true) }

  def self.search(term)
    return scoped unless term

    term.downcase!
    where('LOWER(title) LIKE ? OR LOWER(notes) LIKE ?', "%#{term}%", "%#{term}%")
  end

end
