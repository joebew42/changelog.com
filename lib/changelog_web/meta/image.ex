defmodule ChangelogWeb.Meta.Image do
  def fb_image(assigns), do: assigns |> get_fb
  def fb_image_width(assigns), do: assigns |> get_fb_width
  def fb_image_height(assigns), do: assigns |> get_fb_height
  def twitter_image(assigns), do: assigns |> get_twitter

  defp get_fb(%{podcast: podcast}), do: "/images/podcasts/#{podcast.slug}-cover-art.png"
  defp get_fb(_), do: nil
  defp get_fb_width(%{podcast: _podcast}), do: "3000"
  defp get_fb_width(_), do: nil
  defp get_fb_height(%{podcast: _podcast}), do: "3000"
  defp get_fb_height(_), do: nil

  defp get_twitter(%{podcast: podcast}), do: "/images/podcasts/#{podcast.slug}-cover-art.png"
  defp get_twitter(_), do: "/images/share/sitewide-twitter-summary.png"
end
