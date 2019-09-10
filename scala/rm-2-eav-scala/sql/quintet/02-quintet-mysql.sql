CREATE TABLE init (
  id int(4) UNSIGNED NOT NULL,
  t int(4) UNSIGNED NOT NULL,
  up int(4) UNSIGNED NOT NULL,
  ord int(4) UNSIGNED NOT NULL,
  val varchar(127) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

ALTER TABLE init
  ADD PRIMARY KEY (id),
  ADD KEY t_val (t,val),
  ADD KEY up_t (up,t);

ALTER TABLE init
  MODIFY id int(4) UNSIGNED NOT NULL AUTO_INCREMENT;