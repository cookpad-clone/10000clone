package com.team.clone10000.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.event.ApplicationStartedEvent;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.context.event.EventListener;
import redis.embedded.RedisServer;

import javax.annotation.PreDestroy;
import java.io.IOException;

@Slf4j
@Profile(value = {"local"})
@Configuration
public class EmbeddedRedisConfig {

    private RedisServer redisServer;

    @Value("${spring.redis.port}")
    private int port;

    @EventListener(ApplicationStartedEvent.class)
    public void redisServer() throws IOException {
        redisServer = new RedisServer(port);
        redisServer.start();
        log.info("Embedded Redis Start, port: {}", port);
    }

    @PreDestroy
    public void stopRedis() {
        if (redisServer != null) {
            redisServer.stop();
        }
    }
}
