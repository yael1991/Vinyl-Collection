SELECT Artista.Nombre_Artista, Disco, Año FROM Disco INNER JOIN Artista ON Artista.idArtista=Disco.idArtista ORDER BY Año;	


SELECT idEjemplar, Disco.idArtista, Disco.Disco , Conservacion.Conservacion FROM Ejemplar 
	INNER JOIN Disco ON Ejemplar.idDisco = Disco.idDisco
    INNER JOIN Conservacion  ON Conservacion.idConservacion = Ejemplar.Conservacion
	WHERE Disco.idDisco='Elephant_TI';
    
SELECT idDisco,idEdicion,idEjemplar, Precio_Compra from Ejemplar
WHERE Precio_Compra BETWEEN 10.0 AND 25.0 ORDER BY idDisco,idEdicion;

SELECT idArtista, Nombre_Artista FROM Artista WHERE Nombre_Artista like 'the%';

SELECT COUNT(idEjemplar) as NumeroDiscos, SUM(Precio_Compra) as Valoracion,
MAX(Precio_Compra) as MaximoPrecioPagado, MIN(Precio_Compra) as MinimoPrecioPagado FROM Ejemplar;
    

