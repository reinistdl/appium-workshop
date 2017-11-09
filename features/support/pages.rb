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

  def car_make_page
    @car_make_page ||= CarMakePage.new
    @car_make_page
  end

  def car_model_page(text)
    @car_model_page ||= CarModelPage.new(text)
    @car_model_page
  end

  def ad_option_page(text)
    @ad_option_page ||= AdOptionPage.new(text)
    @ad_option_page
  end

  def parameter_page
    @parameter_page ||= ParameterPage.new
    @parameter_page
  end

end