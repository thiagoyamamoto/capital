# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( backoffice.js site/site.js site/shCore.js site/wow.min.js site/app.js 
	site/buttons.js site/circles.min.js site/holder.js site/jquery.bxslider.min.js site/jquery.cookie.js site/jquery.mixitup.min.js site/shBrushJScript.js site/shBrushXml.js
	site/site.js site/slidebars.js site/styleswitcher.js site/bootstrap.min.js site/jquery.mask.min.js site/portfolio.js)
Rails.application.config.assets.precompile += %w( backoffice.css site/site.css site/jquery-ui.theme.min.css)
