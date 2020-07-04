class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :type_of_media #select from drop down menu: tv show, book, or movie
      t.string :name #name of the media, ex Game of Thrones
      t.string :completion #drop down menu, Interested, Started, or Completed
      t.string :review_score #drop down menu 1-10 as a score, or NA not applicable
      t.string :review_body #optional field, the place to give a more detailed review
      t.integer :user_id
    end
  end
end
