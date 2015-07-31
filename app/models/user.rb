class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

  def transfer_answers(uuid)
    Answer.where("uuid = ?", uuid).update_all(uuid: self.uid)
  end
end
