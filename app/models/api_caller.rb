class ApiCaller
  
  def self.add_contact(options)
    BatchBook.account = options[:account]
    BatchBook.token = options[:token]

    person = BatchBook::Person.new(:first_name => 'FOO', :last_name => 'BAR', :notes => "Created via batchbook API")
    person.save

  end
  
end