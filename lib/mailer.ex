defmodule Mailer do
  use Bamboo.Mailer, otp_app: :portfolio
  import Bamboo.Email

  @moduledoc """
  Mailer keeps the logic for sending an email message
  """
  def send(to, from, subject, body) do
    new_email()
    |> to(to)
    |> from(from)
    |> subject(subject)
    |> text_body("New message from #{from}: #{body}")
    |> deliver_later()
  end
end
