class CarModelPage < BasePage
  def initialize(text)
    @title = Element.new(:xpath, "//android.widget.TextView[contains(@text, \"#{text}\")]")
    @car_model = Element.new(:id, 'category_name')
  end

  def visible?
    @title.visible?
    @car_model.visible?
  end

  def select_car_model(name)
    @car_model.scroll_to_exact(name).click
  end
end