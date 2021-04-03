class FishKindsController < ApplicationController
  def index
  @fish_kinds = FishKind.all
  end
end
