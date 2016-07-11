module PhotosHelper
  def desterilize_search_terms terms
    terms = terms.gsub('-', ' ')
    terms = terms.gsub('_', '-')
    terms
  end
end
