defmodule PortfolioWeb.PageController do
  use PortfolioWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def certifications(conn, _params) do
    render(conn, "certifications.html")
  end

  def jiralogs(conn, _params) do
    render(conn, "jiralogs.html")
  end

  def ngpickaday(conn, _params) do
    render(conn, "ng-pickaday.html")
  end

  def sos(conn, _params) do
    render(conn, "sos.html")
  end

  def resume(conn, _params) do
    render(conn, "resume.html")
  end

  def contact(conn, _params) do
    render(conn, "contact.html")
  end

  def send(conn, %{"message" => parameters}) do
    #Send the mail message
    Mailer.send("alternar64@gmail.com", 
      "Portfolio contact page", 
      parameters["from"],
      parameters["body"])
    conn
    |> put_flash(:info, "Message sent!")
    |> redirect(to: "/contact")
  end
end
