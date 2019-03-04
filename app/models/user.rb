class User < ApplicationRecord
  has_many :user_workspaces
  has_many :workspaces, through: :user_workspaces
end
