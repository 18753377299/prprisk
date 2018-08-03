import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class JDBCBatchInsert2 {

	/**
	 * 使用PreparedStatement做插入
	 * 
	 * @param size
	 * @throws Exception
	 */
	public static void insertByBatchPrepareStat(int startNo, int endNo, int batchSize) throws Exception {
		String o_url = "jdbc:mysql://localhost:3306/bigdata";
		Connection conn = null;
		String userName = "root";
		String password = "admin";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(o_url, userName, password);
		conn.setAutoCommit(false);
		String sql = "INSERT user2(id,name,sex,age,birthday,sn) VALUES(?,?,?,?,?,?)";
		PreparedStatement prest = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
		int cacheSize = 0;
		int count = 0;
//		Map<String, String> idMap = new HashMap<String, String>();
		int insertCount = 0;
		for (int x = startNo; x < endNo; x++) {
			int sn = x;
			String id = UUID.randomUUID().toString();
//			if (idMap.containsKey(id)) {
//				throw new Exception("uuid repeat with [" + id + "]");
//			}
//			idMap.put(id, "");
			prest.setString(1, id);
			prest.setString(2, "User" + String.format("%09d", sn));
			prest.setString(3, sn % 2 == 0 ? "0" : "1");
			prest.setInt(4, 20 + sn % 50);
			prest.setDate(5, new Date(2000 + sn % 100, sn % 12, sn % 30));

			prest.setInt(6, sn);
			prest.addBatch();

			cacheSize++;
			if (cacheSize >= batchSize) {
				int[] counts = prest.executeBatch();
				if (counts.length != batchSize) {
					throw new Exception("something loss [" + counts.length + "]!=[" + batchSize + "]");
				}
				insertCount += counts.length;
				cacheSize = 0;
			}

			count++;
			if (count % 1000 == 0) {
				conn.commit();
				conn.setAutoCommit(false);
				System.out.println("insert " + count + " records.");
			}
		}
		if (insertCount != (endNo - startNo)) {
			throw new Exception("something loss [" + insertCount + "]!=[" + (endNo - startNo) + "]");
		}
		// int[] counts = prest.executeBatch();
		// if(counts.length!=batchSize){
		// throw new Exception("something loss [" + counts.length + "]!=[" +
		// batchSize + "]");
		// }
		// conn.commit();
		conn.close();

	}

	public static void main(String[] args) throws Exception {
		int startNo = 0;
		int endNo = 1;

		if (args.length == 1) {
			startNo = Integer.parseInt(args[0], 10);
			endNo = startNo + 1;
		} else if (args.length == 2) {
			startNo = Integer.parseInt(args[0], 10);
			endNo = Integer.parseInt(args[1], 10);
		} else {
			System.out.println("java JDBCBatchInsert2 startNo [endNo]");
			System.exit(-1);
		}

		JDBCBatchInsert2.insertByBatchPrepareStat(1000000 * startNo, 1000000 * (endNo), 100);
	}
}
