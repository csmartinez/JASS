class Progression < ApplicationRecord
	belongs_to :user
	belongs_to :scenario

	validates_uniqueness_of :user_id, :scope => :scenario_id
end
