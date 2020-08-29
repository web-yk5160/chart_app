class GraphsController < ApplicationController
  def index
    gon.chart_label = Graph.pluck(:date).map { |date| date.strftime("%-m/%-d") }
    # null を nil にしないといけないので注意！
    gon.chart_data = Graph.pluck(:weight)
  end
end
