package com.adibrata.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="tableDocument")
@Table(name="dlfileentry")
public class docInquiry {

	private Long fileEntryId;
	private String title;
	private String extension;
	private String version;
	private String description;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getReadCount() {
		return readCount;
	}
	public void setReadCount(String readCount) {
		this.readCount = readCount;
	}
	private String userName;
	private String createDate;
	private String modifiedDate;
	private String readCount;
	
	@Id
	@Column(name="fileEntryId")
	public Long getFileEntryId() {
		return fileEntryId;
	}
	public void setFileEntryId(Long fileEntryId) {
		this.fileEntryId = fileEntryId;
	}
	@Column(name="title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="extension")
	public String getExtension() {
		return extension;
	}
	public void setExtension(String extension) {
		this.extension = extension;
	}
	@Column(name="version")
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	
}