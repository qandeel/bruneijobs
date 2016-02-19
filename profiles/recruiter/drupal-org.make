; Recruiter drush make build file for drupal.org packaging.
core = 7.41

api = 2

; Modules

projects[acl][version] = "1.0"

projects[addressfield][version] = "1.0-beta5"

projects[admin_menu][version] = 3.0-rc5

projects[autocomplete_deluxe][version] = "2.1"

projects[better_formats][version] = "1.0-beta1"

projects[ctools][version] = 1.8
; Revert empty formatters change with field collection problem
projects[ctools][patch][] = https://www.drupal.org/files/issues/2336985-ctools-empty-field-collections-16.patch
; Warning: Missing argument 4 for entity_metadata_file_access() https://www.drupal.org/node/2209775
projects[ctools][patch][] = https://www.drupal.org/files/issues/ctools-readd_access_callback_params-2209775-24.patch

projects[colorbox][version] = 2.10

projects[content_access][version] = "1.2-beta2"
; Node Access bug if core patch is applied http://drupal.org/node/1097248#comment-6613538
projects[content_access][patch][] = "http://drupal.org/files/1097248-content-access-node-grants-24.patch"

projects[context_admin][version] = "1.2"

; Update to beta3 or 1.0 once that gets released.
projects[content_taxonomy][version] = 1.x-dev

projects[context][version] = "3.6"

projects[date][version] = 2.9-rc1

projects[diff][version] = "3.2"

projects[email][version] = "1.3"

projects[entity][version] = 1.6

projects[entityreference][version] = "1.1"

projects[facetapi][version] = "1.3"

projects[facetapi_pretty_paths][version] = "1.0"

projects[features][version] = "1.0"
; Fixes import of menu links of disabled modules (http://drupal.org/node/1241108)
projects[features][patch][] = "http://drupal.org/files/1241108-d7-1.patch"
; Remove mtime from .info export (added by Drupal 7.33) https://www.drupal.org/node/2381739
projects[features][patch][] = https://www.drupal.org/files/issues/features-mtime-1x-2381739-14.patch

; Use the newer field collection version, which supports contexts for ctools.
projects[field_collection][version] = "1.x-dev"
projects[field_collection][download][type] = git
projects[field_collection][download][branch] = 7.x-1.x
projects[field_collection][download][revision] = 17d945fff4793dcd26cb8690ce82958f240b6dce
; EntityFieldQueryException: Unknown field when deleting fields http://drupal.org/node/1866032
projects[field_collection][patch][] = "http://drupal.org/files/fieldcol-1866032-7.patch"
; Field collection migration handler: http://drupal.org/node/1175082
projects[field_collection][patch][] = "http://drupal.org/files/field_collection-migrate-1175082-178.patch"

projects[field_permissions][version] = "1.0-beta2"

projects[flag][version] = "3.4"

; Use latest dev version because of https://www.drupal.org/node/2227523
projects[i18n][version] = "1.x-dev"

projects[link][version] = 1.3

projects[message][version] = 1.9

projects[migrate][version] = "2.8"

projects[migrate_extras][version] = "2.5"

; Using the panels dev version since it fixes DB errors with the cache table.
; Update to 3.5 once that is released.
projects[panels][version] = "3.x-dev"

projects[pathauto][version] = "1.2"

projects[pm_existing_pages][version] = "1.4"

projects[profile2][version] = "1.3"
; Add ctools relationship
projects[profile2][patch][] = "http://drupal.org/files/1011370-profile2-ctools.patch"

projects[recruiter_features][version] = 1.3

projects[roleassign][version] = "1.0"

projects[role_export][version] = "1.0"

projects[rules][version] = 2.9
; Add a Rules Condition: entity has required fields set https://drupal.org/node/2111559
projects[rules][patch][] = https://drupal.org/files/issues/rules-entity-required-fields-2111559-3.patch
; Remove "Cache rebuild lock hit" watchdog spam message https://www.drupal.org/node/2406863
projects[rules][patch][] = https://www.drupal.org/files/issues/rules-remove-cache-rebuild-log-2406863-21.patch

projects[rules_autotag][version] = 1.4

projects[rules_link][version] = "1.1"

projects[search_api][version] = "1.11"

projects[search_api_saved_searches][version] = "1.2"

projects[search_api_solr][version] = "1.4"

projects[search_api_db][version] = "1.2"

projects[strongarm][version] = "2.0"

projects[synonyms][version] = "1.1"

projects[taxonomy_csv][version] = "5.10"

projects[taxonomy_formatter][version] = "1.4"
; Fix empty labels http://drupal.org/node/1352050#comment-7028512
projects[taxonomy_formatter][patch][] = "http://drupal.org/files/taxonomy_formatter-label-on-empty-1352050-9.patch"

projects[taxonomy_manager][version] = "1.0"

projects[term_level][version] = "1.x-dev"
projects[term_level][patch][] = "http://www.drupal.org/files/issues/term_level-views_relation-2513768-3.patch"

projects[token][version] = "1.5"

projects[variable][version] = "2.4"

projects[views][version] = 3.11
; Views field handler patch for leaflet https://drupal.org/node/2021547
projects[views][patch][] = "https://drupal.org/files/views-fieldcollection-error-2021547-1.patch"
; Remove filter_xss_admin() from result rewriting because views editors are already trusted admins
projects[views][patch][] = https://www.drupal.org/files/issues/views-no-alter-text-filter-2529948-1.patch
; Undefined index: uid in views_handler_field->get_value() (line 375 of views_handler_field.inc) https://www.drupal.org/node/1609088#comment-10479252
projects[views][patch][] = https://www.drupal.org/files/issues/views-username-notice-1609088-45.patch

projects[views_bulk_operations][version] = "3.2"

projects[wysiwyg][version] = "2.x-dev"

projects[wysiwyg_linebreaks][version] = "1.6"

;  -  Libraries  -

; Also add the colorbox library.
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.6.3.zip"
libraries[colorbox][download][type] = "get"

; CKEditor
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.7/ckeditor_4.4.7_standard.zip"


;  - Recruiter Cloudy base theme -

projects[block_class][version] = 1.3

projects[omega][type] = theme
projects[omega][version] = "4.3"
; RTL patch applied https://www.drupal.org/node/2364731#comment-9289145
projects[omega][patch][] = "https://www.drupal.org/files/issues/omega-fix-direction-language-rtl-2364731-7.patch"
;Managed File on form settings https://www.drupal.org/node/2186031
projects[omega][patch][] = "https://www.drupal.org/files/issues/omega-form-state-file-references-2186031-8.patch"

projects[cloudy][type] = theme
projects[cloudy][version] = 1.5

