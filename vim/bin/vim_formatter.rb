require 'rspec/core/formatters/base_text_formatter.rb'
require 'pathname'

# Format spec results for display in the Vim quickfix window
module RSpec
  module Core
    module Formatters
      class VimFormatter < BaseTextFormatter
        def dump_failure counter, failure
          path = failure.exception.backtrace.find do |frame|
            frame =~ %r{\bspec/.*_spec\.rb:\d+\z}
          end
          message = failure.exception.message.gsub("\n", ' ')
          @output.puts "#{relativize_path(path)}: #{message}" if path
        end

        def dump_pending; end

        def dump_summary duration, example_count, failure_count, pending_count
        end

      private

        def relativize_path path
          @wd ||= Pathname.new Dir.getwd
          begin
            return Pathname.new(path).relative_path_from(@wd)
          rescue ArgumentError
            # raised unless both paths relative, or both absolute
            return path
          end
        end
      end # class VimFormatter
    end # module Formatter
  end # module Runner
end # module Spec
