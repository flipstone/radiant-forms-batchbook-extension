class ApiCaller

  def self.authenticate(account, token)
    BatchBook.account = account
    BatchBook.token = token
  end
  
  def self.add_contact(email, first_name, last_name)
    person = BatchBook::Person.find(:first, :params => {:email => email})

    if (person.nil?)
      person = BatchBook::Person.new(:first_name => first_name, :last_name => last_name, :notes => "Created via batchbook API")
      person.save
      person.add_location(:label => "work", :email => email)
      person.save
    end

  end
  
end