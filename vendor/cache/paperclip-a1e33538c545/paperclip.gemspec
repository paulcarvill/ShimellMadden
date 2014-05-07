# -*- encoding: utf-8 -*-
# stub: paperclip 4.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "paperclip"
  s.version = "4.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jon Yurek"]
  s.date = "2014-05-06"
  s.description = "Easy upload management for ActiveRecord"
  s.email = ["jyurek@thoughtbot.com"]
  s.files = [".gitignore", ".travis.yml", "Appraisals", "CONTRIBUTING.md", "Gemfile", "LICENSE", "NEWS", "README.md", "RUNNING_TESTS.md", "Rakefile", "UPGRADING", "cucumber/paperclip_steps.rb", "features/basic_integration.feature", "features/migration.feature", "features/rake_tasks.feature", "features/step_definitions/attachment_steps.rb", "features/step_definitions/html_steps.rb", "features/step_definitions/rails_steps.rb", "features/step_definitions/s3_steps.rb", "features/step_definitions/web_steps.rb", "features/support/env.rb", "features/support/fakeweb.rb", "features/support/file_helpers.rb", "features/support/fixtures/boot_config.txt", "features/support/fixtures/gemfile.txt", "features/support/fixtures/preinitializer.txt", "features/support/paths.rb", "features/support/rails.rb", "features/support/selectors.rb", "gemfiles/3.2.gemfile", "gemfiles/4.0.gemfile", "gemfiles/4.1.gemfile", "lib/generators/paperclip/USAGE", "lib/generators/paperclip/paperclip_generator.rb", "lib/generators/paperclip/templates/paperclip_migration.rb.erb", "lib/paperclip.rb", "lib/paperclip/attachment.rb", "lib/paperclip/attachment_registry.rb", "lib/paperclip/callbacks.rb", "lib/paperclip/content_type_detector.rb", "lib/paperclip/errors.rb", "lib/paperclip/file_command_content_type_detector.rb", "lib/paperclip/filename_cleaner.rb", "lib/paperclip/geometry.rb", "lib/paperclip/geometry_detector_factory.rb", "lib/paperclip/geometry_parser_factory.rb", "lib/paperclip/glue.rb", "lib/paperclip/has_attached_file.rb", "lib/paperclip/helpers.rb", "lib/paperclip/interpolations.rb", "lib/paperclip/interpolations/plural_cache.rb", "lib/paperclip/io_adapters/abstract_adapter.rb", "lib/paperclip/io_adapters/attachment_adapter.rb", "lib/paperclip/io_adapters/data_uri_adapter.rb", "lib/paperclip/io_adapters/empty_string_adapter.rb", "lib/paperclip/io_adapters/file_adapter.rb", "lib/paperclip/io_adapters/http_url_proxy_adapter.rb", "lib/paperclip/io_adapters/identity_adapter.rb", "lib/paperclip/io_adapters/nil_adapter.rb", "lib/paperclip/io_adapters/registry.rb", "lib/paperclip/io_adapters/stringio_adapter.rb", "lib/paperclip/io_adapters/uploaded_file_adapter.rb", "lib/paperclip/io_adapters/uri_adapter.rb", "lib/paperclip/locales/en.yml", "lib/paperclip/logger.rb", "lib/paperclip/matchers.rb", "lib/paperclip/matchers/have_attached_file_matcher.rb", "lib/paperclip/matchers/validate_attachment_content_type_matcher.rb", "lib/paperclip/matchers/validate_attachment_presence_matcher.rb", "lib/paperclip/matchers/validate_attachment_size_matcher.rb", "lib/paperclip/media_type_spoof_detector.rb", "lib/paperclip/missing_attachment_styles.rb", "lib/paperclip/processor.rb", "lib/paperclip/railtie.rb", "lib/paperclip/schema.rb", "lib/paperclip/storage.rb", "lib/paperclip/storage/filesystem.rb", "lib/paperclip/storage/fog.rb", "lib/paperclip/storage/s3.rb", "lib/paperclip/style.rb", "lib/paperclip/tempfile.rb", "lib/paperclip/tempfile_factory.rb", "lib/paperclip/thumbnail.rb", "lib/paperclip/url_generator.rb", "lib/paperclip/validators.rb", "lib/paperclip/validators/attachment_content_type_validator.rb", "lib/paperclip/validators/attachment_file_name_validator.rb", "lib/paperclip/validators/attachment_file_type_ignorance_validator.rb", "lib/paperclip/validators/attachment_presence_validator.rb", "lib/paperclip/validators/attachment_size_validator.rb", "lib/paperclip/validators/media_type_spoof_detection_validator.rb", "lib/paperclip/version.rb", "lib/tasks/paperclip.rake", "paperclip.gemspec", "shoulda_macros/paperclip.rb", "spec/database.yml", "spec/paperclip/attachment_definitions_spec.rb", "spec/paperclip/attachment_processing_spec.rb", "spec/paperclip/attachment_registry_spec.rb", "spec/paperclip/attachment_spec.rb", "spec/paperclip/content_type_detector_spec.rb", "spec/paperclip/file_command_content_type_detector_spec.rb", "spec/paperclip/filename_cleaner_spec.rb", "spec/paperclip/geometry_detector_spec.rb", "spec/paperclip/geometry_parser_spec.rb", "spec/paperclip/geometry_spec.rb", "spec/paperclip/has_attached_file_spec.rb", "spec/paperclip/integration_spec.rb", "spec/paperclip/interpolations_spec.rb", "spec/paperclip/io_adapters/abstract_adapter_spec.rb", "spec/paperclip/io_adapters/attachment_adapter_spec.rb", "spec/paperclip/io_adapters/data_uri_adapter_spec.rb", "spec/paperclip/io_adapters/empty_string_adapter_spec.rb", "spec/paperclip/io_adapters/file_adapter_spec.rb", "spec/paperclip/io_adapters/http_url_proxy_adapter_spec.rb", "spec/paperclip/io_adapters/identity_adapter_spec.rb", "spec/paperclip/io_adapters/nil_adapter_spec.rb", "spec/paperclip/io_adapters/registry_spec.rb", "spec/paperclip/io_adapters/stringio_adapter_spec.rb", "spec/paperclip/io_adapters/uploaded_file_adapter_spec.rb", "spec/paperclip/io_adapters/uri_adapter_spec.rb", "spec/paperclip/matchers/have_attached_file_matcher_spec.rb", "spec/paperclip/matchers/validate_attachment_content_type_matcher_spec.rb", "spec/paperclip/matchers/validate_attachment_presence_matcher_spec.rb", "spec/paperclip/matchers/validate_attachment_size_matcher_spec.rb", "spec/paperclip/media_type_spoof_detector_spec.rb", "spec/paperclip/meta_class_spec.rb", "spec/paperclip/paperclip_missing_attachment_styles_spec.rb", "spec/paperclip/paperclip_spec.rb", "spec/paperclip/plural_cache_spec.rb", "spec/paperclip/processor_spec.rb", "spec/paperclip/rake_spec.rb", "spec/paperclip/schema_spec.rb", "spec/paperclip/storage/filesystem_spec.rb", "spec/paperclip/storage/fog_spec.rb", "spec/paperclip/storage/s3_live_spec.rb", "spec/paperclip/storage/s3_spec.rb", "spec/paperclip/style_spec.rb", "spec/paperclip/tempfile_factory_spec.rb", "spec/paperclip/thumbnail_spec.rb", "spec/paperclip/url_generator_spec.rb", "spec/paperclip/validators/attachment_content_type_validator_spec.rb", "spec/paperclip/validators/attachment_file_name_validator_spec.rb", "spec/paperclip/validators/attachment_presence_validator_spec.rb", "spec/paperclip/validators/attachment_size_validator_spec.rb", "spec/paperclip/validators/media_type_spoof_detection_validator_spec.rb", "spec/paperclip/validators_spec.rb", "spec/spec_helper.rb", "spec/support/assertions.rb", "spec/support/fake_model.rb", "spec/support/fake_rails.rb", "spec/support/fixtures/12k.png", "spec/support/fixtures/50x50.png", "spec/support/fixtures/5k.png", "spec/support/fixtures/animated", "spec/support/fixtures/animated.gif", "spec/support/fixtures/animated.unknown", "spec/support/fixtures/bad.png", "spec/support/fixtures/empty.html", "spec/support/fixtures/fog.yml", "spec/support/fixtures/rotated.jpg", "spec/support/fixtures/s3.yml", "spec/support/fixtures/spaced file.png", "spec/support/fixtures/text.txt", "spec/support/fixtures/twopage.pdf", "spec/support/fixtures/uppercase.PNG", "spec/support/matchers/accept.rb", "spec/support/matchers/exist.rb", "spec/support/mock_attachment.rb", "spec/support/mock_interpolator.rb", "spec/support/mock_model.rb", "spec/support/mock_url_generator_builder.rb", "spec/support/model_reconstruction.rb", "spec/support/rails_helpers.rb", "spec/support/test_data.rb", "spec/support/version_helper.rb"]
  s.homepage = "https://github.com/thoughtbot/paperclip"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.requirements = ["ImageMagick"]
  s.rubyforge_project = "paperclip"
  s.rubygems_version = "2.2.2"
  s.summary = "File attachments as attributes for ActiveRecord"
  s.test_files = ["features/basic_integration.feature", "features/migration.feature", "features/rake_tasks.feature", "features/step_definitions/attachment_steps.rb", "features/step_definitions/html_steps.rb", "features/step_definitions/rails_steps.rb", "features/step_definitions/s3_steps.rb", "features/step_definitions/web_steps.rb", "features/support/env.rb", "features/support/fakeweb.rb", "features/support/file_helpers.rb", "features/support/fixtures/boot_config.txt", "features/support/fixtures/gemfile.txt", "features/support/fixtures/preinitializer.txt", "features/support/paths.rb", "features/support/rails.rb", "features/support/selectors.rb", "spec/database.yml", "spec/paperclip/attachment_definitions_spec.rb", "spec/paperclip/attachment_processing_spec.rb", "spec/paperclip/attachment_registry_spec.rb", "spec/paperclip/attachment_spec.rb", "spec/paperclip/content_type_detector_spec.rb", "spec/paperclip/file_command_content_type_detector_spec.rb", "spec/paperclip/filename_cleaner_spec.rb", "spec/paperclip/geometry_detector_spec.rb", "spec/paperclip/geometry_parser_spec.rb", "spec/paperclip/geometry_spec.rb", "spec/paperclip/has_attached_file_spec.rb", "spec/paperclip/integration_spec.rb", "spec/paperclip/interpolations_spec.rb", "spec/paperclip/io_adapters/abstract_adapter_spec.rb", "spec/paperclip/io_adapters/attachment_adapter_spec.rb", "spec/paperclip/io_adapters/data_uri_adapter_spec.rb", "spec/paperclip/io_adapters/empty_string_adapter_spec.rb", "spec/paperclip/io_adapters/file_adapter_spec.rb", "spec/paperclip/io_adapters/http_url_proxy_adapter_spec.rb", "spec/paperclip/io_adapters/identity_adapter_spec.rb", "spec/paperclip/io_adapters/nil_adapter_spec.rb", "spec/paperclip/io_adapters/registry_spec.rb", "spec/paperclip/io_adapters/stringio_adapter_spec.rb", "spec/paperclip/io_adapters/uploaded_file_adapter_spec.rb", "spec/paperclip/io_adapters/uri_adapter_spec.rb", "spec/paperclip/matchers/have_attached_file_matcher_spec.rb", "spec/paperclip/matchers/validate_attachment_content_type_matcher_spec.rb", "spec/paperclip/matchers/validate_attachment_presence_matcher_spec.rb", "spec/paperclip/matchers/validate_attachment_size_matcher_spec.rb", "spec/paperclip/media_type_spoof_detector_spec.rb", "spec/paperclip/meta_class_spec.rb", "spec/paperclip/paperclip_missing_attachment_styles_spec.rb", "spec/paperclip/paperclip_spec.rb", "spec/paperclip/plural_cache_spec.rb", "spec/paperclip/processor_spec.rb", "spec/paperclip/rake_spec.rb", "spec/paperclip/schema_spec.rb", "spec/paperclip/storage/filesystem_spec.rb", "spec/paperclip/storage/fog_spec.rb", "spec/paperclip/storage/s3_live_spec.rb", "spec/paperclip/storage/s3_spec.rb", "spec/paperclip/style_spec.rb", "spec/paperclip/tempfile_factory_spec.rb", "spec/paperclip/thumbnail_spec.rb", "spec/paperclip/url_generator_spec.rb", "spec/paperclip/validators/attachment_content_type_validator_spec.rb", "spec/paperclip/validators/attachment_file_name_validator_spec.rb", "spec/paperclip/validators/attachment_presence_validator_spec.rb", "spec/paperclip/validators/attachment_size_validator_spec.rb", "spec/paperclip/validators/media_type_spoof_detection_validator_spec.rb", "spec/paperclip/validators_spec.rb", "spec/spec_helper.rb", "spec/support/assertions.rb", "spec/support/fake_model.rb", "spec/support/fake_rails.rb", "spec/support/fixtures/12k.png", "spec/support/fixtures/50x50.png", "spec/support/fixtures/5k.png", "spec/support/fixtures/animated", "spec/support/fixtures/animated.gif", "spec/support/fixtures/animated.unknown", "spec/support/fixtures/bad.png", "spec/support/fixtures/empty.html", "spec/support/fixtures/fog.yml", "spec/support/fixtures/rotated.jpg", "spec/support/fixtures/s3.yml", "spec/support/fixtures/spaced file.png", "spec/support/fixtures/text.txt", "spec/support/fixtures/twopage.pdf", "spec/support/fixtures/uppercase.PNG", "spec/support/matchers/accept.rb", "spec/support/matchers/exist.rb", "spec/support/mock_attachment.rb", "spec/support/mock_interpolator.rb", "spec/support/mock_model.rb", "spec/support/mock_url_generator_builder.rb", "spec/support/model_reconstruction.rb", "spec/support/rails_helpers.rb", "spec/support/test_data.rb", "spec/support/version_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<cocaine>, ["~> 0.5.3"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<aws-sdk>, [">= 1.5.7"])
      s.add_development_dependency(%q<bourne>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.3.11"])
      s.add_development_dependency(%q<aruba>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<capybara>, ["= 2.0.3"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<fog>, ["~> 1.0"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<railties>, [">= 0"])
      s.add_development_dependency(%q<actionmailer>, [">= 3.0.0"])
      s.add_development_dependency(%q<generator_spec>, [">= 0"])
    else
      s.add_dependency(%q<activemodel>, [">= 3.0.0"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<cocaine>, ["~> 0.5.3"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<aws-sdk>, [">= 1.5.7"])
      s.add_dependency(%q<bourne>, [">= 0"])
      s.add_dependency(%q<cucumber>, ["~> 1.3.11"])
      s.add_dependency(%q<aruba>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<capybara>, ["= 2.0.3"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<fog>, ["~> 1.0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 0"])
      s.add_dependency(%q<actionmailer>, [">= 3.0.0"])
      s.add_dependency(%q<generator_spec>, [">= 0"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 3.0.0"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<cocaine>, ["~> 0.5.3"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<aws-sdk>, [">= 1.5.7"])
    s.add_dependency(%q<bourne>, [">= 0"])
    s.add_dependency(%q<cucumber>, ["~> 1.3.11"])
    s.add_dependency(%q<aruba>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<capybara>, ["= 2.0.3"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<fog>, ["~> 1.0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 0"])
    s.add_dependency(%q<actionmailer>, [">= 3.0.0"])
    s.add_dependency(%q<generator_spec>, [">= 0"])
  end
end
