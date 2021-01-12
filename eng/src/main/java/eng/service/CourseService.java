package eng.service;

import eng.entity.Courses;

import java.util.List;
import java.util.Optional;

public interface CourseService {

    List<Courses> findAllCourses();

    Optional<Courses> findCourseById(Long id);
}
