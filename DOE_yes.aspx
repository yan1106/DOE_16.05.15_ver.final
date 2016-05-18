<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DOE_yes.aspx.cs" Inherits="DOE_yes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="..\css\styles.css" type="text/css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="../JS/jquery.bgiframe-2.1.2.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.9.1.js"></script>
<script src="../JS/jquery-ui-1.9.2/jquery-1.10.0.min.js" type="text/javascript"></script>    
<script src="../JS/jquery-ui-1.9.2/jquery-ui.min.js" type="text/javascript"></script>
<link href="../JS/jquery-ui-1.9.2/jquery-ui.css" rel="stylesheet" type="text/css" />  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DOE_yes</title>
     <style type="text/css">

.font8
	{color:blue;
	font-size:20.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:細明體, monospace;
	}
.font6
	{color:blue;
	font-size:20.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	}
        .style-doe-head{
            width:300px;
            height:50px;

        }
        .style-doe-head-2{
            width:500px;
            height:50px;

        }
        .style-doe-head-blue
        {
            width:1000px;
            height:50px;
            color:white;
            font-size: 15.0pt;
            font-weight: 400;
            font-style: normal;                        
            text-align: center;
            vertical-align: middle;
            white-space: normal;
           
            
            background: #538ED5;
        }
        .style-doe-head-gray
        {
           
            height:50px;
            color:white;
            font-size: 15.0pt;
            font-weight: 400;
            font-style: normal;                        
            text-align: center;
            vertical-align: middle;
            white-space: normal;
           
            
            background: #7F7F7F;
        }
        
        .style-doe-head-orange
        {
            width:400px;
            height:50px;
            color:white;
            font-size: 15.0pt;
            font-weight: 400;
            font-style: normal;                        
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            /*padding-left: 2px;
            padding-right: 2px;
            padding-top: 2px;
            padding-bottom: 2px;*/
            
            background: #FFC000;
        }
        </style>

    <script type="text/javascript">
             function createtable(count,gg) {
               var table_obj = document.getElementById('doe_1');
               var row = document.getElementById('ee').rowIndex;
               var table_title_leng = document.getElementById('doe_1').rows.length;
               var gg = new Array();

               document.getElementById('a1').textContent = gg[1];
        
               for (i = row+1; i < count+row+1;i++)
               {
                   var hh = document.getElementById('doe_1').insertRow(i)
                   for(j=0;j<17;j++)
                   {
                       var a = hh.insertCell(j);
                       a.innerHTML = i + "_" + j;
                   }


               }
               
               

                 
             }

             // set the destination textbox value with the ContactName
             function CallSuccess(res, destCtrl) {
                 var dest = document.getElementById(destCtrl);
                 dest.value = res;
             }

             // alert message on some failure
             function CallFailed(res, destCtrl) {
                 alert(res.get_message());
             }
    </script>
</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <div id="div1">
     <fieldset style="width:95%;" class="fieldset">
    <legend class="legend" style="font-weight: 700; font-size: large;">DOE yes</legend>   
       
            <!--border-collapse:collapse,要讓欄位邊框合併-->
            <table id="doe_1" border="1" style="border-color:black;width:100%;height:50%;border-collapse:collapse;">
                 <tr>
                     <td class="style-doe-head-blue" rowspan="2" >                     
                        <div>Area</div>
                     </td>
                     <td class="style-doe-head-blue" rowspan="2">
                      <div id="a1"></div>
                      <div>Control Item</div>
                     </td>
                     <td class="style-doe-head-blue" rowspan="2">
                      <div id="a2"></div>
                      <div>SPEC</div>
                     </td>
                     
                     <td class="style-doe-head-gray" style="width:400px;" rowspan="2" colspan="5">
                         <div id="show_len"></div>
                        <div>DOE LEGS</div>
                     </td>
                     <td class="style-doe-head-gray" style="width:550px;" rowspan="2" >
                         <div style="font-size:20px;">Wafer Qn'ty</div>
                     </td>                  
                     <td class="style-doe-head-orange" colspan="3">
                         <div>Wafer Count</div>
                     </td>
                     <td class="style-doe-head-orange" rowspan="2">
                         <div>Atrribute</div>
                     </td>
                     <td class="style-doe-head-orange" rowspan="2">
                         <div>Note</div>
                     </td>
                     <td class="style-doe-head-orange" rowspan="2">
                         <div>Lot Number</div>
                     </td>
                     <td class="style-doe-head-orange" style="width:900px;" rowspan="2">
                         <div style="font-size:15pt">Due date</div>
                     </td>
                     <td class="style-doe-head-orange" rowspan="2">
                          <div style="font-size:15pt">Result</div>
                     </td>                                      
                </tr>
                <tr>
                    <td style="width:100px; height:50px" class="style-doe-head-orange">
                        <div>DM</div>
                    </td>
                     <td style="width:100px;" class="style-doe-head-orange">
                         <div>PC</div>
                     </td>
                     <td style="width:100px;" class="style-doe-head-orange">
                         <div>Live</div>
                     </td>                                                                                               
                </tr>
                <tr id="row_2">
                    <td ><div>PR STRIP</div></td>
                     <td ><div>Process time</div></td>
                     <td>
                         330+/-10%
                         
                                       
                     </td>
                     <td></td>
                     <td>+</td>
                     <td>-</td>
                     <td><input id="doelge_1" name="doelge_1" type="text"  style="width:40px" value="0"/></td>
                     <td><input id="doelge_2" name="doelge_2" type="text"   style="width:40px" value=""/></td>
                     <td><input id="doelge_3" name="doelge_3" type="text"   style="width:40px" value="3"/></td>
                     <td><input id="doelge_4" name="doelge_4" type="text"   style="width:40px" value=""/></td>
                     <td><input id="doelge_5" name="doelge_5" type="text"   style="width:40px" value=""/></td>
                     <td><input id="doelge_6" name="doelge_6" type="text"   style="width:40px" value="" /></td>
                     <td><input id="doelge_7" name="doelge_7" type="text"   style="width:150px" value="1. ASTI (十字檢查法)"/></td>
                     <td><input id="doelge_8" name="doelge_8" type="text"  style="width:40px" value="NA"/></td>
                     <td><input id="doelge_9" name="doelge_9" type="text"  style="width:90px" value="BPF56180.1"/></td>
                     <td>
                         <input id="doelge_10" name="doelge_10" type="text"   style="width:70px" value="2015/5/24"/>
                         
                     </td>
                     <td id="but3_doe">
                         <input type="button" id="but1" value="create" />
                     </td>                                    
                </tr>
                
                
                <tr id="ee" style="height:20px">
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td>
                         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                     </td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                    <td ></td>                      
                </tr>
                                  
            </table>
            </fieldset>
        </div>
          
         
         <div></div>
        
         
         
         
         
         
         
         
         
         
               
    </form>
</body>
</html>
