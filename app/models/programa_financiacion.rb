class ProgramaFinanciacion < ActiveRecord::Base
  has_many :licitacions
end

# == Schema Information
#
# Table name: programa_financiacions
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  nivel      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

