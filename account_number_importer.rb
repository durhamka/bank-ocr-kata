class AccountNumberImporter
  def initialize(file)
    File.open(file) do |file|
      file.read
    end
  end
end
