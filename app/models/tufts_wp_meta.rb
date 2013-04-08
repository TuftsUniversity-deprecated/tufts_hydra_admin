# 2011-10-14
#
# For parsing the Wildlife Pathology xml
#
# Since we're new to opinionated metadata rather than drive yourself nuts make sure to read
# the rdoc: http://rubydoc.info/gems/om/1.2.2/frames
#
  class TuftsWpMeta < TuftsDatastream

    set_terminology do |t|
      t.root(:path => "tuftsWildlifePathologyRecord", "xmlns" => "http://dca.lib.tufts.edu/schema/twp/twp.xsd")
      t.originalFilename(:path => "originalFilename")
      t.title(:path => "title")
      t.pictureFormat(:path => "pictureFormat")
      t.caseNumber(:path => "caseNumber")
      t.identifier(:path => "identifier")
      t.contributingPartner(:path => "contributingPartner")
      t._type(:path => "type")
      t.typeDetail(:path => "typeDetail")
      t.creator(:path => "creator")
      t.creatorType(:path => "creatorType")
      t.creatorsAffiliation(:path => "creatorsAffiliation")
      t.rights(:path => "rights")
      t.licenseStatement(:path => "licenseStatement")
      t.responsibleParty(:path => "responsibleParty")
      t.responsiblePartysEmail(:path => "responsiblePartysEmail")
      t.publisher(:path => "publisher")
      t.natureOfContent(:path => "natureOfContent")
      t.description(:path => "description")
      t.grossDiagnosis(:path => "grossDiagnosis")
      t.preferredKeywords(:path => "preferredKeywords")
      t.otherKeywords(:path => "otherKeywords")
      t.dateOriginal(:path => "dateOriginal")
      t.dateDigital(:path => "dateDigital")
      t.dateModified(:path => "dateModified")
      t.scientificName(:path => "scientificName")
      t.scientificNameSource(:path => "scientificNameSource")
      t.tsn(:path => "tsn")
      t.commonNames(:path => "commonNames")
      t.order(:path => "order")
      t.family(:path => "family")
      t.sex(:path => "sex")
      t.stage(:path => "stage")
      t.viewOfSubject(:path => "viewOfSubject")
      t.partOfSubject(:path => "partOfSubject")
      t.formalClassification(:path => "formalClassification")
      t.formalClassificationSource(:path => "formalClassificationSource")
      t.peerOrExpertReviewed(:path => "peerOrExpertReviewed")
      t.peerOrExpertReviewerComment(:path => "peerOrExpertReviewerComment")
      t.stateOrProvince(:path => "stateOrProvince")
      t.countyOrSubProvince(:path => "countyOrSubProvince")
      t.captureDevice(:path => "captureDevice")
      t.captureDetails(:path => "captureDetails")
      t.digitizationMethods(:path => "digitizationMethods")
      t.extent(:path => "extent")
      t.color(:path => "color")
      t.dateCollected(:path => "dateCollected")
      t.commentsOnCollection(:path => "commentsOnCollection")
      t.backgroundInformation(:path => "backgroundInformation")
      t.backgroundLinks(:path => "backgroundLinks")
      t.latitude(:path => "latitude")
      t.longitude(:path => "longitude")
      t.diseaseName(:path => "diseaseName")
      t.diseaseType(:path => "diseaseType")
      t.diseaseAspect(:path => "diseaseAspect")
      t.diseaseAgent(:path => "diseaseAgent")
    end


    def self.xml_template
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.tuftsWildlifePathologyRecord() {
          xml.originalFilename
          xml.title
          xml.pictureFormat
          xml.caseNumber
          xml.identifier
          xml.contributingPartner
          xml._type
          xml.typeDetail
          xml.creator
          xml.creatorType
          xml.creatorsAffiliation
          xml.rights
          xml.licenseStatement
          xml.responsibleParty
          xml.responsiblePartysEmail
          xml.publisher
          xml.natureOfContent
          xml.description
          xml.grossDiagnosis
          xml.preferredKeywords
          xml.otherKeywords
          xml.dateOriginal
          xml.dateDigital
          xml.dateModified
          xml.scientificName
          xml.scientificNameSource
          xml.tsn
          xml.commonNames
          xml.order
          xml.family
          xml.sex
          xml.stage
          xml.viewOfSubject
          xml.partOfSubject
          xml.formalClassification
          xml.formalClassificationSource
          xml.peerOrExpertReviewed
          xml.peerOrExpertReviewerComment
          xml.stateOrProvince
          xml.countyOrSubProvince
          xml.captureDevice
          xml.captureDetails
          xml.digitizationMethods
          xml.extent
          xml.color
          xml.dateCollected
          xml.commentsOnCollection
          xml.backgroundInformation
          xml.backgroundLinks
          xml.latitude
          xml.longitude
          xml.diseaseName
          xml.diseaseType
          xml.diseaseAspect
          xml.diseaseAgent
        }
      end

      return builder.doc
    end

  end
