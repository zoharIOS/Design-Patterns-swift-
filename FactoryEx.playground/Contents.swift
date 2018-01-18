let factory = PhoneFactory()

let phones: [Phone?] = [
    factory.createPhone("iPhone"),
    factory.createPhone("Galaxy"),
    factory.createPhone("Huawei"),
    factory.createPhone("LG"),
    factory.createPhone("Pixel"),
    factory.createPhone("NEXUS"),
]

for p in phones {
    p?.call()
}
