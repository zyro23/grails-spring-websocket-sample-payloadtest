package payloadtest

import org.springframework.messaging.Message
import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.Payload

class ExampleController {

	def index() {}
	
	@MessageMapping("/payloadtest")
	protected payloadtest(Message<Object> message, @Payload Map commandResult) {
		println commandResult.dump()
	}
	
}
