package com.jfeat.am.module.statistics.services.persistence.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author Code Generator
 * @since 2018-10-12
 */
@TableName("st_statistics_group")
public class StatisticsGroup extends Model<StatisticsGroup> {

    private static final long serialVersionUID = 1L;

	@TableId(value="id", type= IdType.AUTO)
	private Long id;
    /**
     * 上级分组
     */
	private Long pid;
    /**
     * 组名[唯一标记]
     */
	private String name;
	/**
	 * 组标题
	 */
	private String title;
	/**
	 * 布局名称
	 */
	private String layout;
	/**
	 * 子分组占父分组的列跨度
	 */
	private Integer span;
    /**
     * 分组排序号
     */
	private Integer index;
	/**
	 * 分组描述
	 */
	private String note;

	public Long getId() {
		return id;
	}

	public StatisticsGroup setId(Long id) {
		this.id = id;
		return this;
	}

	public Long getPid() {
		return pid;
	}

	public StatisticsGroup setPid(Long pid) {
		this.pid = pid;
		return this;
	}

	public String getName() {
		return name;
	}

	public StatisticsGroup setName(String name) {
		this.name = name;
		return this;
	}

	public String getTitle() {
		return title;
	}

	public StatisticsGroup setTitle(String title) {
		this.title = title;
		return this;
	}

	public String getLayout() {
		return layout;
	}

	public StatisticsGroup setLayout(String layout) {
		this.layout = layout;
		return this;
	}

	public Integer getSpan() {
		return span;
	}

	public void setSpan(Integer span) {
		this.span = span;
	}

	public Integer getIndex() {
		return index;
	}

	public StatisticsGroup setIndex(Integer index) {
		this.index = index;
		return this;
	}

	public String getNote() {
		return note;
	}

	public StatisticsGroup setNote(String note) {
		this.note = note;
		return this;
	}

	public static final String ID = "id";

	public static final String PID = "pid";

	public static final String NAME = "name";

	public static final String TITLE = "title";

	public static final String LAYOUT = "layout";

	public static final String SPAN = "span";

	public static final String INDEX = "index";

	public static final String NOTE = "note";

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "StatisticsGroup{" +
			"id=" + id +
			", pid=" + pid +
			", name=" + name +
			", title=" + title +
			", layout=" + layout +
			", span=" + span +
			", index=" + index +
			", note=" + note +
				"}";
	}
}
