/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.dto;

/**
 *
 * @author atunu_000
 */
public class SeatMappingDTO {

	private String rowId;

	private Long ColumnId;

	private boolean isValid;

	private boolean isbooked;

	public String getRowId() {
		return rowId;
	}

	public void setRowId(String rowId) {
		this.rowId = rowId;
	}

	public Long getColumnId() {
		return ColumnId;
	}

	public void setColumnId(Long ColumnId) {
		this.ColumnId = ColumnId;
	}

	public boolean getIsValid() {
		return isValid;
	}

	public void setIsValid(boolean isValid) {
		this.isValid = isValid;
	}

	public boolean isIsbooked() {
		return isbooked;
	}

	public void setIsbooked(boolean isbooked) {
		this.isbooked = isbooked;
	}

}
