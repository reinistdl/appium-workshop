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

  def page_additional_filters
    @page_additional_filters ||= AdditionalFiltersPage.new
    @page_additional_filters
  end

  def page_side_menu
    @page_side_menu ||= SideMenuPage.new
    @page_side_menu
  end

  def page_saved_filters
    @page_saved_filters ||= SavedFiltersList.new
    @page_saved_filters
  end

  def page_saved_filter_details(filter_name)
    @page_saved_filter_details ||= CreatedFilterDetails.new(filter_name)
    @page_saved_filter_details
  end

  def page_delete_filter
    @page_delete_filter ||= FilterDeletion.new
    @page_delete_filter
  end

end