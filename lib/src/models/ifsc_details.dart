final class IfscDetails {
  IfscDetails({
    required this.bank,
    required this.bankcode,
    required this.branch,
    required this.centre,
    required this.city,
    required this.contact,
    required this.district,
    required this.ifsc,
    required this.address,
    required this.imps,
    required this.iso3166,
    required this.micr,
    required this.rtgs,
    required this.neft,
    required this.swift,
    required this.upi,
    required this.state,
  });

  final String branch;
  final String centre;
  final String district;
  final String state;
  final String address;
  final String contact;
  final bool imps;
  final String city;
  final bool upi;
  final String micr;
  final bool rtgs;
  final bool neft;
  final String swift;
  final String iso3166;
  final String bank;
  final String bankcode;
  final String ifsc;

  factory IfscDetails.fromJson(Map<String, dynamic> json) {
    return IfscDetails(
      branch: json['BRANCH'],
      centre: json['CENTRE'],
      district: json['DISTRICT'],
      state: json['STATE'],
      address: json['ADDRESS'],
      contact: json['CONTACT'],
      imps: json['IMPS'],
      city: json['CITY'],
      upi: json['UPI'],
      micr: json['MICR'],
      rtgs: json['RTGS'],
      neft: json['NEFT'],
      swift: json['SWIFT'],
      iso3166: json['ISO3166'],
      bank: json['BANK'],
      bankcode: json['BANKCODE'],
      ifsc: json['IFSC'],
    );
  }

  @override
  String toString() {
    return 'IfscDetails(branch: $branch, centre: $centre, district: $district, state: $state, address: $address, contact: $contact, imps: $imps, city: $city, upi: $upi, micr: $micr, rtgs: $rtgs, neft: $neft, swift: $swift, iso3166: $iso3166, bank: $bank, bankcode: $bankcode, ifsc: $ifsc)';
  }

  IfscDetails copyWith({
    String? branch,
    String? centre,
    String? district,
    String? state,
    String? address,
    String? contact,
    bool? imps,
    String? city,
    bool? upi,
    String? micr,
    bool? rtgs,
    bool? neft,
    String? swift,
    String? iso3166,
    String? bank,
    String? bankcode,
    String? ifsc,
  }) {
    return IfscDetails(
      branch: branch ?? this.branch,
      centre: centre ?? this.centre,
      district: district ?? this.district,
      state: state ?? this.state,
      address: address ?? this.address,
      contact: contact ?? this.contact,
      imps: imps ?? this.imps,
      city: city ?? this.city,
      upi: upi ?? this.upi,
      micr: micr ?? this.micr,
      rtgs: rtgs ?? this.rtgs,
      neft: neft ?? this.neft,
      swift: swift ?? this.swift,
      iso3166: iso3166 ?? this.iso3166,
      bank: bank ?? this.bank,
      bankcode: bankcode ?? this.bankcode,
      ifsc: ifsc ?? this.ifsc,
    );
  }

  @override
  bool operator ==(covariant IfscDetails other) {
    if (identical(this, other)) return true;

    return other.branch == branch &&
        other.centre == centre &&
        other.district == district &&
        other.state == state &&
        other.address == address &&
        other.contact == contact &&
        other.imps == imps &&
        other.city == city &&
        other.upi == upi &&
        other.micr == micr &&
        other.rtgs == rtgs &&
        other.neft == neft &&
        other.swift == swift &&
        other.iso3166 == iso3166 &&
        other.bank == bank &&
        other.bankcode == bankcode &&
        other.ifsc == ifsc;
  }

  @override
  int get hashCode {
    return branch.hashCode ^
        centre.hashCode ^
        district.hashCode ^
        state.hashCode ^
        address.hashCode ^
        contact.hashCode ^
        imps.hashCode ^
        city.hashCode ^
        upi.hashCode ^
        micr.hashCode ^
        rtgs.hashCode ^
        neft.hashCode ^
        swift.hashCode ^
        iso3166.hashCode ^
        bank.hashCode ^
        bankcode.hashCode ^
        ifsc.hashCode;
  }
}
