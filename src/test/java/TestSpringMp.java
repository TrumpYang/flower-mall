import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.henu.mapper.UserMapper;
import com.henu.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestSpringMp {
    @Autowired
    private UserMapper userMapper;


    @Test
    public void testSelectList() {
        List<User> users = this.userMapper.selectList(null);
        for (User user : users) {
            System.out.println(user);
        }

    }

    @Test
    public void testInsert() {
        User user = new User();

        user.setAddress("test@itcast.cn");
        user.setUserName("曹操");
        user.setPassword("123456");
        int result = userMapper.insert(user);
        System.out.println(result);
        System.out.println(user.getId());
    }

    //通过Wrapper 设置条件更新


    @Test
    public void updateUser() {
        //更新的条件以及字段  id为1 的记录 age字段改为18
        UpdateWrapper<User> wrapper = new UpdateWrapper<User>();
        wrapper.eq("id", 1).set("address", "北京");
        int res = userMapper.update(null, wrapper);
        System.out.println("受影响的条数为" + res);

    }

    @Test
    public void testDeleteById() { //执行删除操作
        int result = this.userMapper.deleteById(6L);
        System.out.println("result = " + result);
    }

}
