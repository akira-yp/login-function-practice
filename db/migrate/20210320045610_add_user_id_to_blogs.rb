class AddUserIdToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :user, null:false, index:true
  end
end
