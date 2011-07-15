require 'rubygems'
require 'hpricot'
require 'open-uri'
require 'rio'



#download
def download_url(url, target_dir)
  source = rio(url)
  source > rio("#{target_dir}/#{source.filename}").mode('wb')
end

#Chiling Crawl
def dump
  http_url = "http://cn.engadget.com/photos/hp-spring-sg-0/4041129/"
  doc = Hpricot(open(http_url))
  (doc/"//img").each do |img|
    img_src_small = "#{img.attributes['src']}"
    if (img_src_small =~ /_thumbnail.jpg/)
      img_src_big = img_src_small.sub("_thumbnail", "")
      download_url(img_src_small, "public/statics/images/hp")
      download_url(img_src_big, "public/statics/images/hp")
    end
  end
end

dump



