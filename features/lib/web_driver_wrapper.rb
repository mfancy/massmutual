require 'watir'
#require 'webdrivers'


class WebDriverWrapper
  def open(url)
	@browser = Watir::Browser.new :chrome
	#@browser.manage.window.maximize
	@browser.goto url
  end
end