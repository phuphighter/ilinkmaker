module Ilinkmaker
  
  class Client
    include HTTParty
    base_uri "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa"
    format :json
        
    attr_reader :partner_id, :linkshare_url
                
    def initialize(options={})
      @partner_id = options[:partner_id] || Ilinkmaker.partner_id
      @linkshare_url = options[:linkshare_url] || Ilinkmaker.linkshare_url
    end

    def search(options={})
      response = self.class.get("/wsSearch", :query => options.merge(self.default_options))
    end
    
    def lookup(options={})
      response = self.class.get("/wsLookup", :query => options.merge(self.default_options))
    end
    
    def get_affiliate_link(result, options={})
      url = result["trackViewUrl"]
      
      if @partner_id && @linkshare_url        
        url = "#{@linkshare_url}#{url}?partner_id=#{@partner_id}"
      elsif options[:partner_id] && options[:linkshare_url]
        url = "#{options[:linkshare_url]}#{url}?partner_id=#{options[:partner_id]}"
      end
    end
    
    protected
    
    def default_options
      if @partner_id
        {:partner_id => @partner_id, :output => "json"}
      else
        {:output => "json"}
      end
    end

  end
end