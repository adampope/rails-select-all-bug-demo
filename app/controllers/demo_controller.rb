class DemoController < ApplicationController

  def index
  end

  def bug
    company_id = params[:cid]
    @c = Company.where(id: company_id).first
    @results = @c.products_as_hash
  end

end