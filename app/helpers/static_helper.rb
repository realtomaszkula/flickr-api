module StaticHelper

  def search_or_result
    !params.has_key?(:search) ? "search_form" : "results"
  end

end


