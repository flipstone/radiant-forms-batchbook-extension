# hacked duplicate working around git submodule problem I can't quickly figure out..

class BatchbookFormsExtension < Radiant::Extension
  version '0.1'
  description 'Provides API call to Batchbook CRM from form input.'
  url 'http://github.com/flipstone/radiant-forms-batchbook-extension'
  $LOAD_PATH << "#{File.dirname(__FILE__)}/vendor/batchbook/lib"
  require 'batchbook'
end