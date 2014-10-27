Paperclip::Attachment.default_options[:default_url] = 'undefined/:attachment_:style.png'

if 'production'.eql?(Rails.env) or 'stage'.eql?(Rails.env)
  Paperclip::Attachment.default_options[:s3_host_name] = 's3-sa-east-1.amazonaws.com'
  Paperclip::Attachment.default_options[:path] = '/cw/ppc/:app_env/:class/:uid/:attachment_:style/:slug_name.:extension'
  Paperclip::Attachment.default_options[:url] = '/cw/ppc/:app_env/:class/:uid/:attachment_:style/:slug_name.:extension'
  Paperclip::Attachment.default_options[:default_url] = 'undefined/:attachment_:style.png'
else
  Paperclip::Attachment.default_options[:path] = '../clapme_uploads/images/:app_env/:class/:uid/:attachment_:style/:slug_name.:extension'
  Paperclip::Attachment.default_options[:url] = '/platform/clapme_uploads/images/:app_env/:class/:uid/:attachment_:style/:slug_name.:extension'
  Paperclip::Attachment.default_options[:default_url] = 'undefined/:attachment_:style.png'
end

Paperclip.interpolates('slug_name') do |attachment, style|
  unless attachment.instance.try(:slug).nil?
    attachment.instance.slug.parameterize
  else
    attachment.original_filename.gsub(File.extname(attachment.original_filename), '')
  end
end

Paperclip.interpolates('uid') do |attachment, style|
  unless attachment.instance.try(:slug).nil?
    attachment.instance.slug.parameterize
  else
    Clapme::Generator::UrlParamOfuscate.encode(attachment.instance.id.to_s)
  end
end

Paperclip.interpolates('app_env') do |attachment, style|
  'e'.concat(Rails.env[0])
end