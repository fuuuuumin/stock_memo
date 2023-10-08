class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '主食' },
    { id: 3, name: '調味料' },
    { id: 4, name: '災害用ストック' },
    { id: 5, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items

  end