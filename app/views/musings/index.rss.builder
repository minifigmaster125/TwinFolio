xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Suchaaver's Blog"
    xml.description "Tidbits of information, from me to you"
    xml.link musings_url

    for musing in @musings
      xml.item do
        xml.title musing.title
        xml.description musing.post
        xml.pubDate musing.created_at.to_s(:rfc822)
        xml.link musing_url(musing)
        xml.guid musing_url(musing)
      end
    end
  end
end

