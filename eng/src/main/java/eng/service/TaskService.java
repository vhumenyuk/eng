package eng.service;

import eng.entity.Courses;
import eng.entity.Tasks;

import java.util.List;

public interface TaskService {

    List<Tasks> findAllTasksInCourse(Courses course);
}
