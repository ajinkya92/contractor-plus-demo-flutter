// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
    String success;
    String message;
    LoginData data;

    Login({
        this.success,
        this.message,
        this.data,
    });

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        success: json["success"],
        message: json["message"],
        data: LoginData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class LoginData {
    UserDetails userDetails;
    String isOtpVerified;
    dynamic accessDetails;
    String role;
    bool expiryDate;
    int isPro;
    String token;
    Settings settings;

    LoginData({
        this.userDetails,
        this.isOtpVerified,
        this.accessDetails,
        this.role,
        this.expiryDate,
        this.isPro,
        this.token,
        this.settings,
    });

    factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        userDetails: UserDetails.fromJson(json["user_details"]),
        isOtpVerified: json["is_otp_verified"],
        accessDetails: json["access_details"],
        role: json["role"],
        expiryDate: json["expiry_date"],
        isPro: json["is_pro"],
        token: json["token"],
        settings: Settings.fromJson(json["settings"]),
    );

    Map<String, dynamic> toJson() => {
        "user_details": userDetails.toJson(),
        "is_otp_verified": isOtpVerified,
        "access_details": accessDetails,
        "role": role,
        "expiry_date": expiryDate,
        "is_pro": isPro,
        "token": token,
        "settings": settings.toJson(),
    };
}

class Settings {
    BrandingSetting brandingSetting;
    EstimateSetting estimateSetting;
    InvoiceSetting invoiceSetting;
    MileageLogSetting mileageLogSetting;
    QuickBookSetting quickBookSetting;
    TimeClockSetting timeClockSetting;
    ShoppingSetting shoppingSetting;

    Settings({
        this.brandingSetting,
        this.estimateSetting,
        this.invoiceSetting,
        this.mileageLogSetting,
        this.quickBookSetting,
        this.timeClockSetting,
        this.shoppingSetting,
    });

    factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        brandingSetting: BrandingSetting.fromJson(json["branding_setting"]),
        estimateSetting: EstimateSetting.fromJson(json["estimate_setting"]),
        invoiceSetting: InvoiceSetting.fromJson(json["invoice_setting"]),
        mileageLogSetting: MileageLogSetting.fromJson(json["mileage_log_setting"]),
        quickBookSetting: QuickBookSetting.fromJson(json["quick_book_setting"]),
        timeClockSetting: TimeClockSetting.fromJson(json["time_clock_setting"]),
        shoppingSetting: ShoppingSetting.fromJson(json["shopping_setting"]),
    );

    Map<String, dynamic> toJson() => {
        "branding_setting": brandingSetting.toJson(),
        "estimate_setting": estimateSetting.toJson(),
        "invoice_setting": invoiceSetting.toJson(),
        "mileage_log_setting": mileageLogSetting.toJson(),
        "quick_book_setting": quickBookSetting.toJson(),
        "time_clock_setting": timeClockSetting.toJson(),
        "shopping_setting": shoppingSetting.toJson(),
    };
}

class BrandingSetting {
    String whatToDisplay;
    List<String> whereToDisplay;
    String logo;
    String companyName;
    String email;
    String phone;
    int countriesId;
    int stateId;
    String city;
    String zipCode;
    String address1;
    String address2;
    dynamic showCoBrand;
    bool useAuthentication;
    String connectionSecurity;
    String smtpHostname;
    int smtpPort;
    String smtpUser;
    String smtpPassword;

    BrandingSetting({
        this.whatToDisplay,
        this.whereToDisplay,
        this.logo,
        this.companyName,
        this.email,
        this.phone,
        this.countriesId,
        this.stateId,
        this.city,
        this.zipCode,
        this.address1,
        this.address2,
        this.showCoBrand,
        this.useAuthentication,
        this.connectionSecurity,
        this.smtpHostname,
        this.smtpPort,
        this.smtpUser,
        this.smtpPassword,
    });

    factory BrandingSetting.fromJson(Map<String, dynamic> json) => BrandingSetting(
        whatToDisplay: json["what_to_display"],
        whereToDisplay: List<String>.from(json["where_to_display"].map((x) => x)),
        logo: json["logo"],
        companyName: json["company_name"],
        email: json["email"],
        phone: json["phone"],
        countriesId: json["countries_id"],
        stateId: json["state_id"],
        city: json["city"],
        zipCode: json["zip_code"],
        address1: json["address_1"],
        address2: json["address_2"],
        showCoBrand: json["show_co_brand"],
        useAuthentication: json["use_authentication"],
        connectionSecurity: json["connection_security"],
        smtpHostname: json["smtp_hostname"],
        smtpPort: json["smtp_port"],
        smtpUser: json["smtp_user"],
        smtpPassword: json["smtp_password"],
    );

    Map<String, dynamic> toJson() => {
        "what_to_display": whatToDisplay,
        "where_to_display": List<dynamic>.from(whereToDisplay.map((x) => x)),
        "logo": logo,
        "company_name": companyName,
        "email": email,
        "phone": phone,
        "countries_id": countriesId,
        "state_id": stateId,
        "city": city,
        "zip_code": zipCode,
        "address_1": address1,
        "address_2": address2,
        "show_co_brand": showCoBrand,
        "use_authentication": useAuthentication,
        "connection_security": connectionSecurity,
        "smtp_hostname": smtpHostname,
        "smtp_port": smtpPort,
        "smtp_user": smtpUser,
        "smtp_password": smtpPassword,
    };
}

class EstimateSetting {
    String defaultLabourRate;
    String supplyMarkupUnit;
    String supplyMarkup;

    EstimateSetting({
        this.defaultLabourRate,
        this.supplyMarkupUnit,
        this.supplyMarkup,
    });

    factory EstimateSetting.fromJson(Map<String, dynamic> json) => EstimateSetting(
        defaultLabourRate: json["default_labour_rate"],
        supplyMarkupUnit: json["supply_markup_unit"],
        supplyMarkup: json["supply_markup"],
    );

    Map<String, dynamic> toJson() => {
        "default_labour_rate": defaultLabourRate,
        "supply_markup_unit": supplyMarkupUnit,
        "supply_markup": supplyMarkup,
    };
}

class InvoiceSetting {
    String chargeClientsTaxOn;
    String defaultTaxRate;
    List<dynamic> schedule;

    InvoiceSetting({
        this.chargeClientsTaxOn,
        this.defaultTaxRate,
        this.schedule,
    });

    factory InvoiceSetting.fromJson(Map<String, dynamic> json) => InvoiceSetting(
        chargeClientsTaxOn: json["charge_clients_tax_on"],
        defaultTaxRate: json["default_tax_rate"],
        schedule: List<dynamic>.from(json["schedule"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "charge_clients_tax_on": chargeClientsTaxOn,
        "default_tax_rate": defaultTaxRate,
        "schedule": List<dynamic>.from(schedule.map((x) => x)),
    };
}

class MileageLogSetting {
    bool trackRoutes;
    bool trackDrivingTime;
    bool trackDrivingSpeed;

    MileageLogSetting({
        this.trackRoutes,
        this.trackDrivingTime,
        this.trackDrivingSpeed,
    });

    factory MileageLogSetting.fromJson(Map<String, dynamic> json) => MileageLogSetting(
        trackRoutes: json["track_routes"],
        trackDrivingTime: json["track_driving_time"],
        trackDrivingSpeed: json["track_driving_speed"],
    );

    Map<String, dynamic> toJson() => {
        "track_routes": trackRoutes,
        "track_driving_time": trackDrivingTime,
        "track_driving_speed": trackDrivingSpeed,
    };
}

class QuickBookSetting {
    dynamic isSyncFinancialData;

    QuickBookSetting({
        this.isSyncFinancialData,
    });

    factory QuickBookSetting.fromJson(Map<String, dynamic> json) => QuickBookSetting(
        isSyncFinancialData: json["is_sync_financial_data"],
    );

    Map<String, dynamic> toJson() => {
        "is_sync_financial_data": isSyncFinancialData,
    };
}

class ShoppingSetting {
    List<String> whereIShopIds;

    ShoppingSetting({
        this.whereIShopIds,
    });

    factory ShoppingSetting.fromJson(Map<String, dynamic> json) => ShoppingSetting(
        whereIShopIds: List<String>.from(json["where_i_shop_ids"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "where_i_shop_ids": List<dynamic>.from(whereIShopIds.map((x) => x)),
    };
}

class TimeClockSetting {
    bool requireEmployeeClockinClockout;
    int acceptableDistance;

    TimeClockSetting({
        this.requireEmployeeClockinClockout,
        this.acceptableDistance,
    });

    factory TimeClockSetting.fromJson(Map<String, dynamic> json) => TimeClockSetting(
        requireEmployeeClockinClockout: json["require_employee_clockin_clockout"],
        acceptableDistance: json["acceptable_distance"],
    );

    Map<String, dynamic> toJson() => {
        "require_employee_clockin_clockout": requireEmployeeClockinClockout,
        "acceptable_distance": acceptableDistance,
    };
}

class UserDetails {
    int id;
    String fullName;
    String firstName;
    String lastName;
    String email;
    String profilePicture;
    String mobileNo;
    String isdCode;

    UserDetails({
        this.id,
        this.fullName,
        this.firstName,
        this.lastName,
        this.email,
        this.profilePicture,
        this.mobileNo,
        this.isdCode,
    });

    factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["id"],
        fullName: json["full_name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        profilePicture: json["profile_picture"],
        mobileNo: json["mobile_no"],
        isdCode: json["isd_code"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "profile_picture": profilePicture,
        "mobile_no": mobileNo,
        "isd_code": isdCode,
    };
}
