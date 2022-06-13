class AddSocialMediaUrlsToOrganization < ActiveRecord::Migration[6.1]
  def change
    add_column :organizations, :facebook_url, :string
    add_column :organizations, :twitter_url, :string
    add_column :organizations, :instagram_url, :string
  end
end
