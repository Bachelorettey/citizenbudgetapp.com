class Section
  include Mongoid::Document
  include Mongoid::Paranoia

  embedded_in :questionnaire
  embeds_many :questions

  field :title, type: String

  validates_presence_of :title
end