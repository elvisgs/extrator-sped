var blocos = {};
var niveis = {};
$('table tr').each(function() { 
    var $this = $(this); 
    var bloco = $this.find('td:first p').text().toUpperCase(); 
    var reg = $this.find('td:eq(2) p').text().toUpperCase();
    var nivel = $this.find('td:eq(3) p').text();
    
    blocos[bloco] = blocos[bloco] || {};
    niveis[nivel] = reg;
    
    blocos[bloco][reg] = {
      nivel: parseInt(nivel, 10),
      pai: niveis[nivel - 1],
      ocorrencia: $this.find('td:eq(4) p').text()
    };
});