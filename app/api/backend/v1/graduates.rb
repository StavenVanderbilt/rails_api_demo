module Backend
	module V1
    	class Graduates < Base

    		# include Backend::V1::Defaults

    		desc "Return all graduates"
    		get '/' do
    			Graduate.all
    		end

    		desc "Return a gradute"
    		params do
    			requires :id, type: String, desc: "ID of the gradute"
    		end

    		get '/:id' do
    			Graduate.find_by(id: params[:id])
    		end

    	end
    end
end
