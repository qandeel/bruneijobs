; Drupal core make file.

api = 2
core = 7.x

; Not specifying a drupal core version will use the latest stable release.
projects[drupal][version] = "7.41"

; CORE PATCHES

; user_role_grant_permissions() throws PDOException when used for a disabled module's permission or with non-existent permissions
; http://drupal.org/node/737816#comment-6978566
; (fixes integrity constraint violation when adding permissions, see http://drupal.org/node/1063204)
projects[drupal][patch][] = http://drupal.org/files/drupal-7.x-fix_pdoexception_grant_permissions-737816-26-do-not-test.patch

; Drupal 7.36 regression: hidden field textarea #default_value is ignored https://www.drupal.org/node/2502263
projects[drupal][patch][] = https://www.drupal.org/files/issues/form-textarea-value-2502263-1.patch

; Add handling for query parameters in shortcut links https://www.drupal.org/node/614498#comment-10308353
projects[drupal][patch][] = https://www.drupal.org/files/issues/allow-shortcut-query-parameters-614498-26.patch

; system_cron() should not run hook_flush_caches(), but use a cached version https://www.drupal.org/node/1191290
projects[drupal][patch][] = https://www.drupal.org/files/issues/drupal-system_cron-1191290-11.patch
