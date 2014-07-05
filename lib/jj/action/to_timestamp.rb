# coding: utf-8

require "time"

class JJActionTotimestamp

  def execute(param)
    date = param[:date]
    time = param[:time]

    Time.parse("#{date} #{time}").to_i.to_s
  end

end
