# frozen_string_literal: true

module Sections
  class Newsletter < Section
    def self.defaults
      {
        headline:    "Subscribe to our newsletter",
        description: "Nostrud amet eu ullamco nisi aute in ad minim nostrud.",
        form: {
          label:          "Email address",
          input_id:       "email-address",
          input_name:     "email",
          placeholder:    "Enter your email",
          input_classes:  "min-w-0 flex-auto rounded-md bg-white/5 px-3.5 py-2 text-base text-white outline-1 -outline-offset-1 outline-white/10 placeholder:text-gray-500 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-500 sm:text-sm/6",
          button_text:    "Subscribe",
          button_classes: "flex-none rounded-md bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white hover:bg-indigo-400 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500"
        },
        stats: [
          # { icon_svg: "<svg…>", title: "Weekly articles", description: "…" },
          # { icon_svg: "<svg…>", title: "No spam",         description: "…" }
        ]
      }
    end
  end
end
