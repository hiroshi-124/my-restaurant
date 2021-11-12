module HomeHelper
  def restaurant_map
    iframe = content_tag(
      :iframe,
      '',
      height: '400',
      src: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3241.4466958110115!2d139.73464221478676!3d35.66600153841542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b835942e165%3A0xb4897f1f4264c771!2z44CSMTA2LTAwMzIg5p2x5Lqs6YO95riv5Yy65YWt5pys5pyo77yS5LiB55uu77yU4oiS77yV!5e0!3m2!1sja!2sjp!4v1543466837094",
      frameborder: 0,
      allowfullscreen: true
      )
      content_tag(:div, iframe)
  end
end

# width="800" height="400" frameborder="0" style="border:0"