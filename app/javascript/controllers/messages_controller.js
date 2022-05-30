import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
    static targets = ["messages", "form"]
    static values = {chatroomId: Number}
    connect() {
        console.log("Hello")

        this.channel = consumer.subscriptions.create(
            { channel: "ChatroomChannel", id: this.chatroomIdValue  },
            { received: data => this.myCallback(data) }        
        
        )
    }

    myCallback(data) {
        this.messagesTarget.insertAdjacentHTML("beforeend", data);
        this.formTarget.reset();
        this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    }
}