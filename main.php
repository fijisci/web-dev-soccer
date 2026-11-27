<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

$conn = new mysqli("localhost", "root", "", "final", 3308);
$conn->set_charset("utf8");

$sql = "SELECT 
    j.nombre AS jugadora,
    e.nombre AS equipo,
    SUM(pj.goles) AS total_goles,
    SUM(pj.tarjetas_amarillas) AS amarillas,
    SUM(pj.tarjetas_rojas) AS rojas
FROM partido_jugadores pj
JOIN jugadores j ON pj.jugador_id = j.id
JOIN equipos e ON pj.equipo_id = e.id
GROUP BY j.id, j.nombre, e.nombre
HAVING SUM(pj.goles) > 0
ORDER BY total_goles DESC";

$res = $conn->query($sql);
echo json_encode($res->fetch_all(MYSQLI_ASSOC));