class StorehrSerializer
  # THIS ISNT HANDROLLED CORRECTLY ANYWAY
  def self.format_stores(stores)
    stores.map do |store|
      {
        data: [
          {
          id: store.id,
          "type": "store",
          "attributes": {
            name: store.name,
            "num_books": store.books.count
          },
          relationships: {
            books: {
              data: [
                {
                  id: store.books.first.id,
                  "type": "book"
                }, 
                {
                  id: store.books.last.id,
                  "type": "book"
                }
              ]
            }
          }
        }
      ]
    }
    end
  end
end