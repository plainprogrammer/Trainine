# frozen_string_literal: true

class ApplicationLayout < ApplicationView
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::ContentFor

  def view_template(&block)
    doctype

    html do
      head do
        title { content_for(:title) || "Trainine" }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        meta name: "apple-mobile-web-app-capable", content: "yes"
        csrf_meta_tags
        csp_meta_tag

        content_for :head

        link rel: "manifest", href: "/manifest.json"
        link rel: "icon", href: "/icon.png", type: "image/png"
        link rel: "icon", href: "/icon.svg", type: "image/svg+xml"
        link rel: "apple-touch-icon", href: "/icon.png"
        stylesheet_link_tag "tailwind", "inter-font", data_turbo_track: "reload"
        stylesheet_link_tag "application", data_turbo_track: "reload"
        javascript_importmap_tags
      end

      body do
        main class: "container mx-auto mt-28 px-5 flex" do
          yield
        end
      end
    end
  end
end
