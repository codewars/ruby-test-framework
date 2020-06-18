require 'json'

module CodewarsTest
  class Display
    class << self
      def table(data, label: "Table", tab: false, allow_preview: false)
        print(tab ? "TAB" : "LOG", data.to_json, mode: "TABLE", label: label)
        prop("preview", true) if allow_preview and data.count > 10
      end

      def log(msg, label = "", mode = "")
        print('LOG', msg, mode: mode, label: label)
      end

      def print(type, msg, mode: "", label: "")
        puts format_msg("<#{type.upcase}:#{mode.upcase}:#{label}>#{msg}")
      end

      def prop(name, value)
        puts format_msg("<PROP::#{name}>#{value}")
      end

      def format_msg(msg)
        msg.gsub("\n", '<:LF:>')
      end

      def status(msg)
        print("STATUS", msg)
      end

      def pre(content, label = nil)
        log("<pre>#{content}</pre>", label)
      end

      alias :raw :pre

      def html_tag(tag, content)
        puts "<#{tag}>#{content}</#{tag}>"
      end
    end
  end
end
