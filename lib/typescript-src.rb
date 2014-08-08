require 'json'
require 'pathname'

module TypeScript
  module Src
    class << self
      # @return [Pathname]
      def typescript_path
        @typescript_path ||= ::Pathname.new(File.dirname(__FILE__)).join('typescript-src/support/typescript')
      end

      # @return [Pathname]
      def tsc_path
        typescript_path.join('bin/tsc')
      end

      # @return [Pathname]
      def typescript_js_path
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
        typescript_js_path.read
      end

      # @return [Hash]
      def package_info
        JSON.parse(package_json_path.read)
      end

      # to lazy loading
      # @param name [Symbol]
      # @return [Object]
      def const_missing(name)
        package_info[name.downcase.to_s]
      end
    end
  end
end

