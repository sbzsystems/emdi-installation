```ini
;*** Merged Inno Setup Script ***

[Setup]
AppCopyright=SBZ systems ©2003-2025
; The following AppId line will uniquely identify this program.
; Don't use the same AppId value in more than one setup package.
AppId={{%AppID}}
AppName={cm:MyAppName}
DisableDirPage=no
AppVersion={#ApplicationVersion}
AppPublisher=SBZ systems
AppPublisherURL=https://www.sbzsystems.com
AppSupportURL=https://help.sbzsystems.com
AppUpdatesURL=https://www.sbzsystems.com
UninstallDisplayIcon={app}\epiloges.exe
UninstallDisplayName={cm:MyAppName}
DefaultDirName={pf}\SBZ systems\{cm:DefaultDirName}\
UsePreviousAppDir=true
WizardImageFile=images\emdisetup-met.bmp
ShowLanguageDialog=yes
OutputBaseFilename={cm:OutputBaseFilename}
InfoAfterFile=
InfoBeforeFile=
VersionInfoCompany=SBZ systems
VersionInfoDescription={cm:VersionInfoDescription}
VersionInfoCopyright=SBZ systems
VersionInfoProductName={cm:ProductName}
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
DefaultGroupName=SBZ EMDI {cm:DefaultGroupName}
DisableWelcomePage=False
InternalCompressLevel=ultra64
LZMADictionarySize=1048576
LZMANumFastBytes=273
LZMAUseSeparateProcess=yes
SolidCompression=True
Compression=lzma2/ultra64

[Languages]
Name: "Greek"; MessagesFile: "compiler:Languages\Greek.isl"; LicenseFile: "LICENCE-Greek.TXT"
Name: "English"; MessagesFile: "compiler:Default.isl"; LicenseFile: "LICENCE-English.TXT"

[CustomMessages]
;*** Common Messages ***
Greek.MyAppName=EMDI - {cm:BusinessManagementType}
English.MyAppName=EMDI - {cm:BusinessManagementType}
Greek.NewerVersionExists=Προσοχή!%n%nΒεβαιώσου πρώτα ότι δικαιούσαι αναβάθμιση (είναι δωρεάν μόνο για το 1ο έτος).%nΣε διαφο[...]
English.NewerVersionExists=Warning!%n%nFirst make sure that you are qualified to upgrade (it is only free for the first year).%nOtherwise the program will be locked!%nCall us now +44 (0) 2037347158 to[...]
English.printbutton=Print agreement
Greek.printbutton=Εκτύπωση άδειας
English.licencefile=LICENCE-English.TXT
Greek.licencefile=LICENCE-Greek.TXT

;*** Installation Type Messages ***
Greek.InstallType=Επιλέξτε Τύπο Εγκατάστασης:
English.InstallType=Select Installation Type:
Greek.Business=Επιχείρηση
English.Business=Business
Greek.Retail=Λιανική
English.Retail=Retail
Greek.Restaurant=Εστιατόριο
English.Restaurant=Restaurant

;*** EMDI Specific Messages ***
Greek.BusinessManagementType=Εμπορική διαχείριση
English.BusinessManagementType=Business Management
Greek.DefaultDirName=EMDI
English.DefaultDirName=EMDI
Greek.DefaultGroupName=
English.DefaultGroupName=
Greek.VersionInfoDescription=EMDI
English.VersionInfoDescription=EMDI
Greek.OutputBaseFilename=emdi
English.OutputBaseFilename=emdi
Greek.AppID={34DA3E25-64A3-4BD2-96DF-E9A0F0AE2DE1}
English.AppID={34DA3E25-64A3-4BD2-96DF-E9A0F0AE2DE1}
Greek.ProductName=EMDI Business
English.ProductName=EMDI Business

;*** EMDI Retail POS Specific Messages ***
Greek.RetailPOSName=Retail POS
English.RetailPOSName=Retail POS
Greek.RetailDirName=EMDI Retail POS
English.RetailDirName=EMDI Retail POS
Greek.RetailGroupName=Retail POS
English.RetailGroupName=Retail POS
Greek.RetailVersionInfoDescription=EMDI Retail POS
English.RetailVersionInfoDescription=EMDI Retail POS
Greek.RetailOutputBaseFilename=emdi_retail_pos
English.RetailOutputBaseFilename=emdi_retail_pos
Greek.RetailAppID={8B106595-ECDA-453B-96DE-382BFA6599F1}
English.RetailAppID={8B106595-ECDA-453B-96DE-382BFA6599F1}
Greek.RestaurantName=Restaurant
English.RestaurantName=Restaurant

;*** EMDI Restaurant Specific Messages ***
Greek.RestaurantDirName=EMDI Restaurant
English.RestaurantDirName=EMDI Restaurant
Greek.RestaurantGroupName=Restaurant
English.RestaurantGroupName=Restaurant
Greek.RestaurantVersionInfoDescription=EMDI Restaurant
English.RestaurantVersionInfoDescription=EMDI Restaurant
Greek.RestaurantOutputBaseFilename=emdi_restaurant
English.RestaurantOutputBaseFilename=emdi_restaurant
Greek.RestaurantAppID={3BD2F47C-A647-421C-AA6B-8CFEC0813139}
English.RestaurantAppID={3BD2F47C-A647-421C-AA6B-8CFEC0813139}

[Tasks]
;*** Installation Type Selection ***
Name: InstallBusiness; Description: {cm:Business} {cm:BusinessManagementType}; GroupDescription: {cm:InstallType}; Flags: exclusive unchecked
Name: InstallRetail; Description: {cm:Retail} {cm:RetailPOSName}; GroupDescription: {cm:InstallType}; Flags: exclusive unchecked
Name: InstallRestaurant; Description: {cm:Restaurant} {cm:RestaurantName}; GroupDescription: {cm:InstallType}; Flags: exclusive unchecked

;*** Common Tasks ***
Name: sync; Description: {cm:SyncDatabases}; Flags: unchecked
Name: stock; Description: {cm:MobileInventoryManagement}; Flags: unchecked;  Group: OptionalTasks;
Name: display; Description: {cm:CustomerDisplay}; Flags: unchecked; Group: OptionalTasks;
Name: spos; Description: {cm:RS232DeviceConnector}; Flags: unchecked; Group: OptionalTasks;

;*** EMDI Specific Tasks ***
Name: gas; Description: {cm:FuelInflowsOutflowsConnection}; Flags: unchecked; Group: EMDI_Tasks; OnlyBelowVersion: 6.0; Group: OptionalTasks;
Name: sqlserver; Description: {cm:EshopSQLServerConnection}; Flags: unchecked; Group: EMDI_Tasks; OnlyBelowVersion: 6.0; Group: OptionalTasks;
Name: eshop; Description: {cm:EshopBridgeConnection}; Flags: unchecked; Group: EMDI_Tasks; OnlyBelowVersion: 6.0; Group: OptionalTasks;
Name: Embedded_database; Description: {cm:Embedded}; GroupDescription: {cm:Database}; Flags: exclusive; Group: DB; OnlyBelowVersion: 6.0;
Name: normal_database; Description: {cm:Normal}; GroupDescription: {cm:Database}; Flags: exclusive unchecked; Group: DB; OnlyBelowVersion: 6.0;

;*** EMDI Retail POS Specific Tasks ***
Name: tcpsync; Description: {cm:CommunicationMaintenance}; Flags: unchecked; Group: Retail_Tasks; OnlyBelowVersion: 6.0; Group: OptionalTasks;
Name: Embedded_database_Retail; Description: {cm:Embedded}; GroupDescription: {cm:Database}; Flags: exclusive; Group: DB_Retail; OnlyBelowVersion: 6.0;
Name: normal_database_Retail; Description: {cm:Normal}; GroupDescription: {cm:Database}; Flags: exclusive unchecked; Group: DB_Retail; OnlyBelowVersion: 6.0;

;*** EMDI Restaurant Specific Tasks ***
Name: efood; Description: {cm:DeliveryServiceConnection}; Flags: unchecked; Group: Restaurant_Tasks; OnlyBelowVersion: 6.0; Group: OptionalTasks;
Name: Embedded_database_Restaurant; Description: {cm:Embedded}; GroupDescription: {cm:Database}; Flags: exclusive; Group: DB_Restaurant; OnlyBelowVersion: 6.0;
Name: normal_database_Restaurant; Description: {cm:Normal}; GroupDescription: {cm:Database}; Flags: exclusive unchecked; Group: DB_Restaurant; OnlyBelowVersion: 6.0;

[CustomMessages]
;*** Task Name Messages ***
Greek.OptionalTasks=Επιπλέον Λειτουργίες
English.OptionalTasks=Optional Features

;*** Common Task Messages ***
Greek.SyncDatabases=Συγχρονισμός βάσεων
English.SyncDatabases=Sync databases
Greek.MobileInventoryManagement=Κινητή διαχείριση αποθεμάτων
English.MobileInventoryManagement=Mobile inventory management
Greek.CustomerDisplay=Οθόνη πελάτη
English.CustomerDisplay=Customer display
Greek.RS232DeviceConnector=Γέφυρα σύνδεσης με συσκευές RS-232
English.RS232DeviceConnector=RS-232 device connector
Greek.Embedded=Embedded
English.Embedded=Embedded
Greek.Normal=Normal
English.Normal=Normal
Greek.Database=Database
English.Database=Database

;*** EMDI Specific Task Messages ***
Greek.FuelInflowsOutflowsConnection=Σύνδεση με εισροών εκροών
English.FuelInflowsOutflowsConnection=Fuel inflows, outflows connection
Greek.EshopSQLServerConnection=Σύνδεση eshop με SQL Server
English.EshopSQLServerConnection=Eshop connection with SQL Server
Greek.EshopBridgeConnection=Σύνδεση eshop με γέφυρα
English.EshopBridgeConnection=Eshop connection with bridge

;*** EMDI Retail POS Specific Task Messages ***
Greek.CommunicationMaintenance=Επικοινωνία/Συντήρηση
English.CommunicationMaintenance=Communication/Maintenance

;*** EMDI Restaurant Specific Task Messages ***
Greek.DeliveryServiceConnection=Σύνδεση με υπηρεσία delivery
English.DeliveryServiceConnection=Delivery service connection

[Files]
;*** Common Files ***
Source: "epiloges.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "apouhkh.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "ryumiseis.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "accounts.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "pelatologio.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "pvlhseis.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "tcpdevices.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "import.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "sync.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: sync
Source: "courier.ini"; DestDir: "{app}"; Flags: onlyifdoesntexist
Source: "..\spos\spos.exe"; DestDir: "{app}"; DestName: "spos.exe"; Flags: ignoreversion; Tasks: spos
Source: "customer_display.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: display
Source: "C:\projects\callerid\CallerID.exe"; DestDir: "{app}\tapi"; Flags: ignoreversion
Source: "C:\projects\sip_callerid\sipCallerID.exe"; DestDir: "{app}\tapi"; Flags: ignoreversion
Source: "images\desktop-main-icon.ico"; DestDir: "{app}\images"; Flags: ignoreversion
Source: "images\sbzhelp.ico"; DestDir: "{app}\images"; Flags: ignoreversion
Source: "help.ico"; DestDir: "{app}\images"; Flags: ignoreversion
Source: "images\splash_1.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\splash_2.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\splash_3.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\splash_4.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "upgrade\sqlupgrade.sql"; DestDir: "{app}\upgrade"; Flags: ignoreversion
Source: "upgrade\sqlupgrade8_12.sql"; DestDir: "{app}\upgrade"; Flags: ignoreversion
Source: "upgrade\dbupgrade.exe"; DestDir: "{app}\upgrade"; Flags: ignoreversion
Source: "upgrade\innoextract.exe"; DestDir: "{app}\upgrade"; Flags: ignoreversion
Source: "C:\Users\solon\AppData\Local\TMS Setup\Products\tms.vcl.uipack\Edge Support\x86\WebView2Loader_x86.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "keyboard.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "forms\variables.csv"; DestDir: "{app}\forms\"; Flags: ignoreversion
Source: "forms\product.htm"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\cashier.htm"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "autocomplete.sql"; DestDir: "{app}"; Flags: ignoreversion
Source: "images\sbz.jpg"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\menu.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\full_menu.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\emdi-30days.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\emdi-30days_en.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\none.png"; DestDir: "{app}\images\"; Flags: ignoreversion
Source: "images\shifts_bg.jpg"; DestDir: "{app}\images\"; Flags: onlyifdoesntexist
Source: "audio\ok.wav"; DestDir: "{app}\audio\"; Flags: ignoreversion
Source: "..\..\Users\Solon\Downloads\Firebird.exe"; DestDir: "{%TEMP}"; Flags: deleteafterinstall; Tasks: normal_database,normal_database_Retail,normal_database_Restaurant
Source: "forms\templates\Φόρμα A4 - Κάθετη - 4.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 5.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη με φωτογραφίες - 6.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Οριζόντια - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Οριζόντια - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A5 - Οριζόντια - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A5 - Οριζόντια - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A5 - Οριζόντια - 3.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου 80mm - Ρολό.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου A4 - 2.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου A5.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα κειμένου Α4 - 1.txt"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φορτωτική.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 60mm - Ρολό - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - Loyalties.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - Τιμολόγιο.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη - 3.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα 80mm - Ρολό - Τιμολόγιο με QR.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Φόρμα A4 - Κάθετη με QR.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: Greek
Source: "forms\templates\Form 80mm - Roll - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form 80mm - Roll - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form 80mm - Roll - Invoice.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form 80mm - Roll - Loyalties.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form A4 - Portrait - 1.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form A4 - Portrait - 2.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
Source: "forms\templates\Form A4 - Portrait - 3.html"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion; Languages: English
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
Source: "forms\templates\users_barcode_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_1_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_2_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_1_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\sales_barcode_2_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_customers_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_analysis_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_basic_en.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_customers_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_analysis_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\accounts_basic_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
Source: "forms\templates\scale_data_el.fr3"; DestDir: "{app}\forms\templates\"; Flags: ignoreversion
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
Source: "reports\01.Είδη ανά πελάτη - προμηθευτή.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\01.Είδη ανά πελάτη - προμηθευτή - παραστατικό.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\01.Πελάτες - προμηθευτές ανά είδος.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\02.Τζίρος ανά χρήστη βάσει παραγγελίας.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\02.Τζίρος ανά χρήστη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\02.Τζίρος ανά χρήστη 12μηνο.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\02.Χρόνοι χρηστών παραγγελιών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\02.Παραγγελίες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\03.Λίστα επιταγών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\04.Κέρδος ανά παραστατικό.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\04.Γραμμές παραστατικών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\04.Γραμμές παραστατικών (Κέρδος).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\04.Παραστατικά.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\05.Σύνολα αγορών ανά προμηθευτή.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\05.Σύνολα πωλήσεων ανά πελάτη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\05.Σύνολα αγορών ανά μήνα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\05.Σύνολα πωλήσεων ανά μήνα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\05.Σύνολα κινήσεων ανά πελάτη - προμηθευτή.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\05.Σύνολα πωλήσεων ανά πελάτη - 10 Καλύτεροι.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\06.Σύνολα πελατών - ειδών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\07.Αγορές - πωλήσεις προϊόντων.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\09.Έσοδα - έξοδα (Ανάλυση ΦΠΑ).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\09.Έσοδα - έξοδα (ΦΠΑ, Παραστατικά).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\09.Έσοδα - έξοδα 12 μηνών ανά μήνα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\09.Έσοδα - έξοδα αναλυτικά.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\10.Ταμείο (Ανάλυση ΦΠΑ).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\10.Ταμείο (ΦΠΑ, Παραστατικά).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\11.Προϊόντα - αγορές ανά υποκατηγορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\11.Προϊόντα - αγορές πωλήσεις ανά υποκατηγορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\11.Προϊόντα - πωλήσεις ανά υποκατηγορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\11.Προϊόντα - πωλήσεις.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\11.Προϊόντα - πωλήσεις ανά παραστατικό.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\11.Προϊόντα - κερδοφορία.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\11.Περιβαλλοντικό τέλος.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\12.Υπολοιπα.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\14.Διαθεσιμότητες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\15.Προμήθεια ανά χρήστη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\16.Παρτίδες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\17.Γραμμές με σειριακούς.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\18.Loyalties ανά πελάτη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\18.Loyalties επιλεγμένου πελάτη.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\19.Βάρδιες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\21.Χιλιόμετρα-Εργασίες.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\21.Οχήματα πελατών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\22.Σύνδεση παρτίδων.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\24.Συγκεντρωτική τιμολογίων.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\25.Παραγγελίες σε προμηθευτές.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\26.Κινήσεις καρτών.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: Greek
Source: "reports\01.Customers - suppliers per product.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\01.Products per customer - supplier.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\02.Orders time.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\02.Orders.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\02.User turnover.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\02.User turnover based on order.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\02.User turnover 12 months.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\03.User turnover based on order.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\03.User turnover 12 months.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\04.Profit per document.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\04.Documents totals per customer - supplier.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\04.Documents lines.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\04.Documents.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\05.Purchases totals per supplier.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\05.Purchases totals per month.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\06.Sales totals per month.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\06.Sales totals per customer.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\06.Sales totals per customer - Top 10.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\07.Customers - products totals.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\08.Products transactions.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\09.Revenue - Expenses (VAT analysis).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\09.Revenue - Expenses (12 months).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\09.Revenue - Expenses (VAT, Documents).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\09.Revenue - Expenses analytical.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\10.Cash balance (Tax analysis).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\10.Cash balance (Tax, Documents).sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\11.Products - purchases by subcategory.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\11.Products - purchases sales by subcategory.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\11.Products - sales by subcategory.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\11.Products - sales.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\11.Products - profitability.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\12.Balances.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\16.Lots.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\18.Loyalties per customer.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\18.Loyalties selected customer.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English
Source: "reports\19.Shifts.sql"; DestDir: "{app}\reports\"; Flags: ignoreversion; Languages: English

Source: "forms\forma_en.htm"; DestDir: "{app}\forms\"; DestName: "forma.htm"; Flags: onlyifdoesntexist; Languages: English
Source: "forms\forma_el.htm"; DestDir: "{app}\forms\"; DestName: "forma.htm"; Flags: onlyifdoesntexist; Languages: Greek
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
Source: "forms\form_carat.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "forms\form_quorion.1"; DestDir: "{app}\forms\"; Flags: onlyifdoesntexist
Source: "language\en\sync.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\tcpdevices.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\ryumiseis.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\rantevou.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\pvlhseis.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\pelatologio.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\paraggelies.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\import.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\epiloges.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\apouhkh.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\accounts.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\en\customer_display.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion
Source: "language\lookupvalues_el.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\lookupvalues_en.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\countries_el.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\countries_en.xml"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\offline_el.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\offline_en.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\terminal_en.txt"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\terminal_el.txt"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\mydata\tax_vat_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_vat_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_type_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_type_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_totals_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_totals_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_taxes_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_taxes_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_payment_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_payment_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_other_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_other_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_fees_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_fees_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_exclude_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_exclude_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_docs_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_docs_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_category_en.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion
Source: "language\mydata\tax_category_el.txt"; DestDir: "{app}\language\mydata"; Flags: ignoreversion

Source: "{app}\language\search.txt"; DestDir: "{app}\language"; DestName: "search.txt.old"; Flags: external skipifsourcedoesntexist
Source: "language\search_el.txt"; DestDir: "{app}\language"; Languages: Greek
Source: "language\search_en.txt"; DestDir: "{app}\language"; Languages: English
Source: "language\db_error_el.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\db_error_en.htm"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\print_el.frc"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "language\print_en.frc"; DestDir: "{app}\language"; Flags: ignoreversion
Source: "LICENCE-English.TXT"; DestDir: "{app}"; Flags: ignoreversion
Source: "LICENCE-Greek.TXT"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Windows\Fonts\arial.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Arial"
Source: "C:\Windows\Fonts\arialbd.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Arial Έντονα"

;*** EMDI Business Specific Files ***
Source: "view\pos0.tmp"; DestDir: "{%TEMP}"; Flags: ignoreversion; Check: MyProgCheck; Tasks: InstallBusiness
Source: "dbs\MAIN.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Languages: Greek; Tasks: InstallBusiness
Source: "dbs\MAINen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Languages: English; Tasks: InstallBusiness
Source: "mobile\emdi_stock\templates\template.htm"; DestDir: "{app}\emdi_stock\templates"; Tasks: stock,InstallBusiness
Source: "mobile\emdi_stock\wwwroot\images\background.jpg"; DestDir: "{app}\emdi_stock\wwwroot\images"; Tasks: stock,InstallBusiness
Source: "mobile\emdi_stock\wwwroot\css\template.css"; DestDir: "{app}\emdi_stock\wwwroot\css"; Tasks: stock,InstallBusiness
Source: "mobile\emdi_stock\wwwroot\favicon.ico"; DestDir: "{app}\emdi_stock\wwwroot"; Flags: ignoreversion; Tasks: stock,InstallBusiness
Source: "mobile\emdi_stock\emdi_stock.exe"; DestDir: "{app}\emdi_stock"; Flags: ignoreversion; Tasks: stock,InstallBusiness
Source: "language\en\eshopconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion; Tasks: InstallBusiness
Source: "language\en\bldrconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion; Tasks: InstallBusiness
Source: "language\en\gasconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion; Tasks: gas,InstallBusiness
Source: "language\en\eshopconnector.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion; Tasks: eshop,InstallBusiness
Source: "language\en\emdi_stock.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion; Tasks: stock,InstallBusiness
Source: "gasconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: gas,InstallBusiness
Source: "bldrconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: sqlserver,InstallBusiness
Source: "eshopconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: eshop,InstallBusiness

;*** EMDI Retail POS Specific Files ***
Source: "view\pos1.tmp"; DestDir: "{%TEMP}"; Flags: ignoreversion; Check: MyProgCheck; Tasks: InstallRetail
Source: "dbs\MAINSM.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Languages: Greek; Tasks: InstallRetail
Source: "dbs\MAINSMen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Languages: English; Tasks: InstallRetail
Source: "forms\list_.txt"; DestDir: "{app}"; Flags: onlyifdoesntexist; Tasks: InstallRetail
Source: "language\en\hotel.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion; Tasks: InstallRetail

;*** EMDI Restaurant Specific Files ***
Source: "view\pos2.tmp"; DestDir: "{%TEMP}"; Flags: ignoreversion; Check: MyProgCheck; Tasks: InstallRestaurant
Source: "dbs\MAINREST.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Languages: Greek; Tasks: InstallRestaurant
Source: "dbs\MAINRESTen.FDB"; DestDir: "{app}\dbs"; DestName: "main.fdb"; Flags: onlyifdoesntexist; Languages: English; Tasks: InstallRestaurant
Source: "forms\list_.txt"; DestDir: "{app}"; Flags: onlyifdoesntexist; Tasks: InstallRestaurant
Source: "language\en\hotel.lng"; DestDir: "{app}\language\en"; Flags: ignoreversion; Tasks: InstallRestaurant
Source: "paraggelies.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: InstallRestaurant
Source: "efoodconnector.exe"; DestDir: "{app}"; Flags: ignoreversion; Tasks: efood, InstallRestaurant
Source: "dbs\CONNECTOR.FDB"; DestDir: "{app}\dbs"; Flags: ignoreversion; Tasks: efood, InstallRestaurant
Source: "view\settings.ini"; DestDir: "{app}"; DestName: "settings.ini"; Flags: onlyifdoesntexist; Tasks: InstallRestaurant
[Icons]
;*** Common Icons ***
Name: "{userdesktop}\EMDI {cm:RetailPOSName}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; IconIndex: 0; Tasks: InstallRetail
Name: "{userdesktop}\EMDI {cm:RestaurantName}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; IconIndex: 0; Tasks: InstallRestaurant
Name: "{userdesktop}\EMDI {cm:BusinessManagementType}"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; IconIndex: 0; Tasks: InstallBusiness
Name: "{userdesktop}\Απομακρυσμένη υποστήριξη - Λήψη"; Filename: "https://www.sbzsystems.com/el/apomakrismeni-ipostirixi/"; WorkingDir: "{app}"; IconFilename: "{app}\images\sbzhelp.ico"; Languages: Greek
Name: "{userdesktop}\Remote support - Download"; Filename: "https://www.sbzsystems.com/remote-support/"; WorkingDir: "{app}"; IconFilename: "{app}\images\sbzhelp.ico"; Languages: English
Name: "{userdesktop}\Ξεκινώντας με την EMDI – Οδηγίες χρήσης"; Filename: "https://www.sbzsystems.com/download/Getting_started_with_EMDI_gr.pdf"; WorkingDir: "{app}"; IconFilename: "{app}\images\help.ico"; Languages: Greek
Name: "{userdesktop}\Getting started with EMDI - Manual"; Filename: "https://www.sbzsystems.com/download/Getting_started_with_EMDI_uk.pdf"; WorkingDir: "{app}"; IconFilename: "{app}\images\help.ico"; Languages: English
Name: "{group}\EMDI {cm:RetailPOSName} επιλογές"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; IconIndex: 0; Languages: Greek; Tasks: InstallRetail
Name: "{group}\EMDI {cm:RestaurantName} επιλογές"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; IconIndex: 0; Languages: Greek; Tasks: InstallRestaurant
Name: "{group}\EMDI {cm:BusinessManagementType} επιλογές"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\images\desktop-main-icon.ico"; IconIndex: 0; Languages: Greek; Tasks: InstallBusiness
Name: "{group}\EMDI {cm:RetailPOSName} υποστήριξη"; Filename: "https://www.sbzsystems.com/el/emdi-ipostirixi/"; WorkingDir: "{app}"; Languages: Greek; Tasks: InstallRetail
Name: "{group}\EMDI {cm:RestaurantName} υποστήριξη"; Filename: "https://www.sbzsystems.com/el/emdi-ipostirixi/"; WorkingDir: "{app}"; Languages: Greek; Tasks: InstallRestaurant
Name: "{group}\EMDI {cm:BusinessManagementType} υποστήριξη"; Filename: "https://www.sbzsystems.com/el/emdi-ipostirixi/"; WorkingDir: "{app}"; Languages: Greek; Tasks: InstallBusiness
Name: "{group}\Ξεκινώντας με την EMDI – Οδηγίες χρήσης"; Filename: "https://www.sbzsystems.com/download/Getting_started_with_EMDI_gr.pdf"; WorkingDir: "{app}"; IconFilename: "{app}\images\help.ico"; Languages: Greek
Name: "{group}\Απομακρυσμένη υποστήριξη"; Filename: "https://www.sbzsystems.com/el/apomakrismeni-ipostirixi/"; WorkingDir: "{app}"; IconFilename: "{app}\images\sbzhelp.ico"; Lan[...]
Name: "{group}\Αντίγραφο ασφαλείας"; Filename: "{app}\ryumiseis.exe"; WorkingDir: "{app}"; IconFilename: "{app}\ryumiseis.exe"; IconIndex: 0; Parameters: "b"; Languages: Greek
Name: "{group}\Άδεια χρήσης"; Filename: "{app}\LICENCE-Greek.TXT"; WorkingDir: "{app}"; Languages: Greek
Name: "{group}\EMDI {cm:RetailPOSName} main menu"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\epiloges.exe"; IconIndex: 0; Languages: English; Tasks: InstallRetail
Name: "{group}\EMDI {cm:RestaurantName} main menu"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\epiloges.exe"; IconIndex: 0; Languages: English; Tasks: InstallRestaurant
Name: "{group}\EMDI {cm:BusinessManagementType} main menu"; Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; IconFilename: "{app}\epiloges.exe"; IconIndex: 0; Languages: English; Tasks: InstallBusiness
Name: "{group}\EMDI {cm:RetailPOSName} help"; Filename: "https://www.sbzsystems.com/emdi-support/"; WorkingDir: "{app}"; IconFilename: "{app}\epiloges.exe"; Languages: English; Tasks: InstallRetail
Name: "{group}\EMDI {cm:RestaurantName} help"; Filename: "https://www.sbzsystems.com/emdi-support/"; WorkingDir: "{app}"; IconFilename: "{app}\epiloges.exe"; Languages: English; Tasks: InstallRestaurant
Name: "{group}\EMDI {cm:BusinessManagementType} help"; Filename: "https://www.sbzsystems.com/emdi-support/"; WorkingDir: "{app}"; IconFilename: "{app}\epiloges.exe"; Languages: English; Tasks: InstallBusiness
Name: "{group}\Getting started with EMDI - Manual"; Filename: "https://www.sbzsystems.com/download/Getting_started_with_EMDI_uk.pdf"; WorkingDir: "{app}"; IconFilename: "{app}\images\help.ico"; Langua[...]
Name: "{group}\Remote support"; Filename: "https://www.sbzsystems.com/remote-support/"; WorkingDir: "{app}"; IconFilename: "{app}\images\sbzhelp.ico"; Languages: English
Name: "{group}\Backup"; Filename: "{app}\ryumiseis.exe"; WorkingDir: "{app}"; IconFilename: "{app}\ryumiseis.exe"; IconIndex: 0; Parameters: "b"; Languages: English
Name: "{group}\Licensing"; Filename: "{app}\LICENCE-English.TXT"; WorkingDir: "{app}"; Languages: English

[Run]
;*** Common Run Entries ***
Filename: "{%TEMP}\Firebird.exe"; Parameters: "/SILENT"; Flags: skipifsilent; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Filename: "{app}\epiloges.exe"; WorkingDir: "{app}"; Flags: nowait postinstall skipifsilent

;*** EMDI Business Specific Run Entries ***
Filename: "https://www.sbzsystems.com/download/success.php?lang=el&app=erp"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Languages: Greek; Tasks: InstallBusiness
Filename: "https://www.sbzsystems.com/download/success.php?lang=en&app=erp"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Languages: English; Tasks: InstallBusiness

;*** EMDI Retail POS Specific Run Entries ***
Filename: "https://www.sbzsystems.com/download/success.php?lang=el&app=retailpos"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Languages: Greek; Tasks: InstallRetail
Filename: "https://www.sbzsystems.com/download/success.php?lang=en&app=retailpos"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Languages: English; Tasks: InstallRetail

;*** EMDI Restaurant Specific Run Entries ***
Filename: "https://www.sbzsystems.com/download/success.php?lang=el&app=restaurant"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Languages: Greek; Tasks: InstallRestaurant
Filename: "https://www.sbzsystems.com/download/success.php?lang=en&app=restaurant"; Flags: postinstall shellexec runasoriginaluser skipifsilent; Languages: English; Tasks: InstallRestaurant

[UninstallDelete]
Type: files; Name: "{app}\settings.ini"
Type: filesandordirs; Name: "{app}\images"
Type: filesandordirs; Name: "{app}\personal"
Type: filesandordirs; Name: "{app}"

[InstallDelete]
;*** Common InstallDelete Entries ***
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
Type: files; Name: "{app}\intl\fbintl.dll"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\intl\fbintl.conf"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\plugins\engine12.dll"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\ib_util.dll"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\fbclient.dll"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\icudt52l.dat"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\icudt52.dll"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\icuin52.dll"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\icuuc52.dll"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\gfix.exe"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\gbak.exe"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Type: files; Name: "{app}\firebird.conf"; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant

[InnoIDE_Settings]
LogFileOverwrite=false

[UninstallRun]

[ThirdParty]
CompileLogMethod=append

[Registry]
;*** Common Registry Entries ***
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "pvlhseis.exe"; Flags: createvalueifdoesntexist
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "pelatologio.exe"; Flags: createvalueifdo[...]
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "epiloges.exe"; Flags: createvalueifdoesn[...]
Root: "HKCU32"; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "customer_display.exe"; Flags: createvalueifdoesn[...]

[INI]
;*** Common INI Entries ***
Filename: "{app}\personal\{username}\settings.ini"; Section: "General"; Key: "theme"; String: "ice"; Flags: createkeyifdoesntexist
Filename: "{app}\settings.ini"; Section: "DB"; Key: "path"; String: "{app}\dbs\main.fdb"; Flags: createkeyifdoesntexist
Filename: "{app}\settings.ini"; Section: "General"; Key: "language"; String: "el"; Flags: createkeyifdoesntexist; Languages: Greek
Filename: "{app}\settings.ini"; Section: "General"; Key: "language"; String: "en"; Flags: createkeyifdoesntexist; Languages: English
Filename: "{app}\settings.ini"; Section: "DB"; Key: "host"; String: ""; Tasks: embedded_database,embedded_database_Retail, embedded_database_Restaurant
Filename: "{app}\settings.ini"; Section: "DB"; Key: "library"; String: "{app}\fbclient.dll"; Flags: createkeyifdoesntexist; Tasks: embedded_database,embedded_database_Retail, embedded_database_Restaurant
Filename: "{app}\settings.ini"; Section: "DB"; Key: "library"; String: ""; Flags: createkeyifdoesntexist; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Filename: "{app}\settings.ini"; Section: "syncDB"; Key: "host"; String: ""; Tasks: embedded_database,embedded_database_Retail, embedded_database_Restaurant
Filename: "{app}\settings.ini"; Section: "syncDB"; Key: "library"; String: "{app}\fbclient.dll"; Flags: createkeyifdoesntexist; Tasks: embedded_database,embedded_database_Retail, embedded_database_Restaurant
Filename: "{app}\settings.ini"; Section: "syncDB"; Key: "library"; String: ""; Flags: createkeyifdoesntexist; Tasks: normal_database,normal_database_Retail, normal_database_Restaurant
Filename: "{app}\settings.ini"; Section: "Form"; Key: "country"; String: "GR"; Flags: createkeyifdoesntexist; Languages: Greek

;*** EMDI Specific INI Entries ***
Filename: "{app}\settings.ini"; Section: "General"; Key: "updateurl"; String: "www.sbzsystems.com/download/emdi.htm"; Tasks: InstallBusiness

;*** EMDI Retail POS Specific INI Entries ***
Filename: "{app}\settings.ini"; Section: "General"; Key: "updateurl"; String: "www.sbzsystems.com/download/emdi_retail_pos.htm"; Tasks: InstallRetail

;*** EMDI Restaurant Specific INI Entries ***
Filename: "{app}\settings.ini"; Section: "General"; Key: "updateurl"; String: "www.sbzsystems.com/download/emdi_restaurant.htm"; Tasks: InstallRestaurant
Filename: "{app}\settings.ini"; Section: "General"; Key: "theme"; String: "Darker"; Tasks: InstallRestaurant

[Code]
/////////////////////////////////////////////////////////////////////
var run_upgrade,ok_upgrade,fmunotexistv:boolean;
    MyProgChecked: Boolean;
    MyProgCheckResult: Boolean;
    InstallTypePage: TInputQueryWizardPage;

function MyProgCheck(): Boolean;
begin
  if not MyProgChecked then begin
    MyProgCheckResult := not DirExists(ExpandConstant('{app}\personal'));    
    MyProgChecked := True;
  end;
  Result := MyProgCheckResult;
end;

function fmunotexist: boolean;
begin
   result:=fmunotexistv;
end;

/////////////////////////////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
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

ShellExec('open','taskkill.exe','/f /im paraggelies.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "paraggelies"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im eshopconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "eshopconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im gasconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "gasconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im databox_connector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "databox_connector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im efoodconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "efoodconnector"','',SW_HIDE,ewNoWait,ErrorCode);

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

ShellExec('open','taskkill.exe','/f /im paraggelies.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "paraggelies"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im eshopconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "eshopconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im gasconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "gasconnector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im databox_connector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "databox_connector"','',SW_HIDE,ewNoWait,ErrorCode);

ShellExec('open','taskkill.exe','/f /im efoodconnector.exe','',SW_HIDE,ewNoWait,ErrorCode);
ShellExec('open','tskill.exe',' "efoodconnector"','',SW_HIDE,ewNoWait,ErrorCode);

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

    // Create the install type selection page
    InstallTypePage := TInputQueryWizardPage.Create(WizardForm);
    InstallTypePage.Name := 'InstallTypePage';
    InstallTypePage.DisplayName := ExpandConstant('{cm:InstallType}');
    InstallTypePage.Title := ExpandConstant('{cm:InstallType}');
    InstallTypePage.Description := ExpandConstant('{cm:InstallType}');
    InstallTypePage.AddRadioButton(ExpandConstant('{cm:Business}'), 1, true);
    InstallTypePage.AddRadioButton(ExpandConstant('{cm:Retail}'), 2, false);
    InstallTypePage.AddRadioButton(ExpandConstant('{cm:Restaurant}'), 3, false);
end;

procedure CurPageChanged(CurPage: Integer);
begin
  PrintButton.Visible := CurPage = wpLicense;

   if CurPage = wpFinished then
    WizardForm.RunList.Visible := False;

    if CurPage = wpSelectTasks then
    begin
        //Based on selected install type, enable/disable tasks accordingly
        if InstallTypePage.Values[0] = '1' then //Business
        begin
            WizardForm.TasksList.Checked[WizardForm.TasksList.FindTask('InstallBusiness')] := True;
        end else if InstallTypePage.Values[0] = '2' then //Retail
        begin
            WizardForm.TasksList.Checked[WizardForm.TasksList.FindTask('InstallRetail')] := True;
        end else if InstallTypePage.Values[0] = '3' then //Restaurant
        begin
            WizardForm.TasksList.Checked[WizardForm.TasksList.FindTask('InstallRestaurant')] := True;
        end;
    end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
    Result := True;
    if CurPageID = wpWelcome then
    begin
        WizardForm.ActivePageIndex := InstallTypePage.PageIndex;
        Result := False;
    end;
end;