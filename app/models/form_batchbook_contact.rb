class FormBatchbookContact
  include Forms::Models::Extension
  attr_reader :config, :data
  
  def initialize(form, page, config)
    @data   = page.data
    @config = config
  end

  def create
    ApiCaller.authenticate( "qre", "izSJrfcpFT" )
    ApiCaller.add_contact("foo@bar.com", "fee", "bar")
    
    {:hash => 'these details will be returned to the result page namespaced under batchbook_contact'}
    
  end
  
end