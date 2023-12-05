class BookSerializer
  include JSONAPI::Serializer
  attributes :title, :author, :genre, :summary, :number_sold

  has_many :stores

  attribute :publisher do |object|
    "Penguin"
  end

  attribute :num_stores do |object|
    object.stores.count
  end

  attribute :popularity do |object|
    object.popularity
  end

  attribute :active do
    true
  end
end
