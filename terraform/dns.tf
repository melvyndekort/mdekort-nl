data "cloudflare_zone" "mdekort" {
  name = "mdekort.nl"
}

resource "cloudflare_record" "apex" {
  zone_id = data.cloudflare_zone.mdekort.id
  name    = ""
  type    = "CNAME"
  ttl     = "300"
  value   = "apex-loadbalancer.netlify.com"
}

resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zone.mdekort.id
  name    = ""
  type    = "CNAME"
  ttl     = "300"
  value   = "apex-mdekort-nl.netlify.app"
}
