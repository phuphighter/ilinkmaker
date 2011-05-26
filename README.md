# iLinkmaker

This is a Ruby wrapper for the iTunes Store Search API [http://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html](http://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html).

## Installation

As a gem:

    gem install ilinkmaker

In your Gemfile

    gem "ilinkmaker"
    
## Usage

### Instantiate a client

    >> ilinkmaker = iLinkmaker::Client.new
    
#### Example

    >> ilinkmaker.search(:term => "tribes", :media => "ebook", :limit => 1)
    => #<HTTParty::Response:0x101876430 @parsed_response={"results"=>[{"trackViewUrl"=>"http://itunes.apple.com/us/book/tribes/id361926215?mt=11&uo=4", "price"=>16.99, "kind"=>"ebook", "genreIds"=>["10014"], "artworkUrl100"=>"http://a4.mzstatic.com/us/r30/Features/d9/12/ad/dj.cbleznyd.100x100-75.jpg", "trackName"=>"Tribes", "artistId"=>2072165, "artworkUrl60"=>"http://a4.mzstatic.com/us/r30/Features/d9/12/ad/dj.cbleznyd.60x60-50.jpg", "releaseDate"=>Thu Oct 16 07:00:00 UTC 2008, "artistViewUrl"=>"http://itunes.apple.com/us/artist/seth-godin/id2072165?mt=11&uo=4", "artistName"=>"Seth Godin", "artistIds"=>[2072165], "currency"=>"USD", "description"=>"A tribe is any group of people, large or small, who are connected to one another, a leader, and an idea. For millions of years, humans have been seeking out tribes, be they religious, ethnic, economic, political, or even musical (think of the Deadheads). It\342\200\231s our nature.Now the Internet has eliminated the barriers of geography, cost, and time. All those blogs and social networking sites are helping existing tribes get bigger. But more important, they\342\200\231re enabling countless new tribes to be born\342\200\224groups of ten or ten thousand or ten million who care about their iPhones, or a political campaign, or a new way to fight global warming.And so the key question: Who is going to lead us?The Web can do amazing things, but it can\342\200\231t provide leadership. That still has to come from individuals\342\200\224 people just like you who have passion about something. The explosion in tribes means that anyone who wants to make a difference now has the tools at her fingertips.If you think leadership is for other people, think again\342\200\224leaders come in surprising packages. Consider Joel Spolsky and his international tribe of scary-smart software engineers. Or Gary Vaynerhuck, a wine expert with a devoted following of enthusiasts. Chris Sharma leads a tribe of rock climbers up impossible cliff faces, while Mich Mathews, a VP at Microsoft, runs her internal tribe of marketers from her cube in Seattle. All they have in common is the desire to change things, the ability to connect a tribe, and the willingness to lead.If you ignore this opportunity, you risk turning into a \\u201Csheepwalker\\u201D\342\200\224someone who fights to protect the status quo at all costs, never asking if obedience is doing you (or your organization) any good. Sheepwalkers don\342\200\231t do very well these days.Tribes will make you think (really think) about the opportunities in leading your fellow employees, customers, investors, believers, hobbyists, or readers. . . . It\342\200\231s not easy, but it\342\200\231s easier than you think.", "userRatingCount"=>35, "averageUserRating"=>4.5, "trackCensoredName"=>"Tribes", "genres"=>["Management & Leadership"], "trackId"=>361926215}], "resultCount"=>1}, @response=#<Net::HTTPOK 200 OK readbody=true>, @headers={"x-apple-orig-url-path"=>["/WebObjects/MZStoreServices.woa/wa/wsSearch/?limit=1&term=tribes&output=json&media=ebook"], "x-webobjects-loadaverage"=>["0"], "x-apple-application-site"=>["ST11"], "expires"=>["Thu, 26 May 2011 18:21:09 GMT"], "x-apple-partner"=>["origin.0"], "content-type"=>["text/javascript; charset=utf-8"], "connection"=>["close"], "x-apple-max-age"=>["3600"], "date"=>["Thu, 26 May 2011 18:21:09 GMT"], "x-apple-woa-inbound-url"=>["/WebObjects/MZStoreServices.woa/wa/wsSearch/?limit=1&term=tribes&output=json&media=ebook"], "x-apple-application-instance"=>["2036002"], "content-length"=>["2758"], "cache-control"=>["max-age=0, no-cache"], "vary"=>["X-Apple-Store-Front"], "pragma"=>["no-cache"]}>

## Copyright

Contact me if you have any suggestions and feel free to fork it!

Copyright (c) 2009 Johnny Khai Nguyen, released under the MIT license
