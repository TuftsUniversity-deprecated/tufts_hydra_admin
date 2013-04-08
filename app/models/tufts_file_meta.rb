# 2011-04-16
#
# My take on what our faculty publication content model is going to look like
# in ActiveFedora
#
# Since we're new to opinionated metadata rather than drive yourself nuts make sure to read
# the rdoc: http://rubydoc.info/gems/om/1.2.2/frames
#
  class TuftsFileMeta  < ActiveFedora::NokogiriDatastream

    #WTF is really going on here?
    # @terminology = OM::XML::Terminology::Builder.new( &block ).build
    set_terminology do |t|
      t.root(:path=>"file", :xmlns=>"http://demo.lib.tufts.edu/dca_file/", :schema=>"") {
      t.fileName
      t.extent
      }
    end

    # Generates an empty Mods Article (used when you call ModsArticle.new without passing in existing xml)
    def self.xml_template
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.file(:version=>"0.1", "xmlns:dca_file"=>"http://demo.lib.tufts.edu/dca_file/") {
          xml.fileName
          xml.extent
          }
      end
      return builder.doc
    end

  end

