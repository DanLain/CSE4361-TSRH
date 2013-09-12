<%-- 
    Document   : SaveNewPatient.jsp
    Created on : Oct 22, 2012, 11:27:15 PM
    Author     : Asha
    Modified   : Rakesh
    Modified on: Mar 14, 2013, 6:00:35 PM
--%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientPhoneCall"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>
<%@page import="edu.uta.tsrh.patient.misc.Address"%>
<%@page import="java.sql.*"%> 
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<%
ILogger logger = Log4JLogger.GetLoggerObject();
logger.LogMessage(session.getAttribute("user").toString(), "SaveNewPatient.jsp", 
                        "Saving the patient record");
    String saveFile = "null";
    
    String patientID = null;
    PatientRecord patientRecord = new PatientRecord();

    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    List items = null;

    try {
        items = upload.parseRequest(request);
    } catch (Exception e) {
        e.printStackTrace();
        logger.LogError(session.getAttribute("user").toString(),"SaveNewPatient.jsp",e,"fileupload ");
    }
    Iterator itr = items.iterator();
    String name="";
    String value;
    while (itr.hasNext()) {
        FileItem item = (FileItem) itr.next();
        if (item.isFormField()) {
            name = item.getFieldName();
            value = item.getString();
            if (name.equals("firstName")) {
                patientRecord.setFirstName(value);
            } else if (name.equals("lastName")) {
                patientRecord.setLastName(value);
            } else if (name.equals("patientID")){
                patientID = value;
                patientRecord.setPatientId("TSRH"+value);
            } else if (name.equals("DOB")) {
                SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
                java.util.Date parsedDate = dateFormat.parse(value);
                java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
                patientRecord.setDob(sqlDate);
            } else if (name.equals("contactPhone1")) {
                patientRecord.setContactPhone(value);
            } else if(name.equals("contactPhone")){
                patientRecord.setContactPhone(patientRecord.getContactPhone()+"-"+value);
            } else if (name.equals("address1")) {
                patientRecord.setAddress(value);
            }else if(name.equals("address2")) {
                patientRecord.setAddress(patientRecord.getAddress()+"!"+value);
            }else if(name.equals("city")){
                patientRecord.setAddress(patientRecord.getAddress()+"!"+value);
            }else if(name.equals("state")){
                patientRecord.setAddress(patientRecord.getAddress()+"!"+value);
            }else if(name.equals("country")){
                patientRecord.setAddress(patientRecord.getAddress()+"!"+value);
            }else if(name.equals("zipcode")){
                patientRecord.setAddress(patientRecord.getAddress()+"!"+value);
            } else if (name.equals("mothersName")) {
                patientRecord.setMothersName(value);
            }
        }
        else
        {
            String contenttype = item.getContentType();
            System.out.println("content"+contenttype);
            if ((contenttype.contains("pdf"))||(contenttype.contains("png"))||(contenttype.contains("jpg")||(contenttype.contains("jpeg")))) 
                               {
                System.out.println("inside"+contenttype);
            String itemName = new File(item.getName()).getName();
            File temp = new File(config.getServletContext().getRealPath("/")+"Userpictures/"+patientRecord.getId());
            if(!temp.exists())
                               {
                temp.mkdir();
            }
            if(itemName.substring(itemName.indexOf("."),itemName.length()).contains(".pdf")) 
            {
                itemName="Userpictures/"+patientRecord.getId()+"/"+patientRecord.getId()+"_record"+itemName.substring(itemName.indexOf("."),itemName.length());
                System.out.println("pdf");
                patientRecord.setpdfURL(itemName);
            }                    
            else
                             {
                itemName="Userpictures/"+patientRecord.getId()+"/"+patientRecord.getId()+"_picture"+itemName.substring(itemName.indexOf("."),itemName.length());
                System.out.println("imagelink");
                 saveFile=itemName;
                               } 
            
            
            File savedFile = new File(config.getServletContext().getRealPath("/")+itemName);
            //saveFile = new File(".").getCanonicalPath() + "\\"+ new File(itemName).getName();
            //File savedFile = new File(saveFile);
            if(savedFile.exists())
              {
              savedFile.delete();
            }
            item.write(savedFile);
           
                      }
                                   
            else
                               {
                patientRecord.setpdfURL("null");
                               }
            
        }           
        
    }
    System.out.println("first name" + patientRecord.getFirstName());
    System.out.println("last name" + patientRecord.getLastName());
    System.out.println("patient Id" + patientRecord.getId());
    System.out.println("DOB" + patientRecord.getDOB());
    System.out.println("contact phone" + patientRecord.getContactPhone());
    System.out.println("address" + patientRecord.getAddress());
    System.out.println("mothers name" + patientRecord.getMothersName());
    System.out.println("link"+saveFile);
    patientRecord.setURL(saveFile);
    int storedValue=RecordController.setNewPatientRecord(patientRecord);
        RecordController.setPhysicalRecord(patientRecord);
      
       System.out.println("Stored Value  "+ storedValue);
%>

<div class="box" style="width:500px;background-color: #F0F0F0;">

    <table>
        <tr>
            <td style="width:400px">
                <h3><%if(storedValue==0)
                                       {
                    out.println("Record Storage failed. Duplicate Record!!!");
                    
                                       }%></h3>
            </td>
        </tr>
        <tr>
            <td style="width:400px">
                <h3 style="color: green"><%if(storedValue==1){
                    out.println("Patient Record Successfully Inserted with Patient ID :"+ "TSRH"+patientID);}%></h3>
            </td>
        </tr>
        <tr>
            <td>
                <form name="PManagement" method="POST" action="PatientManagement">
                    <input type="submit" value="Patient Management" class="blue button" style="width: 160px"/>
                </form>
            </td>
            <td>
                <form name="AddPatient" method="POST" action="AddNewPatient">
                    <input type="submit" value="Add New Patient" class="blue button" style="width: 160px"/>
                </form>
            </td>
        </tr>
    </table>
</div>
