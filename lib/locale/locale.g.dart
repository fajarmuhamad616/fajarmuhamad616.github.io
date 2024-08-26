/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 694 (347 per locale)
///
/// Built on 2024-08-26 at 17:31 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.id;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.id) // set locale
/// - Locale locale = AppLocale.id.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.id) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	id(languageCode: 'id', build: Translations.build),
	en(languageCode: 'en', build: _LocaleEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of texts).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = texts.someKey.anotherKey;
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
Translations get texts => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final texts = Translations.of(context); // Get texts variable.
/// String a = texts.someKey.anotherKey; // Use texts variable.
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.texts.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get texts => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final texts = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _LocaleAboutId about = _LocaleAboutId._(_root);
	late final _LocaleExperienceId experience = _LocaleExperienceId._(_root);
	late final _LocaleGeneralId general = _LocaleGeneralId._(_root);
	late final _LocaleProjectsId projects = _LocaleProjectsId._(_root);
	late final _LocaleSkillsId skills = _LocaleSkillsId._(_root);
	late final _LocaleTabsId tabs = _LocaleTabsId._(_root);
}

// Path: about
class _LocaleAboutId {
	_LocaleAboutId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get about_me => 'Saya lulusan Universitas Pendidikan Indonesia sebagai Sarjana Software Engineer dan pernah mengikuti program Studi Mandiri Kampus Merdeka untuk mendalami Android Native dan Multiplatform dengan Backend as a Service (BaaS) yang terintegrasi. Saya juga mengikuti program magang sebagai Web Developer secara remote dengan mengembangkan Frontend, Backend, dan API. Sejak kuliah saya aktif di komunitas KOMPETEGRAM (KOMunitas PEncinta TEknologi pemroGRAMan) dan asisten praktikum pada mata kuliah jaringan komputer. Selain itu, saya memiliki prestasi publikasi jurnal internasional scopus.\n\nSebagai Software Engineer, saya selalu belajar secara mendalam dan mengasah logika coding untuk mengumpulkan keterampilan dan pengalaman dengan penelitian dan pengembangan aplikasi sistem frontend atau backend. Saya memiliki pengalaman kerja sebagai Software Engineer dengan fokus pada Backend Engineer di perusahaan atau industri tour and travel agency. Dalam pekerjaan saya, saya mengembangkan layanan backend, migrasi data hotel dan maskapai penerbangan, migrasi sistem pencarian dari sistem usang ke sistem terbaru, gateway maskapai penerbangan domestik dan internasional dengan API yang kompleks (REST dan SOAP), dan pemeliharaan layanan lainnya. Riset dan pengembangan pengetahuan sejak kuliah saya gunakan dalam pekerjaan saya dengan selalu memastikan kode sumber dapat dibaca tanpa code smells dengan melakukan refaktor kode dan membuat kinerja aplikasi terhindar dari kemacetan. \n\nSelain itu, saya memiliki pengalaman dalam penerapan dengan Docker dan Kubernetes atau Jenkins dan softskill seperti komunikasi dan pemecahan masalah. Dengan pengalaman terkait, saya juga telah bekerja sama dengan Quality Assurance (QA) untuk melakukan pengujian pada tahap pengembangan sebelum tahap produksi.';
	List<dynamic> get about_cards => [
		_LocaleAbout$aboutCards$0i0$Id._(_root),
		_LocaleAbout$aboutCards$0i1$Id._(_root),
		_LocaleAbout$aboutCards$0i2$Id._(_root),
		_LocaleAbout$aboutCards$0i3$Id._(_root),
		_LocaleAbout$aboutCards$0i4$Id._(_root),
	];
}

// Path: experience
class _LocaleExperienceId {
	_LocaleExperienceId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get experiences => [
		_LocaleExperience$experiences$0i0$Id._(_root),
		_LocaleExperience$experiences$0i1$Id._(_root),
		_LocaleExperience$experiences$0i2$Id._(_root),
		_LocaleExperience$experiences$0i3$Id._(_root),
		_LocaleExperience$experiences$0i4$Id._(_root),
	];
}

// Path: general
class _LocaleGeneralId {
	_LocaleGeneralId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get language => 'Bahasa';
	String get indonesia => 'Indonesia';
	String get english => 'English';
	String get thank_you => 'Terima kasih telah menghubungi saya';
	String get get_back => 'Saya akan segera menghubungi Anda kembali';
	String get title_introduction_about_section => 'Perkenalan';
	String get title_about_section => 'Tentang';
	String get title_contact_section => 'Kontak';
	String get title_contact_me_section => 'Kontak saya';
	String get get_in_touch_contact_section => 'Hubungi kami';
	String get feel_free_contact_section => 'Jangan ragu untuk menghubungi kami';
	String get hint_your_name_contact_section => 'Namamu';
	String get hint_your_email_contact_section => 'Emailmu';
	String get hint_message_contact_section => 'Ketik pesan Anda';
	String get btn_send_contact_section => 'Kirim';
	String get title_experience_section => 'Pengalaman Professional';
	String get title_project_section => 'Proyek';
	String get title_personal_projects_project_section => 'Proyek Personal';
	String get title_client_projects_project_section => 'Proyek Pekerjaan/Klien';
	String get m_title_personal_projects_project_section => 'Personal';
	String get m_title_client_projects_project_section => 'Klien';
	String get title_all_projects_project_section => 'Semua Proyek';
	String get title_skill_section => 'Keterampilan';
	String get introduce_home_my_name => 'Fajar Muhammad Al-Hijri';
	String get hi_home_section => 'Hai! Nama saya ';
	String get introduce_home_section1 => 'Saya seorang Software Engineer yang berfokus pada aplikasi backend dan seluler.';
	String get introduce_home_section2 => 'Saya mengembangkan sistem backend untuk maskapai penerbangan dan membangun aplikasi perangkat lunak interaktif yang dapat berjalan di berbagai platform.';
	String get browse_projects_home_section => 'Lihat Proyek';
	String get required_input_field => 'Bagian ini diperlukan';
	String get copy => 'Disalin ke papan klip';
}

// Path: projects
class _LocaleProjectsId {
	_LocaleProjectsId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get projects => [
		_LocaleProjects$projects$0i0$Id._(_root),
		_LocaleProjects$projects$0i1$Id._(_root),
		_LocaleProjects$projects$0i2$Id._(_root),
		_LocaleProjects$projects$0i3$Id._(_root),
		_LocaleProjects$projects$0i4$Id._(_root),
		_LocaleProjects$projects$0i5$Id._(_root),
		_LocaleProjects$projects$0i6$Id._(_root),
		_LocaleProjects$projects$0i7$Id._(_root),
		_LocaleProjects$projects$0i8$Id._(_root),
		_LocaleProjects$projects$0i9$Id._(_root),
		_LocaleProjects$projects$0i10$Id._(_root),
		_LocaleProjects$projects$0i11$Id._(_root),
		_LocaleProjects$projects$0i12$Id._(_root),
		_LocaleProjects$projects$0i13$Id._(_root),
		_LocaleProjects$projects$0i14$Id._(_root),
		_LocaleProjects$projects$0i15$Id._(_root),
	];
}

// Path: skills
class _LocaleSkillsId {
	_LocaleSkillsId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get skills => [
		_LocaleSkills$skills$0i0$Id._(_root),
		_LocaleSkills$skills$0i1$Id._(_root),
		_LocaleSkills$skills$0i2$Id._(_root),
		_LocaleSkills$skills$0i3$Id._(_root),
		_LocaleSkills$skills$0i4$Id._(_root),
		_LocaleSkills$skills$0i5$Id._(_root),
		_LocaleSkills$skills$0i6$Id._(_root),
		_LocaleSkills$skills$0i7$Id._(_root),
		_LocaleSkills$skills$0i8$Id._(_root),
		_LocaleSkills$skills$0i9$Id._(_root),
		_LocaleSkills$skills$0i10$Id._(_root),
		_LocaleSkills$skills$0i11$Id._(_root),
		_LocaleSkills$skills$0i12$Id._(_root),
		_LocaleSkills$skills$0i13$Id._(_root),
		_LocaleSkills$skills$0i14$Id._(_root),
		_LocaleSkills$skills$0i15$Id._(_root),
		_LocaleSkills$skills$0i16$Id._(_root),
		_LocaleSkills$skills$0i17$Id._(_root),
		_LocaleSkills$skills$0i18$Id._(_root),
		_LocaleSkills$skills$0i19$Id._(_root),
	];
}

// Path: tabs
class _LocaleTabsId {
	_LocaleTabsId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<String> get tabs => [
		'Beranda',
		'Tentang',
		'Keterampilan',
		'Pengalaman',
		'Proyek',
		'Kontak',
		'Unduh CV',
	];
}

// Path: about.about_cards.0
class _LocaleAbout$aboutCards$0i0$Id {
	_LocaleAbout$aboutCards$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Membuat kode aplikasi berkualitas tinggi dan dapat digunakan kembali.';
	String get title => 'Software Engineer';
}

// Path: about.about_cards.1
class _LocaleAbout$aboutCards$0i1$Id {
	_LocaleAbout$aboutCards$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Menggunakan Java & Spring Boot, saya dapat mengembangkan sistem backend.';
	String get title => 'Backend Developer';
}

// Path: about.about_cards.2
class _LocaleAbout$aboutCards$0i2$Id {
	_LocaleAbout$aboutCards$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Mengembangkan dan mengintegrasikan API untuk menyinkronkan service lain (microservices).';
	String get title => 'API Development & Integration';
}

// Path: about.about_cards.3
class _LocaleAbout$aboutCards$0i3$Id {
	_LocaleAbout$aboutCards$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Menggunakan Dart & Flutter, saya dapat mengembangkan aplikasi dan situs web.';
	String get title => 'Mobile Apps Developer';
}

// Path: about.about_cards.4
class _LocaleAbout$aboutCards$0i4$Id {
	_LocaleAbout$aboutCards$0i4$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Saya meneliti code smells dan melakukan refactor untuk menghindari bug dan bottleneck.';
	String get title => 'Research & Code Refactor';
}

// Path: experience.experiences.0
class _LocaleExperience$experiences$0i0$Id {
	_LocaleExperience$experiences$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'PT Voltras International';
	String get country => 'Indonesia';
	String get emp_type => 'Penuh - Waktu';
	String get position => 'Software Engineer (Onsite)';
	String get site_url => 'www.travelagent.co.id';
	String get start_date => '2023-06-05T00:00:00.000';
	String get end_date => '2024-06-05T00:00:00.000';
	String get state => 'Tangerang Selatan';
	List<String> get works => [
		'Pemfilteran ketersediaan kereta api berdasarkan tiap kelas dari API Kereta Api Indonesia (KAI).',
		'Pengembangan fitur impor dan ekspor tiap hotel dalam spreadsheet dan pemfilteran data hotel duplikat dengan penilaian dalam layanan manajemen hotel.',
		'Migrasi lebih dari 350.000 data hotel dari Solr ke Elasticsearch ke tujuan pencarian yang disarankan.',
		'Migrasi data pencarian bandara (kode, nama, dan lokasi) dari Solr ke Elasticsearch ke tujuan pencarian yang disarankan.',
		'Migrasi data penumpang maskapai penerbangan dari Solr ke Elasticsearch ke tujuan menyimpan riwayat reservasi penumpang.',
		'Transformasi penyimpanan data dari Solr ke Elasticsearch pada layanan hotel dan maskapai penerbangan.',
		'Pengembangan dan implementasi fitur ketersediaan, tarif, pemesanan, pembatalan, pengambilan tambahan, pembayaran, cetak tiket, saldo gateway API maskapai penerbangan internasional dan domestik (maskapai penerbangan TransNusa, Singapore Airlines, dan Sabre) dengan transformasi XML ke JSON, termasuk API versi NDC (New Distribution Capability) hingga UAT (User Acceptance Testing).',
		'Pengembangan API logger untuk mengambil log masuk (inbound) dan log keluar (outbound) gateway API 8B (TransNusa Airlines), SQ (Singapore Airlines), JT (Lion Airlines), JQ (Jetstar Airlines), dan Sabre.',
	];
	String get is_work_here => 'false';
}

// Path: experience.experiences.1
class _LocaleExperience$experiences$0i1$Id {
	_LocaleExperience$experiences$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'PT Informasi Teknologi Indonesia';
	String get country => 'Indonesia';
	String get emp_type => 'Magang';
	String get position => 'Web Developer (Remote)';
	String get site_url => 'jatismobile.com';
	String get start_date => '2022-08-18T00:00:00.000';
	String get end_date => '2022-12-26T00:00:00.000';
	String get state => 'Jakarta Selatan';
	List<String> get works => [
		'Melakukan inovasi atau ide baru untuk salah satu produk di Jatis Mobile dan dipresentasikan.',
		'Pengembangan backend website dengan konsep MVC PHP native dan front-end yang setiap halaman front-endnya menyesuaikan desain UI/UX.',
		'Pengembangan proyek \'Membuat Pembaca Excel yang Baik\' dengan fitur verifikasi email, impor dan ekspor data ke spreadsheet, dan API.',
	];
	String get is_work_here => 'false';
}

// Path: experience.experiences.2
class _LocaleExperience$experiences$0i2$Id {
	_LocaleExperience$experiences$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'Universitas Pendidikan Indonesia';
	String get country => 'Indonesia';
	String get emp_type => 'Musiman';
	String get position => 'Asisten Praktikum (Remote)';
	String get site_url => 'rpl.upi.edu';
	String get start_date => '2022-02-02T00:00:00.000';
	String get end_date => '2022-05-25T00:00:00.000';
	String get state => 'Kabupaten Bandung';
	List<String> get works => [
		'Membuat buku pegangan tentang jaringan komputer.',
		'Membantu mahasiswa dalam sesi praktik menggunakan Cisco Packet Tracer.',
		'Membantu dosen dalam mata kuliah jaringan komputer.',
	];
	String get is_work_here => 'false';
}

// Path: experience.experiences.3
class _LocaleExperience$experiences$0i3$Id {
	_LocaleExperience$experiences$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'Discite Institute';
	String get country => 'Indonesia';
	String get emp_type => 'Project Based';
	String get position => 'Web Developer (Remote)';
	String get site_url => 'www.disciteinstitute.my.id';
	String get start_date => '2022-02-23T00:00:00.000';
	String get end_date => '2022-05-13T00:00:00.000';
	String get state => 'Padang';
	List<String> get works => [
		'Pengembangan situs web Discite Institute dengan Sistem Manajemen Konten (CMS) WordPress dengan antarmuka pengguna yang dapat disesuaikan.',
		'Kolaborasi antara tim desain UI/UX dan tim pengembangan.',
		'Membuat dokumentasi panduan tentang penggunaan situs web Discite Institute.',
	];
	String get is_work_here => 'false';
}

// Path: experience.experiences.4
class _LocaleExperience$experiences$0i4$Id {
	_LocaleExperience$experiences$0i4$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'PT Telkom Indonesia';
	String get country => 'Indonesia';
	String get emp_type => 'Magang';
	String get position => 'Maintenance Preventive STO (Onsite)';
	String get site_url => 'www.telkom.co.id';
	String get start_date => '2018-03-22T00:00:00.000';
	String get end_date => '2018-06-22T00:00:00.000';
	String get state => 'Kota Serang';
	List<String> get works => [
		'Melakukan validasi peredaman optik fber pada pemeliharaan jaringan.',
		'Kerjakan entri label data untuk setiap optik fber ke situs web untuk pemeliharaan jaringan tujuan.',
		'Dokumentasi perbaikan jaringan optik fiber.',
	];
	String get is_work_here => 'false';
}

// Path: projects.projects.0
class _LocaleProjects$projects$0i0$Id {
	_LocaleProjects$projects$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/portfolio.png';
	String get description => 'Website untuk branding personal portfolio';
	String get external_link => 'https://fajarmuhamad616.github.io/';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Portfolio Fajar Muhammad Al-Hijri';
	String get playstore_link => '';
	List<String> get tech => [
		'Dart',
		'Flutter',
	];
	String get type => 'Websites';
}

// Path: projects.projects.1
class _LocaleProjects$projects$0i1$Id {
	_LocaleProjects$projects$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	String get description => 'Gateway untuk Sabre';
	String get external_link => 'www.travelagent.co.id';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'false';
	String get name => 'Airline Gateway Sabre (Project name ommited)';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Jasper Reports',
	];
	String get type => 'Gateway';
}

// Path: projects.projects.2
class _LocaleProjects$projects$0i2$Id {
	_LocaleProjects$projects$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	String get description => 'Gateway untuk pesawat SQ Singapore';
	String get external_link => 'www.travelagent.co.id';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'false';
	String get name => 'Airline Gateway SQ Singapore Airlines (Project name ommited)';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Jasper Reports',
	];
	String get type => 'Gateway';
}

// Path: projects.projects.3
class _LocaleProjects$projects$0i3$Id {
	_LocaleProjects$projects$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	String get description => 'Gateway untuk pesawat 8B TransNusa';
	String get external_link => 'www.travelagent.co.id';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'false';
	String get name => 'Airline Gateway 8B TransNusa Airlines (Project name ommited)';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Jasper Reports',
	];
	String get type => 'Gateway';
}

// Path: projects.projects.4
class _LocaleProjects$projects$0i4$Id {
	_LocaleProjects$projects$0i4$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	String get description => 'Services untuk pesawat terbang';
	String get external_link => 'www.travelagent.co.id';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'false';
	String get name => 'Airline Booking Service (Project name ommited)';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Apache Solr',
		'Elasticsearch',
	];
	String get type => 'Services';
}

// Path: projects.projects.5
class _LocaleProjects$projects$0i5$Id {
	_LocaleProjects$projects$0i5$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	String get description => 'Services untuk hotel';
	String get external_link => 'www.travelagent.co.id';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'false';
	String get name => 'Hotel Booking Service (Project name ommited)';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Apache Solr',
		'Elasticsearch',
	];
	String get type => 'Services';
}

// Path: projects.projects.6
class _LocaleProjects$projects$0i6$Id {
	_LocaleProjects$projects$0i6$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	String get description => 'Translokasi untuk data pesawat terbang';
	String get external_link => 'www.travelagent.co.id';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'false';
	String get name => 'Airline Translocation (Project name ommited)';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Spring boot',
		'Oracle Database',
		'PostgreSQL',
		'Apache Solr',
		'Elasticsearch',
	];
	String get type => 'Services';
}

// Path: projects.projects.7
class _LocaleProjects$projects$0i7$Id {
	_LocaleProjects$projects$0i7$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	String get description => 'Services untuk Kereta Api';
	String get external_link => 'www.travelagent.co.id';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'false';
	String get name => 'Train Availability Services (Project name ommited)';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
	];
	String get type => 'Services';
}

// Path: projects.projects.8
class _LocaleProjects$projects$0i8$Id {
	_LocaleProjects$projects$0i8$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/obreus_droid.png';
	String get description => 'Proyek akhir skripsi';
	String get external_link => 'https://doi.org/10.5281/zenodo.7665495';
	String get github_link => 'https://github.com/fajarmuhamad616/ObreusDroid';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'ObreusDroid (Observer Resource Usage Android)';
	String get playstore_link => '';
	List<String> get tech => [
		'Bash',
	];
	String get type => 'Application';
}

// Path: projects.projects.9
class _LocaleProjects$projects$0i9$Id {
	_LocaleProjects$projects$0i9$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/make_a_good_excel_reader.png';
	String get description => 'Proyek akhir magang';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Make a Good Excel Reader';
	String get playstore_link => '';
	List<String> get tech => [
		'HTML',
		'CSS',
		'JavaScript',
		'PHP',
		'MySQL',
		'BootStrap',
	];
	String get type => 'Websites';
}

// Path: projects.projects.10
class _LocaleProjects$projects$0i10$Id {
	_LocaleProjects$projects$0i10$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/discite_institute.png';
	String get description => 'Proyek akhir proyek konsultan';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Discite Institute Website';
	String get playstore_link => '';
	List<String> get tech => [
		'PHP',
		'CMS WordPress',
		'MySQL',
	];
	String get type => 'Websites';
}

// Path: projects.projects.11
class _LocaleProjects$projects$0i11$Id {
	_LocaleProjects$projects$0i11$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/susmatior.png';
	String get description => 'Proyek capstone Kampus Merdeka (Dicoding Indonesia)';
	String get external_link => '';
	String get github_link => 'https://github.com/fajarmuhamad616/CSD104_SUSMATIOR';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Suspicious Information Observers (SUSMATIOR)';
	String get playstore_link => '';
	List<String> get tech => [
		'Dart',
		'Flutter',
		'Firebase',
	];
	String get type => 'Application';
}

// Path: projects.projects.12
class _LocaleProjects$projects$0i12$Id {
	_LocaleProjects$projects$0i12$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/kabima.png';
	String get description => 'Proyek akhir pemrograman berorientasi objek';
	String get external_link => '';
	String get github_link => 'https://github.com/fajarmuhamad616/Kabima';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Kasir Bisnis Mandiri (KABIMA)';
	String get playstore_link => '';
	List<String> get tech => [
		'SceneBuilder',
		'JavaFX',
		'FXML',
		'CSS',
		'MySQL',
	];
	String get type => 'Application';
}

// Path: projects.projects.13
class _LocaleProjects$projects$0i13$Id {
	_LocaleProjects$projects$0i13$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/lapif.png';
	String get description => 'Proyek akhir pemrograman web';
	String get external_link => 'https://lapif.netlify.app';
	String get github_link => 'https://github.com/fajarmuhamad616/LAPIF-Backend';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Layanan Aspirasi Pengaduan Informasi dan Forum (LAPIF)';
	String get playstore_link => '';
	List<String> get tech => [
		'HTML',
		'CSS',
		'JavaScript',
		'PHP',
		'MySQL',
		'Figma',
	];
	String get type => 'Websites';
}

// Path: projects.projects.14
class _LocaleProjects$projects$0i14$Id {
	_LocaleProjects$projects$0i14$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/secret_calorie.png';
	String get description => 'Proyek akhir AMSTR (Aplikasi Matematika, Sains, Teknologi, Rekayasa)';
	String get external_link => 'https://secretcalorie.github.io/home';
	String get github_link => 'https://github.com/fajarmuhamad616/SecretCalorie';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'SecretCalorie';
	String get playstore_link => '';
	List<String> get tech => [
		'HTML',
		'CSS',
		'JavaScript',
		'PHP',
		'MySQL',
		'Figma',
	];
	String get type => 'Websites';
}

// Path: projects.projects.15
class _LocaleProjects$projects$0i15$Id {
	_LocaleProjects$projects$0i15$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/upicare.png';
	String get description => 'Proyek akhir MSTR (Matematika, Sains, Teknologi, Rekayasa)';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'UPICARE';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Figma',
		'Arduino UNO',
	];
	String get type => 'Application';
}

// Path: skills.skills.0
class _LocaleSkills$skills$0i0$Id {
	_LocaleSkills$skills$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=13679&format=png';
	String get name => 'Java';
}

// Path: skills.skills.1
class _LocaleSkills$skills$0i1$Id {
	_LocaleSkills$skills$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=7AFcZ2zirX6Y&format=png';
	String get name => 'Dart';
}

// Path: skills.skills.2
class _LocaleSkills$skills$0i2$Id {
	_LocaleSkills$skills$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=9MJf0ngDwS8z&format=png';
	String get name => 'Bash';
}

// Path: skills.skills.3
class _LocaleSkills$skills$0i3$Id {
	_LocaleSkills$skills$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=ZoxjA0jZDdFZ&format=png';
	String get name => 'Kotlin';
}

// Path: skills.skills.4
class _LocaleSkills$skills$0i4$Id {
	_LocaleSkills$skills$0i4$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
	String get name => 'PHP';
}

// Path: skills.skills.5
class _LocaleSkills$skills$0i5$Id {
	_LocaleSkills$skills$0i5$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=90519&format=png';
	String get name => 'Spring Boot';
}

// Path: skills.skills.6
class _LocaleSkills$skills$0i6$Id {
	_LocaleSkills$skills$0i6$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
	String get name => 'Flutter';
}

// Path: skills.skills.7
class _LocaleSkills$skills$0i7$Id {
	_LocaleSkills$skills$0i7$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=38561&format=png';
	String get name => 'PostgreSQL';
}

// Path: skills.skills.8
class _LocaleSkills$skills$0i8$Id {
	_LocaleSkills$skills$0i8$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=39913&format=png';
	String get name => 'Oracle Database';
}

// Path: skills.skills.9
class _LocaleSkills$skills$0i9$Id {
	_LocaleSkills$skills$0i9$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	String get name => 'MySQL';
}

// Path: skills.skills.10
class _LocaleSkills$skills$0i10$Id {
	_LocaleSkills$skills$0i10$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	String get name => 'Firebase';
}

// Path: skills.skills.11
class _LocaleSkills$skills$0i11$Id {
	_LocaleSkills$skills$0i11$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
	String get name => 'MongoDb';
}

// Path: skills.skills.12
class _LocaleSkills$skills$0i12$Id {
	_LocaleSkills$skills$0i12$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://static-00.iconduck.com/assets.00/hibernate-icon-1965x2048-cl94vxbt.png';
	String get name => 'Hibernate';
}

// Path: skills.skills.13
class _LocaleSkills$skills$0i13$Id {
	_LocaleSkills$skills$0i13$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
	String get name => 'Figma';
}

// Path: skills.skills.14
class _LocaleSkills$skills$0i14$Id {
	_LocaleSkills$skills$0i14$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://i0.wp.com/www.sadeempc.com/wp-content/uploads/2022/10/SonarQube-Data-Center-Edition-Keygen.webp';
	String get name => 'SonarQube';
}

// Path: skills.skills.15
class _LocaleSkills$skills$0i15$Id {
	_LocaleSkills$skills$0i15$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=9uVrNMu3Zx1K&format=png';
	String get name => 'Grafana';
}

// Path: skills.skills.16
class _LocaleSkills$skills$0i16$Id {
	_LocaleSkills$skills$0i16$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=22813&format=png';
	String get name => 'Docker';
}

// Path: skills.skills.17
class _LocaleSkills$skills$0i17$Id {
	_LocaleSkills$skills$0i17$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=cvzmaEA4kC0o&format=png';
	String get name => 'Kubernetes';
}

// Path: skills.skills.18
class _LocaleSkills$skills$0i18$Id {
	_LocaleSkills$skills$0i18$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=aGBLcugRkYpT&format=png';
	String get name => 'Elasticsearch';
}

// Path: skills.skills.19
class _LocaleSkills$skills$0i19$Id {
	_LocaleSkills$skills$0i19$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Swagger-logo.png';
	String get name => 'Swagger';
}

// Path: <root>
class _LocaleEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_LocaleEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _LocaleEn _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleAboutEn about = _LocaleAboutEn._(_root);
	@override late final _LocaleExperienceEn experience = _LocaleExperienceEn._(_root);
	@override late final _LocaleGeneralEn general = _LocaleGeneralEn._(_root);
	@override late final _LocaleProjectsEn projects = _LocaleProjectsEn._(_root);
	@override late final _LocaleSkillsEn skills = _LocaleSkillsEn._(_root);
	@override late final _LocaleTabsEn tabs = _LocaleTabsEn._(_root);
}

// Path: about
class _LocaleAboutEn implements _LocaleAboutId {
	_LocaleAboutEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get about_me => 'I am graduated from Universitas Pendidikan Indonesia as Bachelor Degreer Software Engineer and ever followed Kampus Merdeka Independent Study program to learn depth Android Native and Multiplatform with integrated Backend as a Service (BaaS). I also follow internship program as Web Developer remotely with developing an Frontend, Backend, and API. Since college i have been active in community KOMPETEGRAM (KOMunitas PEncinta TEknologi pemroGRAMan) and practicum assistant on computer network course. Furthermore, i have achievement publication international journal scopus.\n\nAs a Software Engineer, I always learn depth and sharpen logic of coding to accumulate skill and experience with research and developing applications frontend or backend system. I have a work experience as a Software Engineer focusing in Backend Engineer in corporate of industry tour and travel agency. In my work i developing a services backend, migration data hotels and airlines, migration search system from deprecated system to latest system, domestic and international airlines gateway with complex API (REST and SOAP), and maintenance another services. Knowledge research and development since college i use to my work with always ensure source code to made readable without code smells with code refactor and made performance of applications avoid bottleneck. \n\nMoreover, i have experience to deployment with Docker and Kubernetes or Jenkins and softskills like communication and problem solving. With related experience, i have also collaborated with Quality Assurance (QA) to conduct testing at the development stage before the production stage.';
	@override List<dynamic> get about_cards => [
		_LocaleAbout$aboutCards$0i0$En._(_root),
		_LocaleAbout$aboutCards$0i1$En._(_root),
		_LocaleAbout$aboutCards$0i2$En._(_root),
		_LocaleAbout$aboutCards$0i3$En._(_root),
		_LocaleAbout$aboutCards$0i4$En._(_root),
	];
}

// Path: experience
class _LocaleExperienceEn implements _LocaleExperienceId {
	_LocaleExperienceEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get experiences => [
		_LocaleExperience$experiences$0i0$En._(_root),
		_LocaleExperience$experiences$0i1$En._(_root),
		_LocaleExperience$experiences$0i2$En._(_root),
		_LocaleExperience$experiences$0i3$En._(_root),
		_LocaleExperience$experiences$0i4$En._(_root),
	];
}

// Path: general
class _LocaleGeneralEn implements _LocaleGeneralId {
	_LocaleGeneralEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get language => 'Language';
	@override String get indonesia => 'Indonesia';
	@override String get english => 'English';
	@override String get thank_you => 'Thank You for contacting me';
	@override String get get_back => 'I will get back to you shortly';
	@override String get title_introduction_about_section => 'Introduction';
	@override String get title_about_section => 'About';
	@override String get title_contact_section => 'Contact';
	@override String get title_contact_me_section => 'Contact Me';
	@override String get get_in_touch_contact_section => 'Get in touch';
	@override String get feel_free_contact_section => 'Feel free to get in touch';
	@override String get hint_your_name_contact_section => 'Your name';
	@override String get hint_your_email_contact_section => 'Your email';
	@override String get hint_message_contact_section => 'Type your message';
	@override String get btn_send_contact_section => 'Send';
	@override String get title_experience_section => 'Work Experience';
	@override String get title_project_section => 'Projects';
	@override String get title_personal_projects_project_section => 'Personal Projects';
	@override String get title_client_projects_project_section => 'Work/Client Projects';
	@override String get m_title_personal_projects_project_section => 'Personal';
	@override String get m_title_client_projects_project_section => 'Work/Client';
	@override String get title_all_projects_project_section => 'All Projects';
	@override String get title_skill_section => 'Skills';
	@override String get introduce_home_my_name => 'Fajar Muhammad Al-Hijri';
	@override String get hi_home_section => 'Hi, my name ';
	@override String get introduce_home_section1 => 'I am a Software Engineer focusing in backend and mobile apps.';
	@override String get introduce_home_section2 => 'I developing a backend system for airlines and build a interactive software applications with run on cross platforms.';
	@override String get browse_projects_home_section => 'See Projects';
	@override String get required_input_field => 'This field is required';
	@override String get copy => 'Copied to clipboard';
}

// Path: projects
class _LocaleProjectsEn implements _LocaleProjectsId {
	_LocaleProjectsEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get projects => [
		_LocaleProjects$projects$0i0$En._(_root),
		_LocaleProjects$projects$0i1$En._(_root),
		_LocaleProjects$projects$0i2$En._(_root),
		_LocaleProjects$projects$0i3$En._(_root),
		_LocaleProjects$projects$0i4$En._(_root),
		_LocaleProjects$projects$0i5$En._(_root),
		_LocaleProjects$projects$0i6$En._(_root),
		_LocaleProjects$projects$0i7$En._(_root),
		_LocaleProjects$projects$0i8$En._(_root),
		_LocaleProjects$projects$0i9$En._(_root),
		_LocaleProjects$projects$0i10$En._(_root),
		_LocaleProjects$projects$0i11$En._(_root),
		_LocaleProjects$projects$0i12$En._(_root),
		_LocaleProjects$projects$0i13$En._(_root),
		_LocaleProjects$projects$0i14$En._(_root),
		_LocaleProjects$projects$0i15$En._(_root),
	];
}

// Path: skills
class _LocaleSkillsEn implements _LocaleSkillsId {
	_LocaleSkillsEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get skills => [
		_LocaleSkills$skills$0i0$En._(_root),
		_LocaleSkills$skills$0i1$En._(_root),
		_LocaleSkills$skills$0i2$En._(_root),
		_LocaleSkills$skills$0i3$En._(_root),
		_LocaleSkills$skills$0i4$En._(_root),
		_LocaleSkills$skills$0i5$En._(_root),
		_LocaleSkills$skills$0i6$En._(_root),
		_LocaleSkills$skills$0i7$En._(_root),
		_LocaleSkills$skills$0i8$En._(_root),
		_LocaleSkills$skills$0i9$En._(_root),
		_LocaleSkills$skills$0i10$En._(_root),
		_LocaleSkills$skills$0i11$En._(_root),
		_LocaleSkills$skills$0i12$En._(_root),
		_LocaleSkills$skills$0i13$En._(_root),
		_LocaleSkills$skills$0i14$En._(_root),
		_LocaleSkills$skills$0i15$En._(_root),
		_LocaleSkills$skills$0i16$En._(_root),
		_LocaleSkills$skills$0i17$En._(_root),
		_LocaleSkills$skills$0i18$En._(_root),
		_LocaleSkills$skills$0i19$En._(_root),
	];
}

// Path: tabs
class _LocaleTabsEn implements _LocaleTabsId {
	_LocaleTabsEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<String> get tabs => [
		'Home',
		'About',
		'Skills',
		'Experience',
		'Projects',
		'Contact',
		'Download CV',
	];
}

// Path: about.about_cards.0
class _LocaleAbout$aboutCards$0i0$En implements _LocaleAbout$aboutCards$0i0$Id {
	_LocaleAbout$aboutCards$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Made code of applications high quality and reusable.';
	@override String get title => 'Software Engineer';
}

// Path: about.about_cards.1
class _LocaleAbout$aboutCards$0i1$En implements _LocaleAbout$aboutCards$0i1$Id {
	_LocaleAbout$aboutCards$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Using Java & Spring Boot, I can developing backend systems.';
	@override String get title => 'Backend Developer';
}

// Path: about.about_cards.2
class _LocaleAbout$aboutCards$0i2$En implements _LocaleAbout$aboutCards$0i2$Id {
	_LocaleAbout$aboutCards$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Developing and Integrating APIs to synchronize another services (microservices).';
	@override String get title => 'API Development & Integration';
}

// Path: about.about_cards.3
class _LocaleAbout$aboutCards$0i3$En implements _LocaleAbout$aboutCards$0i3$Id {
	_LocaleAbout$aboutCards$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Using Dart & Flutter, I can developing applications and websites.';
	@override String get title => 'Mobile Apps Developer';
}

// Path: about.about_cards.4
class _LocaleAbout$aboutCards$0i4$En implements _LocaleAbout$aboutCards$0i4$Id {
	_LocaleAbout$aboutCards$0i4$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'I research of code smells and refactor to avoid bug and bottleneck.';
	@override String get title => 'Research & Code Refactor';
}

// Path: experience.experiences.0
class _LocaleExperience$experiences$0i0$En implements _LocaleExperience$experiences$0i0$Id {
	_LocaleExperience$experiences$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'PT Voltras International';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'Full - Time';
	@override String get position => 'Software Engineer (Onsite)';
	@override String get site_url => 'www.travelagent.co.id';
	@override String get start_date => '2023-06-05T00:00:00.000';
	@override String get end_date => '2024-06-05T00:00:00.000';
	@override String get state => 'South Tangerang';
	@override List<String> get works => [
		'Filtering train availability by each class from Kereta Api Indonesia (KAI) API.',
		'Development feature import and export each hotel in spreadsheets and flter the duplicate hotel data with scoring in hotel management service.',
		'Migration more than 350.000 hotel data from Solr to Elasticsearch to the aim suggest search.',
		'Migration airports searching data (code, name, and location) from Solr to Elasticsearch to the aim suggest search.',
		'Migration airlines passenger data from Solr to Elasticsearch to the aim saved a history passenger reserved.',
		'Transformation data storage from Solr to Elasticsearch on the hotel and airline service.',
		'Development and implementation feature availability, fare, booking, cancel, retrieve ancillary, payment, print ticket, balance of international and domestic airlines API gateway (TransNusa airlines, Singapore airlines, and Sabre) with transformation XML to JSON, include API version NDC (New Distribution Capability) until UAT (User Acceptance Testing).',
		'Development an API logger to taking incoming log (inbound) and outgoing log (outbound) API gateway 8B (TransNusa Airlines), SQ (Singapore Airlines), JT (Lion Airlines), JQ (Jetstar Airlines), and Sabre.',
	];
	@override String get is_work_here => 'false';
}

// Path: experience.experiences.1
class _LocaleExperience$experiences$0i1$En implements _LocaleExperience$experiences$0i1$Id {
	_LocaleExperience$experiences$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'PT Informasi Teknologi Indonesia';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'Internship';
	@override String get position => 'Web Developer (Remote)';
	@override String get site_url => 'jatismobile.com';
	@override String get start_date => '2022-08-18T00:00:00.000';
	@override String get end_date => '2022-12-26T00:00:00.000';
	@override String get state => 'South Jakarta';
	@override List<String> get works => [
		'Make innovations or new ideas for one of the products in Jatis Mobile and presented.',
		'Development a backend of website with concept MVC PHP native and front-end each page front-end adjusts UI/UX design.',
		'Development project \'Make a Good Excel Reader\' with feature verify email, import and export data to spreadsheets, and API.',
	];
	@override String get is_work_here => 'false';
}

// Path: experience.experiences.2
class _LocaleExperience$experiences$0i2$En implements _LocaleExperience$experiences$0i2$Id {
	_LocaleExperience$experiences$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'Universitas Pendidikan Indonesia';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'Seasonal';
	@override String get position => 'Practicum Assistant (Remote)';
	@override String get site_url => 'rpl.upi.edu';
	@override String get start_date => '2022-02-02T00:00:00.000';
	@override String get end_date => '2022-05-25T00:00:00.000';
	@override String get state => 'Bandung Regency';
	@override List<String> get works => [
		'Made a handbook about computer network.',
		'Help students in practical sessions using Cisco Packet Tracer.',
		'Assisting the lecturer in computer network course.',
	];
	@override String get is_work_here => 'false';
}

// Path: experience.experiences.3
class _LocaleExperience$experiences$0i3$En implements _LocaleExperience$experiences$0i3$Id {
	_LocaleExperience$experiences$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'Discite Institute';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'Project Based';
	@override String get position => 'Web Developer (Remote)';
	@override String get site_url => 'www.disciteinstitute.my.id';
	@override String get start_date => '2022-02-23T00:00:00.000';
	@override String get end_date => '2022-05-13T00:00:00.000';
	@override String get state => 'Padang';
	@override List<String> get works => [
		'Development a website Discite Institute with Content Management System (CMS) WordPress with a customization user interface.',
		'Collaborating between UI/UX design team and development team.',
		'Made a guide documentation about usage the website of Discite Institute.',
	];
	@override String get is_work_here => 'false';
}

// Path: experience.experiences.4
class _LocaleExperience$experiences$0i4$En implements _LocaleExperience$experiences$0i4$Id {
	_LocaleExperience$experiences$0i4$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'PT Telkom Indonesia';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'Internship';
	@override String get position => 'Maintenance Preventive STO (Onsite)';
	@override String get site_url => 'www.telkom.co.id';
	@override String get start_date => '2018-03-22T00:00:00.000';
	@override String get end_date => '2018-06-22T00:00:00.000';
	@override String get state => 'Serang City';
	@override List<String> get works => [
		'Perform damping validation of fber optic on network maintenance.',
		'Work on entries label of data for each fber optic into the website to the aim maintenance network.',
		'Documentation repairing fiber optic network.',
	];
	@override String get is_work_here => 'false';
}

// Path: projects.projects.0
class _LocaleProjects$projects$0i0$En implements _LocaleProjects$projects$0i0$Id {
	_LocaleProjects$projects$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/portfolio.png';
	@override String get description => 'Website for personal branding portfolio';
	@override String get external_link => 'https://fajarmuhamad616.github.io/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Portfolio Fajar Muhammad Al-Hijri';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Dart',
		'Flutter',
	];
	@override String get type => 'Websites';
}

// Path: projects.projects.1
class _LocaleProjects$projects$0i1$En implements _LocaleProjects$projects$0i1$Id {
	_LocaleProjects$projects$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	@override String get description => 'Gateway for Sabre';
	@override String get external_link => 'https://www.travelagent.co.id/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'false';
	@override String get name => 'Airline Gateway Sabre (Project name ommited)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Jasper Reports',
	];
	@override String get type => 'Gateway';
}

// Path: projects.projects.2
class _LocaleProjects$projects$0i2$En implements _LocaleProjects$projects$0i2$Id {
	_LocaleProjects$projects$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	@override String get description => 'Gateway for SQ Singapore Airlines';
	@override String get external_link => 'https://www.travelagent.co.id/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'false';
	@override String get name => 'Airline Gateway SQ Singapore Airlines (Project name ommited)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Jasper Reports',
	];
	@override String get type => 'Gateway';
}

// Path: projects.projects.3
class _LocaleProjects$projects$0i3$En implements _LocaleProjects$projects$0i3$Id {
	_LocaleProjects$projects$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	@override String get description => 'Gateway for 8B TransNusa Airlines';
	@override String get external_link => 'https://www.travelagent.co.id/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'false';
	@override String get name => 'Airline Gateway 8B TransNusa Airlines (Project name ommited)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Jasper Reports',
	];
	@override String get type => 'Gateway';
}

// Path: projects.projects.4
class _LocaleProjects$projects$0i4$En implements _LocaleProjects$projects$0i4$Id {
	_LocaleProjects$projects$0i4$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	@override String get description => 'Services for Airlines';
	@override String get external_link => 'https://www.travelagent.co.id/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'false';
	@override String get name => 'Airline Booking Service (Project name ommited)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Apache Solr',
		'Elasticsearch',
	];
	@override String get type => 'Services';
}

// Path: projects.projects.5
class _LocaleProjects$projects$0i5$En implements _LocaleProjects$projects$0i5$Id {
	_LocaleProjects$projects$0i5$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	@override String get description => 'Services for Hotel';
	@override String get external_link => 'https://www.travelagent.co.id/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'false';
	@override String get name => 'Hotel Booking Service (Project name ommited)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
		'Apache Solr',
		'Elasticsearch',
	];
	@override String get type => 'Services';
}

// Path: projects.projects.6
class _LocaleProjects$projects$0i6$En implements _LocaleProjects$projects$0i6$Id {
	_LocaleProjects$projects$0i6$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	@override String get description => 'Translocation for Airlines Data';
	@override String get external_link => 'https://www.travelagent.co.id/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'false';
	@override String get name => 'Airline Translocation (Project name ommited)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Spring boot',
		'Oracle Database',
		'PostgreSQL',
		'Apache Solr',
		'Elasticsearch',
	];
	@override String get type => 'Services';
}

// Path: projects.projects.7
class _LocaleProjects$projects$0i7$En implements _LocaleProjects$projects$0i7$Id {
	_LocaleProjects$projects$0i7$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
	@override String get description => 'Services for Train';
	@override String get external_link => 'https://www.travelagent.co.id/';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'false';
	@override String get name => 'Train Availability Services (Project name ommited)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Spring boot',
		'PostgreSQL',
	];
	@override String get type => 'Services';
}

// Path: projects.projects.8
class _LocaleProjects$projects$0i8$En implements _LocaleProjects$projects$0i8$Id {
	_LocaleProjects$projects$0i8$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/obreus_droid.png';
	@override String get description => 'Final project for Thesis';
	@override String get external_link => 'https://doi.org/10.5281/zenodo.7665495';
	@override String get github_link => 'https://github.com/fajarmuhamad616/ObreusDroid';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'ObreusDroid (Observer Resource Usage Android)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Bash',
	];
	@override String get type => 'Application';
}

// Path: projects.projects.9
class _LocaleProjects$projects$0i9$En implements _LocaleProjects$projects$0i9$Id {
	_LocaleProjects$projects$0i9$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/make_a_good_excel_reader.png';
	@override String get description => 'Final project of Internship';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Make a Good Excel Reader';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'HTML',
		'CSS',
		'JavaScript',
		'PHP',
		'MySQL',
		'BootStrap',
	];
	@override String get type => 'Websites';
}

// Path: projects.projects.10
class _LocaleProjects$projects$0i10$En implements _LocaleProjects$projects$0i10$Id {
	_LocaleProjects$projects$0i10$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/discite_institute.png';
	@override String get description => 'Final project of course consultant project';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Discite Institute Website';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'PHP',
		'CMS WordPress',
		'MySQL',
	];
	@override String get type => 'Websites';
}

// Path: projects.projects.11
class _LocaleProjects$projects$0i11$En implements _LocaleProjects$projects$0i11$Id {
	_LocaleProjects$projects$0i11$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/susmatior.png';
	@override String get description => 'Capstone project of Kampus Merdeka (Dicoding Indonesia)';
	@override String get external_link => '';
	@override String get github_link => 'https://github.com/fajarmuhamad616/CSD104_SUSMATIOR';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Suspicious Information Observers (SUSMATIOR)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Dart',
		'Flutter',
		'Firebase',
	];
	@override String get type => 'Application';
}

// Path: projects.projects.12
class _LocaleProjects$projects$0i12$En implements _LocaleProjects$projects$0i12$Id {
	_LocaleProjects$projects$0i12$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/kabima.png';
	@override String get description => 'Final project of course Object-Oriented Programming';
	@override String get external_link => '';
	@override String get github_link => 'https://github.com/fajarmuhamad616/Kabima';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Kasir Bisnis Mandiri (KABIMA)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'SceneBuilder',
		'JavaFX',
		'FXML',
		'CSS',
		'MySQL',
	];
	@override String get type => 'Application';
}

// Path: projects.projects.13
class _LocaleProjects$projects$0i13$En implements _LocaleProjects$projects$0i13$Id {
	_LocaleProjects$projects$0i13$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/lapif.png';
	@override String get description => 'Final project of course Web Programming';
	@override String get external_link => 'https://lapif.netlify.app';
	@override String get github_link => 'https://github.com/fajarmuhamad616/LAPIF-Backend';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Layanan Aspirasi Pengaduan Informasi dan Forum (LAPIF)';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'HTML',
		'CSS',
		'JavaScript',
		'PHP',
		'MySQL',
		'Figma',
	];
	@override String get type => 'Websites';
}

// Path: projects.projects.14
class _LocaleProjects$projects$0i14$En implements _LocaleProjects$projects$0i14$Id {
	_LocaleProjects$projects$0i14$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/secret_calorie.png';
	@override String get description => 'Final project of course ASTEM (Application of Sains, Technology, Engineering, Mathematics)';
	@override String get external_link => 'https://secretcalorie.github.io/home';
	@override String get github_link => 'https://github.com/fajarmuhamad616/SecretCalorie';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'SecretCalorie';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'HTML',
		'CSS',
		'JavaScript',
		'PHP',
		'MySQL',
		'Figma',
	];
	@override String get type => 'Websites';
}

// Path: projects.projects.15
class _LocaleProjects$projects$0i15$En implements _LocaleProjects$projects$0i15$Id {
	_LocaleProjects$projects$0i15$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/upicare.png';
	@override String get description => 'Final project of course STEM (Sains, Technology, Engineering, Mathematics)';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'UPICARE';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Figma',
		'Arduino UNO',
	];
	@override String get type => 'Application';
}

// Path: skills.skills.0
class _LocaleSkills$skills$0i0$En implements _LocaleSkills$skills$0i0$Id {
	_LocaleSkills$skills$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=13679&format=png';
	@override String get name => 'Java';
}

// Path: skills.skills.1
class _LocaleSkills$skills$0i1$En implements _LocaleSkills$skills$0i1$Id {
	_LocaleSkills$skills$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=7AFcZ2zirX6Y&format=png';
	@override String get name => 'Dart';
}

// Path: skills.skills.2
class _LocaleSkills$skills$0i2$En implements _LocaleSkills$skills$0i2$Id {
	_LocaleSkills$skills$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=9MJf0ngDwS8z&format=png';
	@override String get name => 'Bash';
}

// Path: skills.skills.3
class _LocaleSkills$skills$0i3$En implements _LocaleSkills$skills$0i3$Id {
	_LocaleSkills$skills$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=ZoxjA0jZDdFZ&format=png';
	@override String get name => 'Kotlin';
}

// Path: skills.skills.4
class _LocaleSkills$skills$0i4$En implements _LocaleSkills$skills$0i4$Id {
	_LocaleSkills$skills$0i4$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
	@override String get name => 'PHP';
}

// Path: skills.skills.5
class _LocaleSkills$skills$0i5$En implements _LocaleSkills$skills$0i5$Id {
	_LocaleSkills$skills$0i5$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=90519&format=png';
	@override String get name => 'Spring Boot';
}

// Path: skills.skills.6
class _LocaleSkills$skills$0i6$En implements _LocaleSkills$skills$0i6$Id {
	_LocaleSkills$skills$0i6$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
	@override String get name => 'Flutter';
}

// Path: skills.skills.7
class _LocaleSkills$skills$0i7$En implements _LocaleSkills$skills$0i7$Id {
	_LocaleSkills$skills$0i7$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=38561&format=png';
	@override String get name => 'PostgreSQL';
}

// Path: skills.skills.8
class _LocaleSkills$skills$0i8$En implements _LocaleSkills$skills$0i8$Id {
	_LocaleSkills$skills$0i8$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=39913&format=png';
	@override String get name => 'Oracle Database';
}

// Path: skills.skills.9
class _LocaleSkills$skills$0i9$En implements _LocaleSkills$skills$0i9$Id {
	_LocaleSkills$skills$0i9$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	@override String get name => 'MySQL';
}

// Path: skills.skills.10
class _LocaleSkills$skills$0i10$En implements _LocaleSkills$skills$0i10$Id {
	_LocaleSkills$skills$0i10$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	@override String get name => 'Firebase';
}

// Path: skills.skills.11
class _LocaleSkills$skills$0i11$En implements _LocaleSkills$skills$0i11$Id {
	_LocaleSkills$skills$0i11$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
	@override String get name => 'MongoDb';
}

// Path: skills.skills.12
class _LocaleSkills$skills$0i12$En implements _LocaleSkills$skills$0i12$Id {
	_LocaleSkills$skills$0i12$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://static-00.iconduck.com/assets.00/hibernate-icon-1965x2048-cl94vxbt.png';
	@override String get name => 'Hibernate';
}

// Path: skills.skills.13
class _LocaleSkills$skills$0i13$En implements _LocaleSkills$skills$0i13$Id {
	_LocaleSkills$skills$0i13$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
	@override String get name => 'Figma';
}

// Path: skills.skills.14
class _LocaleSkills$skills$0i14$En implements _LocaleSkills$skills$0i14$Id {
	_LocaleSkills$skills$0i14$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://i0.wp.com/www.sadeempc.com/wp-content/uploads/2022/10/SonarQube-Data-Center-Edition-Keygen.webp';
	@override String get name => 'SonarQube';
}

// Path: skills.skills.15
class _LocaleSkills$skills$0i15$En implements _LocaleSkills$skills$0i15$Id {
	_LocaleSkills$skills$0i15$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=9uVrNMu3Zx1K&format=png';
	@override String get name => 'Grafana';
}

// Path: skills.skills.16
class _LocaleSkills$skills$0i16$En implements _LocaleSkills$skills$0i16$Id {
	_LocaleSkills$skills$0i16$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=22813&format=png';
	@override String get name => 'Docker';
}

// Path: skills.skills.17
class _LocaleSkills$skills$0i17$En implements _LocaleSkills$skills$0i17$Id {
	_LocaleSkills$skills$0i17$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=cvzmaEA4kC0o&format=png';
	@override String get name => 'Kubernetes';
}

// Path: skills.skills.18
class _LocaleSkills$skills$0i18$En implements _LocaleSkills$skills$0i18$Id {
	_LocaleSkills$skills$0i18$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=aGBLcugRkYpT&format=png';
	@override String get name => 'Elasticsearch';
}

// Path: skills.skills.19
class _LocaleSkills$skills$0i19$En implements _LocaleSkills$skills$0i19$Id {
	_LocaleSkills$skills$0i19$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Swagger-logo.png';
	@override String get name => 'Swagger';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about.about_me': return 'Saya lulusan Universitas Pendidikan Indonesia sebagai Sarjana Software Engineer dan pernah mengikuti program Studi Mandiri Kampus Merdeka untuk mendalami Android Native dan Multiplatform dengan Backend as a Service (BaaS) yang terintegrasi. Saya juga mengikuti program magang sebagai Web Developer secara remote dengan mengembangkan Frontend, Backend, dan API. Sejak kuliah saya aktif di komunitas KOMPETEGRAM (KOMunitas PEncinta TEknologi pemroGRAMan) dan asisten praktikum pada mata kuliah jaringan komputer. Selain itu, saya memiliki prestasi publikasi jurnal internasional scopus.\n\nSebagai Software Engineer, saya selalu belajar secara mendalam dan mengasah logika coding untuk mengumpulkan keterampilan dan pengalaman dengan penelitian dan pengembangan aplikasi sistem frontend atau backend. Saya memiliki pengalaman kerja sebagai Software Engineer dengan fokus pada Backend Engineer di perusahaan atau industri tour and travel agency. Dalam pekerjaan saya, saya mengembangkan layanan backend, migrasi data hotel dan maskapai penerbangan, migrasi sistem pencarian dari sistem usang ke sistem terbaru, gateway maskapai penerbangan domestik dan internasional dengan API yang kompleks (REST dan SOAP), dan pemeliharaan layanan lainnya. Riset dan pengembangan pengetahuan sejak kuliah saya gunakan dalam pekerjaan saya dengan selalu memastikan kode sumber dapat dibaca tanpa code smells dengan melakukan refaktor kode dan membuat kinerja aplikasi terhindar dari kemacetan. \n\nSelain itu, saya memiliki pengalaman dalam penerapan dengan Docker dan Kubernetes atau Jenkins dan softskill seperti komunikasi dan pemecahan masalah. Dengan pengalaman terkait, saya juga telah bekerja sama dengan Quality Assurance (QA) untuk melakukan pengujian pada tahap pengembangan sebelum tahap produksi.';
			case 'about.about_cards.0.content': return 'Membuat kode aplikasi berkualitas tinggi dan dapat digunakan kembali.';
			case 'about.about_cards.0.title': return 'Software Engineer';
			case 'about.about_cards.1.content': return 'Menggunakan Java & Spring Boot, saya dapat mengembangkan sistem backend.';
			case 'about.about_cards.1.title': return 'Backend Developer';
			case 'about.about_cards.2.content': return 'Mengembangkan dan mengintegrasikan API untuk menyinkronkan service lain (microservices).';
			case 'about.about_cards.2.title': return 'API Development & Integration';
			case 'about.about_cards.3.content': return 'Menggunakan Dart & Flutter, saya dapat mengembangkan aplikasi dan situs web.';
			case 'about.about_cards.3.title': return 'Mobile Apps Developer';
			case 'about.about_cards.4.content': return 'Saya meneliti code smells dan melakukan refactor untuk menghindari bug dan bottleneck.';
			case 'about.about_cards.4.title': return 'Research & Code Refactor';
			case 'experience.experiences.0.company': return 'PT Voltras International';
			case 'experience.experiences.0.country': return 'Indonesia';
			case 'experience.experiences.0.emp_type': return 'Penuh - Waktu';
			case 'experience.experiences.0.position': return 'Software Engineer (Onsite)';
			case 'experience.experiences.0.site_url': return 'www.travelagent.co.id';
			case 'experience.experiences.0.start_date': return '2023-06-05T00:00:00.000';
			case 'experience.experiences.0.end_date': return '2024-06-05T00:00:00.000';
			case 'experience.experiences.0.state': return 'Tangerang Selatan';
			case 'experience.experiences.0.works.0': return 'Pemfilteran ketersediaan kereta api berdasarkan tiap kelas dari API Kereta Api Indonesia (KAI).';
			case 'experience.experiences.0.works.1': return 'Pengembangan fitur impor dan ekspor tiap hotel dalam spreadsheet dan pemfilteran data hotel duplikat dengan penilaian dalam layanan manajemen hotel.';
			case 'experience.experiences.0.works.2': return 'Migrasi lebih dari 350.000 data hotel dari Solr ke Elasticsearch ke tujuan pencarian yang disarankan.';
			case 'experience.experiences.0.works.3': return 'Migrasi data pencarian bandara (kode, nama, dan lokasi) dari Solr ke Elasticsearch ke tujuan pencarian yang disarankan.';
			case 'experience.experiences.0.works.4': return 'Migrasi data penumpang maskapai penerbangan dari Solr ke Elasticsearch ke tujuan menyimpan riwayat reservasi penumpang.';
			case 'experience.experiences.0.works.5': return 'Transformasi penyimpanan data dari Solr ke Elasticsearch pada layanan hotel dan maskapai penerbangan.';
			case 'experience.experiences.0.works.6': return 'Pengembangan dan implementasi fitur ketersediaan, tarif, pemesanan, pembatalan, pengambilan tambahan, pembayaran, cetak tiket, saldo gateway API maskapai penerbangan internasional dan domestik (maskapai penerbangan TransNusa, Singapore Airlines, dan Sabre) dengan transformasi XML ke JSON, termasuk API versi NDC (New Distribution Capability) hingga UAT (User Acceptance Testing).';
			case 'experience.experiences.0.works.7': return 'Pengembangan API logger untuk mengambil log masuk (inbound) dan log keluar (outbound) gateway API 8B (TransNusa Airlines), SQ (Singapore Airlines), JT (Lion Airlines), JQ (Jetstar Airlines), dan Sabre.';
			case 'experience.experiences.0.is_work_here': return 'false';
			case 'experience.experiences.1.company': return 'PT Informasi Teknologi Indonesia';
			case 'experience.experiences.1.country': return 'Indonesia';
			case 'experience.experiences.1.emp_type': return 'Magang';
			case 'experience.experiences.1.position': return 'Web Developer (Remote)';
			case 'experience.experiences.1.site_url': return 'jatismobile.com';
			case 'experience.experiences.1.start_date': return '2022-08-18T00:00:00.000';
			case 'experience.experiences.1.end_date': return '2022-12-26T00:00:00.000';
			case 'experience.experiences.1.state': return 'Jakarta Selatan';
			case 'experience.experiences.1.works.0': return 'Melakukan inovasi atau ide baru untuk salah satu produk di Jatis Mobile dan dipresentasikan.';
			case 'experience.experiences.1.works.1': return 'Pengembangan backend website dengan konsep MVC PHP native dan front-end yang setiap halaman front-endnya menyesuaikan desain UI/UX.';
			case 'experience.experiences.1.works.2': return 'Pengembangan proyek \'Membuat Pembaca Excel yang Baik\' dengan fitur verifikasi email, impor dan ekspor data ke spreadsheet, dan API.';
			case 'experience.experiences.1.is_work_here': return 'false';
			case 'experience.experiences.2.company': return 'Universitas Pendidikan Indonesia';
			case 'experience.experiences.2.country': return 'Indonesia';
			case 'experience.experiences.2.emp_type': return 'Musiman';
			case 'experience.experiences.2.position': return 'Asisten Praktikum (Remote)';
			case 'experience.experiences.2.site_url': return 'rpl.upi.edu';
			case 'experience.experiences.2.start_date': return '2022-02-02T00:00:00.000';
			case 'experience.experiences.2.end_date': return '2022-05-25T00:00:00.000';
			case 'experience.experiences.2.state': return 'Kabupaten Bandung';
			case 'experience.experiences.2.works.0': return 'Membuat buku pegangan tentang jaringan komputer.';
			case 'experience.experiences.2.works.1': return 'Membantu mahasiswa dalam sesi praktik menggunakan Cisco Packet Tracer.';
			case 'experience.experiences.2.works.2': return 'Membantu dosen dalam mata kuliah jaringan komputer.';
			case 'experience.experiences.2.is_work_here': return 'false';
			case 'experience.experiences.3.company': return 'Discite Institute';
			case 'experience.experiences.3.country': return 'Indonesia';
			case 'experience.experiences.3.emp_type': return 'Project Based';
			case 'experience.experiences.3.position': return 'Web Developer (Remote)';
			case 'experience.experiences.3.site_url': return 'www.disciteinstitute.my.id';
			case 'experience.experiences.3.start_date': return '2022-02-23T00:00:00.000';
			case 'experience.experiences.3.end_date': return '2022-05-13T00:00:00.000';
			case 'experience.experiences.3.state': return 'Padang';
			case 'experience.experiences.3.works.0': return 'Pengembangan situs web Discite Institute dengan Sistem Manajemen Konten (CMS) WordPress dengan antarmuka pengguna yang dapat disesuaikan.';
			case 'experience.experiences.3.works.1': return 'Kolaborasi antara tim desain UI/UX dan tim pengembangan.';
			case 'experience.experiences.3.works.2': return 'Membuat dokumentasi panduan tentang penggunaan situs web Discite Institute.';
			case 'experience.experiences.3.is_work_here': return 'false';
			case 'experience.experiences.4.company': return 'PT Telkom Indonesia';
			case 'experience.experiences.4.country': return 'Indonesia';
			case 'experience.experiences.4.emp_type': return 'Magang';
			case 'experience.experiences.4.position': return 'Maintenance Preventive STO (Onsite)';
			case 'experience.experiences.4.site_url': return 'www.telkom.co.id';
			case 'experience.experiences.4.start_date': return '2018-03-22T00:00:00.000';
			case 'experience.experiences.4.end_date': return '2018-06-22T00:00:00.000';
			case 'experience.experiences.4.state': return 'Kota Serang';
			case 'experience.experiences.4.works.0': return 'Melakukan validasi peredaman optik fber pada pemeliharaan jaringan.';
			case 'experience.experiences.4.works.1': return 'Kerjakan entri label data untuk setiap optik fber ke situs web untuk pemeliharaan jaringan tujuan.';
			case 'experience.experiences.4.works.2': return 'Dokumentasi perbaikan jaringan optik fiber.';
			case 'experience.experiences.4.is_work_here': return 'false';
			case 'general.language': return 'Bahasa';
			case 'general.indonesia': return 'Indonesia';
			case 'general.english': return 'English';
			case 'general.thank_you': return 'Terima kasih telah menghubungi saya';
			case 'general.get_back': return 'Saya akan segera menghubungi Anda kembali';
			case 'general.title_introduction_about_section': return 'Perkenalan';
			case 'general.title_about_section': return 'Tentang';
			case 'general.title_contact_section': return 'Kontak';
			case 'general.title_contact_me_section': return 'Kontak saya';
			case 'general.get_in_touch_contact_section': return 'Hubungi kami';
			case 'general.feel_free_contact_section': return 'Jangan ragu untuk menghubungi kami';
			case 'general.hint_your_name_contact_section': return 'Namamu';
			case 'general.hint_your_email_contact_section': return 'Emailmu';
			case 'general.hint_message_contact_section': return 'Ketik pesan Anda';
			case 'general.btn_send_contact_section': return 'Kirim';
			case 'general.title_experience_section': return 'Pengalaman Professional';
			case 'general.title_project_section': return 'Proyek';
			case 'general.title_personal_projects_project_section': return 'Proyek Personal';
			case 'general.title_client_projects_project_section': return 'Proyek Pekerjaan/Klien';
			case 'general.m_title_personal_projects_project_section': return 'Personal';
			case 'general.m_title_client_projects_project_section': return 'Klien';
			case 'general.title_all_projects_project_section': return 'Semua Proyek';
			case 'general.title_skill_section': return 'Keterampilan';
			case 'general.introduce_home_my_name': return 'Fajar Muhammad Al-Hijri';
			case 'general.hi_home_section': return 'Hai! Nama saya ';
			case 'general.introduce_home_section1': return 'Saya seorang Software Engineer yang berfokus pada aplikasi backend dan seluler.';
			case 'general.introduce_home_section2': return 'Saya mengembangkan sistem backend untuk maskapai penerbangan dan membangun aplikasi perangkat lunak interaktif yang dapat berjalan di berbagai platform.';
			case 'general.browse_projects_home_section': return 'Lihat Proyek';
			case 'general.required_input_field': return 'Bagian ini diperlukan';
			case 'general.copy': return 'Disalin ke papan klip';
			case 'projects.projects.0.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/portfolio.png';
			case 'projects.projects.0.description': return 'Website untuk branding personal portfolio';
			case 'projects.projects.0.external_link': return 'https://fajarmuhamad616.github.io/';
			case 'projects.projects.0.github_link': return '';
			case 'projects.projects.0.is_personal': return 'true';
			case 'projects.projects.0.name': return 'Portfolio Fajar Muhammad Al-Hijri';
			case 'projects.projects.0.playstore_link': return '';
			case 'projects.projects.0.tech.0': return 'Dart';
			case 'projects.projects.0.tech.1': return 'Flutter';
			case 'projects.projects.0.type': return 'Websites';
			case 'projects.projects.1.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.1.description': return 'Gateway untuk Sabre';
			case 'projects.projects.1.external_link': return 'www.travelagent.co.id';
			case 'projects.projects.1.github_link': return '';
			case 'projects.projects.1.is_personal': return 'false';
			case 'projects.projects.1.name': return 'Airline Gateway Sabre (Project name ommited)';
			case 'projects.projects.1.playstore_link': return '';
			case 'projects.projects.1.tech.0': return 'Java';
			case 'projects.projects.1.tech.1': return 'Spring boot';
			case 'projects.projects.1.tech.2': return 'PostgreSQL';
			case 'projects.projects.1.tech.3': return 'Jasper Reports';
			case 'projects.projects.1.type': return 'Gateway';
			case 'projects.projects.2.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.2.description': return 'Gateway untuk pesawat SQ Singapore';
			case 'projects.projects.2.external_link': return 'www.travelagent.co.id';
			case 'projects.projects.2.github_link': return '';
			case 'projects.projects.2.is_personal': return 'false';
			case 'projects.projects.2.name': return 'Airline Gateway SQ Singapore Airlines (Project name ommited)';
			case 'projects.projects.2.playstore_link': return '';
			case 'projects.projects.2.tech.0': return 'Java';
			case 'projects.projects.2.tech.1': return 'Spring boot';
			case 'projects.projects.2.tech.2': return 'PostgreSQL';
			case 'projects.projects.2.tech.3': return 'Jasper Reports';
			case 'projects.projects.2.type': return 'Gateway';
			case 'projects.projects.3.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.3.description': return 'Gateway untuk pesawat 8B TransNusa';
			case 'projects.projects.3.external_link': return 'www.travelagent.co.id';
			case 'projects.projects.3.github_link': return '';
			case 'projects.projects.3.is_personal': return 'false';
			case 'projects.projects.3.name': return 'Airline Gateway 8B TransNusa Airlines (Project name ommited)';
			case 'projects.projects.3.playstore_link': return '';
			case 'projects.projects.3.tech.0': return 'Java';
			case 'projects.projects.3.tech.1': return 'Spring boot';
			case 'projects.projects.3.tech.2': return 'PostgreSQL';
			case 'projects.projects.3.tech.3': return 'Jasper Reports';
			case 'projects.projects.3.type': return 'Gateway';
			case 'projects.projects.4.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.4.description': return 'Services untuk pesawat terbang';
			case 'projects.projects.4.external_link': return 'www.travelagent.co.id';
			case 'projects.projects.4.github_link': return '';
			case 'projects.projects.4.is_personal': return 'false';
			case 'projects.projects.4.name': return 'Airline Booking Service (Project name ommited)';
			case 'projects.projects.4.playstore_link': return '';
			case 'projects.projects.4.tech.0': return 'Java';
			case 'projects.projects.4.tech.1': return 'Spring boot';
			case 'projects.projects.4.tech.2': return 'PostgreSQL';
			case 'projects.projects.4.tech.3': return 'Apache Solr';
			case 'projects.projects.4.tech.4': return 'Elasticsearch';
			case 'projects.projects.4.type': return 'Services';
			case 'projects.projects.5.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.5.description': return 'Services untuk hotel';
			case 'projects.projects.5.external_link': return 'www.travelagent.co.id';
			case 'projects.projects.5.github_link': return '';
			case 'projects.projects.5.is_personal': return 'false';
			case 'projects.projects.5.name': return 'Hotel Booking Service (Project name ommited)';
			case 'projects.projects.5.playstore_link': return '';
			case 'projects.projects.5.tech.0': return 'Java';
			case 'projects.projects.5.tech.1': return 'Spring boot';
			case 'projects.projects.5.tech.2': return 'PostgreSQL';
			case 'projects.projects.5.tech.3': return 'Apache Solr';
			case 'projects.projects.5.tech.4': return 'Elasticsearch';
			case 'projects.projects.5.type': return 'Services';
			case 'projects.projects.6.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.6.description': return 'Translokasi untuk data pesawat terbang';
			case 'projects.projects.6.external_link': return 'www.travelagent.co.id';
			case 'projects.projects.6.github_link': return '';
			case 'projects.projects.6.is_personal': return 'false';
			case 'projects.projects.6.name': return 'Airline Translocation (Project name ommited)';
			case 'projects.projects.6.playstore_link': return '';
			case 'projects.projects.6.tech.0': return 'Java';
			case 'projects.projects.6.tech.1': return 'Spring boot';
			case 'projects.projects.6.tech.2': return 'Oracle Database';
			case 'projects.projects.6.tech.3': return 'PostgreSQL';
			case 'projects.projects.6.tech.4': return 'Apache Solr';
			case 'projects.projects.6.tech.5': return 'Elasticsearch';
			case 'projects.projects.6.type': return 'Services';
			case 'projects.projects.7.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.7.description': return 'Services untuk Kereta Api';
			case 'projects.projects.7.external_link': return 'www.travelagent.co.id';
			case 'projects.projects.7.github_link': return '';
			case 'projects.projects.7.is_personal': return 'false';
			case 'projects.projects.7.name': return 'Train Availability Services (Project name ommited)';
			case 'projects.projects.7.playstore_link': return '';
			case 'projects.projects.7.tech.0': return 'Java';
			case 'projects.projects.7.tech.1': return 'Spring boot';
			case 'projects.projects.7.tech.2': return 'PostgreSQL';
			case 'projects.projects.7.type': return 'Services';
			case 'projects.projects.8.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/obreus_droid.png';
			case 'projects.projects.8.description': return 'Proyek akhir skripsi';
			case 'projects.projects.8.external_link': return 'https://doi.org/10.5281/zenodo.7665495';
			case 'projects.projects.8.github_link': return 'https://github.com/fajarmuhamad616/ObreusDroid';
			case 'projects.projects.8.is_personal': return 'true';
			case 'projects.projects.8.name': return 'ObreusDroid (Observer Resource Usage Android)';
			case 'projects.projects.8.playstore_link': return '';
			case 'projects.projects.8.tech.0': return 'Bash';
			case 'projects.projects.8.type': return 'Application';
			case 'projects.projects.9.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/make_a_good_excel_reader.png';
			case 'projects.projects.9.description': return 'Proyek akhir magang';
			case 'projects.projects.9.external_link': return '';
			case 'projects.projects.9.github_link': return '';
			case 'projects.projects.9.is_personal': return 'true';
			case 'projects.projects.9.name': return 'Make a Good Excel Reader';
			case 'projects.projects.9.playstore_link': return '';
			case 'projects.projects.9.tech.0': return 'HTML';
			case 'projects.projects.9.tech.1': return 'CSS';
			case 'projects.projects.9.tech.2': return 'JavaScript';
			case 'projects.projects.9.tech.3': return 'PHP';
			case 'projects.projects.9.tech.4': return 'MySQL';
			case 'projects.projects.9.tech.5': return 'BootStrap';
			case 'projects.projects.9.type': return 'Websites';
			case 'projects.projects.10.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/discite_institute.png';
			case 'projects.projects.10.description': return 'Proyek akhir proyek konsultan';
			case 'projects.projects.10.external_link': return '';
			case 'projects.projects.10.github_link': return '';
			case 'projects.projects.10.is_personal': return 'true';
			case 'projects.projects.10.name': return 'Discite Institute Website';
			case 'projects.projects.10.playstore_link': return '';
			case 'projects.projects.10.tech.0': return 'PHP';
			case 'projects.projects.10.tech.1': return 'CMS WordPress';
			case 'projects.projects.10.tech.2': return 'MySQL';
			case 'projects.projects.10.type': return 'Websites';
			case 'projects.projects.11.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/susmatior.png';
			case 'projects.projects.11.description': return 'Proyek capstone Kampus Merdeka (Dicoding Indonesia)';
			case 'projects.projects.11.external_link': return '';
			case 'projects.projects.11.github_link': return 'https://github.com/fajarmuhamad616/CSD104_SUSMATIOR';
			case 'projects.projects.11.is_personal': return 'true';
			case 'projects.projects.11.name': return 'Suspicious Information Observers (SUSMATIOR)';
			case 'projects.projects.11.playstore_link': return '';
			case 'projects.projects.11.tech.0': return 'Dart';
			case 'projects.projects.11.tech.1': return 'Flutter';
			case 'projects.projects.11.tech.2': return 'Firebase';
			case 'projects.projects.11.type': return 'Application';
			case 'projects.projects.12.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/kabima.png';
			case 'projects.projects.12.description': return 'Proyek akhir pemrograman berorientasi objek';
			case 'projects.projects.12.external_link': return '';
			case 'projects.projects.12.github_link': return 'https://github.com/fajarmuhamad616/Kabima';
			case 'projects.projects.12.is_personal': return 'true';
			case 'projects.projects.12.name': return 'Kasir Bisnis Mandiri (KABIMA)';
			case 'projects.projects.12.playstore_link': return '';
			case 'projects.projects.12.tech.0': return 'SceneBuilder';
			case 'projects.projects.12.tech.1': return 'JavaFX';
			case 'projects.projects.12.tech.2': return 'FXML';
			case 'projects.projects.12.tech.3': return 'CSS';
			case 'projects.projects.12.tech.4': return 'MySQL';
			case 'projects.projects.12.type': return 'Application';
			case 'projects.projects.13.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/lapif.png';
			case 'projects.projects.13.description': return 'Proyek akhir pemrograman web';
			case 'projects.projects.13.external_link': return 'https://lapif.netlify.app';
			case 'projects.projects.13.github_link': return 'https://github.com/fajarmuhamad616/LAPIF-Backend';
			case 'projects.projects.13.is_personal': return 'true';
			case 'projects.projects.13.name': return 'Layanan Aspirasi Pengaduan Informasi dan Forum (LAPIF)';
			case 'projects.projects.13.playstore_link': return '';
			case 'projects.projects.13.tech.0': return 'HTML';
			case 'projects.projects.13.tech.1': return 'CSS';
			case 'projects.projects.13.tech.2': return 'JavaScript';
			case 'projects.projects.13.tech.3': return 'PHP';
			case 'projects.projects.13.tech.4': return 'MySQL';
			case 'projects.projects.13.tech.5': return 'Figma';
			case 'projects.projects.13.type': return 'Websites';
			case 'projects.projects.14.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/secret_calorie.png';
			case 'projects.projects.14.description': return 'Proyek akhir AMSTR (Aplikasi Matematika, Sains, Teknologi, Rekayasa)';
			case 'projects.projects.14.external_link': return 'https://secretcalorie.github.io/home';
			case 'projects.projects.14.github_link': return 'https://github.com/fajarmuhamad616/SecretCalorie';
			case 'projects.projects.14.is_personal': return 'true';
			case 'projects.projects.14.name': return 'SecretCalorie';
			case 'projects.projects.14.playstore_link': return '';
			case 'projects.projects.14.tech.0': return 'HTML';
			case 'projects.projects.14.tech.1': return 'CSS';
			case 'projects.projects.14.tech.2': return 'JavaScript';
			case 'projects.projects.14.tech.3': return 'PHP';
			case 'projects.projects.14.tech.4': return 'MySQL';
			case 'projects.projects.14.tech.5': return 'Figma';
			case 'projects.projects.14.type': return 'Websites';
			case 'projects.projects.15.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/upicare.png';
			case 'projects.projects.15.description': return 'Proyek akhir MSTR (Matematika, Sains, Teknologi, Rekayasa)';
			case 'projects.projects.15.external_link': return '';
			case 'projects.projects.15.github_link': return '';
			case 'projects.projects.15.is_personal': return 'true';
			case 'projects.projects.15.name': return 'UPICARE';
			case 'projects.projects.15.playstore_link': return '';
			case 'projects.projects.15.tech.0': return 'Java';
			case 'projects.projects.15.tech.1': return 'Figma';
			case 'projects.projects.15.tech.2': return 'Arduino UNO';
			case 'projects.projects.15.type': return 'Application';
			case 'skills.skills.0.img': return 'https://img.icons8.com/?size=512&id=13679&format=png';
			case 'skills.skills.0.name': return 'Java';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=7AFcZ2zirX6Y&format=png';
			case 'skills.skills.1.name': return 'Dart';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=9MJf0ngDwS8z&format=png';
			case 'skills.skills.2.name': return 'Bash';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=ZoxjA0jZDdFZ&format=png';
			case 'skills.skills.3.name': return 'Kotlin';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
			case 'skills.skills.4.name': return 'PHP';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=90519&format=png';
			case 'skills.skills.5.name': return 'Spring Boot';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.6.name': return 'Flutter';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=38561&format=png';
			case 'skills.skills.7.name': return 'PostgreSQL';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=39913&format=png';
			case 'skills.skills.8.name': return 'Oracle Database';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.9.name': return 'MySQL';
			case 'skills.skills.10.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.10.name': return 'Firebase';
			case 'skills.skills.11.img': return 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
			case 'skills.skills.11.name': return 'MongoDb';
			case 'skills.skills.12.img': return 'https://static-00.iconduck.com/assets.00/hibernate-icon-1965x2048-cl94vxbt.png';
			case 'skills.skills.12.name': return 'Hibernate';
			case 'skills.skills.13.img': return 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
			case 'skills.skills.13.name': return 'Figma';
			case 'skills.skills.14.img': return 'https://i0.wp.com/www.sadeempc.com/wp-content/uploads/2022/10/SonarQube-Data-Center-Edition-Keygen.webp';
			case 'skills.skills.14.name': return 'SonarQube';
			case 'skills.skills.15.img': return 'https://img.icons8.com/?size=512&id=9uVrNMu3Zx1K&format=png';
			case 'skills.skills.15.name': return 'Grafana';
			case 'skills.skills.16.img': return 'https://img.icons8.com/?size=512&id=22813&format=png';
			case 'skills.skills.16.name': return 'Docker';
			case 'skills.skills.17.img': return 'https://img.icons8.com/?size=512&id=cvzmaEA4kC0o&format=png';
			case 'skills.skills.17.name': return 'Kubernetes';
			case 'skills.skills.18.img': return 'https://img.icons8.com/?size=512&id=aGBLcugRkYpT&format=png';
			case 'skills.skills.18.name': return 'Elasticsearch';
			case 'skills.skills.19.img': return 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Swagger-logo.png';
			case 'skills.skills.19.name': return 'Swagger';
			case 'tabs.tabs.0': return 'Beranda';
			case 'tabs.tabs.1': return 'Tentang';
			case 'tabs.tabs.2': return 'Keterampilan';
			case 'tabs.tabs.3': return 'Pengalaman';
			case 'tabs.tabs.4': return 'Proyek';
			case 'tabs.tabs.5': return 'Kontak';
			case 'tabs.tabs.6': return 'Unduh CV';
			default: return null;
		}
	}
}

extension on _LocaleEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about.about_me': return 'I am graduated from Universitas Pendidikan Indonesia as Bachelor Degreer Software Engineer and ever followed Kampus Merdeka Independent Study program to learn depth Android Native and Multiplatform with integrated Backend as a Service (BaaS). I also follow internship program as Web Developer remotely with developing an Frontend, Backend, and API. Since college i have been active in community KOMPETEGRAM (KOMunitas PEncinta TEknologi pemroGRAMan) and practicum assistant on computer network course. Furthermore, i have achievement publication international journal scopus.\n\nAs a Software Engineer, I always learn depth and sharpen logic of coding to accumulate skill and experience with research and developing applications frontend or backend system. I have a work experience as a Software Engineer focusing in Backend Engineer in corporate of industry tour and travel agency. In my work i developing a services backend, migration data hotels and airlines, migration search system from deprecated system to latest system, domestic and international airlines gateway with complex API (REST and SOAP), and maintenance another services. Knowledge research and development since college i use to my work with always ensure source code to made readable without code smells with code refactor and made performance of applications avoid bottleneck. \n\nMoreover, i have experience to deployment with Docker and Kubernetes or Jenkins and softskills like communication and problem solving. With related experience, i have also collaborated with Quality Assurance (QA) to conduct testing at the development stage before the production stage.';
			case 'about.about_cards.0.content': return 'Made code of applications high quality and reusable.';
			case 'about.about_cards.0.title': return 'Software Engineer';
			case 'about.about_cards.1.content': return 'Using Java & Spring Boot, I can developing backend systems.';
			case 'about.about_cards.1.title': return 'Backend Developer';
			case 'about.about_cards.2.content': return 'Developing and Integrating APIs to synchronize another services (microservices).';
			case 'about.about_cards.2.title': return 'API Development & Integration';
			case 'about.about_cards.3.content': return 'Using Dart & Flutter, I can developing applications and websites.';
			case 'about.about_cards.3.title': return 'Mobile Apps Developer';
			case 'about.about_cards.4.content': return 'I research of code smells and refactor to avoid bug and bottleneck.';
			case 'about.about_cards.4.title': return 'Research & Code Refactor';
			case 'experience.experiences.0.company': return 'PT Voltras International';
			case 'experience.experiences.0.country': return 'Indonesia';
			case 'experience.experiences.0.emp_type': return 'Full - Time';
			case 'experience.experiences.0.position': return 'Software Engineer (Onsite)';
			case 'experience.experiences.0.site_url': return 'www.travelagent.co.id';
			case 'experience.experiences.0.start_date': return '2023-06-05T00:00:00.000';
			case 'experience.experiences.0.end_date': return '2024-06-05T00:00:00.000';
			case 'experience.experiences.0.state': return 'South Tangerang';
			case 'experience.experiences.0.works.0': return 'Filtering train availability by each class from Kereta Api Indonesia (KAI) API.';
			case 'experience.experiences.0.works.1': return 'Development feature import and export each hotel in spreadsheets and flter the duplicate hotel data with scoring in hotel management service.';
			case 'experience.experiences.0.works.2': return 'Migration more than 350.000 hotel data from Solr to Elasticsearch to the aim suggest search.';
			case 'experience.experiences.0.works.3': return 'Migration airports searching data (code, name, and location) from Solr to Elasticsearch to the aim suggest search.';
			case 'experience.experiences.0.works.4': return 'Migration airlines passenger data from Solr to Elasticsearch to the aim saved a history passenger reserved.';
			case 'experience.experiences.0.works.5': return 'Transformation data storage from Solr to Elasticsearch on the hotel and airline service.';
			case 'experience.experiences.0.works.6': return 'Development and implementation feature availability, fare, booking, cancel, retrieve ancillary, payment, print ticket, balance of international and domestic airlines API gateway (TransNusa airlines, Singapore airlines, and Sabre) with transformation XML to JSON, include API version NDC (New Distribution Capability) until UAT (User Acceptance Testing).';
			case 'experience.experiences.0.works.7': return 'Development an API logger to taking incoming log (inbound) and outgoing log (outbound) API gateway 8B (TransNusa Airlines), SQ (Singapore Airlines), JT (Lion Airlines), JQ (Jetstar Airlines), and Sabre.';
			case 'experience.experiences.0.is_work_here': return 'false';
			case 'experience.experiences.1.company': return 'PT Informasi Teknologi Indonesia';
			case 'experience.experiences.1.country': return 'Indonesia';
			case 'experience.experiences.1.emp_type': return 'Internship';
			case 'experience.experiences.1.position': return 'Web Developer (Remote)';
			case 'experience.experiences.1.site_url': return 'jatismobile.com';
			case 'experience.experiences.1.start_date': return '2022-08-18T00:00:00.000';
			case 'experience.experiences.1.end_date': return '2022-12-26T00:00:00.000';
			case 'experience.experiences.1.state': return 'South Jakarta';
			case 'experience.experiences.1.works.0': return 'Make innovations or new ideas for one of the products in Jatis Mobile and presented.';
			case 'experience.experiences.1.works.1': return 'Development a backend of website with concept MVC PHP native and front-end each page front-end adjusts UI/UX design.';
			case 'experience.experiences.1.works.2': return 'Development project \'Make a Good Excel Reader\' with feature verify email, import and export data to spreadsheets, and API.';
			case 'experience.experiences.1.is_work_here': return 'false';
			case 'experience.experiences.2.company': return 'Universitas Pendidikan Indonesia';
			case 'experience.experiences.2.country': return 'Indonesia';
			case 'experience.experiences.2.emp_type': return 'Seasonal';
			case 'experience.experiences.2.position': return 'Practicum Assistant (Remote)';
			case 'experience.experiences.2.site_url': return 'rpl.upi.edu';
			case 'experience.experiences.2.start_date': return '2022-02-02T00:00:00.000';
			case 'experience.experiences.2.end_date': return '2022-05-25T00:00:00.000';
			case 'experience.experiences.2.state': return 'Bandung Regency';
			case 'experience.experiences.2.works.0': return 'Made a handbook about computer network.';
			case 'experience.experiences.2.works.1': return 'Help students in practical sessions using Cisco Packet Tracer.';
			case 'experience.experiences.2.works.2': return 'Assisting the lecturer in computer network course.';
			case 'experience.experiences.2.is_work_here': return 'false';
			case 'experience.experiences.3.company': return 'Discite Institute';
			case 'experience.experiences.3.country': return 'Indonesia';
			case 'experience.experiences.3.emp_type': return 'Project Based';
			case 'experience.experiences.3.position': return 'Web Developer (Remote)';
			case 'experience.experiences.3.site_url': return 'www.disciteinstitute.my.id';
			case 'experience.experiences.3.start_date': return '2022-02-23T00:00:00.000';
			case 'experience.experiences.3.end_date': return '2022-05-13T00:00:00.000';
			case 'experience.experiences.3.state': return 'Padang';
			case 'experience.experiences.3.works.0': return 'Development a website Discite Institute with Content Management System (CMS) WordPress with a customization user interface.';
			case 'experience.experiences.3.works.1': return 'Collaborating between UI/UX design team and development team.';
			case 'experience.experiences.3.works.2': return 'Made a guide documentation about usage the website of Discite Institute.';
			case 'experience.experiences.3.is_work_here': return 'false';
			case 'experience.experiences.4.company': return 'PT Telkom Indonesia';
			case 'experience.experiences.4.country': return 'Indonesia';
			case 'experience.experiences.4.emp_type': return 'Internship';
			case 'experience.experiences.4.position': return 'Maintenance Preventive STO (Onsite)';
			case 'experience.experiences.4.site_url': return 'www.telkom.co.id';
			case 'experience.experiences.4.start_date': return '2018-03-22T00:00:00.000';
			case 'experience.experiences.4.end_date': return '2018-06-22T00:00:00.000';
			case 'experience.experiences.4.state': return 'Serang City';
			case 'experience.experiences.4.works.0': return 'Perform damping validation of fber optic on network maintenance.';
			case 'experience.experiences.4.works.1': return 'Work on entries label of data for each fber optic into the website to the aim maintenance network.';
			case 'experience.experiences.4.works.2': return 'Documentation repairing fiber optic network.';
			case 'experience.experiences.4.is_work_here': return 'false';
			case 'general.language': return 'Language';
			case 'general.indonesia': return 'Indonesia';
			case 'general.english': return 'English';
			case 'general.thank_you': return 'Thank You for contacting me';
			case 'general.get_back': return 'I will get back to you shortly';
			case 'general.title_introduction_about_section': return 'Introduction';
			case 'general.title_about_section': return 'About';
			case 'general.title_contact_section': return 'Contact';
			case 'general.title_contact_me_section': return 'Contact Me';
			case 'general.get_in_touch_contact_section': return 'Get in touch';
			case 'general.feel_free_contact_section': return 'Feel free to get in touch';
			case 'general.hint_your_name_contact_section': return 'Your name';
			case 'general.hint_your_email_contact_section': return 'Your email';
			case 'general.hint_message_contact_section': return 'Type your message';
			case 'general.btn_send_contact_section': return 'Send';
			case 'general.title_experience_section': return 'Work Experience';
			case 'general.title_project_section': return 'Projects';
			case 'general.title_personal_projects_project_section': return 'Personal Projects';
			case 'general.title_client_projects_project_section': return 'Work/Client Projects';
			case 'general.m_title_personal_projects_project_section': return 'Personal';
			case 'general.m_title_client_projects_project_section': return 'Work/Client';
			case 'general.title_all_projects_project_section': return 'All Projects';
			case 'general.title_skill_section': return 'Skills';
			case 'general.introduce_home_my_name': return 'Fajar Muhammad Al-Hijri';
			case 'general.hi_home_section': return 'Hi, my name ';
			case 'general.introduce_home_section1': return 'I am a Software Engineer focusing in backend and mobile apps.';
			case 'general.introduce_home_section2': return 'I developing a backend system for airlines and build a interactive software applications with run on cross platforms.';
			case 'general.browse_projects_home_section': return 'See Projects';
			case 'general.required_input_field': return 'This field is required';
			case 'general.copy': return 'Copied to clipboard';
			case 'projects.projects.0.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/portfolio.png';
			case 'projects.projects.0.description': return 'Website for personal branding portfolio';
			case 'projects.projects.0.external_link': return 'https://fajarmuhamad616.github.io/';
			case 'projects.projects.0.github_link': return '';
			case 'projects.projects.0.is_personal': return 'true';
			case 'projects.projects.0.name': return 'Portfolio Fajar Muhammad Al-Hijri';
			case 'projects.projects.0.playstore_link': return '';
			case 'projects.projects.0.tech.0': return 'Dart';
			case 'projects.projects.0.tech.1': return 'Flutter';
			case 'projects.projects.0.type': return 'Websites';
			case 'projects.projects.1.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.1.description': return 'Gateway for Sabre';
			case 'projects.projects.1.external_link': return 'https://www.travelagent.co.id/';
			case 'projects.projects.1.github_link': return '';
			case 'projects.projects.1.is_personal': return 'false';
			case 'projects.projects.1.name': return 'Airline Gateway Sabre (Project name ommited)';
			case 'projects.projects.1.playstore_link': return '';
			case 'projects.projects.1.tech.0': return 'Java';
			case 'projects.projects.1.tech.1': return 'Spring boot';
			case 'projects.projects.1.tech.2': return 'PostgreSQL';
			case 'projects.projects.1.tech.3': return 'Jasper Reports';
			case 'projects.projects.1.type': return 'Gateway';
			case 'projects.projects.2.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.2.description': return 'Gateway for SQ Singapore Airlines';
			case 'projects.projects.2.external_link': return 'https://www.travelagent.co.id/';
			case 'projects.projects.2.github_link': return '';
			case 'projects.projects.2.is_personal': return 'false';
			case 'projects.projects.2.name': return 'Airline Gateway SQ Singapore Airlines (Project name ommited)';
			case 'projects.projects.2.playstore_link': return '';
			case 'projects.projects.2.tech.0': return 'Java';
			case 'projects.projects.2.tech.1': return 'Spring boot';
			case 'projects.projects.2.tech.2': return 'PostgreSQL';
			case 'projects.projects.2.tech.3': return 'Jasper Reports';
			case 'projects.projects.2.type': return 'Gateway';
			case 'projects.projects.3.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.3.description': return 'Gateway for 8B TransNusa Airlines';
			case 'projects.projects.3.external_link': return 'https://www.travelagent.co.id/';
			case 'projects.projects.3.github_link': return '';
			case 'projects.projects.3.is_personal': return 'false';
			case 'projects.projects.3.name': return 'Airline Gateway 8B TransNusa Airlines (Project name ommited)';
			case 'projects.projects.3.playstore_link': return '';
			case 'projects.projects.3.tech.0': return 'Java';
			case 'projects.projects.3.tech.1': return 'Spring boot';
			case 'projects.projects.3.tech.2': return 'PostgreSQL';
			case 'projects.projects.3.tech.3': return 'Jasper Reports';
			case 'projects.projects.3.type': return 'Gateway';
			case 'projects.projects.4.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.4.description': return 'Services for Airlines';
			case 'projects.projects.4.external_link': return 'https://www.travelagent.co.id/';
			case 'projects.projects.4.github_link': return '';
			case 'projects.projects.4.is_personal': return 'false';
			case 'projects.projects.4.name': return 'Airline Booking Service (Project name ommited)';
			case 'projects.projects.4.playstore_link': return '';
			case 'projects.projects.4.tech.0': return 'Java';
			case 'projects.projects.4.tech.1': return 'Spring boot';
			case 'projects.projects.4.tech.2': return 'PostgreSQL';
			case 'projects.projects.4.tech.3': return 'Apache Solr';
			case 'projects.projects.4.tech.4': return 'Elasticsearch';
			case 'projects.projects.4.type': return 'Services';
			case 'projects.projects.5.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.5.description': return 'Services for Hotel';
			case 'projects.projects.5.external_link': return 'https://www.travelagent.co.id/';
			case 'projects.projects.5.github_link': return '';
			case 'projects.projects.5.is_personal': return 'false';
			case 'projects.projects.5.name': return 'Hotel Booking Service (Project name ommited)';
			case 'projects.projects.5.playstore_link': return '';
			case 'projects.projects.5.tech.0': return 'Java';
			case 'projects.projects.5.tech.1': return 'Spring boot';
			case 'projects.projects.5.tech.2': return 'PostgreSQL';
			case 'projects.projects.5.tech.3': return 'Apache Solr';
			case 'projects.projects.5.tech.4': return 'Elasticsearch';
			case 'projects.projects.5.type': return 'Services';
			case 'projects.projects.6.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.6.description': return 'Translocation for Airlines Data';
			case 'projects.projects.6.external_link': return 'https://www.travelagent.co.id/';
			case 'projects.projects.6.github_link': return '';
			case 'projects.projects.6.is_personal': return 'false';
			case 'projects.projects.6.name': return 'Airline Translocation (Project name ommited)';
			case 'projects.projects.6.playstore_link': return '';
			case 'projects.projects.6.tech.0': return 'Java';
			case 'projects.projects.6.tech.1': return 'Spring boot';
			case 'projects.projects.6.tech.2': return 'Oracle Database';
			case 'projects.projects.6.tech.3': return 'PostgreSQL';
			case 'projects.projects.6.tech.4': return 'Apache Solr';
			case 'projects.projects.6.tech.5': return 'Elasticsearch';
			case 'projects.projects.6.type': return 'Services';
			case 'projects.projects.7.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/confidential.png';
			case 'projects.projects.7.description': return 'Services for Train';
			case 'projects.projects.7.external_link': return 'https://www.travelagent.co.id/';
			case 'projects.projects.7.github_link': return '';
			case 'projects.projects.7.is_personal': return 'false';
			case 'projects.projects.7.name': return 'Train Availability Services (Project name ommited)';
			case 'projects.projects.7.playstore_link': return '';
			case 'projects.projects.7.tech.0': return 'Java';
			case 'projects.projects.7.tech.1': return 'Spring boot';
			case 'projects.projects.7.tech.2': return 'PostgreSQL';
			case 'projects.projects.7.type': return 'Services';
			case 'projects.projects.8.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/obreus_droid.png';
			case 'projects.projects.8.description': return 'Final project for Thesis';
			case 'projects.projects.8.external_link': return 'https://doi.org/10.5281/zenodo.7665495';
			case 'projects.projects.8.github_link': return 'https://github.com/fajarmuhamad616/ObreusDroid';
			case 'projects.projects.8.is_personal': return 'true';
			case 'projects.projects.8.name': return 'ObreusDroid (Observer Resource Usage Android)';
			case 'projects.projects.8.playstore_link': return '';
			case 'projects.projects.8.tech.0': return 'Bash';
			case 'projects.projects.8.type': return 'Application';
			case 'projects.projects.9.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/make_a_good_excel_reader.png';
			case 'projects.projects.9.description': return 'Final project of Internship';
			case 'projects.projects.9.external_link': return '';
			case 'projects.projects.9.github_link': return '';
			case 'projects.projects.9.is_personal': return 'true';
			case 'projects.projects.9.name': return 'Make a Good Excel Reader';
			case 'projects.projects.9.playstore_link': return '';
			case 'projects.projects.9.tech.0': return 'HTML';
			case 'projects.projects.9.tech.1': return 'CSS';
			case 'projects.projects.9.tech.2': return 'JavaScript';
			case 'projects.projects.9.tech.3': return 'PHP';
			case 'projects.projects.9.tech.4': return 'MySQL';
			case 'projects.projects.9.tech.5': return 'BootStrap';
			case 'projects.projects.9.type': return 'Websites';
			case 'projects.projects.10.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/discite_institute.png';
			case 'projects.projects.10.description': return 'Final project of course consultant project';
			case 'projects.projects.10.external_link': return '';
			case 'projects.projects.10.github_link': return '';
			case 'projects.projects.10.is_personal': return 'true';
			case 'projects.projects.10.name': return 'Discite Institute Website';
			case 'projects.projects.10.playstore_link': return '';
			case 'projects.projects.10.tech.0': return 'PHP';
			case 'projects.projects.10.tech.1': return 'CMS WordPress';
			case 'projects.projects.10.tech.2': return 'MySQL';
			case 'projects.projects.10.type': return 'Websites';
			case 'projects.projects.11.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/susmatior.png';
			case 'projects.projects.11.description': return 'Capstone project of Kampus Merdeka (Dicoding Indonesia)';
			case 'projects.projects.11.external_link': return '';
			case 'projects.projects.11.github_link': return 'https://github.com/fajarmuhamad616/CSD104_SUSMATIOR';
			case 'projects.projects.11.is_personal': return 'true';
			case 'projects.projects.11.name': return 'Suspicious Information Observers (SUSMATIOR)';
			case 'projects.projects.11.playstore_link': return '';
			case 'projects.projects.11.tech.0': return 'Dart';
			case 'projects.projects.11.tech.1': return 'Flutter';
			case 'projects.projects.11.tech.2': return 'Firebase';
			case 'projects.projects.11.type': return 'Application';
			case 'projects.projects.12.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/kabima.png';
			case 'projects.projects.12.description': return 'Final project of course Object-Oriented Programming';
			case 'projects.projects.12.external_link': return '';
			case 'projects.projects.12.github_link': return 'https://github.com/fajarmuhamad616/Kabima';
			case 'projects.projects.12.is_personal': return 'true';
			case 'projects.projects.12.name': return 'Kasir Bisnis Mandiri (KABIMA)';
			case 'projects.projects.12.playstore_link': return '';
			case 'projects.projects.12.tech.0': return 'SceneBuilder';
			case 'projects.projects.12.tech.1': return 'JavaFX';
			case 'projects.projects.12.tech.2': return 'FXML';
			case 'projects.projects.12.tech.3': return 'CSS';
			case 'projects.projects.12.tech.4': return 'MySQL';
			case 'projects.projects.12.type': return 'Application';
			case 'projects.projects.13.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/lapif.png';
			case 'projects.projects.13.description': return 'Final project of course Web Programming';
			case 'projects.projects.13.external_link': return 'https://lapif.netlify.app';
			case 'projects.projects.13.github_link': return 'https://github.com/fajarmuhamad616/LAPIF-Backend';
			case 'projects.projects.13.is_personal': return 'true';
			case 'projects.projects.13.name': return 'Layanan Aspirasi Pengaduan Informasi dan Forum (LAPIF)';
			case 'projects.projects.13.playstore_link': return '';
			case 'projects.projects.13.tech.0': return 'HTML';
			case 'projects.projects.13.tech.1': return 'CSS';
			case 'projects.projects.13.tech.2': return 'JavaScript';
			case 'projects.projects.13.tech.3': return 'PHP';
			case 'projects.projects.13.tech.4': return 'MySQL';
			case 'projects.projects.13.tech.5': return 'Figma';
			case 'projects.projects.13.type': return 'Websites';
			case 'projects.projects.14.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/secret_calorie.png';
			case 'projects.projects.14.description': return 'Final project of course ASTEM (Application of Sains, Technology, Engineering, Mathematics)';
			case 'projects.projects.14.external_link': return 'https://secretcalorie.github.io/home';
			case 'projects.projects.14.github_link': return 'https://github.com/fajarmuhamad616/SecretCalorie';
			case 'projects.projects.14.is_personal': return 'true';
			case 'projects.projects.14.name': return 'SecretCalorie';
			case 'projects.projects.14.playstore_link': return '';
			case 'projects.projects.14.tech.0': return 'HTML';
			case 'projects.projects.14.tech.1': return 'CSS';
			case 'projects.projects.14.tech.2': return 'JavaScript';
			case 'projects.projects.14.tech.3': return 'PHP';
			case 'projects.projects.14.tech.4': return 'MySQL';
			case 'projects.projects.14.tech.5': return 'Figma';
			case 'projects.projects.14.type': return 'Websites';
			case 'projects.projects.15.cover_img': return 'https://raw.githubusercontent.com/fajarmuhamad616/fajaralhijr.github.io/main/media/images/upicare.png';
			case 'projects.projects.15.description': return 'Final project of course STEM (Sains, Technology, Engineering, Mathematics)';
			case 'projects.projects.15.external_link': return '';
			case 'projects.projects.15.github_link': return '';
			case 'projects.projects.15.is_personal': return 'true';
			case 'projects.projects.15.name': return 'UPICARE';
			case 'projects.projects.15.playstore_link': return '';
			case 'projects.projects.15.tech.0': return 'Java';
			case 'projects.projects.15.tech.1': return 'Figma';
			case 'projects.projects.15.tech.2': return 'Arduino UNO';
			case 'projects.projects.15.type': return 'Application';
			case 'skills.skills.0.img': return 'https://img.icons8.com/?size=512&id=13679&format=png';
			case 'skills.skills.0.name': return 'Java';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=7AFcZ2zirX6Y&format=png';
			case 'skills.skills.1.name': return 'Dart';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=9MJf0ngDwS8z&format=png';
			case 'skills.skills.2.name': return 'Bash';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=ZoxjA0jZDdFZ&format=png';
			case 'skills.skills.3.name': return 'Kotlin';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
			case 'skills.skills.4.name': return 'PHP';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=90519&format=png';
			case 'skills.skills.5.name': return 'Spring Boot';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.6.name': return 'Flutter';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=38561&format=png';
			case 'skills.skills.7.name': return 'PostgreSQL';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=39913&format=png';
			case 'skills.skills.8.name': return 'Oracle Database';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.9.name': return 'MySQL';
			case 'skills.skills.10.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.10.name': return 'Firebase';
			case 'skills.skills.11.img': return 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
			case 'skills.skills.11.name': return 'MongoDb';
			case 'skills.skills.12.img': return 'https://static-00.iconduck.com/assets.00/hibernate-icon-1965x2048-cl94vxbt.png';
			case 'skills.skills.12.name': return 'Hibernate';
			case 'skills.skills.13.img': return 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
			case 'skills.skills.13.name': return 'Figma';
			case 'skills.skills.14.img': return 'https://i0.wp.com/www.sadeempc.com/wp-content/uploads/2022/10/SonarQube-Data-Center-Edition-Keygen.webp';
			case 'skills.skills.14.name': return 'SonarQube';
			case 'skills.skills.15.img': return 'https://img.icons8.com/?size=512&id=9uVrNMu3Zx1K&format=png';
			case 'skills.skills.15.name': return 'Grafana';
			case 'skills.skills.16.img': return 'https://img.icons8.com/?size=512&id=22813&format=png';
			case 'skills.skills.16.name': return 'Docker';
			case 'skills.skills.17.img': return 'https://img.icons8.com/?size=512&id=cvzmaEA4kC0o&format=png';
			case 'skills.skills.17.name': return 'Kubernetes';
			case 'skills.skills.18.img': return 'https://img.icons8.com/?size=512&id=aGBLcugRkYpT&format=png';
			case 'skills.skills.18.name': return 'Elasticsearch';
			case 'skills.skills.19.img': return 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Swagger-logo.png';
			case 'skills.skills.19.name': return 'Swagger';
			case 'tabs.tabs.0': return 'Home';
			case 'tabs.tabs.1': return 'About';
			case 'tabs.tabs.2': return 'Skills';
			case 'tabs.tabs.3': return 'Experience';
			case 'tabs.tabs.4': return 'Projects';
			case 'tabs.tabs.5': return 'Contact';
			case 'tabs.tabs.6': return 'Download CV';
			default: return null;
		}
	}
}
