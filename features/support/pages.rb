class Pages
  def page_intro
    @page_intro ||= IntroPage.new
    @page_intro
  end

  def page_create_filter
    @CreateFilter ||= CreateFilter.new
    @CreateFilter
  end

  def SubCatagoryPage
  	@SubCatagoryPage ||= SubCatagoryPage.new
  end
end