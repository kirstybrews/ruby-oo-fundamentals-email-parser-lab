require 'pry'

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        #binding.pry
        final_list = []
        email_addresses = @email_addresses.split(/(\ |\,)/).uniq
        email_addresses.each do |each_email|
            if each_email.length > 1
                final_list << each_email
            end
        end
        final_list
    end

end

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
