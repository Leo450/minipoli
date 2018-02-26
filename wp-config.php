<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'minipoli');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'root');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Z8xkzEU)2a PJ<s>MT>VQJGl0v05>@mEWN-9$ESk1+7vLJ;t> ~5)|t}T!03qaxm');
define('SECURE_AUTH_KEY',  '3$BRcl.gwFNLv*F/?3MC3y#a+`Zf_$XR0M=q$T0}LqqJ,us;{3amh&u@c;(0@6+F');
define('LOGGED_IN_KEY',    'BX9u;ha~%rm3kA^Bs4f~um3%+HutWHdBWj7b8[X`ndDQTH(wN]VD{bP<GG^6<0;W');
define('NONCE_KEY',        'T-507I0]x!Yy*&)s.X[3hB;] nOsH0GxMVFp]wj!w~aIZL# Fr`gK4KFIVDK8FvQ');
define('AUTH_SALT',        'dCktt{.c=7*61#BlYKYRW7j@Y#{)h0SZ7DkDTe:<4fLY0(pft $p =xNp1q@rhq3');
define('SECURE_AUTH_SALT', 'Vw[TnH2.:?pe(Ajs++ws-x<a62)$;Pm+>%1jcp[Ju4ci}DlVfn6,EBobX$Heq;j)');
define('LOGGED_IN_SALT',   'DE]0vv:O82*m!as],Q/cpPFTNk,mq!Po4)`n|t(d!x_,WY]h/!=+ER<STLJdANAH');
define('NONCE_SALT',       '*gkR^Y}6ic9NB]p3]10`OlPZNzy`zvDLQPyYo*XNTDPg2?2HP|vAd$ZtgP`#f`T{');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');