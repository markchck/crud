class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
		t.integer :article_id
		t.text :reply_content
		t.timestamps
    end
  end
end
