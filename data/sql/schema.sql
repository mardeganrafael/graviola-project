CREATE TABLE nj_calendar (id BIGINT UNSIGNED AUTO_INCREMENT, description VARCHAR(128) NOT NULL, detail TEXT, monday TINYINT(1) NOT NULL, tuesday TINYINT(1) NOT NULL, wednesday TINYINT(1) NOT NULL, thursday TINYINT(1) NOT NULL, friday TINYINT(1) NOT NULL, saturday TINYINT(1) NOT NULL, sunday TINYINT(1) NOT NULL, end_date DATE NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_estimated_arrival_time (id BIGINT UNSIGNED AUTO_INCREMENT, nj_trip_id BIGINT UNSIGNED NOT NULL, nj_stop_id BIGINT UNSIGNED, arrival_time TIME, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_trip_id_idx (nj_trip_id), INDEX nj_stop_id_idx (nj_stop_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_login_group_routing (id BIGINT UNSIGNED AUTO_INCREMENT, sf_guard_group_id BIGINT, routing VARCHAR(128), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX sf_guard_group_id_idx (sf_guard_group_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_menu_item_routing (id BIGINT UNSIGNED AUTO_INCREMENT, nj_section_routing_id BIGINT UNSIGNED, menu_order BIGINT UNSIGNED, description VARCHAR(128), detail TEXT, routing VARCHAR(128), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_section_routing_id_idx (nj_section_routing_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_notification (id BIGINT UNSIGNED AUTO_INCREMENT, nj_notification_type_id BIGINT UNSIGNED NOT NULL, description VARCHAR(128) NOT NULL, detail TEXT, nj_route_id BIGINT UNSIGNED, nj_trip_id BIGINT UNSIGNED, nj_stop_time_id BIGINT UNSIGNED, average_speed DECIMAL(5, 2) NOT NULL, time_delay TIME, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_route_id_idx (nj_route_id), INDEX nj_notification_type_id_idx (nj_notification_type_id), INDEX nj_trip_id_idx (nj_trip_id), INDEX nj_stop_time_id_idx (nj_stop_time_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_notification_subscriber (nj_route_id BIGINT UNSIGNED, user_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(nj_route_id, user_id)) ENGINE = INNODB;
CREATE TABLE nj_notification_type (id BIGINT UNSIGNED AUTO_INCREMENT, description VARCHAR(40) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_permission_menu_item_routing (nj_menu_item_routing_id BIGINT UNSIGNED, sf_guard_permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(nj_menu_item_routing_id, sf_guard_permission_id)) ENGINE = INNODB;
CREATE TABLE nj_route (id BIGINT UNSIGNED AUTO_INCREMENT, nj_transport_mode_id BIGINT UNSIGNED NOT NULL, number VARCHAR(50), name VARCHAR(128) NOT NULL, description VARCHAR(128), detail TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_transport_mode_id_idx (nj_transport_mode_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_run (id BIGINT UNSIGNED AUTO_INCREMENT, nj_trip_id BIGINT UNSIGNED NOT NULL, nj_stop_id BIGINT UNSIGNED, step_into BIGINT, step_out BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_trip_id_idx (nj_trip_id), INDEX nj_stop_id_idx (nj_stop_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_section_routing (id BIGINT UNSIGNED AUTO_INCREMENT, menu_order BIGINT UNSIGNED, description VARCHAR(128), detail TEXT, routing VARCHAR(128), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_stop (id BIGINT UNSIGNED AUTO_INCREMENT, description VARCHAR(128) NOT NULL, detail TEXT, latitude DECIMAL(18, 6), longitude DECIMAL(18, 6), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_stop_time (id BIGINT UNSIGNED AUTO_INCREMENT, nj_trip_id BIGINT UNSIGNED NOT NULL, nj_stop_id BIGINT UNSIGNED, arrival_time TIME, departure_time TIME, stop_sequence BIGINT NOT NULL, description VARCHAR(128) NOT NULL, detail TEXT, dist_traveled FLOAT(18, 2) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_trip_id_idx (nj_trip_id), INDEX nj_stop_id_idx (nj_stop_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_transport_mode (id BIGINT UNSIGNED AUTO_INCREMENT, description VARCHAR(128), detail TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_trip (id BIGINT UNSIGNED AUTO_INCREMENT, nj_calendar_id BIGINT UNSIGNED NOT NULL, nj_route_id BIGINT UNSIGNED NOT NULL, nj_vehicle_id BIGINT UNSIGNED NOT NULL, direction_id TINYINT(1) NOT NULL, description VARCHAR(128) NOT NULL, detail TEXT, polyline LONGTEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_calendar_id_idx (nj_calendar_id), INDEX nj_route_id_idx (nj_route_id), INDEX nj_vehicle_id_idx (nj_vehicle_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_type_notification (id BIGINT UNSIGNED AUTO_INCREMENT, description VARCHAR(40) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_user_profile (id BIGINT UNSIGNED AUTO_INCREMENT, user_id BIGINT, picture VARCHAR(255), address VARCHAR(255), complement VARCHAR(128), district VARCHAR(128), city VARCHAR(128), state VARCHAR(128), country VARCHAR(128), webpage VARCHAR(128), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE nj_vehicle (id BIGINT UNSIGNED AUTO_INCREMENT, nj_transport_mode_id BIGINT UNSIGNED NOT NULL, description VARCHAR(128) NOT NULL, detail TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX nj_transport_mode_id_idx (nj_transport_mode_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_forgot_password (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, unique_key VARCHAR(255), expires_at DATETIME NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group_permission (group_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(group_id, permission_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_permission (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_remember_key (id BIGINT AUTO_INCREMENT, user_id BIGINT, remember_key VARCHAR(32), ip_address VARCHAR(50), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user (id BIGINT AUTO_INCREMENT, first_name VARCHAR(255), last_name VARCHAR(255), email_address VARCHAR(255) NOT NULL UNIQUE, username VARCHAR(128) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_group (user_id BIGINT, group_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, group_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_permission (user_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, permission_id)) ENGINE = INNODB;
ALTER TABLE nj_estimated_arrival_time ADD CONSTRAINT nj_estimated_arrival_time_nj_trip_id_nj_trip_id FOREIGN KEY (nj_trip_id) REFERENCES nj_trip(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_estimated_arrival_time ADD CONSTRAINT nj_estimated_arrival_time_nj_stop_id_nj_stop_id FOREIGN KEY (nj_stop_id) REFERENCES nj_stop(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_login_group_routing ADD CONSTRAINT nj_login_group_routing_sf_guard_group_id_sf_guard_group_id FOREIGN KEY (sf_guard_group_id) REFERENCES sf_guard_group(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_menu_item_routing ADD CONSTRAINT nj_menu_item_routing_nj_section_routing_id_nj_section_routing_id FOREIGN KEY (nj_section_routing_id) REFERENCES nj_section_routing(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_notification ADD CONSTRAINT nj_notification_nj_trip_id_nj_trip_id FOREIGN KEY (nj_trip_id) REFERENCES nj_trip(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_notification ADD CONSTRAINT nj_notification_nj_stop_time_id_nj_stop_time_id FOREIGN KEY (nj_stop_time_id) REFERENCES nj_stop_time(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_notification ADD CONSTRAINT nj_notification_nj_route_id_nj_route_id FOREIGN KEY (nj_route_id) REFERENCES nj_route(id);
ALTER TABLE nj_notification ADD CONSTRAINT nj_notification_nj_notification_type_id_nj_notification_type_id FOREIGN KEY (nj_notification_type_id) REFERENCES nj_notification_type(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_notification_subscriber ADD CONSTRAINT nnnn_1 FOREIGN KEY (nj_route_id) REFERENCES nj_notification(nj_route_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_notification_subscriber ADD CONSTRAINT nj_notification_subscriber_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id);
ALTER TABLE nj_permission_menu_item_routing ADD CONSTRAINT nssi FOREIGN KEY (sf_guard_permission_id) REFERENCES sf_guard_permission(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_permission_menu_item_routing ADD CONSTRAINT nnni FOREIGN KEY (nj_menu_item_routing_id) REFERENCES nj_menu_item_routing(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_route ADD CONSTRAINT nj_route_nj_transport_mode_id_nj_transport_mode_id FOREIGN KEY (nj_transport_mode_id) REFERENCES nj_transport_mode(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_run ADD CONSTRAINT nj_run_nj_trip_id_nj_trip_id FOREIGN KEY (nj_trip_id) REFERENCES nj_trip(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_run ADD CONSTRAINT nj_run_nj_stop_id_nj_stop_id FOREIGN KEY (nj_stop_id) REFERENCES nj_stop(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_stop_time ADD CONSTRAINT nj_stop_time_nj_trip_id_nj_trip_id FOREIGN KEY (nj_trip_id) REFERENCES nj_trip(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_stop_time ADD CONSTRAINT nj_stop_time_nj_stop_id_nj_stop_id FOREIGN KEY (nj_stop_id) REFERENCES nj_stop(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_trip ADD CONSTRAINT nj_trip_nj_vehicle_id_nj_vehicle_id FOREIGN KEY (nj_vehicle_id) REFERENCES nj_vehicle(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_trip ADD CONSTRAINT nj_trip_nj_route_id_nj_route_id FOREIGN KEY (nj_route_id) REFERENCES nj_route(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_trip ADD CONSTRAINT nj_trip_nj_calendar_id_nj_calendar_id FOREIGN KEY (nj_calendar_id) REFERENCES nj_calendar(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_user_profile ADD CONSTRAINT nj_user_profile_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE nj_vehicle ADD CONSTRAINT nj_vehicle_nj_transport_mode_id_nj_transport_mode_id FOREIGN KEY (nj_transport_mode_id) REFERENCES nj_transport_mode(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE sf_guard_forgot_password ADD CONSTRAINT sf_guard_forgot_password_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_remember_key ADD CONSTRAINT sf_guard_remember_key_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
