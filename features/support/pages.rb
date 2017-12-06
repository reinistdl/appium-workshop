class Pages
  def page_intro
    @page_intro ||= IntroPage.new
    @page_intro
  end

  def page_create_filter
    @page_create_filter ||= CreateFilterPage.new
    @page_create_filter
  end

  def page_sub_category
    @page_sub_category ||= SubCategoryPage.new
    @page_sub_category
  end

  def page_paremeters
    @page_paremeters ||= ParametersPage.new
    @page_paremeters
  end

  def page_menu
    @page_menu ||= MenuPage.new
    @page_menu
  end

  def page_saved_filters
    @page_saved_filters ||= SavedFiltersList.new
    @page_saved_filters
  end
end