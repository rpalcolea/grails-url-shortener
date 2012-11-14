class UrlMappings {

	static mappings = {

        "/administrar/$action?/$id?" (controller:"shortlink")


        "/$shortLink" (controller:"redirector")

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
