package com.uportal.blog.repo;

import com.uportal.blog.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepo extends CrudRepository<Message, Long> {
}
