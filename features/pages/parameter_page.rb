class ParameterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Parametri")]')
    @filtru_parametri = Element.new(:id, 'parameter_body_holder')
  end

  def visible?
    @title.visible?
    @filtru_parametri.visible?
  end

  def input_values(parameter,from, to)
    @filtru_parametri.scroll_to_exact(parameter)
    @filtru_parametri.input_from(parameter,from)
    @filtru_parametri.input_to(parameter,to)
  end

  def input_filter_name(random)
    @filtru_parametri.visible?
    @filtru_parametri.input_filter_name(random)
  end

end