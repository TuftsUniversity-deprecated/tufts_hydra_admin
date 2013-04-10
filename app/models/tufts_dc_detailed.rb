# 2011-04-16
#
# My take on what our faculty publication content model is going to look like
# in ActiveFedora
#
# Since we're new to opinionated metadata rather than drive yourself nuts make sure to read
# the rdoc: http://rubydoc.info/gems/om/1.2.2/frames
#
class TuftsDcDetailed < ActiveFedora::NokogiriDatastream

  # 2012-01-23 decided to make everything searchable here and handle facetable in the to_solr methods of the
  # models

  set_terminology do |t|
    t.root("path" => "dc", "xmlns" => "http://www.fedora.info/definitions/",
           "xmlns:dc" => "http://purl.org/dc/elements/1.1/",
           "xmlns:dca_dc" => "http://nils.lib.tufts.edu/dca_dc/",
           "xmlns:dcadec" => "http://nils.lib.tufts.edu/dcadesc/",
           "xmlns:dcatech" => "http://nils.lib.tufts.edu/dcatech/",
           "xmlns:dcterms" => "http://purl.org/d/terms/",
           "xmlns:xlink" => "http://www.w3.org/1999/xlink")
    t.title(:namespace_prefix => "dc", :path => "title", :index_as => [:displayable,:searchable], :label => "Title")
    t.creator(:namespace_prefix => "dc", :path => "creator", :index_as => [:displayable,:searchable], :label => "Creator")
    t.source(:namespace_prefix => "dc", :path => "source", :index_as => [:displayable,:searchable], :label => "Source")
    t.description(:namespace_prefix => "dc", :path => "description", :index_as => [:displayable,:searchable], :label => "Description")
    t.dateCreated(:namespace_prefix => "dc", :path => "date.created", :index_as => [:displayable], :label => "Date Created")
    t.dateAvailable(:namespace_prefix => "dc", :path => "available", :index_as => [:displayable,:searchable], :label => "Date Available")
    t.dateIssued(:namespace_prefix => "dc", :path => "issued", :index_as => [:displayable,:searchable], :label => "Date Issued")
    t.identifier(:namespace_prefix => "dc", :path => "identifier", :index_as => [:displayable,:searchable], :label => "PID / Handle")
    t.rights(:namespace_prefix => "dc", :path => "rights", :index_as => [:displayable,:searchable], :label => "Rights")
    t.bibliographicCitation(:namespace_prefix => "dcterms", :path => "bibliographicCitation", :index_as => [:displayable,:searchable], :label => "Bibliographic Citation")
    t.publisher(:namespace_prefix => "dc", :path => "publisher", :index_as => [:displayable,:searchable], :label => "Publisher")
    t.type(:namespace_prefix => "dc", :path => "type", :index_as => [:displayable,:searchable], :label => "Type")
    t.format(:namespace_prefix => "dc", :path => "format", :index_as => [:displayable,:searchable], :label => "Format")
    t.extent(:namespace_prefix => "dc", :path => "extent", :index_as => [:displayable,:searchable], :label => "Extent")
    t.persname(:namespace_prefix => "dcadesc", :path => "persname", :index_as => [:displayable,:searchable], :label => "Person Name")
    t.corpname(:namespace_prefix => "dcadesc", :path => "corpname", :index_as => [:displayable,:searchable], :label => "Corporate Name")
    t.geogname(:namespace_prefix => "dcadesc", :path => "geogname", :index_as => [:displayable,:searchable], :label => "Geographic Name")
    t.genre(:namespace_prefix => "dcadesc", :path => "genre", :index_as => [:displayable,:searchable], :label => "DCA Genre")
    t.subject(:namespace_prefix => "dcterms", :path => "subject", :index_as => [:displayable,:searchable], :label => "Subject")
    t.funder(:namespace_prefix => "dcadesc", :path => "funder", :index_as => [:displayable,:searchable], :label => "Funder")
    t.temporal(:namespace_prefix => "dcterms", :path => "temporal", :index_as => [:displayable,:searchable], :label => "Temporal")
    t.resolution(:namespace_prefix => "dcatech", :path => "resolution", :index_as => [:displayable,:searchable], :label => "Resolution")
    t.bitDepth(:namespace_prefix => "dcatech", :path => "bitdepth", :index_as => [:displayable,:searchable], :label => "Bit Depth")
    t.colorSpace(:namespace_prefix => "dcatech", :path => "colorspace", :index_as => [:displayable,:searchable], :label => "Color Space")
    t.filesize(:namespace_prefix => "dcatech", :path => "fileSize", :index_as => [:displayable,:searchable], :label => "File Size")
    t.alternative(:namespace_prefix => "dcterms", :path => "alternative", :index_as => [:searchable,:displayable], :label => "Alternative Title")
    t.contributor(:namespace_prefix => "dcterms", :path => "contributor", :index_as => [:searchable,:displayable], :label => "Contributor")
    t.abstract(:namespace_prefix => "dcterms", :path => "abstract", :index_as => [:searchable,:displayable], :label => "Abstract")
    t.toc(:namespace_prefix => "dcterms", :path => "tableOfContents", :index_as => [:searchable,:displayable], :label => "Table of Contents")
    t.date(:namespace_prefix => "dcterms", :path => "date", :index_as => [:searchable,:displayable], :label => "Date")
    t.dateCopyrighted(:namespace_prefix => "dcterms", :path => "dateCopyrighted", :index_as => [:searchable,:displayable], :label => "Date Copyrighted")
    t.dateSubmitted(:namespace_prefix => "dcterms", :path => "dateSubmitted", :index_as => [:searchable,:displayable], :label => "Date Submitted")
    t.dateAccepted(:namespace_prefix => "dcterms", :path => "dateAccepted", :index_as => [:searchable,:displayable], :label => "Date Accepted")
    t.dateModified(:namespace_prefix => "dcterms", :path => "modified", :index_as => [:searchable,:displayable], :label => "Date Modified")
    t.language(:namespace_prefix => "dcterms", :path => "language", :index_as => [:searchable,:displayable], :label => "Language")
    t.medium(:namespace_prefix => "dcterms", :path => "medium", :index_as => [:searchable,:displayable], :label => "Medium")
    t.provenance(:namespace_prefix => "dcterms", :path => "provenance", :index_as => [:searchable,:displayable], :label => "Provenance")
    t.accessRights(:namespace_prefix => "dcterms", :path => "accessRights", :index_as => [:searchable,:displayable], :label => "Access Rights")
    t.rightsHolder(:namespace_prefix => "dcterms", :path => "rightsHolder", :index_as => [:searchable,:displayable], :label => "Rights Holder")
    t.license(:namespace_prefix => "dcterms", :path => "license", :index_as => [:searchable,:displayable], :label => "License")
    t.replaces(:namespace_prefix => "dcterms", :path => "replaces", :index_as => [:searchable,:displayable], :label => "Replaces")
    t.isReplacedBy(:namespace_prefix => "dcterms", :path => "isReplacedBy", :index_as => [:searchable,:displayable], :label => "Is Replaced By")
    t.hasFormat(:namespace_prefix => "dcterms", :path => "hasFormat", :index_as => [:searchable,:displayable], :label => "Has Format")
    t.isFormatOf(:namespace_prefix => "dcterms", :path => "isFormatOf", :index_as => [:searchable,:displayable], :label => "Is Format Of")
    t.hasPart(:namespace_prefix => "dcterms", :path => "hasPart", :index_as => [:searchable,:displayable], :label => "Has Part")
    t.isPartOf(:namespace_prefix => "dcterms", :path => "isPartOf", :index_as => [:searchable,:displayable], :label => "Is Part Of")
    t.accruralPolicy(:namespace_prefix => "dcterms", :path => "accrualPolicy", :index_as => [:searchable,:displayable], :label => "Accrual Policy")
    t.audience(:namespace_prefix => "dcterms", :path => "audience", :index_as => [:searchable,:displayable], :label => "Audience")
    t.references(:namespace_prefix => "dcterms", :path => "references", :index_as => [:searchable,:displayable], :label => "References")
    t.specialCoverage(:namespace_prefix => "dcterms", :path => "specialCoverage", :index_as => [:searchable,:displayable], :label => "Special Coverage")


  end

  # Generates an empty Mods Article (used when you call ModsArticle.new without passing in existing xml)
  # I thought my confusion here was in what OM was doing but its actually a lack of knowledge
  # in how Nokogiri works.
  # see here for more details:
  # http://nokogiri.org/Nokogiri/XML/Builder.html
  def self.xml_template
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.dc(:version => "0.1", :xmlns => "http://www.fedora.info/definitions/",
             "xmlns:dc" => "http://purl.org/dc/elements/1.1/",
             "xmlns:dcadesc" => "http://nils.lib.tufts.edu/dcadesc/",
             "xmlns:dcatech" => "http://nils.lib.tufts.edu/dcatech/",
             "xmlns:dcterms" => "http://purl.org/d/terms/",
             "xmlns:xlink" => "http://www.w3.org/1999/xlink") {
        xml['dc'].title
        xml['dc'].creator
        xml['dc'].source
        xml['dc'].description
        xml['dc'].send(:"date.created")
        xml['dc'].send(:"date.available")
        xml['dc'].send(:"date.issued")
        xml['dc'].identifier
        xml['dc'].rights
        xml['dc'].bibliographicCitation
        xml['dc'].publisher
        xml['dc'].type
        xml['dc'].format
        xml['dc'].extent
        xml['dcadesc'].persname
        xml['dcadesc'].corpname
        xml['dcadesc'].geogname
        xml['dcterms'].subject
        xml['dcadesc'].funder
        xml['dcterms'].temporal
        xml['dcatech'].resolution
        xml['dcadesc'].bitdepth
        xml['dcadesc'].colorspace
        xml['dcadesc'].filesize
        xml['dcterms'].alternative
        xml['dcterms'].contributor
        xml['dcterms'].abstract
        xml['dcterms'].toc
        xml['dcterms'].date
        xml['dcterms'].dateCopyrighted
        xml['dcterms'].dateSubmitted
        xml['dcterms'].dateAccepted
        xml['dcterms'].dateModified
        xml['dcterms'].language
        xml['dcterms'].medium
        xml['dcterms'].provenance
        xml['dcterms'].accessRights
        xml['dcterms'].rightsHolder
        xml['dcterms'].license
        xml['dcterms'].replaces
        xml['dcterms'].isReplacedBy
        xml['dcterms'].hasFormat
        xml['dcterms'].isFormatOf
        xml['dcterms'].hasPart
        xml['dcterms'].isPartOf
        xml['dcterms'].accruralPolicy
        xml['dcterms'].audience
        xml['dcterms'].references
        xml['dcterms'].specialCoverage

      }
    end

    #Feels hacky but I can't come up with another way to ensure the namespace
    #gets set correctly here.
    #builder.doc.root.name="dca_dc:dc"
    #The funny thing is that while the above makes the xml *look* like our XML
    #Fedora itself complains that the dca_dc is not bound and the XML is not well
    #formed makes me wonder if we've been generally wrong on this all along.

    return builder.doc
  end
  def to_solr(solr_doc = Hash.new) # :nodoc:
    return solr_doc
  end
end
