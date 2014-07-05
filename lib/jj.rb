# coding: utf-8
require_relative "./jj/action/sample"
require_relative "./jj/action/to_date"
require_relative "./jj/action/to_timestamp"

class JJ

  def method_missing(name, *args)
    Object.const_get("JJAction#{name.capitalize}").new.execute args.first
  end

end
