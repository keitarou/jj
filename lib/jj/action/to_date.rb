# coding: utf-8
class JJActionTodate

  def execute(timestamp)
    time = Time.at(timestamp)
    time.strftime("%Y/%m/%d %H:%M:%S")
  end

end
