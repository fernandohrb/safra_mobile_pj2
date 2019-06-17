ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address:                "smtp.office365.com",
    port:                   587,
    domain:                 "inmetrics.com.br",
    authentication:         :plain,
    user_name:              "fernando.brito",
    password:               "$Change01",
    enable_starttls_auto:   true
}