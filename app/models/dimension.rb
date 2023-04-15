# == Schema Information
#
# Table name: dimensions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Dimension < ApplicationRecord
  has_many :units
end
