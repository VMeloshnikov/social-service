package ru.skillbox.diplom.group33.social.service.repository.notification;

import ru.skillbox.diplom.group33.social.service.model.notification.Notification;
import ru.skillbox.diplom.group33.social.service.repository.base.BaseRepository;

import java.util.List;

public interface NotificationRepository extends BaseRepository<Notification> {

    Long countAllByReceiverIdAndIsDeleted(Long receiverId, Boolean isDeleted);

    List<Notification> findAllByReceiverIdAndIsDeleted(Long ReceiverId, Boolean isDeleted);

    List<Notification> findAllByReceiverId(Long jwtUsersId);
}
