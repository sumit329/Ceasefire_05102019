
  function controlEnter (obj, event)  {  
     if(obj != null)
     {    
         var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;      
         try{if (keyCode == 13){                  
            document.getElementById(obj).focus();
            return false;      
         }      
         else {
            return true; 
         } 
         }catch(err){
                //do nothing
              
              }
              }
         
     }

    function getNextControl(sender) {
 
        var waitOne = false;
        for (i = 0; i <= document.aspnetForm.elements.length ; i++) {
       
       if(document.aspnetForm.elements[i] !=null && document.aspnetForm.elements[i].type!='hidden'&& document.aspnetForm.elements[i].disabled==false){
            if (waitOne &&(document.aspnetForm.elements[i].type == 'textarea'||document.aspnetForm.elements[i].type == 'checkbox'||document.aspnetForm.elements[i].type == 'radio'||document.aspnetForm.elements[i].type == 'text'|| document.aspnetForm.elements[i].type == 'button')) return document.aspnetForm.elements[i].id;
            waitOne = (document.aspnetForm.elements[i].type == 'textarea'||document.aspnetForm.elements[i].type == 'checkbox'||document.aspnetForm.elements[i].type == 'radio'||document.aspnetForm.elements[i].type == 'text'||document.aspnetForm.elements[i].type == 'button') && sender.id == document.aspnetForm.elements[i].id;
        }         
        }
    }
    
     
    function someThinks(sender, el) {
        var pK = el.keyCode; 
       
            if (pK == 13 || pK==9){
                    setFocus(getNextControl(sender));
            }
            else{
                 return;
            }
        
    }
      

    function setFocus(obj) {
    

       
        if (document.getElementById('' + obj + '').type=='text'){
            document.getElementById('' + obj + '').select();
        }
        else{
             document.getElementById('' + obj + '').focus();
        }
       
        
    }

    var formField = new Array();

   

    function resetFrom() {
        document.aspnetForm.reset();
       
    }

     function LoadFrom(obj) {
        
        document.getElementById('' + obj + '').select();
//        alert(obj);
//      document.getElementById(obj).select();
       // alert(obj.id);
       // obj.select();
       // document.aspnetForm.elements["txtAreaCode"].focus();
    }   
  
 
   

  

