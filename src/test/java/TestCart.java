import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.henu.domain.Cart;
import com.henu.domain.User;
import com.henu.mapper.CartMapper;
import com.henu.mapper.UserMapper;
import com.henu.service.CartService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigDecimal;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestCart {
    @Autowired
    private CartService service;

    @Test
    public void testSelectList() {
        List<Cart> temp = service.queryItems("root");
        int count = service.queryTotalCunt("root");
        BigDecimal totalPrice=service.queryTotalPrice("root");
        for (Cart c :
                temp) {
            if(c!=null){
                c.setSingleTotal(c.getPrice()*c.getNumber());
                c.setCount(count);
                c.setTotalPrice(totalPrice);
            }
        }
        System.out.println(temp);
    }




}
