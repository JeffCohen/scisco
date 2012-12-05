class Question < ActiveRecord::Base
  attr_accessible :notes, :title

  validates_presence_of :title

  def self.search(term)
    return scoped unless term

    term.downcase!
    where('LOWER(title) LIKE ? OR LOWER(notes) LIKE ?', "%#{term}%", "%#{term}%")
  end

end
