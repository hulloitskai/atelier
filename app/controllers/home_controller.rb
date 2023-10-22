# typed: true
# frozen_string_literal: true

class HomeController < ApplicationController
  # == Actions
  def show
    ActivityStatus.current = "Someone landed on the homepage!"
    render(inertia: "HomePage")
  end
end
