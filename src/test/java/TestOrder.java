import com.henu.domain.Cart;
import com.henu.domain.Order;
import com.henu.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestOrder {
    @Autowired
    private OrderService service;

    @Test
    public void testInsert() {
        Order order = new Order();
        order.setAddress("Beijing");
        order.setPrice(new BigDecimal(400));
        order.setCreateTime(new Date());
        order.setUserName("root");
        service.addOrder(order);
    }
}
