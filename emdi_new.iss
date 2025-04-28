#define ApplicationVersion GetFileVersion('epiloges.exe')

[Files]
Source: "images\desktop-main-icon.ico"; DestDir: "{app}\images"; Flags: ignoreversion
Source: "images\sbzhelp.ico"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\help-icon.ico"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\backup.ico"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\none.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\splash_1.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\splash_2.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\splash_3.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\splash_4.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\emdi-30days_en.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\emdi-30days.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\menu.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\full_menu.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\sbz.jpg"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\shifts_bg.jpg"; DestDir: "{app}\images\"; Flags: onlyifdoesntexist

Source: "images\Light.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Dark.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Grey.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Ice.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Darker.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Silver.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Sky.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Midnight dark.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\Sweet grey.vsf"; DestDir: "{app}\images\"; Flags: ignoreversion

Source: "..\..\Users\Solon\Downloads\Firebird.exe"; DestDir: "{%TEMP}"; Flags: deleteafterinstall; Tasks: normal_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\gbak.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\gfix.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\intl\fbintl.dll"; DestDir: "{app}\intl\"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\plugins\engine12.dll"; DestDir: "{app}\plugins\"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\ib_util.dll"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\msvcr100.dll"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\icudt52.dll"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\icuin52.dll"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\icuuc52.dll"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\zlib1.dll"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\Users\solon\AppData\Local\TMS Setup\Products\tms.vcl.uipack\Edge Support\x86\WebView2Loader_x86.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\intl\fbintl.conf"; DestDir: "{app}\intl\"; Flags: ignoreversion; Tasks: embedded_database
Source: "view\firebird.conf"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database
Source: "..\..\Program Files (x86)\Firebird\Firebird_3_0\icudt52l.dat"; DestDir: "{app}"; Flags: ignoreversion; Tasks: embedded_database

Source: "upgrade\dbupgrade.exe"; DestDir: "{app}\upgrade"; Flags: ignoreversion
Source: "upgrade\innoextract.exe"; DestDir: "{app}\upgrade"; Flags: ignoreversion
Source: "upgrade\sqlupgrade.sql"; DestDir: "{app}\upgrade"; Flags: ignoreversion
Source: "upgrade\sqlupgrade8_12.sql"; DestDir: "{app}\upgrade"; Flags: ignoreversion

Source: "forms\product.htm"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\cashier.htm"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\list_.txt"; DestDir: "{app}"; Flags: onlyifdoesntexist
Source: "autocomplete.sql"; DestDir: "{app}"; Flags: ignoreversion
Source: "audio\ok.wav"; DestDir: "{app}\audio\"; Flags: onlyifdoesntexist

Source: "dbs\MAIN.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: erp_files; Languages: Greek
Source: "dbs\MAINSM.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: retail_files; Languages: Greek
Source: "dbs\MAINREST.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: restaurant_files; Languages: Greek
Source: "dbs\MAINHOTEL.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: hotel_files; Languages: Greek
Source: "dbs\MAINGYM.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: fitness_files; Languages: Greek
Source: "dbs\MAINPARK.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: parking_files; Languages: Greek
Source: "dbs\MAINGARAGE.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: garage_files; Languages: Greek

Source: "dbs\MAINen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: erp_files; Languages: English
Source: "dbs\MAINSMen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: retail_files; Languages: English
Source: "dbs\MAINRESTen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: restaurant_files; Languages: English
Source: "dbs\MAINHOTELen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: hotel_files; Languages: English
Source: "dbs\MAINGYMen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: fitness_files; Languages: English
Source: "dbs\MAINPARKen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: parking_files; Languages: English
Source: "dbs\MAINGARAGEen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Components: garage_files; Languages: English

Source: "forms\templates\Φόρμα A4 - Κάθετη - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 3.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 4.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 5.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη με QR.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη με φωτογραφίες - 6.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Οριζόντια - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Οριζόντια - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A5 - Οριζόντια - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A5 - Οριζόντια - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A5 - Οριζόντια - 3.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - Loyalties.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - Τιμολόγιο.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - Τιμολόγιο με QR.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 60mm - Ρολό - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φορτωτική.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου Α4 - 1.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου A4 - 2.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου A5.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου 80mm - Ρολό.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek

Source: "forms\templates\Form A4 - Portrait - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form A4 - Portrait - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form A4 - Portrait - 3.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form 80mm - Roll - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form 80mm - Roll - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form 80mm - Roll - Invoice.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form 80mm - Roll - Loyalties.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English

Source: "forms\templates\calendar_appointment_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\customers_barcode_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_invoices_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\common_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_package_ticket_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\customers_documents_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\customers_list_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\products_documents_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_documents_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_eshop_orders_list_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\products_list_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\calendar_list_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\ordering_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\users_barcode_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_1_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_2_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_basic_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_analysis_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_customers_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\scale_data_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion

Source: "forms\templates\calendar_appointment_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\customers_barcode_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_invoices_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\common_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_package_ticket_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\customers_documents_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\customers_list_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\products_documents_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_documents_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_eshop_orders_list_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\products_list_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\calendar_list_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\ordering_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\users_barcode_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_2_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_1_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_basic_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_analysis_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_customers_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\scale_data_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion

Source: "forms\label60x40.prn"; DestDir: "{app}\forms\"; Flags: ignoreversion
Source: "forms\label.prn"; DestDir: "{app}\forms\"; Flags: ignoreversion

Source: "forms\google_maps_all.htm"; DestDir: "{app}\forms\"; Flags: ignoreversion
Source: "forms\google_maps.htm"; DestDir: "{app}\forms\"; Flags: ignoreversion
Source: "forms\here_maps_all.htm"; DestDir: "{app}\forms\"; Flags: ignoreversion
Source: "forms\here_maps.htm"; DestDir: "{app}\forms\"; Flags: ignoreversion

Source: "reports\cloud_uploadorder.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_customersconfirm.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_modifiedcustomers.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_modifiedproducts.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_orderlist.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_productsconfirm.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_resetdates.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_selectedorder.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\cloud_uploadcustomer.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion

Source: "reports\01.Είδη ανά πελάτη - προμηθευτή.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\01.Είδη ανά πελάτη - προμηθευτή - παραστατικό.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\01.Πελάτες - προμηθευτές ανά είδος.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.Τζίρος ανά χρήστη βάσει παραγγελίας.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.Τζίρος ανά χρήστη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.Τζίρος ανά χρήστη 12μηνο.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.Χρόνοι χρηστών παραγγελιών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.Παραγγελίες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\03.Λίστα επιταγών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Κέρδος ανά παραστατικό.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Γραμμές παραστατικών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Γραμμές παραστατικών (Κέρδος).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Παραστατικά.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Σύνολα αγορών ανά προμηθευτή.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Σύνολα πωλήσεων ανά πελάτη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Σύνολα αγορών ανά μήνα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Σύνολα πωλήσεων ανά μήνα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Σύνολα κινήσεων ανά πελάτη - προμηθευτή.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Σύνολα πωλήσεων ανά πελάτη - 10 Καλύτεροι.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\06.Σύνολα πελατών - ειδών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\07.Αγορές - πωλήσεις προϊόντων.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Έσοδα - έξοδα (Ανάλυση ΦΠΑ).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Έσοδα - έξοδα (ΦΠΑ, Παραστατικά).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Έσοδα - έξοδα 12 μηνών ανά μήνα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Έσοδα - έξοδα αναλυτικά.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\10.Ταμείο (Ανάλυση ΦΠΑ).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\10.Ταμείο (ΦΠΑ, Παραστατικά).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Προϊόντα - αγορές ανά υποκατηγορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Προϊόντα - αγορές πωλήσεις ανά υποκατηγορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Προϊόντα - πωλήσεις ανά υποκατηγορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Προϊόντα - πωλήσεις.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Προϊόντα - πωλήσεις ανά παραστατικό.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Προϊόντα - κερδοφορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Περιβαλλοντικό τέλος.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\12.Υπολοιπα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\13.Γυμναστήριο - κίνηση.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: fitness_files
Source: "reports\13.Γυμναστήριο - συνδρομές.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: fitness_files
Source: "reports\13.Parking - συνδρομές.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: parking_files
Source: "reports\14.Διαθεσιμότητες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\15.Προμήθεια ανά χρήστη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\16.Παρτίδες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\16.Lots.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\17.Γραμμές με σειριακούς.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\18.Loyalties ανά πελάτη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\18.Loyalties επιλεγμένου πελάτη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\19.Βάρδιες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\21.Χιλιόμετρα-Εργασίες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: garage_files
Source: "reports\21.Οχήματα πελατών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\20.Είσοδος - Έξοδος.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: fitness_files
Source: "reports\22.Σύνδεση παρτίδων.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\23.Κινήσεις οχημάτων.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: garage_files
Source: "reports\24.Συγκεντρωτική τιμολογίων.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\25.Παραγγελίες σε προμηθευτές.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\26.Κινήσεις καρτών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion

Source: "reports\01.Customers - suppliers per product.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\01.Products per customer - supplier.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.Orders time.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.Orders.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.User turnover.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.User turnover based on order.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\02.User turnover 12 months.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\03.User turnover based on order.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\03.User turnover 12 months.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Profit per document.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Documents totals per customer - supplier.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Documents lines.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\04.Documents.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Purchases totals per supplier.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\05.Purchases totals per month.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\06.Sales totals per month.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\06.Sales totals per customer.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\06.Sales totals per customer - Top 10.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\07.Customers - products totals.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\08.Products transactions.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Revenue - Expenses (VAT analysis).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Revenue - Expenses (12 months).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Revenue - Expenses (VAT, Documents).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\09.Revenue - Expenses analytical.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\10.Cash balance (Tax analysis).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\10.Cash balance (Tax, Documents).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Products - purchases by subcategory.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Products - purchases sales by subcategory.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Products - sales by subcategory.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Products - sales.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\11.Products - profitability.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\12.Balances.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\13.Gym - traffic.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: fitness_files
Source: "reports\13.Parking - subscriptions.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Components: parking_files
Source: "reports\14.Availabilities.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\16.Lots.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\17.Lines with serial numbers.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\18.Loyalties per customer.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\18.Loyalties selected customer.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\19.Shifts.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\20.Entrance - Exit.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\21.Customer vehicles.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\22.Lot connection.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\24.Aggregated document list.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\25.Orders to suppliers.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion
Source: "reports\26.Card transactions.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion

Source: "forms\form_fislink.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_solidus.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_mercato.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_fiscalretail.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_dpsneon.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_dm60.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_dtec100.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_incotex133.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_mini_plus.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_mini.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_norma.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_ipCash.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_ipCash.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_carat.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_quorion.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist

Source: "language\en\sync.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\tcpdevices.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\ryumiseis.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\rantevou.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\pvlhseis.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\pelatologio.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\paraggelies.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\paraggelies.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\import.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\epiloges.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\apouhkh.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\bridge.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\accounts.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\emdi_park.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\hotel.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\eshopconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\bldrconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\gasconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\eshopconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\emdi_stock.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\customer_display.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\gasconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\emdi_activity.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion

Source: "language\search.txt"; DestDir: "{app}\language"; DestName: "search.txt.old"; Flags: external skipifsourcedoesntexist
Source: "language\lookupvalues_el.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\countries_el.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\terminal_el.txt"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\search_el.txt"; DestDir: "{app}\language"; Flags: onlyifdoesntexist
Source: "language\mydata\tax_vat_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_type_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_totals_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_taxes_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_payment_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_other_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_fees_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_exclude_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_docs_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_category_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_units_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_movement_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\results_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\contracting_entities_el.csv"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\cpv_codes_el.csv"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\taric_codes_el.csv"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\offline_el.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\db_error_el.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "forms\forma_el.htm"; DestDir: "{app}\forms\"; DestName: "forma.htm"; Flags: onlyifdoesntexist; Languages: Greek
Source: "language\print_el.frc"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "LICENCE-Greek.TXT"; DestDir: "{app}"; Flags: ignoreversion

Source: "language\lookupvalues_en.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\countries_en.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\terminal_en.txt"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\search_en.txt"; DestDir: "{app}\language"; Flags: onlyifdoesntexist
Source: "language\mydata\tax_vat_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_type_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_totals_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_taxes_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_payment_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_other_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_fees_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_exclude_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_docs_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_category_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_units_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_movement_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\results_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\contracting_entities_en.csv"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\cpv_codes_en.csv"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\taric_codes_en.csv"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\offline_en.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\db_error_en.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "forms\forma_en.htm"; DestDir: "{app}\forms\"; DestName: "forma.htm"; Flags: onlyifdoesntexist; Languages: English
Source: "language\print_en.frc"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "LICENCE-English.TXT"; DestDir: "{app}"; Flags: ignoreversion

Source: "mobile\emdi_stock\emdi_stock.exe"; DestDir: "{app}\emdi_stock"; Flags: ignoreversion; Components: erp_files retail_files; Tasks: stock
Source: "mobile\emdi_stock\templates\template.htm"; DestDir: "{app}\emdi_stock\templates"; Components: erp_files retail_files; Tasks: stock
Source: "mobile\emdi_stock\wwwroot\images\background.jpg"; DestDir: "{app}\emdi_stock\wwwroot\images"; Components: erp_files retail_files; Tasks: stock
Source: "mobile\emdi_stock\wwwroot\css\template.css"; DestDir: "{app}\emdi_stock\wwwroot\css"; Components: erp_files retail_files; Tasks: stock
Source: "mobile\emdi_stock\wwwroot\favicon.ico"; DestDir: "{app}\emdi_stock\wwwroot"; Flags: ignoreversion; Components: erp_files retail_files; Tasks: stock

Source: "mobile\emdi_park\emdi_park.exe"; DestDir: "{app}\emdi_park"; Flags: ignoreversion; Components: parking_files
Source: "mobile\emdi_park\ticket.txt"; DestDir: "{app}\emdi_park\"; DestName: "ticket.txt"; Flags: onlyifdoesntexist; Components: parking_files; Languages: Greek
Source: "mobile\emdi_park\receipt.txt"; DestDir: "{app}\emdi_park\"; DestName: "receipt.txt"; Flags: onlyifdoesntexist; Components: parking_files; Languages: Greek
Source: "mobile\emdi_park\ticket_en.txt"; DestDir: "{app}\emdi_park\"; DestName: "ticket.txt"; Flags: onlyifdoesntexist; Components: parking_files; Languages: English
Source: "mobile\emdi_park\receipt_en.txt"; DestDir: "{app}\emdi_park\"; DestName: "receipt.txt"; Flags: onlyifdoesntexist; Components: parking_files; Languages: English

Source: "mobile\emdi_activity\emdi_activity.exe"; DestDir: "{app}\emdi_activity"; Flags: ignoreversion; Components: fitness_files
Source: "mobile\emdi_activity\wwwroot\background.jpg"; DestDir: "{app}\emdi_activity\wwwroot"; Flags: ignoreversion; Components: fitness_files

; Source: "efoodconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: retail_files restaurant_files; Tasks: efood
; Source: "dbs\CONNECTOR.FDB"; DestDir: "{app}\dbs"; Flags: ignoreversion; Components: retail_files restaurant_files; Tasks: efood

Source: "epiloges.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "apouhkh.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "import.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "rantevou.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "ryumiseis.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "accounts.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "pelatologio.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "pvlhseis.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "tcpdevices.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "hotel.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: hotel_files
Source: "paraggelies.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: restaurant_files hotel_files
Source: "gasconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: erp_files retail_files; Tasks: gas
Source: "eshopconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: eshop
Source: "sync.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: sync
Source: "bldrconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: sqlserver
Source: "customer_display.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: display
Source: "..\callerid\CallerID.exe"; DestDir: "{app}\tapi"; Flags: ignoreversion; Tasks: callerid
Source: "..\sip_callerid\sipCallerID.exe"; DestDir: "{app}\tapi"; Flags: ignoreversion; Tasks: callerid

Source: "courier.ini"; DestDir: "{app}"; Flags: onlyifdoesntexist
Source: "..\..\Windows\Fonts\arialbd.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Arial Έντονα"
Source: "..\..\Windows\Fonts\arial.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Arial"
Source: "..\spos\spos.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: spos

[Dirs]
Name: "{app}";  Permissions: authusers-full
Name: "{app}\logs"

[Setup]
AppCopyright=SBZ systems ©2003-2025
AppName={cm:MyAppName}
DisableDirPage=no
AppVersion={#ApplicationVersion}
AppPublisher=SBZ systems
AppPublisherURL=https://www.sbzsystems.com
AppSupportURL=https://help.sbzsystems.com
AppUpdatesURL=https://www.sbzsystems.com
UninstallDisplayIcon={app}\images\desktop-main-icon.ico
UninstallDisplayName={cm:MyAppName}
DefaultDirName={pf}\SBZ systems\EMDI\
UsePreviousAppDir=true
WizardImageFile=images\emdisetup-met.bmp
ShowLanguageDialog=yes
OutputBaseFilename=emdi
AppID={{34DA3E25-64A3-4BD2-96DF-E9A0F0AE2DE1}
InfoAfterFile=
InfoBeforeFile=
VersionInfoCompany=SBZ systems
VersionInfoDescription=EMDI
VersionInfoCopyright=SBZ systems
VersionInfoProductName=EMDI
SetupIconFile=images\desktop-icon.ico
AppSupportPhone=+30 2118002930, +44 (0) 2037347158 
VersionInfoVersion={#ApplicationVersion}
ExtraDiskSpaceRequired=20
CompressionThreads=2
ShowUndisplayableLanguages=True
VersionInfoProductVersion={#ApplicationVersion}
WizardSmallImageFile=images\emdisetup-met-small.bmp

RestartIfNeededByRun=False
DisableProgramGroupPage=yes
UsePreviousGroup=False
AlwaysUsePersonalGroup=True
DefaultGroupName=SBZ EMDI

DisableWelcomePage=False
InternalCompressLevel=ultra64
LZMADictionarySize=1048576
LZMANumFastBytes=273
LZMAUseSeparateProcess=yes
SolidCompression=True
Compression=lzma2/ultra64
; WizardStyle=modern
DisableReadyMemo=True



 

[Icons]
Name: "{group}\{cm:EMDIOptions}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; IconIndex: 0
Name: "{group}\{cm:EMDISupport}"; Filename: "{cm:urlsupport}"; WorkingDir: "{app}"; IconFilename: "{app}\images\help-icon.ico"; IconIndex: 0
Name: "{group}\{cm:RemoteSupport}"; Filename: "{cm:urlremotesupport}"; WorkingDir: "{app}"; IconFilename: "{app}\images\sbzhelp.ico"; IconIndex: 0
Name: "{group}\{cm:Backup}"; Filename: "{app}\ryumiseis.exe"; WorkingDir: "{app}"; Parameters: "b"
Name: "{group}\{cm:License}"; Filename: "{app}\{cm:filelicence}"; WorkingDir: "{app}"
Name: "{group}\{cm:GettingStarted}"; Filename: "{cm:urlgettingstarted}"; WorkingDir: "{app}"; IconFilename: "{app}\images\help-icon.ico"; IconIndex: 0
Name: "{userdesktop}\{cm:GettingStarted}"; Filename: "{cm:urlgettingstarted}"; WorkingDir: "{app}"; IconFilename: "{app}\images\help-icon.ico"; IconIndex: 0
Name: "{userdesktop}\{cm:RemoteSupport}"; Filename: "{cm:urlremotesupport}"; WorkingDir: "{app}"; IconFilename: "{app}\images\sbzhelp.ico"
Name: "{userdesktop}\EMDI {cm:retail}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; Components: retail_files
Name: "{userdesktop}\EMDI {cm:restaurant}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; Components: restaurant_files
Name: "{userdesktop}\EMDI {cm:parking}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; Components: parking_files
Name: "{userdesktop}\EMDI {cm:hotel}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; Components: hotel_files
Name: "{userdesktop}\EMDI {cm:fitness}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; Components: fitness_files
Name: "{userdesktop}\EMDI {cm:garage}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; Components: garage_files
Name: "{userdesktop}\EMDI {cm:erp}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; Components: erp_files

[Languages]
Name: "Greek"; MessagesFile: "C:\projects\EmporikhSQL\Greek.isl"; LicenseFile: "LICENCE-Greek.TXT"
Name: "English"; MessagesFile: "C:\projects\EmporikhSQL\English.isl"; LicenseFile: "LICENCE-English.TXT"

[Run]
Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; Flags: nowait postinstall skipifsilent
Filename: "{%TEMP}\Firebird.exe"; Parameters: "/SILENT"; Flags: skipifsilent; Tasks: normal_database

Filename: "https://www.sbzsystems.com/download/success.php?lang={cm:lang}&app=erp"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Components: erp_files
Filename: "https://www.sbzsystems.com/download/success.php?lang={cm:lang}&app=retailpos"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Components: retail_files
Filename: "https://www.sbzsystems.com/download/success.php?lang={cm:lang}&app=restaurant"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Components: restaurant_files
Filename: "https://www.sbzsystems.com/download/success.php?lang={cm:lang}&app=hotel"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Components: hotel_files
Filename: "https://www.sbzsystems.com/download/success.php?lang={cm:lang}&app=fitness"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Components: fitness_files
Filename: "https://www.sbzsystems.com/download/success.php?lang={cm:lang}&app=park"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Components: parking_files
Filename: "https://www.sbzsystems.com/download/success.php?lang={cm:lang}&app=garage"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Components: garage_files

[UninstallDelete]
Type: files; Name: "{app}\settings.ini"
Type: filesandordirs; Name: "{app}\images"
Type: filesandordirs; Name: "{app}\personal"
Type: filesandordirs; Name: "{app}"

[InstallDelete]
Type: files; Name: "{%TEMP}\Firebird.exe"
Type: files; Name: "{app}\forms\map_all.htm"
Type: files; Name: "{app}\forms\map.htm"
Type: files; Name: "{app}\language\mydata\AAHTList.csv"
Type: files; Name: "{app}\language\mydata\cpv_codes.csv"
Type: files; Name: "{app}\language\mydata\taric_codes.csv"
Type: files; Name: "{app}\language\mydata\fhm_vat_en.csv"
Type: files; Name: "{app}\language\mydata\fhm_vat_el.csv"
Type: files; Name: "{app}\language\mydata\fhm_docs_en.csv"
Type: files; Name: "{app}\language\mydata\fhm_docs_el.csv"

Type: files; Name: "{app}\intl\fbintl.conf"; Tasks: normal_database
Type: files; Name: "{app}\intl\fbintl.dll"; Tasks: normal_database
Type: files; Name: "{app}\plugins\engine12.dll"; Tasks: normal_database
Type: files; Name: "{app}\ib_util.dll"; Tasks: normal_database
Type: files; Name: "{app}\fbclient.dll"; Tasks: normal_database
Type: files; Name: "{app}\icudt52.dll"; Tasks: normal_database
Type: files; Name: "{app}\icuin52.dll"; Tasks: normal_database
Type: files; Name: "{app}\icuuc52.dll"; Tasks: normal_database
Type: files; Name: "{app}\icudt52l.dat"; Tasks: normal_database
Type: files; Name: "{app}\gfix.exe"; Tasks: normal_database
Type: files; Name: "{app}\gbak.exe"; Tasks: normal_database
Type: files; Name: "{app}\firebird.conf"; Tasks: normal_database
Type: files; Name: "{app}\zlib1.dll"; Tasks: normal_database
Type: files; Name: "{app}\icuin52.dll"; Tasks: normal_database

[InnoIDE_Settings]
LogFileOverwrite=false

[Tasks]
Name: "sync"; Description: "{cm:sync}"; Flags: unchecked
Name: "stock"; Description: "{cm:stock}"; Flags: unchecked; Components: erp_files retail_files
; Name: "efood"; Description: "{cm:efood}"; Flags: unchecked; Components: retail_files restaurant_files
Name: "display"; Description: "{cm:display}"; Flags: unchecked; Components: hotel_files restaurant_files retail_files
Name: "spos"; Description: "{cm:spos}"; Flags: unchecked; Components: hotel_files restaurant_files retail_files
Name: "gas"; Description: "{cm:gas}"; Flags: unchecked; Components: erp_files retail_files
Name: "sqlserver"; Description: "{cm:sqlserver}"; Flags: unchecked
Name: "eshop"; Description: "{cm:eshop}"; Flags: unchecked
Name: "callerid"; Description: "{cm:callerid}"; Flags: unchecked; Components: erp_files fitness_files hotel_files garage_files restaurant_files retail_files
Name: "embedded_database"; Description: "{cm:embedded_database}"; GroupDescription: "{cm:database}"; Flags: exclusive
Name: "normal_database"; Description: "{cm:normal_database}"; GroupDescription: "{cm:database}"; Flags: exclusive unchecked

[UninstallRun]

[CustomMessages]
Greek.NewerVersionExists=Προσοχή!%n%nΒεβαιώσου πρώτα ότι δικαιούσαι αναβάθμιση (είναι δωρεάν μόνο για το 1ο έτος).%nΣε διαφορετική περίπτωση το πρόγραμμα θα κλειδώσει!%nΤηλεφώνησε στο +30 2118002930 για να ενημερωθείς ή στείλε email στο support@sbzsystems.com.%n%nΗ έκδοση που θέλεις να εγκαταστήσεις είναι: {#ApplicationVersion}%nΕνώ η τρέχουσα είναι:
Greek.MyAppName=EMDI - Εμπορική διαχείριση
Greek.printbutton=Εκτύπωση άδειας
Greek.licencefile=LICENCE-Greek.TXT
Greek.SetupTypeTitle=Επιλογή έκδοσης
Greek.SetupTypeDescription=Επίλεξε την έκδοση που ταιριάζει καλύτερα στις ανάγκες σου.
Greek.erp=Εμπορική διαχείριση - ERP
Greek.retail=Εντατική λιανική
Greek.restaurant=Εστίαση
Greek.hotel=Φιλοξενία - Καταλύματα
Greek.parking=Parking 
Greek.fitness=Ευεξία - Γυμναστήρια
Greek.garage=Συνεργεία αυτοκινήτων 

Greek.sync=Συγχρονισμός βάσεων
Greek.stock=Κινητή διαχείριση αποθεμάτων
; Greek.efood=Σύνδεση με υπηρεσία delivery
Greek.display=Οθόνη πελάτη
Greek.spos=Γέφυρα σύνδεσης με συσκευές RS-232
Greek.gas=Σύνδεση με εισροών εκροών
Greek.sqlserver=Σύνδεση eshop με SQL Server
Greek.eshop=Σύνδεση eshop με γέφυρα
Greek.callerid=Αναγνώριση κλήσης
Greek.embedded_database=Ενσωματωμένη
Greek.normal_database=Εγκατάσταση
Greek.database=Βάση δεδομένων
Greek.lang=el

Greek.EMDIOptions=EMDI επιλογές
Greek.EMDISupport=EMDI υποστήριξη
Greek.RemoteSupport=Απομακρυσμένη υποστήριξη
Greek.Backup=Αντίγραφο ασφαλείας
Greek.License=Άδεια χρήσης
Greek.GettingStarted=Ξεκινώντας με την EMDI – Οδηγίες χρήσης

Greek.urlsupport=https://www.sbzsystems.com/el/emdi-ipostirixi/
Greek.urlremotesupport=https://www.sbzsystems.com/el/apomakrismeni-ipostirixi/
Greek.urlbackup=https://www.sbzsystems.com/el/ryumiseis/
Greek.urllicence=https://www.sbzsystems.com/el/licensing/
Greek.urlgettingstarted=https://www.sbzsystems.com/download/Getting_started_with_EMDI_gr.pdf
Greek.filelicence=LICENCE-Greek.TXT


 
 

English.NewerVersionExists=Warning!%n%nFirst make sure that you are qualified to upgrade (it is only free for the first year).%nOtherwise the program will be locked!%nCall us now +44 (0) 2037347158 to be informed or sent an email to support@sbzsystems.com.%n%nThe version you want to install is: {#ApplicationVersion}%nCurrent version:
English.MyAppName=EMDI - Business Management
English.printbutton=Print agreement
English.licencefile=LICENCE-English.TXT
English.SetupTypeTitle=Version selection
English.SetupTypeDescription=Choose the version that best suits your needs.
English.erp=Business Management - ERP
English.retail=Retail POS
English.restaurant=Restaurant 
English.hotel=Hospitality - Accommodation 
English.parking=Parking
English.fitness=Fitness - Gyms
English.garage=Automotive repair shops

English.sync=Sync databases
English.stock=Mobile inventory management
; English.efood=Delivery service connection
English.display=Customer display
English.spos=RS-232 device connector
English.gas=Fuel inflows, outflows connection
English.sqlserver=Eshop connection with SQL Server
English.eshop=Eshop connection with bridge
English.callerid=Caller ID
English.embedded_database=Embedded
English.normal_database=Install
English.database=Database
English.lang=en

English.EMDIOptions=EMDI main menu
English.EMDISupport=EMDI help
English.RemoteSupport=Remote support
English.Backup=Backup
English.License=Licensing
English.GettingStarted=Getting started with EMDI - Manual


English.urlsupport=https://www.sbzsystems.com/emdi-support/
English.urlremotesupport=https://www.sbzsystems.com/remote-support/
English.urlbackup=https://www.sbzsystems.com/backup/
English.urllicence=https://www.sbzsystems.com/licensing/
English.urlgettingstarted=https://www.sbzsystems.com/download/Getting_started_with_EMDI_uk.pdf
English.filelicence=LICENCE-English.TXT




[ThirdParty]
CompileLogMethod=append

[Registry]
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "pvlhseis.exe"; ValueData: "11000"; Flags: createvalueifdoesntexist
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "pelatologio.exe"; ValueData: "11000"; Flags: createvalueifdoesntexist
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "epiloges.exe"; ValueData: "11000"; Flags: createvalueifdoesntexist
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "customer_display.exe"; ValueData: "11000"; Flags: createvalueifdoesntexist

[INI]

Filename: "{app}\pos.tmp"; Section: "settings"; Key: "style"; String: "erp"; Flags: createkeyifdoesntexist; Components: erp_files; Check: MyProgCheck
Filename: "{app}\pos.tmp"; Section: "settings"; Key: "style"; String: "restaurant"; Flags: createkeyifdoesntexist; Components: restaurant_files; Check: MyProgCheck
Filename: "{app}\pos.tmp"; Section: "settings"; Key: "style"; String: "retail"; Flags: createkeyifdoesntexist; Components: retail_files; Check: MyProgCheck
Filename: "{app}\pos.tmp"; Section: "settings"; Key: "style"; String: "hotel"; Flags: createkeyifdoesntexist; Components: hotel_files; Check: MyProgCheck
Filename: "{app}\pos.tmp"; Section: "settings"; Key: "style"; String: "fitness"; Flags: createkeyifdoesntexist; Components: fitness_files; Check: MyProgCheck
Filename: "{app}\pos.tmp"; Section: "settings"; Key: "style"; String: "parking"; Flags: createkeyifdoesntexist; Components: parking_files; Check: MyProgCheck
Filename: "{app}\pos.tmp"; Section: "settings"; Key: "style"; String: "garage"; Flags: createkeyifdoesntexist; Components: garage_files; Check: MyProgCheck



Filename: "{app}\settings.ini"; Section: "General"; Key: "updateurl"; String: "www.sbzsystems.com/download/emdi.htm"

Filename: "{app}\personal\{username}\settings.ini"; Section: "General"; Key: "theme"; String: "dark"; Flags: createkeyifdoesntexist; Components: fitness_files parking_files garage_files
Filename: "{app}\personal\{username}\settings.ini"; Section: "General"; Key: "theme"; String: "Darker"; Flags: createkeyifdoesntexist; Components: restaurant_files retail_files
Filename: "{app}\personal\{username}\settings.ini"; Section: "General"; Key: "theme"; String: "ice"; Flags: createkeyifdoesntexist; Components: erp_files hotel_files

Filename: "{app}\settings.ini"; Section: "DB"; Key: "path"; String: "{app}\dbs\main.fdb"; Flags: createkeyifdoesntexist
Filename: "{app}\settings.ini"; Section: "General"; Key: "language"; String: "{cm:lang}"; Flags: createkeyifdoesntexist

Filename: "{app}\emdi_activity\activity.ini"; Section: "General"; Key: "customercode"; String: "/"; Components: fitness_files
Filename: "{app}\emdi_activity\activity.ini"; Section: "General"; Key: "productcode"; String: "000"; Components: fitness_files
Filename: "{app}\emdi_park\park.ini"; Section: "General"; Key: "customercode"; String: "/"; Components: parking_files
Filename: "{app}\emdi_park\park.ini"; Section: "General"; Key: "productcode"; String: "000"; Components: parking_files
Filename: "{app}\settings.ini"; Section: "DB"; Key: "host"; String: ""; Tasks: embedded_database
Filename: "{app}\settings.ini"; Section: "DB"; Key: "library"; String: "{app}\fbclient.dll"; Flags: createkeyifdoesntexist; Tasks: embedded_database
Filename: "{app}\settings.ini"; Section: "DB"; Key: "library"; String: ""; Flags: createkeyifdoesntexist; Tasks: normal_database

Filename: "{app}\settings.ini"; Section: "syncDB"; Key: "host"; String: ""; Tasks: embedded_database
Filename: "{app}\settings.ini"; Section: "syncDB"; Key: "library"; String: "{app}\fbclient.dll"; Flags: createkeyifdoesntexist; Tasks: embedded_database
Filename: "{app}\settings.ini"; Section: "syncDB"; Key: "library"; String: ""; Flags: createkeyifdoesntexist; Tasks: normal_database
Filename: "{app}\settings.ini"; Section: "Form"; Key: "country"; String: "GR"; Flags: createkeyifdoesntexist; Languages: Greek



[Types]
Name: "erp"; Description: {cm:erp}
Name: "retail"; Description: {cm:retail}
Name: "restaurant"; Description: {cm:restaurant}
Name: "hotel"; Description: {cm:hotel}
Name: "parking"; Description: {cm:parking}
Name: "fitness"; Description: {cm:fitness}
Name: "garage"; Description: {cm:garage}

[Components]
Name: "erp_files"; Description: "Files for business management"; Types: erp
Name: "retail_files"; Description: "Files for Intensive Retail"; Types: retail
Name: "restaurant_files"; Description: "Files for restaurant"; Types: restaurant
Name: "hotel_files"; Description: "Files for hotel"; Types: hotel
Name: "parking_files"; Description: "Files for parking"; Types: parking
Name: "fitness_files"; Description: "Files for fitness"; Types: fitness
Name: "garage_files"; Description: "Files for automotive repair shops"; Types: garage

[Code]
/////////////////////////////////////////////////////////////////////
var 
    run_upgrade,ok_upgrade,fmunotexistv:boolean;
    MyProgChecked: Boolean;
    MyProgCheckResult: Boolean;
    TypesPage: TWizardPage;    
    erpButton: TNewRadioButton;
    retailButton: TNewRadioButton;
    restaurantButton: TNewRadioButton;
    hotelButton: TNewRadioButton;
    parkingButton: TNewRadioButton;
    fitnessButton: TNewRadioButton;
    garageButton: TNewRadioButton;

function MyProgCheck(): Boolean;
begin     

 // if not MyProgChecked then begin
  //  MyProgCheckResult := not DirExists(ExpandConstant('{app}\personal'));    
  // MyProgChecked := True;
  // end;

  // Result := MyProgCheckResult;
   Result := not DirExists(ExpandConstant('{app}\personal'));    

end;
   
function fmunotexist: boolean;
begin
   result:=fmunotexistv;
end;

/////////////////////////////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
var 
  ResultCode: Integer;
  ProgressPage: TOutputProgressWizardPage;
  begin       

  if ok_upgrade and (CurStep=ssInstall) then run_upgrade:=true;
  if run_upgrade and (CurStep=ssPostInstall) then 
         Exec(ExpandConstant('{app}\upgrade\dbupgrade.exe'), '{app}\dbs\main.fdb', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
  
  if (CurStep=ssInstall) then begin
    fmunotexistv:=true;             
    if DirExists(ExpandConstant('{app}\fmu')) then fmunotexistv:=false; 
  end;
    
end;

function GetHKLM: string;
begin
  if IsWin64 then
    Result := 'SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1'
  else
    Result := 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1';

  StringChangeEx(result, '{{', '{', True);
end;

function IsRunningOnTS: Boolean;
var
  lWinVer: TWindowsVersion;
begin
  GetWindowsVersionEx(lWinVer);
  Result := (lWinVer.SuiteMask and VER_SUITE_TERMINAL) <> 0;
end;

//ΤΕΡΜΑΤΙΣΜΟΣ ΕΦΑΡΜΟΓΗΣ
function InitializeSetup(): Boolean;
var 
ErrorCode: Integer;
Version: String;
begin

if not IsRunningOnTS then begin

ShellExec('open','taskkill.exe','/f /im epiloges.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "epiloges"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im pvlhseis.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "pvlhseis"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im pelatologio.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "pelatologio"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im apouhkh.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "apouhkh"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im rantevou.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "rantevou"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im sync.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "sync"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im tcpdevices.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "tcpdevices"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im ryumiseis.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "ryumiseis"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im hotel.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "hotel"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im accounts.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "accounts"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im import.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "import"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_park.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_park"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_gym.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_gym"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_activity.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_activity"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im paraggelies.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "paraggelies"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im eshopconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "eshopconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im gasconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "gasconnector"','',SW_HIDE,ewNoWait,ErrorCode);

// ShellExec('open','taskkill.exe','/f /im efoodconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
// ShellExec('open','tskill.exe',' "efoodconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im bldrconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "bldrconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im customer_display.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "customer_display"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_stock.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_stock"','',SW_HIDE,ewNoWait,ErrorCode);

end;

// ΕΥΡΕΣΗ ΤΡΕΧΟΥΣΑΣ ΕΚΔΟΣΗΣ ΓΙΑ ΣΥΓΚΡΙΣΗ ΩΣΤΕ ΝΑ ΒΓΕΙ ΜΗΝΥΜΑ
ok_upgrade:=false;
if not WizardSilent then
if RegValueExists(HKEY_LOCAL_MACHINE,GetHKLM, 'DisplayVersion') then begin

      RegQueryStringValue(HKEY_LOCAL_MACHINE,GetHKLM, 'DisplayVersion', Version);
      MsgBox(ExpandConstant('{cm:NewerVersionExists} '+Version), mbInformation, MB_OK);

end else begin

end;
Result := True;

end;

function InitializeUninstall(): Boolean;
var 
ErrorCode: Integer;
begin

if not IsRunningOnTS then begin

ShellExec('open','taskkill.exe','/f /im epiloges.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "epiloges"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im pvlhseis.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "pvlhseis"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im pelatologio.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "pelatologio"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im apouhkh.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "apouhkh"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im rantevou.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "rantevou"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im sync.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "sync"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im tcpdevices.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "tcpdevices"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im ryumiseis.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "ryumiseis"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im hotel.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "hotel"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im accounts.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "accounts"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im import.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "import"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_park.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_park"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_gym.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_gym"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_activity.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_activity"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im paraggelies.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "paraggelies"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im eshopconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "eshopconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im gasconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "gasconnector"','',SW_HIDE,ewNoWait,ErrorCode);

// ShellExec('open','taskkill.exe','/f /im efoodconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
// ShellExec('open','tskill.exe',' "efoodconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im bldrconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "bldrconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im customer_display.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "customer_display"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im emdi_stock.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "emdi_stock"','',SW_HIDE,ewNoWait,ErrorCode);

end;
result := True;

end;

// BUTTON ΕΚΤΥΠΩΣΗΣ ΑΔΕΙΑΣ
var PrintButton: TButton;

procedure PrintButtonClick(Sender: TObject);
var ResultCode :integer;
begin
ExtractTemporaryFile(ExpandConstant('{cm:licencefile}'));
ShellExec('', ExpandConstant('{tmp}\'+ExpandConstant('{cm:licencefile}')),     '', '', SW_SHOW, ewNoWait, ResultCode);
end;

procedure InitializeWizard();
begin
    PrintButton := TButton.Create(WizardForm);
    PrintButton.Caption := ExpandConstant('{cm:printbutton}');
    PrintButton.Left := WizardForm.InfoAfterPage.Left+10;
    PrintButton.width := 109;
    PrintButton.Top := WizardForm.InfoAfterPage.Height + 88;
    PrintButton.OnClick := @PrintButtonClick;
    PrintButton.Parent := WizardForm.NextButton.Parent;


    // Create custom "types" page with radio buttons
    TypesPage := CreateCustomPage(wpSelectDir, ExpandConstant('{cm:SetupTypeTitle}'), ExpandConstant('{cm:SetupTypeDescription}'));

    erpButton := TNewRadioButton.Create(TypesPage);
    erpButton.Parent := TypesPage.Surface;
    erpButton.Caption := ExpandConstant('{cm:erp}');
    erpButton.Height := ScaleY(erpButton.Height);
    erpButton.width := 250;
    erpButton.Checked := True;

    retailButton := TNewRadioButton.Create(TypesPage);
    retailButton.Parent := TypesPage.Surface;
    retailButton.Caption := ExpandConstant('{cm:retail}');
    retailButton.Height := ScaleY(retailButton.Height);
    retailButton.width := 250;  
    retailButton.Top := erpButton.Top + erpButton.Height + ScaleY(16);      
    retailButton.Checked := (WizardForm.TypesCombo.ItemIndex = 1);

    restaurantButton := TNewRadioButton.Create(TypesPage);
    restaurantButton.Parent := TypesPage.Surface;
    restaurantButton.Caption :=  ExpandConstant('{cm:restaurant}');
    restaurantButton.Height := ScaleY(restaurantButton.Height);
    restaurantButton.width := 250;  
    restaurantButton.Top := retailButton.Top + retailButton.Height + ScaleY(16);    
    restaurantButton.Checked := (WizardForm.TypesCombo.ItemIndex = 2);

    hotelButton := TNewRadioButton.Create(TypesPage);
    hotelButton.Parent := TypesPage.Surface;
    hotelButton.Caption := ExpandConstant('{cm:hotel}');
    hotelButton.Height := ScaleY(hotelButton.Height);
    hotelButton.width := 250;  
    hotelButton.Top := restaurantButton.Top + restaurantButton.Height + ScaleY(16);    
    hotelButton.Checked := (WizardForm.TypesCombo.ItemIndex = 3);

    parkingButton := TNewRadioButton.Create(TypesPage);
    parkingButton.Parent := TypesPage.Surface;
    parkingButton.Caption := ExpandConstant('{cm:parking}');
    parkingButton.Height := ScaleY(parkingButton.Height);
    parkingButton.width := 250;  
    parkingButton.Top := hotelButton.Top + hotelButton.Height + ScaleY(16);    
    parkingButton.Checked := (WizardForm.TypesCombo.ItemIndex = 4)      

    fitnessButton := TNewRadioButton.Create(TypesPage);
    fitnessButton.Parent := TypesPage.Surface;
    fitnessButton.Caption := ExpandConstant('{cm:fitness}');
    fitnessButton.Height := ScaleY(fitnessButton.Height);
    fitnessButton.width := 250;  
    fitnessButton.Top := parkingButton.Top + parkingButton.Height + ScaleY(16);
    fitnessButton.Checked := (WizardForm.TypesCombo.ItemIndex = 5)

    garageButton := TNewRadioButton.Create(TypesPage);
    garageButton.Parent := TypesPage.Surface;
    garageButton.Caption := ExpandConstant('{cm:garage}');
    garageButton.Height := ScaleY(garageButton.Height);
    garageButton.width := 250; 
    garageButton.Top := fitnessButton.Top + fitnessButton.Height + ScaleY(16);
    garageButton.Checked := (WizardForm.TypesCombo.ItemIndex = 6)
 
    { Hide "types" combo }
    WizardForm.TypesCombo.Visible := False;
    WizardForm.IncTopDecHeight(WizardForm.ComponentsList,-(WizardForm.ComponentsList.Top - WizardForm.TypesCombo.Top));

end;

procedure CurPageChanged(CurPage: Integer);
begin

  PrintButton.Visible := CurPage = wpLicense;
  
   if CurPage = wpFinished then
    WizardForm.RunList.Visible := False;
    
end;

 // Create custom "types" page with radio buttons
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  // When leaving "types" page, update hidden "types" combo box according to user selection... }
  if CurPageID = TypesPage.ID then
  begin
    if erpButton.Checked then WizardForm.TypesCombo.ItemIndex := 0
      else 
    if retailButton.Checked then WizardForm.TypesCombo.ItemIndex := 1
      else 
    if restaurantButton.Checked then WizardForm.TypesCombo.ItemIndex := 2
      else
    if hotelButton.Checked then WizardForm.TypesCombo.ItemIndex := 3
      else 
    if parkingButton.Checked then WizardForm.TypesCombo.ItemIndex := 4
      else 
    if fitnessButton.Checked then WizardForm.TypesCombo.ItemIndex := 5
      else 
    if garageButton.Checked then WizardForm.TypesCombo.ItemIndex := 6
      else WizardForm.TypesCombo.ItemIndex := 0;

    // .. and have Inno Setup update components selection accordingly
    WizardForm.TypesCombo.OnChange(WizardForm.TypesCombo);
  end;
  Result := True;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  // Skip "components" page
  Result := (PageID = wpSelectComponents);
end;