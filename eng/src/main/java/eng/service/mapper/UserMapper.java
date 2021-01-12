package eng.service.mapper;

import eng.dto.UserDTO;
import eng.entity.User;
import eng.entity.UserDetailsImpl;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface UserMapper {
    UserDTO toDTO(User user);

    User toEntity(UserDTO userDTO);

    @Mapping(source = "roles", target = "authorities")
    UserDetailsImpl toUserDetails(User user);
}
