package ins.platform.common.db.datasource;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

import ins.platform.common.db.datasource.holder.DynamicDataSourceHolder;

public class DynamicDataSource extends AbstractRoutingDataSource {

	@Override
	protected Object determineCurrentLookupKey() {
		return DynamicDataSourceHolder.getDataSouce();
	}
}
