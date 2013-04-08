# This is just a mock rights metadata stream to get us by without having to modify all our objects for now.

class TuftsRightsMetadata  <  Hydra::RightsMetadata
   def to_xml(xml = self.ng_xml)
    return "";
   end

   def embargo_release_date=(release_date)
      return "INVALID DATE"
   end

   def embargo_release_date(opts={})
      return "INVALID DATE"
   end

   def permissions(selector, new_access_level=nil)
    return "read";
   end

   def update_permissions(params)
    return;
   end

   def self.from_xml(xml, tmpl=self.new) # :nodoc:

    return "";
   end

  def to_solr(solr_doc=Hash.new)
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_copyright_machine_uvalicense_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_0_copyright_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_0_copyright_0_machine_0_uvalicense_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "copyright_0_machine_0_uvalicense_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_copyright_machine_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "copyright_machine_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_copyright_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "copyright_0_machine_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "copyright_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "copyright_machine_uvalicense_t", "no")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_0_access_0_group_t", "public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_0_edit_access_0_person_t", "researcher1")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_discover_access_machine_t", "hydra-policy:4502 public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_0_edit_access_0_machine_0_group_t", "archivist")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_0_read_access_t", "public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "rightsMetadata_0_access_0_machine_0_group_t", "public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc, "edit_access_0_machine_t","researcher1 archivist")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "read_access_0_machine_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "copyright_human_readable_t","(c)2009 The Hydra Project")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_0_access_1_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "access_2_person_t","researcher1")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_t","(c)2009 The Hydra Project Blah Blah More blah This work is in the Public Domain. hydra-policy:4502 public public researcher1 archivist You are free to re-distribute this object, but you cannot change it or sell it. This work is licensed under a Creative Commons Attribution-Noncommercial-No Derivative Works 3.0 United States License.")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_0_discover_access_t","hydra-policy:4502 public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_0_edit_access_0_group_t","archivist")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_0_read_access_0_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_read_access_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "edit_access_machine_person_t","researcher1")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "read_access_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "discover_access_machine_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "copyright_0_human_readable_t","(c)2009 The Hydra Project")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_edit_access_group_t","archivist")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "access_1_machine_0_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_0_copyright_0_human_readable_t","(c)2009 The Hydra Project")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_access_machine_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,  "rightsMetadata_0_discover_access_0_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_2_group_t","archivist")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_0_machine_t","hydra-policy:4502 public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_2_machine_0_group_t","archivist")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_0_machine_0_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "read_access_machine_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "read_access_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "discover_access_machine_t","hydra-policy:4502 public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_2_machine_t","researcher1 archivist")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_access_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_discover_access_group_t","public")
    ::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_machine_t","researcher1 archivist")
    return solr_doc
  end
end


#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_2_machine_0_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_group_t"=>["public", "public", "archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_2_machine_t"=>["researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "discover_access_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_2_group_t"=>["archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "copyright_0_machine_t"=>["This work is in the Public Domain."],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_2_machine_0_group_t"=>["archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_copyright_t"=>["(c)2009 The Hydra Project Blah Blah More blah This work is in the Public Domain."],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_edit_access_0_machine_0_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_t"=>["hydra-policy:4502 public", "public", "researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_discover_access_machine_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_edit_access_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_2_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_access_machine_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_copyright_machine_t"=>["This work is in the Public Domain."],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_machine_group_t"=>["public", "public", "archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_discover_access_0_machine_t"=>["hydra-policy:4502 public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_copyright_human_readable_t"=>["(c)2009 The Hydra Project", "Blah Blah", "More blah"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_machine_t"=>["hydra-policy:4502 public", "public", "researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_0_group_t"=>["archivist"], "read_access_0_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "discover_access_0_machine_0_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "discover_access_0_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_discover_access_t"=>["hydra-policy:4502 public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_read_access_machine_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "copyright_machine_t"=>["This work is in the Public Domain."],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_1_machine_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_edit_access_machine_group_t"=>["archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_edit_access_machine_t"=>["researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_read_access_0_machine_0_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_group_t"=>["archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "read_access_0_machine_0_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "discover_access_0_machine_t"=>["hydra-policy:4502 public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_edit_access_t"=>["researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_access_t"=>["hydra-policy:4502 public", "public",
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_edit_access_t"=>["researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "copyright_t"=>["(c)2009 The Hydra Project Blah Blah More blah This work is in the Public Domain."],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_1_machine_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_0_machine_t"=>["hydra-policy:4502 public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_read_access_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_edit_access_0_machine_t"=>["researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_2_machine_0_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_read_access_0_machine_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_access_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_0_group_t"=>["public"], "rightsMetadata_0_copyright_t"=>["(c)2009 The Hydra Project Blah Blah More blah This work is in the Public Domain."],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_0_machine_0_group_t"=>["archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_0_machine_0_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_0_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "read_access_machine_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_machine_person_t"=>["researcher1"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_access_machine_t"=>["hydra-policy:4502 public", "public", "researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_discover_access_0_machine_0_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_1_machine_0_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_copyright_0_machine_t"=>["This work is in the Public Domain."],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "access_1_group_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_0_access_t"=>["hydra-policy:4502 public",
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "public", "researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_machine_group_t"=>["archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "edit_access_t"=>["researcher1 archivist"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "discover_access_t"=>["hydra-policy:4502 public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_read_access_machine_t"=>["public"],
#::Solrizer::Extractor.insert_solr_field_value(solr_doc,   "rightsMetadata_edit_access_machine_person_t"=>["researcher1"]

