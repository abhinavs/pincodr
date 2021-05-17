class Pin < ActiveRecord::Base
  validates_presence_of   :code, :name, :state
  validates_format_of     :code, :with => /\A\d{6}\Z/

  scope :by_code, lambda { |code| where("pins.code = ?", code) }
  scope :by_name, lambda { |name| where("pins.name LIKE ?", "#{name}%") }
  scope :by_tehsil, lambda { |tehsil| where("pins.tehsil = ?", tehsil) }
  scope :by_district, lambda { |district| where("pins.district = ?", district) }

  def self.find_like(str)
    return [] if str.length < 3
    where("code LIKE ? OR name LIKE ? ", "#{str}%", "#{str}%")
  end

  def attrs
    attrs_hash = attributes
    attrs_hash.delete('id')
    attrs_hash
  end

  def self.get(str, type)
    case type
    when :area
      by_name(str)
    when :taluk
    when :tehsil
      by_tehsil(str)
    when :district
      by_district(str)
    else
      by_code(str)
    end.all
  end

end
