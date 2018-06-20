class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :resumes

  def resumes
    self.object.resumes
  end

end
