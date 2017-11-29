class CreateFilter < BasePage
  def initialize
    @titile = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Izveidot filtru")]')
    @titles_catagory = Element.new(:id, 'main_row_text')
  end

  def visible?
    @title.visible?
    @titles_catagory.visible?
  end

  def open_catagory(name)
    @titles_catagory.click_by_text(name)
  end



end