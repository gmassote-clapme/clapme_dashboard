class FormHelperController < ApplicationController

  protected
    def unmask_params(param_base, params_to_unmask=[])
      params_to_unmask.map do |param|
        params[param_base][param] = Clapme::Core::SpecialCharConverter.convert(params[param_base][param])
      end
      param_base
    end

    def build_date_time(param_base, param, param_date, param_time)
      param_base_hash = params[param_base]
      param_base_hash[param] = Time.strptime("#{param_base_hash[param_date]} #{param_base_hash[param_time]} #{ClapmeDashboard::Application.config.i18n.default_locale.to_s}", '%d/%m/%Y %H:%M %Z') unless param_base_hash[param_date].blank? and param_base_hash[param_time].blank?
      puts "################## time zone: #{Time.zone}"
      puts "################## param parse: #{DateTime.parse("#{param_base_hash[param_date]} #{param_base_hash[param_time]}")}"
      puts "################## param strptime simple: #{Time.strptime("#{param_base_hash[param_date]} #{param_base_hash[param_time]} #{ClapmeDashboard::Application.config.i18n.default_locale.to_s}", '%d/%m/%Y %H:%M %Z')}"
      puts "################## param strptime zone: #{Time.strptime("#{param_base_hash[param_date]} #{param_base_hash[param_time]}", '%d/%m/%Y %H:%M')}"
      puts "################## param: #{param_base_hash[param]}"
    end

end
