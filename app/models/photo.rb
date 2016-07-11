class Photo < ActiveRecord::Base
  validates :external_id, presence: true
  validates :search_term, presence: true

  def self.print_click_count search_term
    output = "SEARCH TERM: #{search_term}"
    Photo.where(search_term: search_term).each do |p|
      output = "#{output}\nEXTERNAL_ID: #{p.external_id} CLICK_COUNT: #{p.click_count}"
    end
    output = "#{output}\nEND REPORT"
    Rails.logger.info output
  end
end
