package ru.skillbox.diplom.group33.social.service.dto.notification.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.ZonedDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class DefaultResponse {

    private ZonedDateTime time;
    private MessageResponse status;
}