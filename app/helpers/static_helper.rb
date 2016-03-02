module StaticHelper

  def search_or_result
    !params.has_key?(:search_id) ? "search_form" : "results"
  end

end
