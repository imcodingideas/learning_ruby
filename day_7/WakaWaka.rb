=begin
WakaWaka # translate, print WakaWaka translated and formatted code as in the following example:

#=>
<         >         !         *         '         '         #
Waka      waka      bang      splat     tick      tick      hash,
^         "         `         $         $         -
Caret     quote     back-tick dollar    dollar    dash,
!         *         =         @         $         _
Bang      splat     equal     at        dollar    underscore,
%         *         <         >         ~         #         4
Percent   splat     Waka      waka      tilde     hash      four,

=end

class WakaWaka

  def initialize(code)
    @code = code
  end

  MAPPINGS = {
      '<' => 'Waka',
      '>' => 'waka',
      '!' => 'bang',
      "'" => 'tick',
      '#' => 'hash',
      '^' => 'Caret',
      '"' => 'quote',
      '`' => 'b tick',
      '$' => 'dollar',
      '-' => 'dash',
      '!' => 'Bang',
      '=' => 'equal',
      '@' => 'at',
      '_' => 'under',
      '%' => 'Percent',
      '~' => 'tilde',
      '4' => 'four',
      '*' => 'splat',
  }

  def translate
    @code.each_slice(7) do |symbols|
      puts symbols.join("\t")
      puts symbols.map {|sym| MAPPINGS.fetch(sym, "unknown symbol")  }.join("\t")
    end
  end

end

waka_code = WakaWaka.new(["<", ">", "!", "*", "'", "'", "#", "^", '"', "`", "$", "$", "-", "!", "*", "=", "@", "$", "_", "%", "*", "<", ">", "~", "#", "4"])

waka_code.translate