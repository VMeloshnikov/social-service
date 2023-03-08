package ru.skillbox.diplom.group33.social.service.dto.notification.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Schema(description = "Сообщение статуса изменения настройки уведомления")
public class MessageResponse {

    @Schema(description = "Сообщение", example = "true")
    private Boolean message;
}
