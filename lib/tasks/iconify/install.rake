namespace :iconify do
  desc "Install and setup Iconify JSON"
  task :install do
    system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install.rb", __dir__)}"
  end
end
