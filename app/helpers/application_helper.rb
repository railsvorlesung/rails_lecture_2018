module ApplicationHelper

  def flash_as_array(flash_msg)
    if flash_msg.kind_of?(Array) 
     return flash_msg 
    else
     return [flash_msg]   
    end
  end # #flash_as_array


end
