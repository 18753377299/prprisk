package ins.platform.common.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * 通用的树形结构
 */
public class TreeNode<T> {
	private T value;
	private TreeNode<T> parent;
	private List<TreeNode<T>> children = new ArrayList<TreeNode<T>>();

	public TreeNode(T value) {
		this.value = value;
	}

	public T getValue() {
		return value;
	}

	public void setValue(T value) {
		this.value = value;
	}

	public TreeNode<T> getParent() {
		return parent;
	}

	public void setParent(TreeNode<T> parent) {
		this.parent = parent;
	}

	/**
	 * 增加子节点
	 * 
	 * @param node
	 *            node
	 */
	public void addChild(TreeNode<T> node) {
		if (children == null) {
			children = new ArrayList<TreeNode<T>>();
		}
		children.add(node);
	}

	/**
	 * 得到直接下级的节点列表
	 * 
	 * @return 直接下级的节点列表
	 */
	public List<TreeNode<T>> getChildren() {
		return children;
	}

	/**
	 * 得到所有的子节点列表（递归向上）
	 * 
	 * @return 所有的子节点列表（递归向上）
	 */
	public List<TreeNode<T>> getAllChildren() {
		if (isLeaf()) {
			return new ArrayList<TreeNode<T>>();
		}
		List<TreeNode<T>> list = new ArrayList<TreeNode<T>>();
		list.addAll(children);
		for (TreeNode<T> node : children) {
			if (!node.isLeaf()) {
				list.addAll(node.getAllChildren());
			}
		}
		return list;
	}

	/**
	 * 得到所有的父节点列表（递归向上）
	 * 
	 * @return 所有的父节点列表（递归向上）
	 */
	public List<TreeNode<T>> getAllParent() {
		List<TreeNode<T>> list = new ArrayList<TreeNode<T>>();
		if (parent != null && parent != this) {
			list.add(parent);
			list.addAll(parent.getAllParent());
		}
		return list;
	}

	/**
	 * 返回树的宽度，每个节点占一个宽度单位
	 * 
	 * @return 树的宽度，每个节点占一个宽度单位
	 */
	public int getTreeWidth() {
		if (isLeaf()) {
			return 1;
		}
		int width = 0;
		for (TreeNode<T> node : children) {
			width += node.getTreeWidth();
		}
		return width;
	}

	/**
	 * 返回树的深度
	 * 
	 * @return 树的深度
	 */
	public int getTreeDepth() {
		if (isLeaf()) {
			return 1;
		}
		int maxDepth = 0;
		for (TreeNode<T> node : children) {
			int depth = node.getTreeDepth();
			if (depth > maxDepth) {
				maxDepth = depth;
			}
		}
		maxDepth = maxDepth + 1;
		return maxDepth;
	}

	/**
	 * 是否是树叶，没有子节点的为树叶
	 * 
	 * @return 是则返回true，否则返回false
	 */
	public boolean isLeaf() {
		return children.isEmpty();
	}
}
