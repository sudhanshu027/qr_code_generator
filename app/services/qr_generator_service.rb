class QrGeneratorService
  def initialize(url)
    @url = url
    generate_qr
  end

  def generate_qr
    @qrcode = RQRCode::QRCode.new(@url)
  end

  def get_svg
   @qrcode.as_svg(
     color: "000",
     shape_rendering: "crispEdges",
     module_size: 11,
     standalone: true,
     use_path: true
   )
  end
end
