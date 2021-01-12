package eng.service;

import eng.dto.UserDTO;
import eng.entity.User;

public interface UserService {
    UserDTO createUser(UserDTO userDTO);


    UserDTO findByEmail(String email);

    User findUserByEmail(String email);

    long count();

    void updateUserCourse( User user);
}
