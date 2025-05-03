<%@ tag pageEncoding="UTF-8"%>
<%-- Атрибуты тега - содержание левой колонки, содержание правой колонки,
ширина левой колонки, ширина правой колонки --%>
<%@ attribute name="leftColumnBody" required="false" rtexprvalue="true"%>
<%@ attribute name="leftColumnWidth" required="true" rtexprvalue="false"%>
<%@ attribute name="rightColumnBody" required="false" rtexprvalue="true"%>
<%@ attribute name="rightColumnWidth" required="true"
	rtexprvalue="false"%>
<div style="clear: both; width: 100%; height: 80%;">
	<div style="float: left; width: ${leftColumnWidth}; display: flex; flex-flow: column; height: 100%">
		<div style="flex: 1 1 auto; border: 2px solid red">${leftColumnBody}</div>
	</div>
	<div style="float: right; width: ${rightColumnWidth}; display: flex; flex-flow: column; height: 100%">
		<div style="flex: 1 1 auto; border: 2px solid green">${rightColumnBody}</div>
	</div>
	<div style="clear: both"></div>
</div>
