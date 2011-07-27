require 'test_helper'

class IlinkmakerTest < Test::Unit::TestCase
  
  context "iTunes Search API" do        
    context "and searching for a product" do      
      setup do
        @client = Ilinkmaker::Client.new
      end
      
      should "find a specific product" do
        stub_get("http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsSearch?term=tribes&media=ebook", "search.json")
        search_result = @client.search(:term => "tribes", :media => "ebook", :limit => 25)
        search_result["results"].first["trackViewUrl"].should == "http://itunes.apple.com/us/book/tribes/id361926215?mt=11&uo=4"
      end
    end
    
    context "and searching for a product with affiliate" do 
      setup do
        @client = Ilinkmaker::Client.new(:partner_id => "wtf", :linkshare_url => "http://click.linksynergy.com/fs-bin/stat?id=XXXXXXXX&offerid=XXXXX&type=X&subid=X&tmpid=XXXX&RD_PARM1=")
      end
             
      should "find a specific product and get proper affiliate link" do
        stub_get("http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsSearch?term=tribes&media=ebook", "search.json")
        search_result = @client.search(:term => "tribes", :media => "ebook", :limit => 25)
        @client.get_affiliate_link(search_result["results"].first).should == "http://click.linksynergy.com/fs-bin/stat?id=XXXXXXXX&offerid=XXXXX&type=X&subid=X&tmpid=XXXX&RD_PARM1=http://itunes.apple.com/us/book/tribes/id361926215?mt=11&uo=4?partner_id=wtf"
      end
      should "find a specific product and get proper affiliate link by passing options" do
        @client = Ilinkmaker::Client.new
        
        stub_get("http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsSearch?term=tribes&media=ebook", "search.json")
        search_result = @client.search(:term => "tribes", :media => "ebook", :limit => 25)
        @client.get_affiliate_link(search_result["results"].first, {:partner_id => "wtf", :linkshare_url => "http://click.linksynergy.com/fs-bin/stat?id=XXXXXXXX&offerid=XXXXX&type=X&subid=X&tmpid=XXXX&RD_PARM1="}).should == "http://click.linksynergy.com/fs-bin/stat?id=XXXXXXXX&offerid=XXXXX&type=X&subid=X&tmpid=XXXX&RD_PARM1=http://itunes.apple.com/us/book/tribes/id361926215?mt=11&uo=4?partnerId=wtf"
      end
    end
    
    context "lookup by identifier" do
      setup do
        @client = Ilinkmaker::Client.new
      end
      
      should "find a specific identifier" do
        stub_get("http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsLookup?id=361926215", "lookup.json")
        result = @client.lookup(:id => '361926215')
        result["results"].first["trackViewUrl"].should == "http://itunes.apple.com/us/book/tribes/id361926215?mt=11&uo=4"
        @client.get_affiliate_link(result["results"].first, {:partner_id => "wtf", :linkshare_url => "http://click.linksynergy.com/fs-bin/stat?id=XXXXXXXX&offerid=XXXXX&type=X&subid=X&tmpid=XXXX&RD_PARM1="}).should == "http://click.linksynergy.com/fs-bin/stat?id=XXXXXXXX&offerid=XXXXX&type=X&subid=X&tmpid=XXXX&RD_PARM1=http://itunes.apple.com/us/book/tribes/id361926215?mt=11&uo=4?partnerId=wtf"
      end
      
      should "find by id and get entity" do
        stub_get("http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsLookup?id=909253&entity=album", "entity_lookup.json")
        result = @client.lookup(:id => '909253', :entity => "album")
        result["results"].first["artistName"].should == "Jack Johnson"
      end
    end
  end
  
end