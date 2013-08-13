require "nokogiri"
require "open-uri"

class Natdebt
  def self.current
    loDoc = Nokogiri::HTML(open('http://brillig.com/debt_clock'))
    lsDebt = loDoc.at_css("img")["alt"]
    lsDebt = lsDebt.gsub(/(\,|\$|\s+)/, "")
    lfDebt = lsDebt.to_f
    return lfDebt
  end
end
