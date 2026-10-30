import os
import shutil

def extract_sd4_files():
    print("\n=== Rise of the Dragon .SD4 Extractor ===")
    print("This tool will find and copy all Sega CD audio files.")

    source_dir = input("\nEnter the path to the mounted Sega CD (e.g., D:\\ for Windows, or /run/media/... for Linux): ").strip()
    script_dir = os.path.dirname(os.path.abspath(__file__))
    dest_dir = os.path.join(script_dir, "SD4")

    if not os.path.isdir(source_dir):
        print(f"\n[ERROR] Source directory does not exist: {source_dir}")
        return

    if not os.path.exists(dest_dir):
        os.makedirs(dest_dir)
        print(f"Destination path automatically set to: {dest_dir}")

    copied_count = 0
    skipped_count = 0
    print("\nScanning and copying files...")

    # os.walk ensures we catch files even if they are hidden in subdirectories
    for root, dirs, files in os.walk(source_dir):
        for file in files:
            # Case-insensitive match for the extension
            if file.lower().endswith(".sd4"):
                src_path = os.path.join(root, file)

                # Normalize the destination filename to strict uppercase to prevent Linux case issues
                dest_filename = file.upper()
                dest_path = os.path.join(dest_dir, dest_filename)

                if not os.path.exists(dest_path):
                    shutil.copy2(src_path, dest_path)
                    copied_count += 1
                else:
                    skipped_count += 1

    print(f"\n=== Extraction Complete ===")
    print(f"Copied {copied_count} new files.")
    print(f"Skipped {skipped_count} files (already existed).")

if __name__ == "__main__":
    extract_sd4_files()
