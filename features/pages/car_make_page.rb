class CarMakePage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Vielie auto")]')
    @car_make = Element.new(:id, 'category_name')
  end

  def visible?
    @title.visible?
    @car_make.visible?
  end

  def select_car_make(name)
    @car_make.scroll_to_exact(name).click
  end
end