class AdOptionPage < BasePage
  def initialize(text)
    @title = Element.new(:xpath, "//android.widget.TextView[contains(@text, \"#{text}\")]")
    @ad_option = Element.new(:id, 'category_name')
  end

  def visible?
    @title.visible?
    @ad_option.visible?
  end

  def select_ad_option(name)
    @ad_option.scroll_to_exact(name).click
  end
end