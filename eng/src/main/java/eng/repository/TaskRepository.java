package eng.repository;

import eng.entity.Courses;
import eng.entity.Tasks;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TaskRepository extends JpaRepository<Tasks, Long> {
    List<Tasks> findByCourseId(Courses courses);
}
