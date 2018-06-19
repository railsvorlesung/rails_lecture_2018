
class BlogPost < ApplicationRecord

  validates :title, :body, presence: true

  #has_one_attached :image
  has_attached_file :image, style: { medium: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :user

  include Rails.application.helpers


  def pdf_path
    Rails.root.join('tmp', "#{self.id}.pdf")
    
  end # #pdf_path

  def to_pdf
    Prawn::Document.generate(pdf_path) do |pdf|
      pdf.text self.title
      pdf.text markdown(self.body)
    end
    File.open(pdf_path)
  end # #to_pdf
end
