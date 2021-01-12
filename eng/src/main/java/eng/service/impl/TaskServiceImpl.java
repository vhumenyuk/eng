package eng.service.impl;

import eng.entity.Courses;
import eng.entity.Tasks;
import eng.entity.User;
import eng.repository.TaskRepository;
import eng.service.TaskService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskServiceImpl implements TaskService {
    private final TaskRepository taskRepository;

    public TaskServiceImpl(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @Override
    public List<Tasks> findAllTasksInCourse(Courses course) {
        return taskRepository.findByCourseId(course);
    }
}
