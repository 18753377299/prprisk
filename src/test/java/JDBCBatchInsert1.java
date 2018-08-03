import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCBatchInsert1 {

	/**
	 * 使用PreparedStatement做插入
	 * 
	 * @param size
	 * @throws Exception
	 */
	public static void insertByBatchPrepareStat(int startNo,int endNo, int batchSize) throws Exception {
		String o_url = "jdbc:mysql://localhost:3306/bigdata";
		Connection conn = null;
		String userName = "root";
		String password = "admin";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(o_url, userName, password);
		conn.setAutoCommit(false);
		String sql = "INSERT user1(id,name,sex,age,birthday,sn) VALUES(?,?,?,?,?,?)";
		PreparedStatement prest = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		int cacheSize = 0;
		int count = 0;
		for (int x = startNo; x < endNo; x++) {
			int sn = x;
			int id = sn;
			prest.setInt(1, id);
			prest.setString(2, "User"+ String.format("%09d", sn));
			prest.setString(3, sn % 2 == 0 ? "0" : "1");
			prest.setInt(4, 20+sn%50);
			prest.setDate(5, new Date(2000 + sn % 100, sn % 12, sn % 30));

			prest.setInt(6, sn);
			prest.addBatch();

			cacheSize++;
			if (cacheSize > batchSize) {
				prest.executeBatch();  
				cacheSize = 0;
			} 
			
			count ++;
			if(count %10000==0){

				conn.commit();
				conn.setAutoCommit(false);
				System.out.println("insert " + count + " records.");
			}
		}
		prest.executeBatch();
		conn.commit();
		conn.close();

	}

	public static void main(String[] args) throws Exception { 
		if(args.length!=1){
			System.out.println("java JDBCBatchInsert1 startNo");
			System.exit(-1);
		}
		int startNo = Integer.parseInt(args[0],10);
		
		JDBCBatchInsert1.insertByBatchPrepareStat(1000000*startNo, 1000000*(startNo+1),100);
	}
}
