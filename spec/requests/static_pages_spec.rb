require 'spec_helper'

describe "StaticPages" do
  
  @static_pages = [
                    {:title => "Home", :url =>"home"},
                    {:title => "Help", :url => "help"},
                    {:title =>"About Us", :url =>"about"},
                    {:title =>"Contact", :url =>"contact"}
                  ]
  
  @static_pages.each do |static_page|
    describe "#{static_page[:title]} page" do
      it "should have the h1 #{static_page[:title]}" do
        visit "/static_pages/#{static_page[:url]}"
        page.should have_selector('h1', :text => static_page[:title])
      end

      it "should have the title #{static_page[:title]}" do
        visit "/static_pages/#{static_page[:url]}"
        page.should have_selector('title', :text => "Test App | #{static_page[:title]}")
      end
    end
  end  
end
