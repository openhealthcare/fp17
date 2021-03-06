use Mix.Config

config :phoenix, FP17.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_fp17_key",
  session_secret: "(%U=210+1N8(_C1^EEZED*!3O2LH@V0X5@TOG7^L8)*+%KXK^$9&^@QX^IWQ#ZZ9MNFLZUSN7",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


