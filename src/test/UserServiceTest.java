import com.msic.dao.UserMapper;
import com.msic.pojo.User;
import com.msic.pojo.UserExample;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceTest {
    @Autowired
    private UserMapper userMapper;

    @Test
    public void testUserLogin() throws Exception{
        String username="张三";
        String password="123";
        UserExample example=new UserExample();
//        UserExample.Criteria criteria = example.createCriteria();
//
//        criteria.andUserNameEqualTo(username);
//        criteria.andUserPasswordEqualTo(password);

        userMapper.selectByExampleWithBLOBs(example);

    }
}
