ClapmeDashboard::Application.config.secret_key_base = '7d3ec3532cc870b12af730d5631038ff900b838680f1d4b642ece3fa23bebf2327120d39960c351dbe4c8740b00c27a6a810721b5d05ca97439b570748bccdd2'
ClapmeDashboard::Application.config.crypt_key_pre = ClapmeDashboard::Application.config.secret_key_base[0..5]
ClapmeDashboard::Application.config.crypt_key_pos = ClapmeDashboard::Application.config.secret_key_base[10..15]

