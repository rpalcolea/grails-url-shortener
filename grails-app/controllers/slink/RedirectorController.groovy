package slink

class RedirectorController {

    def index(String shortLink) {
		redirect url:Shortlink.findByShortLink(shortLink).targetUrl
	}
}
