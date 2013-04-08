module ModelNameHelper

  # map_model_name() is called from modified copy of lib/active_fedora/model.rb's classname_from_uri() and to_class_uri();
  # classname_from_uri() is called when the fedora objects are being indexed.  to_class_uri() doesn't
  # actually appear to be called from anywhere.
  # map_model_name() is also called from modified copy of app/helpers/hydra/blacklight_helper_behavior.rb's
  # document_partial_name() to fix the link to the object from the search results page.
  # map_model_name() is also called from modified copy of app/helpers/hydra/hydra_assets_helper_behavior.rb's
  # document_type() to fix the document type displayed on the search results page.
  # map_model_names() is called from app/controllers/file_assets_controller.rb.


  def self.map_model_name(model_name)
    result = model_name

    if model_name[0, 15] == "info:fedora/cm:"
      mapped_model_name = ""

      if model_name == "info:fedora/cm:Audio"
        mapped_model_name = "info:fedora/afmodel:TuftsAudio"
      elsif model_name == "info:fedora/cm:Audio.OralHistory"
        mapped_model_name = "info:fedora/afmodel:TuftsAudioText"
      elsif model_name == "info:fedora/cm:Image.3DS"
        mapped_model_name = "info:fedora/afmodel:TuftsImage"
      elsif model_name == "info:fedora/cm:Image.4DS"
        mapped_model_name = "info:fedora/afmodel:TuftsImage"
      elsif model_name == "info:fedora/cm:Image.HTML"
        mapped_model_name = "info:fedora/afmodel:TuftsImageText"
      elsif model_name == "info:fedora/cm:WP"
        mapped_model_name = "info:fedora/afmodel:TuftsWP"
      elsif model_name == "info:fedora/cm:Text.FacPub"
        mapped_model_name = "info:fedora/afmodel:TuftsFacultyPublication"
      elsif model_name == "info:fedora/cm:Text.PDF"
        mapped_model_name = "info:fedora/afmodel:TuftsPdf"
      elsif model_name == "info:fedora/cm:Object.Generic"
        mapped_model_name = "info:fedora/afmodel:TuftsGenericObject"
      elsif model_name == "info:fedora/cm:Text.EAD"
        mapped_model_name = "info:fedora/afmodel:TuftsEAD"
      elsif model_name == "info:fedora/cm:Text.TEI-Fragmented"
        mapped_model_name = "info:fedora/afmodel:TuftsTeiFragmented"
      elsif model_name == "info:fedora/cm:Text.TEI"
        mapped_model_name = "info:fedora/afmodel:TuftsTEI"
      elsif model_name == "info:fedora/cm:Text.RCR"
        mapped_model_name = "info:fedora/afmodel:TuftsRCR"
      elsif model_name == "info:fedora/cm:VotingRecord"
        mapped_model_name = "info:fedora/afmodel:TuftsVotingRecord"
      end

      if mapped_model_name != ""
        Rails.logger.debug("map_model_name() has mapped #{model_name} to #{mapped_model_name}")
        result = mapped_model_name
      end
    end

    return result
  end


  # iterate through an array of model names and call map_model_name() for each element
  def self.map_model_names(model_names)
    mapped_model_names = []

    model_names.each { |model_name|
      mapped_model_names << map_model_name(model_name)
    }

    return mapped_model_names
  end


end
