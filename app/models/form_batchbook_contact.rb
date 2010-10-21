class FormBatchbookContact
  include Forms::Models::Extension
  attr_reader :config, :data
  
  def initialize(form, page, config)
    @data   = page.data
    @config = config
    # @body   = page.render_snippet(form)
  end

  def create
    ApiCaller.add_contact( 
      :account => "qre",
      :token => "izSJrfcpFT"
    )
    
    @success = true

    # return = {
    #   :hash => 'these details will be returned to the result page namespaced under batchbook_contact'  
    # }
  rescue Exception => exception
    @message = exception
    @success = false
  end
  
  def subject
    hash_retrieve(@data, @config[:field]['subject']) || @config[:subject]
  end
  
  def cc
    @config[:cc]
  end
  
  def success?
    @success || false
  end
  
  def message
    @message || nil
  end
  
  def files
    res = []
    data.each_value do |d|
      res << d if StringIO === d or Tempfile === d
    end
    res
  end
  
  def filesize_limit
    config[:filesize_limit] || nil
  end
  
  def headers
    @headers = { 'Reply-To' => reply_to }
    if sender
      @headers['Return-Path'] = sender
      @headers['Sender'] = sender
    end
  end
  
protected
  
  # takes object[value] || value and accesses the hash as hash[object][value] || hash[value]
  def hash_retrieve(hash, array)
    data = array.gsub("[","|").gsub("]","").split("|") rescue nil
    
    result = false
    result = hash.fetch(data[0]) unless data.nil?
    result = result.fetch(data[1]) if !data.nil? and data[1]
  end
  
end