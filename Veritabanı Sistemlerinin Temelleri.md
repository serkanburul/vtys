# Veritabanı Sistemlerinin Temelleri

### Veritabanı Sistemleri

Veri, ham gözlemler veya işlenmemiş gerçeklerdir, ancak bilgi, işlenmiş ve karar verme sürecine destek olacak şekilde dönüştürülmüş veridir. Veritabanı ise bir kurumun ihtiyaç duyduğu ve düzenlenmiş, mantıksal ve fiziksel olarak tanımlanmış verilerin bir bütünüdür.

Veritabanının Temel Özellikleri:

1. Birden fazla uygulamada ortak olarak kullanılabilen verilerden oluşur.
2. Sürekli nitelikte olan verileri içerir.
3. Verilerin tekrarlanmasına izin vermeden çok amaçlı kullanımı sağlar.
4. Veriler durağan değildir, eklenebilir, silinebilir veya güncellenebilir.


**Veritabanı Yönetim Sistemleri (VTYS):**  
Veritabanını tanımlama, oluşturma, işlemler yapma, kullanıcı yetkilerini belirleme, bakım ve yedekleme gibi görevler için geliştirilmiş programlardır. 

**Geleneksel Dosya Sistemi:**
Veritabanı Yaklaşımından önce geleneksel dosya sistemi kullanılmaktaydı. Verileri bilgisayarda ayrı ayrı dosyalar halinde tutmak. Bu yaklaşımda ilişkili veriler aynı dosya içerisinde tutulur başka türden ilişkisi bulunan veriler başka dosyada tutulur.

**Veritabanı Sistemlerinin Ortaya Çıkışı:**
Geleneksel dosya sistemlerinde, her alt sistem ayrı veri dosyalarına ihtiyaç duyar. Bu sistemde, ana dosya ile her alt sisteme özgü birçok alt dosya türetilir, bu da verinin gereksiz tekrarına ve bellek kapasitesinin boş yere kullanılmasına neden olur. Verinin birçok dosyada tekrarlanması, veri yönetiminde zorluklara yol açar.

Zamanla artan veri miktarı, depolama kapasitesi, veri erişimi ve işleme hızında yaşanan sıkıntılar, geleneksel dosya sistemlerinin temel sınırlılıklarını ortaya çıkarmıştır. Bu sıkıntılar, modern veritabanı sistemlerinin geliştirilmesini zorunlu kılmıştır.



### Karşılaştırma: Geleneksel Dosya Sistemi, Veritabanı Sistemleri

|Özellikler|Geleneksel Dosya Sistemi|Veritabanı Sistemi|
|---|---|---|
|**Veri Depolama Yapısı**|Genellikle düzensiz ve dağınık|Tablo ve ilişkisel yapılar|
|**Veri İlişkilendirmesi**|Zayıf, manuel ilişkilendirme|Güçlü, otomatik ilişkilendirme|
|**Veri İçeriği ve Yapısı**|Esnek değil, sınırlı yapı|Yapılandırılmış, ilişkilendirilmiş|
|**Veri İşleme ve Sorgulama**|Daha karmaşık ve yavaş sorgular|Optimize edilmiş sorgu performansı|
|**Veri Tutarsızlığı Riski**|Yüksek risk, elle düzeltme gerekebilir|Düşük risk, bütünlük kısıtlamaları|
|**Veri Güvenliği**|Düşük, dosya düzeyinde izinler|Yüksek, kullanıcı ve rol bazlı izinler|
|**Yedekleme ve Kurtarma**|Manuel, daha zorlu ve zaman alıcı|Otomatik, kolayca geri yüklenebilir|
|**Çok Kullanıcılı Destek**|Sınırlı, çakışmalar ve tutarsızlıklar|Yüksek, işlem denetimini sağlar|
|**Veri Bütünlüğü**|Düşük, tutarsızlıklar olabilir|Yüksek, referans bütünlüğü ve kısıtlamalar|
|**Veri Redundansı**|Yüksek, aynı veri birden fazla dosyada|Düşük, normalleştirme ile azaltılır|
|**Ölçeklenebilirlik**|Sınırlı, büyük veri setleri ile zorlanabilir|Yüksek, büyük veri setleri için uygun|
|**Maliyet**|Düşük başlangıç maliyeti, bakım maliyeti yüksek|Yüksek başlangıç maliyeti, bakım maliyeti düşük|


### Mimari

Veritabanı yönetim sistemlerinin mimarisi, genellikle üç şema mimarisi üzerine kurulmuştur: içsel (fiziksel) düzey, kavramsal düzey ve dışsal (görünüm) düzey. Bu mimarinin amacı, kullanıcı uygulamalarını fiziksel veritabanından ayırt etmektir.

**1. İçsel (Fiziksel) Düzey:** Veritabanının fiziksel depolama yapısını tanımlar. İçsel şema, veriyi depolama ayrıntılarının tamamını ve fiziksel veri modelini içerir.
**2. Kavramsal Düzey:** Tüm veritabanının yapısını tanımlar ve kavramsal şema olarak adlandırılır. Kavramsal şema, fiziksel depolama yapısının ayrıntılarını gizler ve veritabanındaki veri tipine, ilişkilere, kullanıcı işlemlerine ve kısıtlamalara odaklanır.
**3. Dışsal (Görünüm) Düzey:** Bir dizi dışsal şema veya kullanıcı görünümünü içerir. Her dışsal şema, belirli bir kullanıcı grubunun ilgilendiği veritabanı bölümlerini tanımlar. Bu sayede diğer kısmı bu kullanıcı grubundan gizlenir.

Bu üç düzey arasındaki dönüşümler mapping olarak adlandırılır ve VTYS'ler, kullanıcıların kendi dışsal şemalarına erişimini sağlar. VTYS, dış şemadan kavramsal şemaya ve ardından içsel şemaya dönüşüm yapma zorunluluğunu taşır.

Veritabanı tanımları genellikle veri tanımlama dili kullanılarak oluşturulur. Veri işleme dili, veri eklemek, silmek, değiştirmek gibi faaliyetleri gerçekleştirmek için kullanılırken, sorgulama dili, veritabanından bilgi çekmek amacıyla kullanılır. Günümüzde genellikle SQL gibi geniş kapsamlı diller kullanılmaktadır.


### Veritabanı Türleri

**Hiyerarşik veritabanı:** Verileri ağaç yapısında düzenleyen bir modeli benimser. Veri hiyerarşisi, ana düğüm ve alt düğümler arasında üst-alt ilişkilerle kurulur. Genellikle iş organizasyonları ve dosya sistemleri gibi hiyerarşik yapılar içeren uygulamalarda kullanılır.

**Ağ veritabanları:** Karmaşık ilişkileri yönetmek amacıyla tasarlanmıştır. Veri öğeleri, kaynak ve hedefler arasında bağlantılarla ağ yapısını oluşturur. İlişkiler, üst düğümler ve alt düğümler arasında tanımlanarak karmaşık bağlantıları yönetir. Bu tip veritabanları genellikle büyük ölçekli iş uygulamalarında kullanılır.

**İlişkisel veritabanları:** Tablo tabanlı bir yapıya sahiptir. Veri, tablolarda sütunlar ve satırlar halinde düzenlenir. İlişkiler, tablolardaki anahtarlar aracılığıyla kurulur ve SQL gibi sorgu dilleri kullanılır. İşletmelerde yaygın olarak kullanılır ve verilerin düzenli, ilişkilendirilmiş bir biçimde saklanmasını sağlar.

**Nesneye yönelik veritabanları:** Veriyi nesneler olarak adlandırılan yapılar içinde gruplandırır. Nesneler, veri ve işlemleri birleştiren birimlerdir ve nesne tabanlı programlamayla entegre bir şekilde çalışır. Bu model, özellikle yazılım geliştirmek ve büyük projelerde karmaşık veri yapılarını desteklemek için tercih edilir.

Her bir veritabanı türü, farklı avantaj ve dezavantajlara sahip olup, seçim genellikle projenin ölçeği, karmaşıklığı ve iş gereksinimleri gibi faktörlere bağlı olarak yapılır.


# İlişki Tipleri


**Bire-Bir İlişki:** Bir tablo içindeki her kayıtın, diğer tablo içindeki bir kayıtla ilişkili olduğu durumu ifade eder. Örneğin, bir "Kütüphane Üye" tablosu ve bir "Üye Detay" tablosu düşünelim. Her üye yalnızca bir detaya sahiptir. "Üye ID" değeri, "Üye Detay ID" ile birbirine bağlıdır. Her üye yalnızca bir detaya sahiptir ve bu ilişki bire-bir ilişkiyi temsil eder.

| Üye Id | Adı | Soyadı |
| ---- | ---- | ---- |
| 1 | Ahmet | 101 |

| Üye Detay Id | Üye Id | Telefon |
| ---- | ---- | ---- |
| 101 | 1 | xxx |


 **Bire-Çok İlişki:** Bir tablodaki bir kayıtın, başka bir tablodaki birden fazla kayıtla ilişkili olduğu durumu ifade eder. Örneğin, bir "Kategori" tablosu ve bir "Ürün" tablosu düşünelim. Her kategori birden çok ürünü içerebilir, ancak her ürün yalnızca bir kategoriye ait olabilir.


|Kategori ID|Kategori Adı|
|---|---|
|1|Elektronik|
|2|Giyim|
|3|Ev Aletleri|

|Ürün ID|Ürün Adı|Kategori ID|
|---|---|---|
|101|Telefon|1|
|102|Gömlek|2|
|103|Blender|3|
|104|Televizyon|1|

Her kategoriye birden çok ürün atanabilir, ancak her ürün yalnızca bir kategoriye aittir.



 **Çok-Çok İlişki:** Her iki tablonun da birbirleriyle çok sayıda kayıtla ilişkili olduğu durumu ifade eder. Örneğin, "Öğrenci" tablosu ve "Ders" tablosu düşünelim. Her öğrenci birden çok ders alabilir, ve her ders birden çok öğrenci tarafından alınabilir.

|Öğrenci ID|Adı|
|---|---|
|1|Ahmet|
|2|Ayşe|
|3|Mehmet|

|Ders ID|Ders Adı|
|---|---|
|101|Matematik|
|102|Fizik|
|103|Kimya|

|Öğrenci ID|Ders ID|
|---|---|
|1|101|
|1|102 |
|2|103 |
|3|101|
|3|102 |

Bu örnekte, her öğrenci birden çok derse kaydedilebilir, ve her ders de birden çok öğrenci tarafından alınabilir.

