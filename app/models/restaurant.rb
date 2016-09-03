class Restaurant < ActiveRecord::Base
	has_may :foods
end
