package controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.sun.image.codec.jpeg.JPEGCodec;
//import com.sun.image.codec.jpeg.JPEGImageEncoder;
public class CheckCodeServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("service...");
		//����һ��ͼƬ
		Random r = new Random(
				System.currentTimeMillis());
		//�����ַ���
		String value = r.nextInt(999999) + "";
		//�ȴ���һ���ڴ�ӳ������
		BufferedImage image = 
			new BufferedImage(80,30,
					BufferedImage.TYPE_INT_RGB); 
		//�õ�����
		Graphics g = image.getGraphics();
		g.setColor(new Color(r.nextInt(255),
				r.nextInt(255),r.nextInt(255)));
		//����
		g.fillRect(0, 0, 80, 30);
		//����
		g.setColor(new Color(0,0,0));
		//Font(String,int,int); �������ƣ����񣬴�С
		g.setFont(new Font(null,Font.BOLD,18));
		g.drawString(value, 5, 20);
		for(int i=0;i<8;i++){
			g.drawLine(r.nextInt(80), r.nextInt(30),
					r.nextInt(80), r.nextInt(30));
		}
		
		//��ͼƬѹ��
		//��Ҫ�ṩһ��������,encoder���߻Ὣ
		//ͼƬѹ��֮�������������ķ�ʽ������
		response.setContentType("image/jpeg");
		OutputStream ops = 
			response.getOutputStream();
		javax.imageio.ImageIO.write(
				image, "jpg", ops);
		
	}

}
