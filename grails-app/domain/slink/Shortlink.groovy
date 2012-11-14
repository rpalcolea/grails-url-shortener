package slink

import org.codehaus.groovy.grails.commons.ConfigurationHolder

class Shortlink {
    transient  shortlinkService

	String shortLink
	String url
	
    static constraints = {
		shortLink unique:true, nullable: true, size:1..ConfigurationHolder.getConfig().getProperty('maxChar').toInteger(), matches:"[a-zA-Z0-9]+"
        url url:true
    }

    String toString() {
        shortLink
    }

    def beforeInsert() {
        Shortlink.withNewSession {
            shortLink = shortlinkService.generateShortLink()
        }
    }
}
