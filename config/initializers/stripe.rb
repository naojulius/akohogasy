Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_8ImTgITaeHcxF1Zi88nc34bv'],
  :secret_key      => ENV['sk_test_52i6M8AKfOOTJQqW7vlxS6gM']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

