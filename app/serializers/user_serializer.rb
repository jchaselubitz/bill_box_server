class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :email, :password, :id, :workspaces
  # has_many :workspaces
  
  # class WorkspaceSerializer < ActiveModel::Serializer
  #   attributes :id, :name
  # end


end
