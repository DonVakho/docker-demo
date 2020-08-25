package com.example.messagingstompwebsocket;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.util.HtmlUtils;

@Controller
public class MessageController {


	@MessageMapping("/user-input")
	@SendTo("/topic/reversed")
	public ResponseMessage greeting(InputMessage message) throws Exception {
		StringBuilder buff = new StringBuilder(message.getMessage());
		return new ResponseMessage(buff.reverse().toString());
	}

}
