require './config/environment'

# error if we forget to run migration
if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# first controller "run" every other "use"
run ApplicationController
