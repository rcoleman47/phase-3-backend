require './config/environment'

use Rack::JSONBodyParser

# if ActiveRecord::Base.connection.migration_context.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end


run ApplicationController
use SessionsController
use LineItemsController
use EstimatesController
use SubcontractorsController
use ProjectsController
use GeneralContractorsController
