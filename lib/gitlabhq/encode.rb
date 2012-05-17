module Gitlabhq
  module Encode 
    extend self

    def utf8 message
      #see http://stackoverflow.com/a/8711122/722952
      message.encode('UTF-16le', :invalid => :replace, :replace => '').encode('UTF-8') rescue message.force_encoding('utf-8')
    end
  end
end
