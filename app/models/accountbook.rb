class Accountbook < ActiveRecord::Base
  validates :subject,
    :presence => true
  validates :price,
    :presence => true,
    :numericality => {:only_integer => true},
    :exclusion => { :in => [0]}
  validates :date,
    :presence => true

end
