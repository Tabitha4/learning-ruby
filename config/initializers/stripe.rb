if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_16NDN6MZ4uUZCvgwU4tI14xk',
    secret_key: 'sk_test_vCzURbAXX33VOk6cLkoc9yMM'
  }
end

# To reference Stripe credentials:
Stripe.api_key = Rails.configuration.stripe[:secret_key]
