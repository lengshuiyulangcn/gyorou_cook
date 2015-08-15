source "https://supermarket.chef.io"

cookbook 'rbenv'


Dir[File.dirname(__FILE__)+"/site-cookbooks/*"].each do |book|
  cookbook File.basename(book), path: book
end
