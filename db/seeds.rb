=begin
=end
# Create Magensinus Settings
Magensinus::Settings.create(
  title: "",
  description: "",
  url: "",
  enrollment_success: "Nullam id dolor id nibh ultricies vehicula ut id elit.",
  enrollment_failure: "Vestibulum id ligula porta felis euismod semper.",
  enrollment_description: "Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.",
  newsletter_success: "Cras mattis consectetur purus sit amet fermentum.",
  newsletter_failure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
)

# Create Magensinus Home
Magensinus::Home.create(
  title: "Tristique Tortor Vulputate Euismod",
  description: "<div>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</div>"
)

# Create Magensinus About
Magensinus::About.create(
  title: "Nibh Nullam Ullamcorper",
  description: "<div>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum.</div>",
  body: "<div>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</div><div>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue.</div>"
)

# Create Magensinus Quality
Magensinus::Quality.create(
  title: "Vestibulum Egestas",
  description: "<div>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas faucibus mollis interdum.</div>"
)

# Create Magensinus Courses
Magensinus::Courses.create(
  meta_title: "",
  meta_description: "",
  meta_url: ""
)

# Create Magensinus Articles
Magensinus::Articles.create(
  meta_title: "",
  meta_description: "",
  meta_url: ""
)

# Create Magensinus Contact
Magensinus::Contact.create(
  title: "Lorem Fermentum",
  description: "<div>Sed posuere consectetur est at lobortis.</div>",
  fax: "fax",
  email: "email",
  phone: "phone",
  address_one: "address one",
  address_two: "address two",
  postcode: "postcode",
  city: "city",
  country: "country"
)

# Create Magensinus Newsletter
Magensinus::Newsletter.create(
  title: "Fusce Nullam Elit",
  description: "<div>Vestibulum id ligula porta felis euismod semper.</div>"
)

# Create Magensinus Schools
Magensinus::Schools.create(
  title: "Etiam Amet Nibh",
  description: "<div>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod.</div>"
)
