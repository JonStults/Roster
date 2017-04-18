module EmployeesHelper
  def svg(thumb)
    file_path = "roster/app/views/svg/thumb.svg"
    if File.exists?(file_path)
      cache { File.read(file_path).html_safe }
    else
      '(not found)'
    end
  end
end
