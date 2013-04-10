
class TuftsAdministrativeMeta < ActiveFedora::NokogiriDatastream

  set_terminology do |t|
    t.root("path" => "ac", "xmlns" => "http://purl.org/dc/dcmitype/",
           "xmlns:local" => "http://nils.lib.tufts.edu/dcaadmin/")
    t.steward(:namespace_prefix => "local", :path => "steward", :index_as => [:displayable,:searchable], :label => "Steward")
    t.name(:namespace_prefix => "ac", :path => "name", :index_as => [:displayable,:searchable], :label => "Record Created By")
    t.comment(:namespace_prefix => "ac", :path => "comment", :index_as => [:displayable,:searchable], :label => "Internal Note")
    t.retentionPeriod(:namespace_prefix => "local", :path => "retentionPeriod", :index_as => [:displayable,:searchable], :label => "Retention Period")
    t.displays(:namespace_prefix => "local", :path => "displays", :index_as => [:displayable,:searchable], :label => "Displays in Portal")
    t.embargo(:namespace_prefix => "local", :path => "embargo", :index_as => [:displayable,:searchable], :label => "Embargo")
    t.status(:namespace_prefix => "local", :path => "status", :index_as => [:displayable,:searchable], :label => "Status")
    t.startDate(:namespace_prefix => "local", :path => "startDate", :index_as => [:displayable,:searchable], :label => "Start Date (purchased assets)")
    t.expDate(:namespace_prefix => "local", :path => "expDate", :index_as => [:displayable,:searchable], :label => "Expiration Date (purchased assets)")
    t.qrStatus(:namespace_prefix => "local", :path => "qrStatus", :index_as => [:displayable,:searchable], :label => "Quality Review Status")
    t.rejectionReason(:namespace_prefix => "local", :path => "rejectionReason", :index_as => [:displayable,:searchable], :label => "Rejection Reason")
    t.note(:namespace_prefix => "local", :path => "note", :index_as => [:displayable,:searchable], :label => "QR Note")
  end

  # Generates an empty Mods Article (used when you call ModsArticle.new without passing in existing xml)
  # I thought my confusion here was in what OM was doing but its actually a lack of knowledge
  # in how Nokogiri works.
  # see here for more details:
  # http://nokogiri.org/Nokogiri/XML/Builder.html
  def self.xml_template
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.dc(:version => "0.1", :xmlns => "http://www.fedora.info/definitions/",
             "xmlns:ac" => "http://purl.org/dc/dcmitype/",
             "xmlns:local" => "http://nils.lib.tufts.edu/dcaadmin/") {
        xml['local'].steward
        xml['ac'].name
        xml['ac'].comment_
        xml['local'].retentionPeriod
        xml['local'].displays
        xml['local'].embargo
        xml['local'].status
        xml['local'].startDate
        xml['local'].expDate
        xml['local'].qrStatus
        xml['local'].rejectionReason
        xml['local'].note
      }
    end


    return builder.doc
  end

  def to_solr(solr_doc = Hash.new) # :nodoc:
    return solr_doc
  end
end
