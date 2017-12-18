package com.weixin.ssm.model.sysBean;

import com.weixin.ssm.model.entity.MxActivitiesMyspaceComment;
import com.weixin.ssm.model.entity.MxActivitiesMyspaceMaterial;

import java.util.List;


/**
 * 封装了用户和用户某个空间下所有的媒体素材
 */
public class ActivitiesUserMySpaceMine {
	
	private List<MxActivitiesMyspaceMaterial> activitiesMySpaceMaterialMineList;
	private List<MxActivitiesMyspaceComment> activitiesMySpaceCommentMineList;
	
	public List<MxActivitiesMyspaceMaterial> getActivitiesMySpaceMaterialMineList() {
		return activitiesMySpaceMaterialMineList;
	}
	public void setActivitiesMySpaceMaterialMineList(
			List<MxActivitiesMyspaceMaterial> activitiesMySpaceMaterialMineList) {
		this.activitiesMySpaceMaterialMineList = activitiesMySpaceMaterialMineList;
	}
	public List<MxActivitiesMyspaceComment> getActivitiesMySpaceCommentMineList() {
		return activitiesMySpaceCommentMineList;
	}
	public void setActivitiesMySpaceCommentMineList(
			List<MxActivitiesMyspaceComment> activitiesMySpaceCommentMineList) {
		this.activitiesMySpaceCommentMineList = activitiesMySpaceCommentMineList;
	}


	
}
