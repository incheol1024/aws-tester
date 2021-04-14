package me.incheol.awstester;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class DemoController {

    @GetMapping("/health")
    public void health() {

    }

    @GetMapping("/aws")
    public String aws() throws UnknownHostException {
        return "beta";
    }
}
