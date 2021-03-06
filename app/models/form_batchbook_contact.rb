class FormBatchbookContact
  include Forms::Models::Extension
  attr_reader :config, :data
  
  def initialize(form, page, config)
    @data   = page.data
    @config = config
  end

  def create
    ApiCaller.authenticate( config[:account], config[:token] )
    ApiCaller.add_contact(@data[:contact][:email], @data[:contact][:first_name], @data[:contact][:last_name])
    
    {:hash => 'these details will be returned to the result page namespaced under batchbook_contact'}
    
  end
  
end