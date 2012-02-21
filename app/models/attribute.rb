class Attribute < ActiveRecord::Base
  belongs_to :institution_kind

  #has_many :attribute_strings
  #has_many :attribute_booleans

  KINDS = {:string => AttributeString, :boolean => AttributeBoolean}.freeze
  validates_presence_of :title
  validates_uniqueness_of :title, :scope => [:institution_kind_id]
  validates_presence_of :kind
  attr_readonly :kind
end
