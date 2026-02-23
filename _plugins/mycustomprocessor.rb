class Jekyll::Converters::Markdown::MyCustomProcessor < Jekyll::Converters::Markdown::KramdownParser
  def convert(content)
    new_content = content.gsub(/^!\[(.+)\]\(\.\.\/\.\.\/img/,'![\1](/img/')
    new_content = new_content.gsub(/^<img src="\.\.\/\.\.\/img/, '<img src="/img/')
    super(new_content)
  end
end
