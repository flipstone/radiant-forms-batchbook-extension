= Forms Batchbook Extension for Radiant

forms_batchbook is a service for http://github.com/squaretalent/radiant-forms-extension.git

== Config

Define your account and API tokens in the config part of the form, declared as the intended CRM object

   batchbook_contact:
      account: *account*
      token: *api_token*

    batchbook_communication:
       account: _account_
       token: _api_token_

The extension will look for form elements matching the field names..?  TBD

This extension is modeled from and uses some code from Radiant forms_email extension: http://github.com/squaretalent/radiant-forms-extension.git