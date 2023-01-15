module Mimik
  class LocalePath
    def initialize(file_name)
      @file_name = file_name
      # TODO: Figure out how to access Mimik Config without it sending an error
      @locale = Mimik::Config.locale
    end

    def path
      return locale_path if File.exist?(locale_path)
      default_path
    end

    private

    attr_reader :path, :file_name, :locale

    DEFAULTS_PATH = "lib/mimik/locales".freeze

    def locale_path
      "#{DEFAULTS_PATH}/#{locale}/#{file_name}.yml"
    end

    def default_path
      "#{DEFAULTS_PATH}/#{file_name}.yml"
    end
  end
end
