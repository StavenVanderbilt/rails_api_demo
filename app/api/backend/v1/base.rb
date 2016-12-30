module Backend  
  module V1
    class Base < Api

    	format :json
    	prefix :backend

    	content_type :json, 'application/json;charset=UTF-8'
    	formatter :json, Grape::Formatter::Rabl

    	
		helpers do
			def permitted_params
				@permitted_params ||= declared(params, include_missing: false)
			end

			def logger
				Rails.logger
			end

		end

    	namespace :graduates do
    		mount Backend::V1::Graduates		
    	end
      
      # mount API::V1::AnotherResource
    end
  end
end  