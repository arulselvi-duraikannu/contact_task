class Contact < ApplicationRecord
has_many :contact_list_mappings, :dependent => :delete_all
has_many :contact_lists, through: :contact_list_mappings
accepts_nested_attributes_for :contact_lists, :reject_if => lambda { |a| a[:contact_list_id].blank? }
validates_presence_of :name
validates_presence_of :email
validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

end
