require 'sinatra'
require 'active_record'
require 'activerecord-sqlserver-adapter'
require './config/environment'

class Icitem < ActiveRecord::Base
  self.table_name  = 'ICITEM'
  self.primary_key = 'ITEMNO'
end

get '/' do
  @items = Icitem.all
  ### TO LIST FILES WITH EACH ###
  # @files = Dir.foreach("/path/to/folder")
  # <% @files.each do |file| %>
  #   <tr>
  #     <td><% File.basename(file, ".*") %></td>
  #     <td><% File.extname(file) %></td>
  #   </tr>
  # <% end %>
  erb :index
end
