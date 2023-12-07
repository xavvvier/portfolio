defmodule PortfolioWeb.PageController do
  use PortfolioWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def certifications(conn, _params) do
    certs = "./lib/portfolio_web/data/certifications.json"
    |> File.read!()
    |> Jason.decode!
    render(conn, "certifications.html", certs: certs)
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

  def game_jam(conn, _params) do
    render(conn, "game_jam.html")
  end

  def wr_download(conn, _params) do
    render(conn, "wr-download.html")
  end

  def dynogang(conn, _params) do
    render(conn, "dynogang.html")
  end

  def contact(conn, _params) do
    render(conn, "contact.html")
  end
end
