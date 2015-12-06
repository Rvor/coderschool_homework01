class Fooditem < ActiveRecord::Base
  belongs_to :section

  def self.search(section, search)
    if section
      if search
        where("section_id = ? AND name like ?", section, "%#{search}%")
      else
        where("section_id = ?", section)
      end
    else
      if search
        where("name like ?", "%#{search}%")
      else
        scoped
      end
    end
  end
end
