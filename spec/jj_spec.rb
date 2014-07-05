require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "JJActionSample" do
  it "return hoge" do
    JJ.new.sample().should == 'hoge'
  end
end

describe "JJActionToDate" do
  it "return date string" do
    JJ.new.todate(1404572400).should   == '2014-07-06 00:00:00'
    JJ.new.todate('1404572400').should == '2014-07-06 00:00:00'
  end
end

describe "JJActionToTimestamp" do
  it "set time. return timestamp string" do
    JJ.new.totimestamp(
      {
        date: '2014-07-06',
        time: '00:00:00'
      }
    ).should  == '1404572400'
  end

  it "not set time. return timestamp string" do
    JJ.new.totimestamp(
      {
        date: '2014-07-06',
      }
    ).should  == '1404572400'
  end
end
