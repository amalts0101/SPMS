module ApplicationHelper

  def toast_title(status)
    case status
    when 'alert'
      'Warning'
    when 'error'
      'Error'
    when 'success'
      'Success'
    when 'info'
      'Information'
    end
  end

  def toast_icon(status)
    case status
    when 'alert'
      'warning'
    when 'error'
      'error'
    when 'success'
      'success'
    when 'info'
      'info'
    end
  end
end
