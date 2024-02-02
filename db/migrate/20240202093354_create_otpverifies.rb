class CreateOtpverifies < ActiveRecord::Migration[7.1]
  def change
    create_table :otpverifies do |t|

      t.timestamps
    end
  end
end
