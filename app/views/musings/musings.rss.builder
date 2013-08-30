xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Joraaver's Blog"
    xml.description "Tidbits of information, from me to you"
    xml.link musings_url(:rss)

    for musing in @musings
      xml.item do
        xml.title musing.title
        xml.description musing.post
        xml.pubDate musing.created_at.to_s(:rfc822)
        xml.link musing_url(musing, :rss)
        xml.guid musing_url(musing, :rss)
      end
    end
  end
end

