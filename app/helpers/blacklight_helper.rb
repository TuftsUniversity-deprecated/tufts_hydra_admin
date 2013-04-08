module BlacklightHelper
  include Blacklight::BlacklightHelperBehavior
  # Override: In cases where document_heading is an array, use the first value
  def document_heading
    heading = @document[blacklight_config.show.heading] || @document.id
    if heading.kind_of?(Array)
      heading.first
    else
      heading
    end
  end
end