package com.wzy.model;


/**
 * @author 汪哲逸
 *
 * 基本查询信息
 */
public class BaseInfo {
	
	//起始记录数
		private int start;

		//每次查询条数
		private int length;

		public int getStart() {
			return start;
		}

		public void setStart(int start) {
			this.start = start;
		}

		public int getLength() {
			return length;
		}

		public void setLength(int length) {
			this.length = length;
		}

}
