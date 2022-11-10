-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2022 a las 15:15:01
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_virtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`, `estado`) VALUES
(3, 'Caja', 'assets/images/categorias/20221018155351.jpg', 1),
(4, 'Combos perifericos', 'assets/images/categorias/20221018190150.jpg', 1),
(5, 'Ram', 'assets/images/categorias/20221018195157.jpg', 1),
(6, 'Micro SD', 'assets/images/categorias/20221018203238.jpg', 1),
(7, 'Monitores', 'assets/images/categorias/20221018203526.jpg', 1),
(8, 'Parlantes', 'assets/images/categorias/20221019175415.jpg', 1),
(9, 'Placa Madre', 'assets/images/categorias/20221019175527.jpg', 1),
(10, 'Portatiles Gamer', 'assets/images/categorias/20221019175559.jpg', 1),
(11, 'Redes', 'assets/images/categorias/20221019175637.jpg', 1),
(12, 'Reguladores y ups', 'assets/images/categorias/20221019175725.jpg', 1),
(13, 'Streaming', 'assets/images/categorias/20221019181530.jpg', 1),
(14, 'Fuentes', 'assets/images/categorias/20221019184450.jpg', 1),
(15, 'Mouses', 'assets/images/categorias/20221019181800.jpg', 1),
(16, 'Refrigeraciones', 'assets/images/categorias/20221019181956.jpg', 1),
(17, 'Sillas Gamer', 'assets/images/categorias/20221019182026.jpg', 1),
(18, 'Teclados', 'assets/images/categorias/20221019182204.jpg', 1),
(20, 'jcjksds', 'assets/images/categorias/20221020150640.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(100) NOT NULL DEFAULT 'default.png',
  `token` varchar(100) DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `clave`, `perfil`, `token`, `verify`) VALUES
(9, 'Jharol', 'jharoljulian@gmail.com', '$2y$10$TS1vQ1mpEVdNehtpEvIBSOtEcpTD.09jytug8k0kA/BER19NeSMpe', 'default.png', '9f0b847c2737e7faf733fd49ed70c3d1', 1),
(11, 'Sebas rico', 'jharol.giraldo@iefhb.edu.co', '$2y$10$2idYiS8Xh5svJRVkUCP.zubqc7adgKlD/N.1kq11Drxq.z633p2Xy', 'default.png', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `producto`, `precio`, `cantidad`, `id_pedido`, `id_producto`) VALUES
(11, 'CAJA ASUS ROG Z11 VIDRIO TEMPLADO MINI-ITX RGB NEGRA', '1128.00', 1, 13, 2),
(12, 'MONITOR GIGABYTE (1m-165H-SPK) CURVO G27FC-A', '1484.00', 1, 13, 19),
(13, 'MEMORIA PARA PORTATIL DDR4 16GB 3200 MHz ADATA', '329.00', 6, 14, 11),
(14, 'MEMORIA RAM DDR4 8G 3200 CORSAIR VENGEANCE RGB RS', '201.00', 7, 14, 12),
(15, 'MEMORIA PARA PC DDR4 8G 3200 MHz XPG SPECTRIX D50 RGB', '213.00', 4, 14, 10),
(16, 'CAJA ASUS ROG Z11 VIDRIO TEMPLADO MINI-ITX RGB NEGRA', '1128.00', 1, 14, 2),
(17, 'COMBO 4 EN 1 REDRAGON S101-BA-2 RGB TECL+MOU+DIADE+PAD MOU', '206.00', 1, 14, 7),
(18, 'CAJA ASUS ROG STRIX HELIOS GX601 BLANCA', '2147.00', 1, 15, 1),
(19, 'COMBO 3 en 1 REDRAGON TECLADO DIADEMA MOUSE S129W RGB', '329.00', 1, 15, 6),
(20, 'COMBO 4 EN 1 REDRAGON S101-BA-2 RGB TECL+MOU+DIADE+PAD MOU', '206.00', 1, 15, 7),
(21, 'ELGATO STREAM DECK MINI CONTROL DE CONTENIDO USB', '543.00', 1, 16, 46),
(22, 'CAJA ASUS ROG Z11 VIDRIO TEMPLADO MINI-ITX RGB NEGRA', '1128.00', 1, 16, 2),
(23, 'CAJA ASUS TUF GAMING GT 301 VIDRIO TEMPLADO + FAN 3 ARGB NEGRA', '703.00', 1, 16, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(80) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `email_user` varchar(80) NOT NULL,
  `proceso` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_transaccion`, `monto`, `estado`, `fecha`, `email`, `nombre`, `apellido`, `direccion`, `ciudad`, `email_user`, `proceso`) VALUES
(13, '742157785U1758209', '2612.00', 'COMPLETED', '2022-10-18 20:47:37', 'sb-uxoan20881821@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Bogota', 'jharoljulian@gmail.com', '1'),
(14, '5BG429946F781931E', '5567.00', 'COMPLETED', '2022-10-19 16:18:57', 'sb-uxoan20881821@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Bogota', 'jharol.giraldo@iefhb.edu.co', '3'),
(15, '730393126G745472E', '2682.00', 'COMPLETED', '2022-10-20 07:31:05', 'sb-uxoan20881821@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Bogota', 'jharoljulian@gmail.com', '2'),
(16, '6XK974825M0302809', '2374.00', 'COMPLETED', '2022-10-20 14:37:52', 'sb-uxoan20881821@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Bogota', 'jharoljulian@gmail.com', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `estado`, `id_categoria`) VALUES
(1, 'CAJA ASUS ROG STRIX HELIOS GX601 BLANCA', '<p>Gabinete para juegos ROG Strix Helios White Edition RGB ATX/EATX mid-tower con vidrio templado, marco de aluminio.</p>', '2147.00', 2, 'assets/images/productos/20221018155544.jpg', 1, 3),
(2, 'CAJA ASUS ROG Z11 VIDRIO TEMPLADO MINI-ITX RGB NEGRA', '<p>ROG Z11 es un estuche Mini-ITX/DTX premium con una apariencia elegante y con estilo que supera a la competencia al permitir a los usuarios exhibir construcciones compactas sin compromiso. Cada función ha sido diseñada concienzudamente pensando en el usuario.</p>', '1128.00', 3, 'assets/images/productos/20221018185406.jpg', 1, 3),
(3, 'CAJA ASUS TUF GAMING GT 301 VIDRIO TEMPLADO + FAN 3 ARGB NEGRA', '<p>Gabinete compacto ASUS TUF Gaming GT301 ATX mid-tower con panel lateral de vidrio templado, panel frontal de nido de abeja, ventilador.</p>', '703.00', 5, 'assets/images/productos/20221018185557.jpg', 1, 3),
(4, 'CAJA ASUS TUF GAMING GT501 VIDRIO TEMPLADO + FAN 3 ARGB BLANCA', '<p>El gabinete ASUS TUF Gaming GT501 White Edition admite hasta EATX con panel frontal de metal, panel lateral de vidrio templado, ventilador RGB de 120 mm, ventilador PWM de 140 mm, espacio reservado para radiador y USB 3.1 Gen 1.</p>', '1195.00', 3, 'assets/images/productos/20221018185748.jpg', 1, 3),
(5, 'CAJA ATX AEROCOOL BOLT RGB VIDRIO TEMPLADO', '', '308.00', 7, 'assets/images/productos/20221018185931.jpg', 1, 3),
(6, 'COMBO 3 en 1 REDRAGON TECLADO DIADEMA MOUSE S129W RGB', '<p>El S129W está siempre listo para ir allí donde esté la acción. El Dragonborn es súper compacto, con cable desmontable; los Pandora poseen micrófono desmontable y son muy flexibles y resistentes; el Griffin… bueno… ¡cabe en el bolsillo! El equipo completo va contigo.</p>', '329.00', 9, 'assets/images/productos/20221018190317.jpg', 1, 4),
(7, 'COMBO 4 EN 1 REDRAGON S101-BA-2 RGB TECL+MOU+DIADE+PAD MOU', '<p>El kit S101-BA realmente posee todo lo necesario para jugar contenido en una sola caja. Compuesto por auriculares, teclado rgb, mouse y su correspondiente mousepad. Todo lo necesario para lanzarnos directo al ataque.<br>&nbsp;</p>', '206.00', 8, 'assets/images/productos/20221018190505.jpg', 1, 4),
(8, 'COMBO CORSAIR TECLADO K55 + MOUSE HARPOON RGB', '<p>El pack de teclado y ratón para juegos K55 + HARPOON RGB, &nbsp;presenta teclas de macro programables, un sensor de ratón de 6000 dpi de alto rendimiento y compatibilidad completa.<br>&nbsp;</p>', '276.00', 10, 'assets/images/productos/20221018190631.jpg', 1, 4),
(9, 'COMBO COUGAR TECLADO + MOUSE DEATHFIRE EX', '<p>Los interruptores mecánicos híbridos y la tecnología antighosting se unen a los PPP ajustables del ratón y a la ratio de refresco de1000 hercios para traerte la mejor y más rápida respuesta a tus</p>', '260.00', 19, 'assets/images/productos/20221018190747.jpg', 1, 4),
(10, 'MEMORIA PARA PC DDR4 8G 3200 MHz XPG SPECTRIX D50 RGB', '<p>Memora RAM &nbsp;Ultrarrápid, construcción sólida, estilo geométrico elegante, RGB a su manera.</p>', '213.00', 24, 'assets/images/productos/20221018195316.jpg', 1, 5),
(11, 'MEMORIA PARA PORTATIL DDR4 16GB 3200 MHz ADATA', '<p>DDR4 ofrece múltiples ventajas sobre las generaciones de DRAM anteriores, y ADATA proporciona la más alta calidad y el rendimiento más rápido.</p>', '329.00', 15, 'assets/images/productos/20221018195426.jpg', 1, 5),
(12, 'MEMORIA RAM DDR4 8G 3200 CORSAIR VENGEANCE RGB RS', '<p>La memoria DDR4 CORSAIR VENGEANCE RGB RS realza la estética de su PC gracias a su iluminación RGB dinámica y direccionable individualmente, a la vez que ofrece un rendimiento excepcional optimizado tanto para placas Intel como AMD.</p>', '201.00', 23, 'assets/images/productos/20221018203141.jpg', 1, 5),
(13, 'MICRO SD 32GB KINGSTON CLASE 10 CANVAS SELEC PLUS', '<p>Las tarjetas microSD Canvas Select Plus de Kingston son compatibles con dispositivos Android y han sido diseñadas para un rendimiento de nivel A1.<br>&nbsp;</p>', '33.00', 20, 'assets/images/productos/20221018203322.jpg', 1, 6),
(14, 'MICRO SD 64GB KINGSTON CLASE 10 CANVAS SELEC PLUS', '<p>Las tarjetas microSD Canvas Select Plus de Kingston son compatibles con dispositivos Android y han sido diseñadas para un rendimiento de nivel A1</p>', '44.00', 20, 'assets/images/productos/20221018203406.jpg', 1, 6),
(15, 'MONITOR ASUS 24,5″ ROG IPS 1m-240Hz-GSync-PVT XG259CM', '<p>Monitor para juegos ROG Strix XG259CM: 24,5 pulgadas, 1920 x 1080, 240 Hz (por encima de 144 Hz), 1 ms (GTG), IPS rápido, sincronización de desenfoque de movimiento extremadamente bajo, USB tipo C, 120 % sRGB, compatible con G-Sync*, compatibilidad con KVM, toma de trípode.</p>', '2275.00', 3, 'assets/images/productos/20221018203657.jpg', 1, 7),
(16, 'MONITOR ASUS 24,5″ TUF IPS 1m-280Hz-GSync-PVT VG259QM', '<p>Monitor TUF Gaming VG259QM – 24,5 pulgadas Full HD (1920 x 1080), IPS rápido, overclocking de 280Hz (arriba de 240 Hz, 144 Hz), 1 ms (GTG), Extreme Low Motion Blur Sync, compatible con G-SYNC , DisplayHDR™ 400.</p>', '1954.00', 3, 'assets/images/productos/20221018203831.jpg', 1, 7),
(17, 'MONITOR DE 27″ ASUS ROG STRIX XG276Q', '<p>Monitor para juegos ROG Strix XG276Q: Full HD de 27 pulgadas (1920 x 1080), IPS, 170 Hz (por encima de 144 Hz), 1 ms GTG, desenfoque de movimiento extremadamente bajo, compatible con G-Sync, tecnología FreeSync Premium, DisplayHDR™ 400, toma de trípode.</p>', '2072.00', 2, 'assets/images/productos/20221018203944.jpg', 1, 7),
(18, 'MONITOR DE 29″ ASUS TUF GAMING VG30VQL1A', '<p>Monitor gamer curvo de 29.5 pulgadas, WFHD ultra ancho 21:9 (2560X1080), 200Hz, MPRT de 1ms, Extreme Low Motion Blur™, 127% sRGB, HDR, FreeSync™ Premium</p>', '2318.00', 3, 'assets/images/productos/20221018204050.jpg', 1, 7),
(19, 'MONITOR GIGABYTE (1m-165H-SPK) CURVO G27FC-A', '<p>Como jugador invisible, el monitor a menudo se subestima. La verdad es que los monitores se forman como un efecto sinérgico y sacan el mejor rendimiento de los componentes de la PC. Los monitores para juegos de GIGABYTE ofrecen las mejores especificaciones y calidad, los usuarios</p>', '1484.00', 6, 'assets/images/productos/20221018204400.jpg', 1, 7),
(20, 'PARLANTES LOGITECH S150 (2,1) USB 2W', '', '65.00', 10, 'assets/images/productos/20221019182923.jpg', 1, 8),
(21, 'PARLANTES LOGITECH Z130 3,5mm STEREO 5W RMS', '<p>Estos altavoces estéreo ofrecen un sonido nítido y proporcionan más graves a la experiencia de audio. Acceso fácil a todos los controles en el altavoz derecho.</p>', '126.00', 10, 'assets/images/productos/20221019183100.jpg', 1, 8),
(22, 'PARLANTES LOGITECH Z213 (2,1) 3,5mm  7W RMS +SUBWOOFER', '<p>Este sistema de altavoces 2.1 compacto ofrece un audio claro y graves mejorados a través de una conexión de 3,5 mm. Acceda fácilmente a la alimentación, el volumen y la toma de auriculares mediante el módulo de control con cable. Disfrute de una experiencia de audio</p>', '145.00', 10, 'assets/images/productos/20221019183240.jpg', 1, 8),
(23, 'PARLANTES LOGITECH Z313 (2,1) 25W', '<p>Este sistema de altavoces 2.1 ofrece una acústica equilibrada y proporciona graves mejorados con un compacto subwoofer. Conecta cualquier dispositivo a la entrada de 3,5 mm y accede fácilmente a los mandos de encendido y volumen en la sección de control con cable.</p>', '195.00', 10, 'assets/images/productos/20221019183639.jpg', 1, 8),
(24, 'PARLANTES LOGITECH Z323 (2,1) 30W', '<p>El sistema de altavoces 2.1 de 60 vatios de potencia máxima ofrece un sonido rico en toda la habitación gracias a su diseño de altavoz de doble controlador. Disfrute de una rica experiencia de audio desde cualquier dirección.<br>&nbsp;</p>', '216.00', 10, 'assets/images/productos/20221019183845.jpg', 1, 8),
(25, 'BOARD ASUS TUF B450M PLUS GAMING CROSS A.V.R.4D4 RYZ', '<p>Tarjeta madre para juegos AMD B450 (AM4) micro ATX con soporte M.2, micrófono con cancelación de ruido IA, HDMI, DVI-D, USB 3.2 Gen 2 Tipo A, USB 3.2 Gen 1 Tipo A y Tipo C, e iluminación Aura Sincronizar RGB.</p>', '540.00', 10, 'assets/images/productos/20221019184057.jpg', 1, 9),
(26, '1', '<p>1</p>', '200.00', 1, 'assets/images/productos/default.png', 0, 3),
(27, 'PORTATIL ASUS ROG G513 HF070 RYZEN 7 4800H 16G (2×8) 3200MHz NVMe 512G 4G RTX3050 15,6″ IPS 300Hz TC RGB W10', '', '6460.00', 10, 'assets/images/productos/20221020073949.jpg', 1, 10),
(28, 'PORTATIL ASUS TUF FX517ZE-HN045 CORE i5 12450H 8G DDR5 M2 NVMe 512G 4G RTX 3050Ti 15,6″IPS FHD 144Hz FREE', '', '5090.00', 10, 'assets/images/productos/20221020074236.jpg', 1, 10),
(29, 'PORTATIL ASUS VIVOBOOK X415EA EK1183 i5 1135G7 8G NVMe 256 INTEL IRIS 14″FHD HULLA ENDL GRIS', '', '2150.00', 10, 'assets/images/productos/20221020074402.jpg', 1, 10),
(30, 'PORTATIL ASUS X415JA-BV1676 CORE i3 1005G1 8G NVMe 256G INTEL UHD 14,0″HD ENDLESS GRIS', '', '1550.00', 10, 'assets/images/productos/20221020074507.jpg', 1, 10),
(31, 'PORTATIL GIGABYTE G5 GD NVIDIA GEFORCE RTX 3050 CORE i5 11400H 16G (2×8) 3200 NVMe GN4 512G 4G 15,6″IPS 144Hz WIN10', '<p>La computadora portátil para juegos G5 combina juegos, entretenimiento, trabajo y más! Su potente procesador Intel® Core™ i5 de 11.ª generación le permite gestionar sin esfuerzo varias tareas al mismo tiempo.</p>', '6000.00', 10, 'assets/images/productos/20221020081133.jpg', 0, 10),
(32, 'PORTATIL GIGABYTE G5 GD NVIDIA GEFORCE RTX 3050 CORE i5 11400H 16G (2×8) 3200 NVMe GN4 512G 4G 15,6″IPS 144Hz WIN10', '<p>La computadora portátil para juegos G5 combina juegos, entretenimiento, trabajo y más! Su potente procesador Intel® Core™ i5 de 11.ª generación le permite gestionar sin esfuerzo varias tareas al mismo tiempo.</p>', '6000.00', 10, 'assets/images/productos/20221020081507.jpg', 1, 10),
(33, 'ADAPTADOR PCI EXPRESS INALÁMBRICO DE DOBLE BANDA TP-LINK PCI ARCHER T2E 1AN -AC600', '<p>AC600 WiFi de doble banda: aproveche al máximo su red con velocidades de Wi-Fi de hasta 600 Mbps (433 Mbps en la banda de 5 GHz y 200 Mbps en la banda de 2,4 GHz)</p>', '96.00', 10, 'assets/images/productos/20221020081746.jpg', 1, 11),
(34, 'ADAPTADOR PCI EXPRESS INALÁMBRICO TP-LINK TL-WN781ND 150 Mbps 1 ANTENA', '<p>TP-LINK TL-WN781ND está diseñado para proporcionar un rendimiento inalámbrico completo de extremo a extremo desde el servidor o la red troncal del servidor hasta la infraestructura del conmutador y hasta el escritorio con el conector PCI Express.&nbsp;</p>', '50.00', 10, 'assets/images/productos/20221020081845.jpg', 1, 11),
(35, 'RED USB MINI WI-FI TP-LINK AC600 ARCHER T2U', '<p>Alta velocidad WiFi: velocidad inalámbrica &nbsp;AC600 (200 Mbps en la banda de 2,4 GHz y 433 Mbps en la banda de 5 GHz) con Wi-Fi de última generación: 802.11ac</p>', '66.00', 10, 'assets/images/productos/20221020082223.jpg', 1, 11),
(36, 'RED USB MINI WI-FI TP-LINK AC1300 ARCHER T3U', '<p>AC1300 Mini Adaptador USB inalámbrico MU-MIMO</p>', '100.00', 10, 'assets/images/productos/20221020082434.jpg', 1, 11),
(37, 'ROUTER TP-LINK TL-WR820N 2AN 300M ACCS MULTIMODO', '<p>La velocidad de Wi-Fi de 300 Mbps es ideal para las tareas diarias, incluida la navegación, el envío de correos electrónicos y la transmisión de video</p>', '60.00', 10, 'assets/images/productos/20221020082639.jpg', 1, 11),
(38, 'REGULADOR CDP 600VA 300W 4 TOMAS 4 USB SUPRESOR', '<p>Regulador de voltaje con supresión de picos integrada. Protege PC, tabletas, sistemas de juegos, periféricos.</p>', '100.00', 10, 'assets/images/productos/20221020083114.jpg', 1, 12),
(39, 'REGULADOR CDP 1000VA 8TOMAS SUPRESOR DE PICOS', '<p>.El nuevo y avanzado Regulador de Voltaje Automático R2C, este nuevo producto ofrece 8 tomas de salidas, eliminando la necesidad de conectar fuentes de alimentación USB.</p>', '96.00', 10, 'assets/images/productos/20221020083244.jpg', 1, 12),
(40, 'REGULADOR CDP 1000VA 8TOMAS SUPRESOR P 4 USB', '<p>El nuevo y avanzado Regulador de Voltaje Automatic° R2CU, cuenta con un exclusivo cargador inteligente de4 puertos USB pars tabletas portatiles, telefonos inteligentes, altavoces Bluetooth, convirtiendo a esta serie en la mas complete y de mejor calidad.</p>', '113.00', 10, 'assets/images/productos/20221020083358.jpg', 1, 12),
(41, 'REGULADOR STARTEC 600VA 300W 8TOMAS', '<p>.</p>', '59.00', 10, 'assets/images/productos/20221020083443.jpg', 1, 12),
(42, 'REGULADOR STARTEC 1200VA  8TOMAS', '<p>.</p>', '68.00', 10, 'assets/images/productos/20221020083521.jpg', 1, 12),
(43, 'EDICIÓN DE VÍDEO ELGATO GREEN SCREEN MT PANEL CHROMAKEY COLGABLE', '<p>El chromakey te da el poder de integrar tu imagen en cualquier contenido que elijas. La libertad creativa de personalizar tu streaming de cualquier modo que imagines.</p>', '864.00', 5, 'assets/images/productos/20221020130030.jpg', 1, 13),
(44, 'EDICIÓN DE VIDEO MARCA ELGATO HD60 S + CAPTURADORA, USB3,0, 4K-60fps', '', '918.00', 5, 'assets/images/productos/20221020131329.jpg', 1, 13),
(45, 'ELGATO STREAM DECK MINI CONTROL DE CONTENIDO USB', '<p>Disfrutarás del mismo nivel de control profesional para optimizar tu contenido. La misma funcionalidad flexible para llevar tus producciones a otro nivel. Y las mismas integraciones que te ahorrarán tiempo al hacer que participe tu público.</p>', '618.00', 5, 'assets/images/productos/20221020134504.jpg', 1, 13),
(46, 'ELGATO STREAM DECK MINI CONTROL DE CONTENIDO USB', '<p>El HyperX QuadCast ™ es el micrófono independiente con todo incluido ideal para el aspirante a streamer o podcaster que busca un micrófono de condensador con sonido de calidad.</p>', '543.00', 5, 'assets/images/productos/20221020135048.jpg', 0, 13),
(47, 'MICROFONO HYPERX QUADCAST USB RED', '<p>El HyperX QuadCast ™ es el micrófono independiente con todo incluido ideal para el aspirante a streamer o podcaster que busca un micrófono de condensador con sonido de calidad.</p>', '543.00', 5, 'assets/images/productos/20221020135345.jpg', 1, 13),
(48, '111', '<p>1</p>', '1.00', 1, 'assets/images/productos/20221020150724.jpg', 1, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`, `clave`, `perfil`, `estado`) VALUES
(2, 'Jharol', 'Giraldo', 'jharoljulian@gmail.com', '$2y$10$tBS7YGhzG3E9qbwTtnarUeDzrp7c9rF/wAAGif56ZIFQII6msyo4W', NULL, 1),
(3, 'Stiven', 'Carranza', 'stiven@gmail.com', '$2y$10$um9ne29l9Tei3qWPBtlrButLjhpKiTcqToZQqYeqSMdfzCsDML8SW', NULL, 1),
(4, 'Esteban', 'Gomez', 'esteban@gmail.com', '$2y$10$9dZhhvNUJ7t9.zU5N0e6ZOawnpfn5kvwlkkWWJ1b2P7Yfd3PI39da', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
