class Jekyll::Converters::Markdown::MyCustomProcessor < Jekyll::Converters::Markdown::KramdownParser
  def convert(content)
    new_content = content.gsub(/^!\[(.+)\]\(\.\.\/\.\.\/img/,'![\1](/img/').gsub(/^<img src="\.\.\/\.\.\/img/, '<img src="/img/').gsub(/^[[:blank:]]*?\$\$$/,"\n$$\n")
    super(new_content)
  end
end
