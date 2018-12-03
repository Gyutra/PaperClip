class Book < ApplicationRecord
has_attached_file :image, 
					 styles: {thumb: ["300x300#", :jpeg], original: [:jpeg]}
validates_attachment :image,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 20.megabyte }

end
