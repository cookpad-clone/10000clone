package com.team.clone10000.redis;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class RedisTests {

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @Test
    public void opsForValue() {
        String key, value, responseValue;

        given: {
            key = "key";
            value = "value";
            redisTemplate.opsForValue().set(key, value);
        }

        when: {
            responseValue = redisTemplate.opsForValue().get(key);
        }

        then: {
            assertThat(responseValue).isNotNull();
            assertThat(responseValue).isEqualTo(value);
        }
    }
}
