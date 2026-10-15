<?php
/**
 * Archivo de conexión a la Base de Datos utilizando PDO
 */

$host = "localhost";
$dbname = "korercgc_barberia_db";
$username = "korercgc_dbuser";
$password = "TuPasswordDeBaseDeDatos";

try {
    $conexion = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
    
    // Configurar PDO para lanzar excepciones en caso de errores
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conexion->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

} catch (PDOException $e) {
    // En producción se registra en un log; para desarrollo mostramos el error controlado
    error_log("Error de conexión: " . $e->getMessage());
    die("Ocurrió un error al conectar con la base de datos. Por favor, intente más tarde.");
}
?>