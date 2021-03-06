class Sprockets::DirectiveProcessor
  def process_depend_on_locales_directive
    Dir.glob(Rails.root.join("config","locales", "**.yml").to_s).each do |path|
      context.depend_on(path)
    end
  end
end
