import com.config.SpringConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.File;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes= SpringConfig.class)
public class MailTest {
    @Autowired
    private JavaMailSenderImpl javaMailSenderImpl;

    @Test
    public void testSimpleMail() throws MessagingException {
        MimeMessage message = javaMailSenderImpl.createMimeMessage();

        //指明邮件的发件人
        message.setFrom(new InternetAddress("1793578929@qq.com"));
        //指明邮件的收件人
        message.setRecipient(Message.RecipientType.TO,new InternetAddress("1793578929@qq.com"));
        //邮件的标题
        message.setSubject("测试邮件");

        //=========================================

        //图片
        MimeBodyPart image = new MimeBodyPart();
        FileDataSource f = new FileDataSource(new File("C:\\Users\\zhangyuhan\\Desktop\\生活.jpg"));
        image.setDataHandler(new DataHandler(f));
        image.setContentID("life");

        //文本主题
        MimeBodyPart text = new MimeBodyPart();
        text.setContent("<html><body>这个邮件带了嵌入的资源<img src='cid:life'></body></html>","text/html;charset=UTF-8");

        //附件
        MimeBodyPart file = new MimeBodyPart();
        file.setDataHandler(new DataHandler(new FileDataSource("C:\\Users\\zhangyuhan\\Desktop\\张羽涵1793578929@qq.com.pdf")));
        file.setFileName("简历.pdf");

        // 将主题和内置图片装箱
        MimeMultipart mm = new MimeMultipart();//这个对象是装bodyPart的容器
        mm.addBodyPart(text);//把数据放进去
        mm.addBodyPart(image);
        MimeBodyPart part = new MimeBodyPart();
        part.setContent(mm);

        //将主题和附件装箱
        MimeMultipart total = new MimeMultipart();
        total.addBodyPart(file);
        total.addBodyPart(part);
//        mm.setSubType("related");//代表这个邮件有嵌入的资源，mixed权限最高
//        mm.setSubType("mixed");//有附件必须是mixed
        total.setSubType("mixed");

        message.setContent(total);

        javaMailSenderImpl.send(message);
    }
}

/*        //发送带附件和内联元素的邮件需要将第二个参数设置为true
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        //发送方邮箱，和配置文件中的mail.username要一致
        helper.setFrom("1793578929@qq.com");
        //接收方
        helper.setTo("1793578929@qq.com");
        //主题
        helper.setSubject("邮件测试");

        //邮件内容
//        helper.setText("<html><body>ok</body></html>", true);*/