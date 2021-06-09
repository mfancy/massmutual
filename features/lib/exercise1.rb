require_relative 'web_driver_wrapper'

class Exercse1 < WebDriverWrapper
  def initialize(url)
	open url
  end
  
  def label1
	@browser.label(id: 'lbl_val_1').text
  end
  
  def label2
    @browser.label(id: 'lbl_val_2').text
  end
  
  def label3
    @browser.label(id: 'lbl_val_3').text
  end
  
  def label4
    @browser.label(id: 'lbl_val_4').text
  end
  
  def label5
    @browser.label(id: 'lbl_val_5').text
  end
  
  def label_total
    @browser.label(id: 'lbl_ttl_val').text
  end
  
  def value1
    @browser.text_field(id: 'txt_val_1').value
  end
  
  def value2
    @browser.text_field(id: 'txt_val_2').value
  end
  
  def value4
    @browser.text_field(id: 'txt_val_4').value
  end
  
  def value5
    @browser.text_field(id: 'txt_val_5').value
  end
  
  def value6
    @browser.text_field(id: 'txt_val_6').value
  end
  
  def value_total
    @browser.text_field(id: 'txt_ttl_val').value
  end
end