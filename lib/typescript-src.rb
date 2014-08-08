require 'json'
require 'pathname'

module TypeScript
  module Src
    class << self
      VERSION = package_info['version'] + '.2'

      # @return [Pathname]
      def typescript_path
        @typescript_path ||= ::Pathname.new(File.dirname(__FILE__)).join('typescript-src/support/typescript')
      end

      # @return [Pathname]
      def tsc_path
        typescript_path.join('bin/tsc')
      end

      # @return [Pathname]
      def js_path
        typescript_path.join('bin/typescript.js')
      end

      # @return [Pathname]
      def package_json_path
        typescript_path.join('package.json')
      end

      # @return [Pathname]
      def license_path
        typescript_path.join('LICENSE.txt')
      end

      ### contents

      # @return [String]
      def js_content
        js_path.read
      end

      # @return [Hash]
      def package_info
        JSON.parse(package_json_path.read)
      end

      # @return [String]
      def version
        package_info['version']
      end
    end
  end
end

