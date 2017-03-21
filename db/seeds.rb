# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all

Product.create(
  title: "Comparative Toxicogenomics databases",
  developer: "Carolyn Mattingly, PhD",
  email: "email@mail.com",
  institution: "North Carolina State University",
  category: "Genomics",
  price: 100.99,
  summary: "The Comparative Toxicogenomics Database is a database curated by Dr. Carolyn Mattingly and her team at North Carolina State University.  It’s a powerful tool for toxicogenomics research, providing information that provides data on the interactions of chemicals, genes, phenotypes and disease.  The database is updated monthly.",
  detailed_description: "In pharmaceutical drug discovery and development toxicogenomics is used to study adverse, i.e. toxic, effects, of pharmaceutical drugs. The CTD database is a powerful tool for toxicogenomics research.

  CTD provides manually curated data on exposure information, chemical-gene-phenotype-disease relationships and tools to analyze these integrated data sets.  Represents a unique centralization of data that is key to understanding and predicting toxicity of chemical compounds including both environmental compounds and drugs

No other curated databases that directly address mechanisms by which chemicals relate to diseases are publicly available.  It provides expansion of meta-analysis capabilities of software tools for toxicity of chemical compounds (both environmental and drugs) and improvement of toxicity predictions for drug developers.

Generally: Understanding the mechanisms by which environmental chemicals or drugs alter molecular pathways related to diseases can improve prevention of exposure-related disorders, identify biomarkers of disease, or fine-tune targets for treatment of implicated diseases.",
image_file_name: 'CTD.png',
image_content_type: 'image/png',
image_file_size: 32933,
image_updated_at: Time.now
)


Product.create(
title: "CBRA",
developer: "Dr. Denis Fourches, Assistant Professor",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Chemistry",
price: 100.99,
summary: "The CBRA software evaluates the bioactivity of chemicals by conducting chemical-biological read across. This software takes both computed structural descriptors and experimentally measured bioactivity profiles as input.",
detailed_description: "The CBRA software evaluates the bioactivity of chemicals by conducting chemical-biological read across. This software takes both computed structural descriptors and experimentally measured bioactivity profiles as input.

CBRA’s graphical output includes radial plots visualizing chemicals with the highest structural similarity and bio-profile similarity to the query molecule. In addition, CBRA outputs a quantitative prediction of a new chemical’s activity (e.g., in vivo toxicity) based on those of the similar chemicals.

In addition, CBRA outputs a quantitative prediction of a new chemical's activity (e.g., in vivo toxicity, anti-cancer potency) based on those of the similar chemicals.",
image_file_name: 'CBRA.png',
image_content_type: 'image/png',
image_file_size: 77632,
image_updated_at: Time.now
)

Product.find_or_create_by(
title: "GazeGis (Dynamic Gaze Tracker)",
developer: "Laura Gray Tateosian, PhD",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Information Technology",
price: 100.99,
summary: "Eye tracking software monitors a user’s gaze and determines the focal point on the screen.  Software then narrates a text, dynamically adjusting pace based on eye tracking data and position.  Specific keywords, word types and phrases trigger adjustments as well",
detailed_description: "Stuff stuff stuff details details description",
image_file_name: 'GazeGIS.png',
image_content_type: 'image/png',
image_file_size: 201048,
image_updated_at: Time.now
)

Product.find_or_create_by(
title: "SAFARIS (Ag Pest Risk Analyzer)",
developer: "Dr. Karl A. Suiter,  College of Agriculture and Life Sciences, NCSU
Ann Smittu Joseph, College of Agriculture and Life Sciences, NCSU
",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Agriculture",
price: 100.99,
summary: "This system brings together several independent spatially georeferenced datasets
that will be used to assess the risk of invasive species establishment and movement within
the United Stated.",
detailed_description: "It will be used as a research tool for federal and state cooperators to assess invasive pest risk and uncertainty (Such as United States Department of Agriculture (USDA), Animal and Plant Health Inspection Service (APHIS).  The software will be used by risk analysts and other subject matter experts in their work. It will be of limited use to the general public."
# ,
# image_file_name: '',
# image_content_type: 'image/png',
# image_file_size: ,
# image_updated_at: Time.now
)

Product.find_or_create_by(
title: "Prosthetic Leg Tuner",
developer: "He Huang, PhD, Associate Professor of Biomedical Engineering, Director of the Rehabilitation Engineering Center, College of Engineering, Department of Biomedical Engineering, NCSU",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Medical Device",
price: 100.99,
summary: "This software automatically adjusts control parameters of a powered transfemoral prosthesis to duplicate a normal gait profile. Eliminates the need for experts to fine tune powered prostheses during fitting, lowering costs
Also helps amputees maintain optimal gait patterns as body weight, body shape and walking styles adjust over time",
detailed_description: "Most powered transfemoral (above-knee) prostheses rely on a finite state machine based impedance controller, of which parameters have to be fine tuned by experts during prostheses fitting.

This system automatically tunes the prosthetic impedance control parameters in software by mimicking the tuning decisions of a human expert.  Increases access to powered prostheses by cutting the cost of fitting.  It also helps amputees maintain optimal gait patterns as body weight, body shape and walking styles adjust over time.

This auto-tuning system can replace the expert and fine tune the control parameters of the above knee prostheses automatically.

Auto-tuning capability cuts the cost of prosthesis fittings and helps ensures that  amputees maintain good gait patterns, as body weight, body shape and walking styles adjust over time.",
image_file_name: 'prosthetic.png',
image_content_type: 'image/png',
image_file_size: 78052,
image_updated_at: Time.now
)

Product.find_or_create_by(
title: "TOPOS Speech and Gesture Analyzer",
developer: "Carolyn Mattingly, PhD",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Information Technology",
price: 100.99,
summary: "Topos leverages audio and video data generated by the Kinect v2 sensor to provide insight into how people are speaking and acting.  It can interpret speech and transcribe words, as well as capture physical data, such as skeletal information, about a speaker in 2D and 3D. ",
detailed_description: "Topos will provide users with the means to observe their bodies in different states, and is specifically designed for the instruction and analysis of embodied communication.
Topos provides insight into how people are speaking and acting in ways that traditional annotation programs cannot.  Topos will interpret speech and transcribe words, as well as capture physical data, such as skeletal information, about a speaker in both 2D and 3D.

Topos can also be easily extended by developers to many analytical scenarios, both for real-time and recorded data, using .NET plugins.",
image_file_name: 'TOPOS.png',
image_content_type: 'image/png',
image_file_size: 370321,
image_updated_at: Time.now
)

Product.find_or_create_by(
title: "Three-dimensional Point Pattern Matching System",
developer: "Arash Dehghan Banadaki, PhD, College of Engineering, Department of Materials Science and Engineering",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Information Technology",
price: 100.99,
summary: "This technology is a computer program that is capable of finding instances of a given three-dimensional (3D) object in a pool of other 3D objects. The algorithm used originates from graph theory and has unprecedented accuracy and speed.",
detailed_description: "It is the only software that can achieve such level of accuracy for 3D objects using graph based point pattern matching, and it addresses many of the shortcomings of its predecessor and competing technologies.

It is the only software that can achieve such level of accuracy for 3D objects using graph based point pattern matching, and it addresses many of the shortcomings of its predecessor and competing technologies.

ICP algorithms are computationally efficient, but quickly lose accuracy when the object of interest is perturbed in another scene. Meaning there is a limit to the amount of rotation that I can apply to that object for the ICP algorithm to detect it. This limit is very small, and since the ICP algorithms are only reliable for small perturbations they will require a stream of images to break down the movement of objects into small perturbations.
Our algorithm does not suffer from such deficiencies and it can detect any rigid body motion with high accuracy. In addition it needs ONLY TWO IMAGES to perform the detection as opposed to a stream of images.  This algorithm projects to have performance on par with ICP algorithms (while still providing unprecedented accuracy).",
image_file_name: '3D_point_matching.png',
image_content_type: 'image/png',
image_file_size: 87464,
image_updated_at: Time.now
)

Product.find_or_create_by(
title: "TanGeoMS (Real-time Tangible Geospatial Modeling System)",
developer: "Carolyn Mattingly, PhD",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Genomics",
price: 100.99,
summary: "TanGeoMS (Real-time Tangible Geospatial Modeling System)",
detailed_description: "The Tangible Geospatial Modeling System (TanGeoMS) enables users to interact with digital models by manipulating linked physical models.

TanGeoMS links a physical landscape model with a virtual landscape in a GIS through an automated feedback cycle of real-time 3D scanning, geospatial modeling, and projection, enabling haptic human computer interaction and an intuitive grasp of 3-dimensional change.

As users modify the physical model - sculpting the terrain by hand for example - the changes are scanned into the GIS, geospatial simulations are run, and the results are projected back onto the physical model in real-time.

Rapid prototyping is used to generate a precise physical model to which a layer of polymer-enriched sand is then added to create a malleable surface.  A Kinect for Windows scanner is used to digitize changes to the model in real-time.
Geospatial analyses include terrain modeling, hydrological modeling, fire modeling, erosion-deposition, landform identification, subsurface soil modeling, risk and suitability analysis, etc.

With TanGeoMS scientists, planners, and designers can easily and rapidly test ideas in geographic space while being guided by scientific feedback.  Applications include computer aided modeling, hazard and disaster management (such as fire management), ecosystem restoration, forestry, geological and geomorphological research, urban planning and design, construction and engineering, landscape architecture, remediation, natural resource exploration, military logistics and deployment, and education.",
image_file_name: 'TanGeoMS.png',
image_content_type: 'image/png',
image_file_size: 217160,
image_updated_at: Time.now
)

Product.find_or_create_by(
title: "DBAT: Traffic Optimization System",
developer: "Sangkey Kim, PhD, College of Engineering, Civil, Construction, and Environmental Engineerin",
email: "email@mail.com",
institution: "North Carolina State University",
category: "Information Techology",
price: 100.99,
summary: "DBAT enables city traffic mangers to maximize the movement of vehicles through roadways by calibrating dynamic arterial bandwidth (the actual length of green lights) versus only the pre-programmed bandwidth",
detailed_description: "Well-designed signal coordination along arterial streets minimizes the number of stops and consequently travel delay.  Synchronizing the onset of green indication for the intersections along an arterial street is one of the key steps in improving coordination and is known as offset optimization.

The dynamic nature of coordinated green duration arises because semi-actuated control allocates green time to non-coordinated phases only as needed based on detector calls, thereby reserving any unused green from non-coordinated phases as additional green time for the coordinated movements.

The test results confirmed DBAT provides a better offset solution compared to other bandwidth optimization tools that generally optimize programmed bandwidth only and do not account for early return to green due to skipped or gapped-out movements.

Under the DBAT offsets, delay for the through movements on the corridor decreased by 52.8% in the northbound and 46.83% in the southbound. The average delay reduction over all measured paths for uncongested and congested scenarios was 13.88% and 3.50%, respectively.",
image_file_name: 'traffic.png',
image_content_type: 'image/png',
image_file_size: 328860,
image_updated_at: Time.now
)


# Product.create(
# title: "Title ##{n}",
# developer: "",
# email: "email@mail.com",
# institution: "North Carolina State University",
# category: "Genomics",
# price: 100.99,
# summary: "Ipsum Lorem Ipsum Lorem",
# detailed_description: "",
# image: 'images/product_images/CTD.png',
# image_file_name: '',
# image_content_type: '',
# image_file_size: ,
# image_updated_at: Time.now
# )





# Movie.create!([{
#   title:
# },
