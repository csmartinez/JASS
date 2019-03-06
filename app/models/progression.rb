class Progression < ApplicationRecord
	belongs_to :user
	belongs_to :scenario

	validates_uniqueness_of :complete, :scope => [:user_id, :scenario_id]
end
