<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<%@ page import = "java.sql.*" %>                    <!-- JSP���� JDBC�� ��ü�� ����ϱ� ���� java.sql ��Ű���� import �Ѵ� -->

<%

Connection conn = null;                                        // null�� �ʱ�ȭ �Ѵ�.

try{

String url = "jdbc:oracle:thin:@localhost:1521:orcl";        // ����Ϸ��� �����ͺ��̽����� ������ URL ���

String id = "scott";                                                    // ����� ����

String pw = "tiger";                                                // ����� ������ �н�����



Class.forName("oracle.jdbc.driver.OracleDriver");                       // �����ͺ��̽��� �����ϱ� ���� DriverManager�� ����Ѵ�.

conn=DriverManager.getConnection(url,id,pw);              // DriverManager ��ü�κ��� Connection ��ü�� ���´�.

out.println("����� ����Ǿ����ϴ�.");                            // Ŀ�ؼ��� ����� ����Ǹ� ����ȴ�.



}catch(Exception e){                                                    // ���ܰ� �߻��ϸ� ���� ��Ȳ�� ó���Ѵ�.

e.printStackTrace();

}

%>