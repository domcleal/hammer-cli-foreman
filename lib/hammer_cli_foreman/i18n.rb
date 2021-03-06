require 'hammer_cli/i18n'

module HammerCLIForeman
  module I18n

    class LocaleDomain < HammerCLI::I18n::LocaleDomain

      def translated_files
        Dir.glob(File.join(File.dirname(__FILE__), '../**/*.rb'))
      end

      def locale_dir
        File.join(File.dirname(__FILE__), '../../locale')
      end

      def domain_name
        'hammer-cli-foreman'
      end
    end

  end
end

HammerCLI::I18n.add_domain(HammerCLIForeman::I18n::LocaleDomain.new)
