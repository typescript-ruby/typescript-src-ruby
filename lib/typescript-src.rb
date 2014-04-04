module TypeScript
  module Src
    class << self
      def root
        File.expand_path("..", File.dirname(__FILE__))
      end

      def tsc_path
        root + "/lib/support/tsc"
      end

      def js_path
        root + "/lib/support/typescript.js"
      end

      def js_services_path
        root + "/lib/support/typescriptServices.js"
      end

      def js_content
        File.read(js_path)
      end
    end
  end
end
