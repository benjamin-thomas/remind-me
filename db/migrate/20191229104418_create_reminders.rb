class CreateReminders < ActiveRecord::Migration[6.0]
  def up
    execute <<-EOS
      CREATE TABLE reminders (
          id SERIAL PRIMARY KEY
        , descr TEXT NOT NULL
        , trigger_on TIMESTAMP WITHOUT TIME ZONE NULL
        , priority INT NOT NULL DEFAULT 0

        , created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
        , updated_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
      );
    EOS
  end

  def down
    execute <<-EOS
      DROP TABLE reminders;
    EOS
  end
end
