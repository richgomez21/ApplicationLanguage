var controlAddIn, nameDiv, phoneDiv, emailDiv;
controlAddIn = $("#controlAddIn");
nameDiv = $("
", { id: "nameDiv" });
phoneDiv = $("
", { id: "phoneDiv" });
emailDiv = $("
", { id: "emailDiv" });

controlAddIn.append(nameDiv);
controlAddIn.append(phoneDiv);

window.GetCustomerInfo = function(custInfo) {
controlAddIn.append(emailDiv);
nameDiv.html("Name: " + custInfo.name);
phoneDiv.html("Phone: " + custInfo.phone);
emailDiv.html("E-mail: " + custInfo.email);
}