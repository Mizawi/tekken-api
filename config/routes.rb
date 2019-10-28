Rails.application.routes.draw do

  scope :api, defaults: { format: :json } do
    scope :v1 do
      scope module: 'api/v1' do
        resource :character
        resource :moves
        
        get '/characters', to: 'character#get_all_character_names'
      end
    end
  end
end
