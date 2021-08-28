require 'fastlane/action'
require_relative '../helper/open_finder1_helper'

module Fastlane
  module Actions
    class OpenFinder1Action < Action
      def self.run(params)
        path = params[:path]
        system("open #{path}")
      end

      def self.description
        "this is tool for mac os x to open finder"
      end

      def self.authors
        ["pangzhanli"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "this is tool for mac os x to open finder"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :path,
            description: "要打开的路径",
            optional: false,
            type: String
          )
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
