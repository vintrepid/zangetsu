class DatePickerInput < SimpleForm::Inputs::Base
  def input
    @builder.text_field(attribute_name, input_html_options)
  end

  def input_html_classes
    super.push('col-md-1')
  end

  def input_html_options
    super.merge('data-date-format'.to_sym => "yyyy-mm-dd")
  end
end