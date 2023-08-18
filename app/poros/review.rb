class Review
  attr_reader :author,
              :name,
              :username,
              :avatar,
              :rating

  def initialize(attributes)
    @author = attributes[:author]
    @name = attributes[:author_details][:name]
    @username = attributes[:author_details][:username]
    @avatar = attributes[:author_details][:avatar_path]
    @rating = attributes[:author_details][:rating]
  end
end