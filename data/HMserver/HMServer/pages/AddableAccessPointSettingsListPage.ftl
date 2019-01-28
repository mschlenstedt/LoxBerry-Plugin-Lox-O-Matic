<html>
<head>

<script type="text/javascript">
  setPath("<span onclick='WebUI.enter(SystemConfigPage);'>"+translateKey('menuSettingsPage')+"</span> &gt; "+ translateKey('submenuAccessPointSettings') + " &gt; " + translateKey('submenuNewAccessPoints'));

 (function () {	  
	  var s = "";
	  s += "<table cellspacing='8'>";
	  s += "<tr>";
  	  s += "<td align='center' valign='middle'><div class='FooterButton' onclick='WebUI.goBack();'>"+ translateKey('footerBtnPageBack') +"</div></td>";
	  s += "</tr>";
	  s += "</table>";
	  setFooter(s);
	  translateButtons("btnAdd");
	  translatePage("#${TableId}");
	  jQuery("#${TableId}").show();
	})();
</script>

</head>
<body>
<table id="${TableId}" class="tTable"  border="0" cellpadding="0" cellspacing="0">
  <thead>
    <tr>
      <td class="thCell CLASS04900" >${"$"}{thAccessPointID}</td>
      <td class="thCell CLASS04900" >${"$"}{thAccessPointType}</td>
      <td class="thCell CLASS04900" >${"$"}{thAccessPointVersion}</td>
      <td class="thCell CLASS04900" >${"$"}{thAccessPointIP}</td>
      <td class="thCell CLASS04900" >${"$"}{thAction}</td>
    </tr>
  </thead>
  <tbody>
    <#list objectList as acessPoint>
    <tr class="CLASS04901">
      <td class="tBodyCellCenter">${acessPoint.id}</td>
      <td class="tBodyCellCenter">${acessPoint.type}</td>
      <td class="tBodyCellCenter">${acessPoint.version}</td>
      <td class="tBodyCellCenter">${acessPoint.ip}</td>

      <!-- Start action column -->
      <td class="tBodyCell CLASS04902" >
        <table cellpadding="0" cellspacing="0" border="0" align="center">
          <tr>
            <td class="CLASS04903">
              <input type="button" name="btnAdd" value="btnAdd" class="DeviceListButton CLASS04907" onclick="AddAccessPoint('${acessPoint.id}');" />
            </td>
          </tr>
        </table>
      </td>
      <!-- End Action Column -->

    </tr>
    </#list>  
  </tbody>
</table>

<script type="text/javascript">	
	AddAccessPoint = function(id)
	{	
		var url = '/pages/jpages/hmip/AccessPointSettings/showAdd';
		var data = "{";
		data += '"id" : "' + id;
		data += '"}';
		CreateCPPopup(url, data);
	};
</script>
</body>
</html>