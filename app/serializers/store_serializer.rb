class StoreSerializer
  include JSONAPI::Serializer
  attributes :name

  has_many :books

  attribute :num_books do |object|
    object.books.count
  end
  #alternatively, we could create num_books method in store model and set it as attribute in serializer

  attribute :active do
    true
  end
end
