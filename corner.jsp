<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%response.setHeader("Access-Control-Allow-Origin", "*");  %>
  <!-- Support for mobile touch devices -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1, minimal-ui">

  <!-- CSS -->

  <!-- Font awesome CSS for tool icons -->
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

  <!-- Bootstrap CSS -->
  <link href="${pageContext.request.contextPath}/resources/corner/lib/bootstrap.min.css" rel="stylesheet">

  <!-- UI CSS -->
  <link href="${pageContext.request.contextPath}/resources/corner/lib/jquery-ui.min.css" rel="stylesheet">  

  <!-- Cornerstone Base CSS -->
  <link href="${pageContext.request.contextPath}/resources/corner/lib/cornerstone.min.css" rel="stylesheet">

  <!-- Cornerstone Demo CSS -->
  <link href="${pageContext.request.contextPath}/resources/corner/css/cornerstoneDemo.css" rel="stylesheet">
</head>

<body>
  <div id="wrap">

    <!-- Nav bar -->
    <nav class="myNav navbar navbar-default" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="http://www.benepachuca.mx/login.php">HOSPITAL ESPA&Ntilde;OL DE LA BENEFICNCIA</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
          <li><a id="help" href="#" class="button hidden-xs">Help</a></li>
          <li><a id="about" href="#" class="button hidden-xs">About</a></li>
        </ul>
      </div>
    </nav>

    <div class='main'>

      <!-- Tabs bar -->
      <ul id="tabs" class="nav nav-tabs" >
        <li class="active"><a href="#studyList" data-toggle="tab">Study List</a></li>
      </ul>

      <!-- Tab content -->
      <div id="tabContent" class="tab-content">
        <!-- Study list -->
        <div id="studyList" class="tab-pane active">
          <div class="row">
            <table  class="col-md-12 table table-striped">
              <thead>
                <tr>
                  <th>Patient Name</th>
                  <th>Patient ID</th>
                  <th>Study Date</th>
                  <th>Modality</th>
                  <th>Study Description</th>
                  <th># Images</th>
                </tr>
              </thead>
              
              <tbody id="studyListData">
                <!-- Table rows get populated from the JSON studyList manifest -->
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <!-- Study viewer tab content template -->
  </div>
</div>







<!-- Javascripts -->
<script>
var pacienteId1='${paciente}';
var studyIdIni='${styuid}';
var contextPath='${pageContext.request.contextPath}';
var flagPDF='${flagVerPDF}';
var urlResponseImg='${urlPathSalida}';
</script>
<!-- Include JQuery -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/jquery.min.js"></script>

<!-- Include JQuery UI for drag/drop -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/jquery-ui.min.js"></script>

<!-- Include JQuery Hammerjs adapter for mobile touch-->
<script src="${pageContext.request.contextPath}/resources/corner/lib/hammer.min.js"></script>

<!-- Include Bootstrap js -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/bootstrap.min.js"></script>

<!-- include the cornerstone library -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/cornerstone.js"></script>

<!-- include the cornerstone library -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/cornerstoneMath.js"></script>

<!-- include the cornerstone tools library -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/cornerstoneTools.js"></script>

<!-- include the cornerstoneWADOImageLoader library -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/cornerstoneWADOImageLoader.js"></script>

<!-- include the cornerstoneWebImageLoader library -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/cornerstoneWebImageLoader.js"></script>

<!-- include the dicomParser library -->
<script src="${pageContext.request.contextPath}/resources/corner/lib/dicomParser.js"></script>

<!-- include cornerstoneDemo.js -->
<script src="${pageContext.request.contextPath}/resources/corner/js/setupViewport.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/displayThumbnail.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/loadStudy.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/setupButtons.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/disableAllTools.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/forEachViewport.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/imageViewer.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/loadTemplate.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/help.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/about.js"></script>
<script src="${pageContext.request.contextPath}/resources/corner/js/setupViewportOverlays.js"></script>

<script src="${pageContext.request.contextPath}/resources/corner/js/cornerstoneDemo.js"></script>

<script>


	var pacienteId1=${paciente};
   // Obtener todos los elementos con la clase "miDiv"
   var divs = document.getElementsByClassName('thumbnails list-group overflow-auto shadow');

    // Verificar si se encontraron elementos con la clase "miDiv"
    if (divs.length > 0) {
      // Crear un nuevo elemento div
      var nuevoDiv = document.createElement('div');

      // Crear un nuevo elemento img
      var nuevaImagen = document.createElement('img');
      nuevaImagen.src = 'http://localhost:8090/dicom/PDF-DICOM.jpg'; // Reemplaza con la ruta real de tu imagen
      nuevaImagen.alt = 'Interpretacion'; // Reemplaza con el texto real

      // Agregar la imagen al nuevo div
      nuevoDiv.appendChild(nuevaImagen);

      // Insertar el nuevo div con la imagen dentro del primer div encontrado con la clase "miDiv"
      divs[0].appendChild(nuevoDiv);
    } else {
      console.log('No se encontraron elementos con la clase "miDiv".');
    }
</script>

</body>
</html>