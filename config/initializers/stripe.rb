if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_oPgx09t0B86x6PZ3sBaWLkIB',
    :secret_key => 'sk_test_npjVjXQGkxkLakXPE4QTr3kO'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]