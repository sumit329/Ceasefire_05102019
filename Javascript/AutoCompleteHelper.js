

function GetAutoCompleteText(objGetExtender,objBasedText)
{
  var o = $find(objGetExtender);  
       o.add_populating(function () {  
             o.set_contextKey($get(objBasedText).value);  
      });  
      
}      

function GetAutoCompleteTextWithTwoValues(objGetExtender,objBasedText1,objBasedText2)
{
  var o1 = $find(objGetExtender);  
       o1.add_populating(function () {  
            o1.set_contextKey($get(objBasedText1).value +':'+ $get(objBasedText2).value);  
      });  
      
}

function onListPopulated(sender, e) {
    var completionList = sender.get_completionList();
    completionList.style.width = 'auto';
}