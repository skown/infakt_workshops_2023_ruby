class ValidatePassword
  def initialize(password)
    @password = password
  end

  def validate
      # Check length
      return false unless @password.length.between?(6, 24)
  
      # Check for at least one uppercase letter
      return false unless @password.match?(/[A-Z]/)
  
      # Check for at least one lowercase letter
      return false unless @password.match?(/[a-z]/)
  
      # Check for at least one digit
      return false unless @password.match?(/\d/)
  
      # Check for at least one special character
      return false unless @password.match?(/[!@#\$%&*+=:;?<>]/)
  
      # Check for maximum of 2 repeated characters
      return false if @password.match?(/(.)\1{2,}/)
  
      true
    end

=begin
    def validation
        if @password.length.between?(6, 24) && @password.match?(/[A-Z]/) && @password.match?(/[a-z]/) && @password.match?(/\d/) && @password.match?(/[!@#\$%&*+=:;?<>]/) && !@password.match?(/(.)\1{2,}/)
            true
        else
            false
        end
    end
=end

    def perform
        validate
    end
end
