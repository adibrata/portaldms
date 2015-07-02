<%@page import="com.liferay.portal.kernel.util.ListUtil"%>
<%@page import="com.liferay.portal.service.GroupLocalServiceUtil"%>
<%@page import="com.liferay.portal.model.Organization"%>
<%@page import="com.liferay.portal.model.User"%>
<%@page import="com.liferay.portal.model.UserGroup"%>
<%@page import="com.liferay.portal.model.Group"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.liferay.portal.model.RoleConstants"%>
<%@page import="com.liferay.portal.service.UserGroupRoleLocalServiceUtil"%>
<%@page import="com.liferay.portal.model.UserGroupRole"%>
<%@page import="com.liferay.portal.model.Role"%>
<%@page import="java.util.List"%>
<%@page import="com.liferay.portal.service.RoleLocalServiceUtil"%>
<%@page import="com.liferay.portal.service.UserLocalServiceUtil"%>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<liferay-theme:defineObjects />
<%
List<Role> userRoles=RoleLocalServiceUtil.getUserRoles(themeDisplay.getUserId());
List<Role> userRoles1=themeDisplay.getUser().getRoles();
for (Role role : userRoles) {
out.println(role.getName());
}
%>
<%
List<UserGroupRole> userGroupRoles = UserGroupRoleLocalServiceUtil.getUserGroupRoles(themeDisplay.getUserId());
List<UserGroupRole> organizationRoles = new ArrayList<UserGroupRole>();
for (UserGroupRole userGroupRole : userGroupRoles) {
int roleType = userGroupRole.getRole().getType();
if (roleType == RoleConstants.TYPE_ORGANIZATION) {
organizationRoles.add(userGroupRole);
out.println(userGroupRole.getRole().getName());
}
}
%>
<%
List<UserGroupRole> userGroupRoles1 = UserGroupRoleLocalServiceUtil.getUserGroupRoles(themeDisplay.getUserId());
List<UserGroupRole> siteRoles = new ArrayList<UserGroupRole>();
for (UserGroupRole userGroupRole : userGroupRoles1) {
int roleType = userGroupRole.getRole().getType();
if (roleType == RoleConstants.TYPE_SITE) {
siteRoles.add(userGroupRole);
out.println(userGroupRole.getRole().getName());
}
}
%>
<%
User selUser=themeDisplay.getUser();
List<Group> allGroups = new ArrayList<Group>();
List<UserGroup> userGroups = selUser.getUserGroups();
List<Group> groups = selUser.getGroups();
List<Organization> organizations = selUser.getOrganizations();
allGroups.addAll(groups);
allGroups.addAll(GroupLocalServiceUtil.
getOrganizationsGroups(organizations));
allGroups.addAll(GroupLocalServiceUtil.
getOrganizationsRelatedGroups(organizations));
allGroups.addAll(GroupLocalServiceUtil.
getUserGroupsGroups(userGroups));
allGroups.addAll(GroupLocalServiceUtil.
getUserGroupsRelatedGroups(userGroups));
for(int i=0;i<allGroups.size();i++){
com.liferay.portal.model.Group group=allGroups.get(i);
List<Role> groupRoles = RoleLocalServiceUtil.getGroupRoles(group.getGroupId());
if (!groupRoles.isEmpty()) {
Role groupRole = groupRoles.get(0);	
out.println(ListUtil.toString(groupRoles,
 Role.NAME_ACCESSOR));
}
}
%>
