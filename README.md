# ABAP Stok Raporu

## Genel Bakış
Bu ABAP raporu (`ZBK_STOK_LIST`) belirli bir malzeme numarası için `BAPI_MATERIAL_GET_DETAIL` fonksiyonunu kullanarak stok bilgilerini getirir ve görüntüler.

## Özellikler
- Malzeme numaralarını `SELECT-OPTIONS` alanı ile seçme.
- `BAPI_MATERIAL_GET_DETAIL` fonksiyonu ile malzeme stok detaylarını alma.
- Sonuçları ALV (ABAP Liste Görüntüleyici) tablosunda gösterme.

## Kurulum Talimatları
1. Raporu SAP sisteminize yükleyin.
2. Raporu, seçim ekranında malzeme numarası vererek çalıştırın.

## Kod Açıklaması
- Rapor, veri yapılarını ve malzeme numaraları için seçim alanını tanımlar.
- `BAPI_MATERIAL_GET_DETAIL` fonksiyonu malzeme stok detaylarını alır.
- Sonuçlar, ALV çıktısı için `CL_SALV_TABLE` sınıfı ile gösterilir.

## Bağımlılıklar
- `BAPI_MATERIAL_GET_DETAIL` fonksiyonuna erişimi olan SAP ECC veya S/4HANA sistemi.
