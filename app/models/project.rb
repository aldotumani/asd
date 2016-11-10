class Project < ActiveRecord::Base

  has_many :image
  has_many :fotos

  has_attached_file :image,
                    :styles => {
                        :medium_1x => '400x300#',
                    },
                    :default_url => '/images/:style/missing.png'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
