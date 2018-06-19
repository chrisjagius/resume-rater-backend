class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :resumes

  def resumes
    self.object.resumes.map { |resume| resume.image_url  }
  end

end
