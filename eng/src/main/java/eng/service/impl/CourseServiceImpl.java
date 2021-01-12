package eng.service.impl;

import eng.entity.Courses;
import eng.entity.User;
import eng.repository.CourseRepository;
import eng.service.CourseService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CourseServiceImpl implements CourseService {

    private final CourseRepository courseRepository;

    public CourseServiceImpl(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    @Override
    public List<Courses> findAllCourses() {
        return courseRepository.findAll();
    }

    @Override
    public Optional<Courses> findCourseById(Long id) {
        return courseRepository.findById(id);
    }
}
