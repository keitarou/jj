# coding: utf-8

require "time"

class JJActionTotimestamp

  def execute(date)
    Time.parse(date).to_i.to_s
  end

end
