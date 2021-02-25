# frozen_string_literal: true

class Link < ApplicationRecord
  has_many :link_visits
  before_validation :set_code
  validates :code, presence: true
  validates :url, presence: true, url: true
  validate :not_in_current_domain_url

  scope :with_code, ->(code) { where(code: code) }
  scope :from_cookies, ->(link_ids) { where(id: link_ids) }

  def set_code
    return if code.length == 8

    code_value = generate_random_code
    code_value = generate_random_code while already_used_code?(code_value)
    self.code = code_value
  end

  def generate_random_code
    rand(36**8).to_s(36)
  end

  def already_used_code?(code)
    Link.with_code(code).exists?
  end

  # Used to avoid shorten link beeing shorten again
  def not_in_current_domain_url
    return if url.split(ENV["DOMAIN_NAME"]).length < 2

    errors.add(:url, "This URL is already shorten")
  end
end
