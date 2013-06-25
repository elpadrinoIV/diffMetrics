# To change this template, choose Tools | Templates
# and open the template in the editor.

class LinesOfCode
  def initialize
    
  end

  def get_loc_from_file(file)
    return 21
  end

  def get_loc(code)
    code = remove_comments(code)
  end

  def remove_comments(code)
    result = ""
    code.each do |line|
      newline = text[/(.*)\/\/.*/, 1]
    end
  end

  def remove_blank_lines(code)
    
  end
end
