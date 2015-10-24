var next = 1;
function tambah_form(){
        //mencari element dengan id "formku" (yaitu table)
    var target=document.getElementById("formku");
        // membuat element <tr>
    var tabel_row=document.createElement("tr");
        // membuat element <td>
    var tabel_col=document.createElement("td");
        // membuat element input untuk menambah form inputan
    var tambah=document.createElement("input");
        // menambahkan element <tr> pada tag table
    target.appendChild(tabel_row);
        // menambahkan element <td> pada tag <tr>
    tabel_row.appendChild(tabel_col);
        // menambahkan element input pada tag <td>
    tabel_col.appendChild(tambah);
        // kemudian memberikan attribute type="text" untuk form inputan
    tambah.setAttribute('type','text');
        // lalu memberikan attribute name="inputan[]" untuk form inputan
    next = next + 1;
    tambah.setAttribute('name','inputan'+next+'');
}
function kurangi_form(){
        // mencari element dengan id="formku" yaitu table
    var target=document.getElementById("formku");
        // mendapatkan element terakhir dari <table> yaitu <tr> terakhir
    var akhir=target.lastChild;
        // menghapus <tr> terakhir beserta element2 didalamnya
    target.removeChild(akhir);
}