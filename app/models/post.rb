class Post < ApplicationRecord
    validates :title, presence:true
    validates :category, acceptance:{accept:['Fiction','Non-Fiction'],message:'is not included in the list'}
    validates :content, length:{minimum:100}
end
