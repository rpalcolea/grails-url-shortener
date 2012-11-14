package slink
import org.apache.commons.lang.RandomStringUtils

class ShortlinkService {
    def grailsApplication

    //Genera el link corto verificando que no exista
    String generateShortLink() {
        boolean available = false

        String randomString

        while(!available) {
            randomString = getRandomString()

            Shortlink.withNewSession {

                Shortlink shortLinkInstance = Shortlink.findByShortLink(randomString)

                if(!shortLinkInstance) available = true

            }
        }
        return randomString
    }

    //Genera un string aleatorio para el link corto
    String getRandomString() {
        Integer maxChar = grailsApplication.config.maxChar

        String charset = (('A'..'Z') + ('0'..'9')).join()

        String randomString = RandomStringUtils.random(maxChar, charset.toCharArray())

        return randomString
    }
}
