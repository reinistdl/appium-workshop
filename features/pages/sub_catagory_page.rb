class SubCatagoryPage < BasePage
  def initialize
    @titile = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Transports")]')
    @sub_cat = Element.new(:id, 'catagory_name')
  end

  def visible?
    @title.visible?
    @sub_cat.visible?
  end

  def open_sub_catagory(name)
    @sub_cat.scroll_to_exact(name).click
  end



end