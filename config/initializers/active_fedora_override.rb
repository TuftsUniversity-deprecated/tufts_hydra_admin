module ActiveFedora::Model
    # Takes a Fedora URI for a cModel and returns classname, namespace
    def self.classname_from_uri(uri)
        uri = ModelNameHelper.map_model_name(uri)
        local_path = uri.split('/')[1]
        parts = local_path.split(':')
        return parts[-1].gsub('_', '/').classify, parts[0]
    end
end


module ActiveFedora::Model::ClassMethods
    def to_class_uri
        ns = (self.respond_to? :pid_namespace) ? self.pid_namespace : ActiveFedora::ContentModel::CMODEL_NAMESPACE
        pid = self.name.gsub(/::/, '_')
        ModelNameHelper.map_model_name("info:fedora/#{ns}:#{pid}")
    end
end


# Tufts foxml fixtures don't have the .foxml.xml extension, but Hydra convention includes it for compatibility with text editors
# The VotingRecord fixtures include the extension, so skipping this override.
# class ActiveFedora::FixtureLoader 
#     def filename_for_pid(pid)
#         File.join(path, "#{pid.gsub(":", "_")}")
#     end
# end
