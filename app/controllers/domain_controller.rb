class DomainController < ApplicationController
  before_filter :authenticate_admin!
  active_scaffold
end
