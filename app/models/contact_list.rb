class ContactList < ApplicationRecord
has_many :contact_list_mappings
has_many :contacts, through: :contact_list_mappings

validates_presence_of :name, uniqueness: true
end

