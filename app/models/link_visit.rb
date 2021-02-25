# frozen_string_literal: true

class LinkVisit < ApplicationRecord
  belongs_to :link
  validates :link, presence: true
end
