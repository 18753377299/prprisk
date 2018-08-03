package ins.instance.vue.vo;

import java.util.List;

public class Model {
	private List<Todo> todos;
	private Book book;
	private String editModel;
	private Integer score;

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getEditModel() {
		return editModel;
	}

	public void setEditModel(String editModel) {
		this.editModel = editModel;
	}

	public List<Todo> getTodos() {
		return todos;
	}

	public void setTodos(List<Todo> todos) {
		this.todos = todos;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

}
