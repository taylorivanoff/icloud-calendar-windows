#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {
    tauri_icloud_base::run(
        tauri_icloud_base::IcloudAppConfig {
            app_name: "iCloud Calendar",
            url: "https://www.icloud.com/calendar",
            remove_toolbar: true,
        },
        tauri::generate_context!(),
    );
}
