class Multimedia < ActiveRecord::Base
  belongs_to :video, :polymorphic => true
  # belongs_to :video, :as => :entity
  # belongs_to :video, :as => :entity
  # belongs_to :video, :as => :entity
  # belongs_to :video, :as => :entity
end