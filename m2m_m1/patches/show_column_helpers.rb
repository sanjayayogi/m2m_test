# show_column_helpers.rb
# File #3 - show_column_helpers.rb
# copy to m2m_m1/patches/show_column_helpers.rb
# copy PATCH to vendor/plugins/active_scaffold/lib/active_scaffold/helpers/show_column_helpers.rb
module ActiveScaffold
  module Helpers
    # Helpers that assist with the rendering of a List Column
    module ShowColumnHelpers
      def show_column_value(record, column)
        # check for an override helper
        if show_column_override? column
          # we only pass the record as the argument. we previously also passed the formatted_value,
          # but mike perham pointed out that prohibited the usage of overrides to improve on the
          # performance of our default formatting. see issue #138.
          send(show_column_override(column), record)
        # second, check if the dev has specified a valid list_ui for this column
        elsif column.list_ui and override_show_column_ui?(column.list_ui)
          send(override_show_column_ui(column.list_ui), column, record)
        else
          if override_show_column_ui?(column.column.class)
            send(override_show_column_ui(column.column.class), column, record)
          else
            get_column_value(record, column)
          end
        end
      end

      def active_scaffold_show_text(column, record)
        simple_format(get_column_value(record, column))
      end

      def show_column_override(column)
        "#{column.name.to_s.gsub('?', '')}_show_column" # parse out any question marks (see issue 227)
      end

      def show_column_override?(column)
        respond_to?(show_column_override(column))
      end

      def override_show_column_ui?(list_ui)
        respond_to?(override_show_column_ui(list_ui))
      end

      # the naming convention for overriding show types with helpers
      def override_show_column_ui(list_ui)
        "active_scaffold_show_#{list_ui}"
      end
    end
  end
end