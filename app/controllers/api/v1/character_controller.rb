class Api::V1::CharacterController < ApiController
    require "base64"
    require 'json'

    def get_all_characters
        @names = []
        Character.all.each do |character|
            @names.push(character.fullname)
        end
        puts @names
        return json: @names 
    end

end
