class Event < ActiveRecord::Base
	 # validates_presence_of :organizer_name, :message => '%{organizer_name} needs to be filled out'
	 validates_length_of :organizer_name, :minimum => 5, :message => '%{organizer_name} needs to be at least 5 characters'
	 validates_format_of :organizer_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => "%{organizer_email} is incorrect"
	 validates_presence_of :title, :message => '%{title} needs to be filled out'
	 validates_uniqueness_of :title, :message => '%{title} name needs to be unique'
	 # validates_presence_of :date,  :message => '%{date} needs to be filled out'
	 validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :on => :create, :message => "^Date must be in the following format: mm/dd/yyyy"
end



# Prevent Events from being saved when: 


# WORKS: won't run date unless in correct format
# DOESN'T WORK: won't output error message if format is incorrect
# Need To ADD:  outputs error message-->The events date is in the past


