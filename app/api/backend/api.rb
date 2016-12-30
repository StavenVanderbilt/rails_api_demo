module Backend
    class Api < Grape::API

        rescue_from :all do |e|
          log_exception(e)
          error!(e,500)
        end

        helpers do
          def logger
            Api.logger
          end
          def log_exception(e)
            logger.error("#{e.message}\n#{e.backtrace.join("\n")}")
          end
        end

        mount Backend::V1::Base
    end
end