class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]
         
  def self.find_for_oauth(auth)
    #ユーザーデータ取得
    user = User.where(uid: auth.uid, provider: auth.provider).first
 
    unless user
    #登録されてなかったらauthからユーザーデータを生成して保存
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        password: Devise.friendly_token[0, 20],
        image: auth.info.image,
        name: auth.info.name,
        nickname: auth.info.nickname,
        location: auth.info.location
        )
    end
    user
  end
  
  
end
