<%-- 
    Document   : AddNewPatient
    Created on : Oct 21, 2012, 5:13:23 PM
    Author     : Asha
    Modified   : Rakesh
    Modified on: Feb 14, 2013, 5:01:20 PM
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientPhoneCall"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 
<%@page import="model.PatientInfo" %>
<%
ILogger logger = Log4JLogger.GetLoggerObject();
logger.LogMessage(session.getAttribute("user").toString(), "AddNewPatient.jsp", 
                        "User creating the patient");
%>
<html>
<script>
    
    function updatepicker()
    {
        alert("hello");
        var date = new Date();
        $("#DOB").kendoDatePicker({
         min:date   
        });
    }
    function checkAvailibity()
    {
        
        $("#status").css("color", "red");

        var patientId = $("#patientId").val();
            
        if(patientId.length == 0 || patientId.length != 6) {         //added another condition to check the id is six digits or not
            $("#status").html("Please enter TSRH Id");
             } else { 
        patientId="TSRH"+patientId;
            $.ajax({
                type: "POST",
                url: "checkAvailibity.jsp",
                data: {patientId:patientId},
                success:(function(data) {
                    //console.log(data);
                    
                    var status = data.split("\n")[1];
                    console.log(status);
                    if (status=="true"){ 
                        $("#status").html("Available");
                        $("#status").css("color", "green");
                        $('#submit_handler').removeAttr('disabled');
                        enable();
                       
                        }
                    else{$("#status").html("Record Already Present");
                        $('#submit_handler').attr('disabled', 'disabled');}
                })
            });
        }
    }
    function enable()
    {
        document.getElementById('FirstName').disabled=false;
        document.getElementById('LastName').disabled=false;
        document.getElementById('Phone').disabled=false;
        document.getElementById('MothersName').disabled=false;
        document.getElementById('address1').disabled=false;
        document.getElementById('address2').disabled=false;
        document.getElementById('Country').disabled=false;
        document.getElementById('State').disabled=false;
        document.getElementById('zipcode').disabled=false;
        document.getElementById('City').disabled=false;
        document.getElementById('Phone1').disabled=false;
        // document.getElementById('patientId').disabled=true;
       // document.getElementById('checkButton').disabled=true;
    }
    function validateForm()
    {
        var errorSpan = document.getElementById("errorspan");
        errorSpan.innerHTML="";
        var namePattern = /^[a-zA-Z]+([\s]?[\']?[\.]?[a-zA-Z]+)*$/;
        
        var errorString = "";
        
        var firstNameError=document.forms["addPatientForm"]["firstName"];
        
        if(firstNameError.value == null || firstNameError.value=="" || namePattern.test(firstNameError.value)==false)
        {
            errorString +="First Name, ";
        }
        
        var lastNameError = document.forms["addPatientForm"]["lastName"];
                             
        if (lastNameError.value ==null || lastNameError.value == ""|| namePattern.test(lastNameError.value)==false)
        {
            errorString+="Last Name, ";
        }
        
        var dob = document.forms["addPatientForm"]["DOB"];
                             
        if (dob.value ==null || dob.value == "")
        {
            errorString+="Date of Birth, ";
        }
        var code = document.forms["addPatientForm"]["contactPhone1"];
        var codePattern = /\D/g;
        var subcode = code.value.substring(1,code.value.length);
        
        if(code.value==null || code.value==""||code.value=="+"||codePattern.test(subcode)==true||code.value.length>3||code.value.charAt(0)!="+")
            {
                errorString+="International Code, "
            }
        var phone = document.forms["addPatientForm"]["contactPhone"];
        var phoneNumberPattern = /^\d\d\d-?\d\d\d-?\d\d\d\d$/; 
                    
        if (phone.value ==null || phone.value == ""|| phone.value == "000-000-0000"||phoneNumberPattern.test(phone.value)==false)
        {
            errorString+="Contact Phone, ";
        }
        
        var address = document.forms["addPatientForm"]["address1"];
                             
        if (address.value ==null || address.value == "")
        {
            errorString+="Address, ";
        }
         var city = document.forms["addPatientForm"]["City"];
                
            if(city.value==null||city.value==""||namePattern.test(city.value)==false)
                {
                    errorString+="city, ";
                }
                
                 var state = document.forms["addPatientForm"]["State"];
        if(state.value==null || state.value=="" || namePattern.test(state.value)==false)
            {
                errorString+="state, ";
            }
            var country = document.forms["addPatientForm"]["Country"];
            if(country.value==null||country.value==""||namePattern.test(country.value)==false)
                {
                    errorString+="country, ";
                }
                
                var zipPat = /\D/g;
        var zip = document.forms["addPatientForm"]["zipcode"];
        if(zip.value==null || zip.value==""||zipPat.test(zip.value)==true)
            {
            errorString+="ZipCode, ";
            }
        
        var mname = document.forms["addPatientForm"]["mothersName"];
                             
        if (mname.value ==null || mname.value == ""|| namePattern.test(mname.value)==false)
        {
            errorString+="Mother's Name, ";
        }
        
        /*var imgPat= /\.(jpg|jpeg|bmp|png)$/i;
        var image = document.forms["addPatientForm"]["imageLink"];
 
        if (image.value !=null && image.value != "" && imgPat.test(image.value)== false)
        {
            errorString+="Image, ";
        }
        /*var patientID= document.forms["addPatientForm"]["patientId"];
        var patientIDPattern= /^TSRH\d\d\d\d\d\d$/;
        if (patientID.value == null||patientID.value =="" || patientIDPattern.test(patientID.value)==false)
        {
            errorString+="Patient ID, ";
        }*/
          
        if(errorString == "") {
            return true;
        }        
        else {
            errorSpan.innerHTML = "Please Check " + errorString.substring(0, errorString.length - 2);
            return false;
        }
      
    }
 
</script>
<body onload="updatepicker()">
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpPatientinfo.html' })" class="first">help</a>
<div class="box" style="width:600px;background-color: #F0F0F0;">
    <form name="addPatientForm" method="POST" onsubmit="return validateForm()" action="SaveNewPatient" enctype="multipart/form-data">

        <h2>Please Enter Patient Information</h2>
        <table>
            <tr>			
                <td style="border: 0px none;">
                    <h3>TSRH ID: <span style="color:red">*</span></h3>
                </td>
                <td style="border: 0px none">
                    <h3 style="position: absolute;left:122px">TSRH</h3><input type="text" class="textbox" name="patientID" id="patientId"/>
                    <div id="status"></div></td>
                <td><input type="button" id="checkButton" class="blue button" style="width:150px" value="Check Availibility" onclick="checkAvailibity()"/></td>
            </tr>
            <tr>
                <td width="160" style="border: 0px none;">
                    <h3>First Name: <span style="color:red">*</span></h3> 
                </td>
                <td style="border: 0px none;">
                    <input type="text" id ="FirstName"class="textbox" enabled class ="visible" name="firstName" disabled/>
                </td>
            </tr>
            <tr>			
                <td style="border: 0px none;">
                    <h3>Last Name: <span style="color:red">*</span></h3>
                </td>
                <td style="border: 0px none;">
                    <input type="text" id="LastName" class="textbox" name="lastName" disabled/>
                </td>
            </tr>
            <tr>
                <td style="border: 0px none;">
                    <h3>Date of Birth: <span style="color:red">*</span></h3> 
                </td>
                <td style="border: 0px none;">                        
                    <input type="text" readonly id="DOB" name ="DOB" value="" style="width:165px"/>
                </td>
            </tr>
            <tr>			
                <td style="border: 0px none;">
                    <h3>Contact Phone: <span style="color:red">*</span></h3>
                </td>
               
                <td style="border: 0px none;">
                    <input type="text" id ="Phone1" class="textbox" style="width:30px;" name="contactPhone1" value="+1" onfocus="if(this.value == '+') { this.value = ''; }" onblur="if(this.value == '') { this.value = '+'; }" disabled/>
                </td>
                 <td style="border: 0px none;position:absolute;left:210px">
                    <input type="text" id ="Phone" class="textbox" name="contactPhone" style="width:110px;" value="000-000-0000" onfocus="if(this.value == '000-000-0000') { this.value = ''; }" onblur="if(this.value == '') { this.value = '000-000-0000'; }" disabled/>
                </td>
            </tr>
            <tr>			
                <td style="border: 0px none;">
                    <h3>Address : <span style="color:red">*</span></h3>
                </td>
                <td colspan="2" style="border: 0px none;">
                    <div>
                        <input type="text" class="textbox" id="address1" name="address1" disabled></textarea>
                    </div>
                </td>
            </tr>
            <tr>
                 <td style="border: 0px none;">
                    <h3>Address2 : </h3>
                </td>
                 <td colspan="2" style="border: 0px none;">
                     <input type="text" class="textbox" id="address2" name="address2" disabled>
                     </td>
            </tr> 
            <tr>
                <td style="border: 0px none;">
                    <h3>City: <span style="color:red">*</span></h3>
                </td>
                 <td colspan="2" style="border: 0px none;">
                     <input type="text" class="textbox" id="City" name="city" disabled>
                     </td>
            </tr>
            <tr>
                <td style="border: 0px none;">
                    <h3>State: <span style="color:red">*</span></h3>
                </td>
                 <td colspan="2" style="border: 0px none;">
                     <input type="text" class="textbox" id="State" name="state" disabled>
                     </td>
            </tr>
            <tr>
                <td style="border: 0px none;">
                    <h3>Country: <span style="color:red">*</span></h3>
                </td>
                 <td colspan="2" style="border: 0px none;">
                     <input type="text" class="textbox" id="Country" name="country" disabled>
                     </td>
            </tr>
          <tr>
                <td style="border: 0px none;">
                    <h3>ZipCode: <span style="color:red">*</span></h3>
                </td>
                 <td colspan="2" style="border: 0px none;">
                     <input type="text" class="textbox" id="zipcode" name="zipcode" disabled>
                     </td>
            </tr>
            
            <tr>			
                <td style="border: 0px none;">
                    <h3>Mother's Name : <span style="color:red">*</span></h3>
                </td>
                <td style="border: 0px none;">
                    <input type="text" class="textbox" id="MothersName" name="mothersName" disabled/>
                </td>
            </tr>
            <tr>			
                <td style="border: 0px none;">
                    <h3>Select Image</h3>
                </td>
                <td style="border: 0px none;">
                    <input type="file" name="imageLink"/>
                </td>
            </tr>
            <tr>			
                <td style="border: 0px none;">
                    <h3>Select report(.pdf) </h3>
                </td>
                <td style="border: 0px none;">
                    <input type="file" name="pdfLink"/>
                </td>
            </tr>
            <tr>			
                <td id ="error" style="border: 0px none;text-align: center" colspan="2">
                    <br>
                    <h4><span id="errorspan" style="color:#FF0000;"></span></h4>
                </td>
            </tr>
        </table>
        <input type="submit" id="submit_handler" value="Submit" class="blue button" disabled />
    </form>
</div>
</body>
</html>
