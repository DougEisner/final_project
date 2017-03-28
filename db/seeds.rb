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
  developer: "Carolyn J. Mattingly, PhD, Dept. of Biological Sciences",
  email: "carolyn.mattingly@ncsu.edu",
  institution: "North Carolina State University",
  category: "Genomics",
  price: 100.99,
  summary: "The Comparative Toxicogenomics Database is a database curated by Dr. Carolyn Mattingly and her team at North Carolina State University.  It’s a powerful tool for toxicogenomics research, providing information that provides data on the interactions of chemicals, genes, phenotypes and disease.  The database is updated monthly.",
  detailed_description: "In pharmaceutical drug discovery and development toxicogenomics is used to study adverse, i.e. toxic, effects, of pharmaceutical drugs. The CTD database is a powerful tool for toxicogenomics research.

  CTD provides manually curated data on exposure information, chemical-gene-phenotype-disease relationships and tools to analyze these integrated data sets.  Represents a unique centralization of data that is key to understanding and predicting toxicity of chemical compounds including both environmental compounds and drugs

No other curated databases that directly address mechanisms by which chemicals relate to diseases are publicly available.  It provides expansion of meta-analysis capabilities of software tools for toxicity of chemical compounds (both environmental and drugs) and improvement of toxicity predictions for drug developers.

Generally: Understanding the mechanisms by which environmental chemicals or drugs alter molecular pathways related to diseases can improve prevention of exposure-related disorders, identify biomarkers of disease, or fine-tune targets for treatment of implicated diseases."
# image_file_name: 'CTD.png',
# image_content_type: 'image/png',
# image_file_size: 32933,
# image_updated_at: Time.now
)


Product.create(
title: "CBRA",
developer: "Denis Fourches, PhD, Dept. of Chemistry",
email: "denis.fourches@ncsu.edu",
institution: "North Carolina State University",
category: "Chemistry",
price: 100.99,
summary: "The CBRA software evaluates the bioactivity of chemicals by conducting chemical-biological read across. This software takes both computed structural descriptors and experimentally measured bioactivity profiles as input.",
detailed_description: "The CBRA software evaluates the bioactivity of chemicals by conducting chemical-biological read across. This software takes both computed structural descriptors and experimentally measured bioactivity profiles as input.

CBRA’s graphical output includes radial plots visualizing chemicals with the highest structural similarity and bio-profile similarity to the query molecule. In addition, CBRA outputs a quantitative prediction of a new chemical’s activity (e.g., in vivo toxicity) based on those of the similar chemicals.

In addition, CBRA outputs a quantitative prediction of a new chemical's activity (e.g., in vivo toxicity, anti-cancer potency) based on those of the similar chemicals."
# image_file_name: 'CBRA.png',
# image_content_type: 'image/png',
# image_file_size: 77632,
# image_updated_at: Time.now
)

Product.find_or_create_by(
title: "GazeGis (Dynamic Gaze Tracker)",
developer: "Laura Gray Tateosian, PhD, Ctr. for Spatial Analytics",
email: "laura.tateosian@ncsu.edu",
institution: "North Carolina State University",
category: "Information Technology",
price: 100.99,
summary: "Eye tracking software monitors a user’s gaze and determines the focal point on the screen.  Software then narrates a text, dynamically adjusting pace based on eye tracking data and position.  Specific keywords, word types and phrases trigger adjustments as well",
detailed_description: "Stuff stuff stuff details details description"
# image_file_name: 'GazeGIS.png',
# image_content_type: 'image/png',
# image_file_size: 201048,
# image_updated_at: Time.now
)

Product.find_or_create_by(
title: "SAFARIS (Ag Pest Risk Analyzer)",
developer: "Karl A. Suiter, PhD, College of Agriculture and Life Sciences",
email: "karl.suiter@ncsu.ed",
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
developer: "He Huang, PhD, Dept. of Biomedical Engineering",
email: "He.Huang@ncsu.edu",
institution: "North Carolina State University",
category: "Medical Device",
price: 100.99,
summary: "This software automatically adjusts control parameters of a powered transfemoral prosthesis to duplicate a normal gait profile. Eliminates the need for experts to fine tune powered prostheses during fitting, lowering costs
Also helps amputees maintain optimal gait patterns as body weight, body shape and walking styles adjust over time",
detailed_description: "Most powered transfemoral (above-knee) prostheses rely on a finite state machine based impedance controller, of which parameters have to be fine tuned by experts during prostheses fitting.

This system automatically tunes the prosthetic impedance control parameters in software by mimicking the tuning decisions of a human expert.  Increases access to powered prostheses by cutting the cost of fitting.  It also helps amputees maintain optimal gait patterns as body weight, body shape and walking styles adjust over time.

This auto-tuning system can replace the expert and fine tune the control parameters of the above knee prostheses automatically.

Auto-tuning capability cuts the cost of prosthesis fittings and helps ensures that  amputees maintain good gait patterns, as body weight, body shape and walking styles adjust over time."
# image_file_name: 'prosthetic.png',
# image_content_type: 'image/png',
# image_file_size: 78052,
# image_updated_at: Time.now
)

Product.find_or_create_by(
title: "TOPOS Speech and Gesture Analyzer",
developer: "David M. Rieder, PhD, College of Humanities and Social Sciences",
email: "David.Reider@ncsu.edu",
institution: "North Carolina State University",
category: "Information Technology",
price: 100.99,
summary: "Topos leverages audio and video data generated by the Kinect v2 sensor to provide insight into how people are speaking and acting.  It can interpret speech and transcribe words, as well as capture physical data, such as skeletal information, about a speaker in 2D and 3D. ",
detailed_description: "Topos will provide users with the means to observe their bodies in different states, and is specifically designed for the instruction and analysis of embodied communication.
Topos provides insight into how people are speaking and acting in ways that traditional annotation programs cannot.  Topos will interpret speech and transcribe words, as well as capture physical data, such as skeletal information, about a speaker in both 2D and 3D.

Topos can also be easily extended by developers to many analytical scenarios, both for real-time and recorded data, using .NET plugins."
# image_file_name: 'TOPOS.png',
# image_content_type: 'image/png',
# image_file_size: 370321,
# image_updated_at: Time.no."
)

Product.find_or_create_by(
title: "Three-dimensional Point Pattern Matching System",
developer: "Arash Dehghan Banadaki, PhD, Dept. of Material Science and Engineering",
email: "arash.banadaki@ncsu.edu",
institution: "North Carolina State University",
category: "Information Technology",
price: 100.99,
summary: "This technology is a computer program that is capable of finding instances of a given three-dimensional (3D) object in a pool of other 3D objects. The algorithm used originates from graph theory and has unprecedented accuracy and speed.",
detailed_description: "Computer vision and 3D object tracking are indispensable components of several high-tech industries such as gaming consoles, autonomous vehicles, interactive robotics, and security systems. Iterative Closest Point (ICP) methods are currently the preferred methods in many applications due to their superior performance and significant improvements over earlier pseudo 3D algorithms which rely on a stack of 2D images to construct a 3D image. Despite their efficiency and popularity, ICP algorithms are highly sensitive to scene perturbations (hence referred to as vicinal algorithms) and therefore require several sensor acquisitions to be able to accurately track objects. It is for that reason that electronic devices that rely on ICP methods (for example, in gaming consoles) need to constantly acquire images from the scene up to several frames per second.

Recently, a team of computer scientists and engineers at NC State University has developed a new object tracking algorithm (3D point pattern matching algorithm) that eliminates the need for multiple acquisitions all together. The new algorithm virtually does not impose any limits on the perturbations of the scene and only requires a single 3D image to track the object of interest from its initial configuration, regardless of the amount of perturbation. In par with its high accuracy, the developed algorithm is also extremely efficient.

For computer vision engineers who are dissatisfied with the inaccuracy of ICP methods for fast moving objects or the industries that are limited by the number of still frames required to reconstruct and track an object in a scene, this new technology is the solution for fast, accurate and cheap object tracking. We have assembled a robust and readily implementable software system to provide enhanced vision and tracking for many applications. The algorithm is natively written in C++ and is interfaced with both MATLAB and python.

Advantages

Can track target movement in a scene with as few as two images (model and target images).
Can track the target without any limit on the amount of perturbations to its original configuration.
Written in C++ and interfaced with MATLAB (mex file is available) and Python."
# image_file_name: '3D_point_matching.png',
# image_content_type: 'image/png',
# image_file_size: 87464,
# image_updated_at: Time.now
)

Product.find_or_create_by(
title: "TanGeoMS: Interaction with geospatial simulations by manipulating linked physical models",
developer: "Helena Mitasova, PhD, Center for Geospatial Analytics",
email: "helena.mitasova@ncsu.edu",
institution: "North Carolina State University",
category: "Geospatial Analytics",
price: 100.99,
summary: "The Tangible Geospatial Modeling System (TanGeoMS) enables users to interact with digital models by manipulating linked physical models.",
detailed_description: "TanGeoMS links a physical landscape model with a virtual landscape in a GIS through an automated feedback cycle of real-time 3D scanning, geospatial modeling, and projection, enabling haptic human computer interaction and an intuitive grasp of 3-dimensional change.

As users modify the physical model - sculpting the terrain by hand for example - the changes are scanned into the GIS, geospatial simulations are run, and the results are projected back onto the physical model in real-time.

Rapid prototyping is used to generate a precise physical model to which a layer of polymer-enriched sand is then added to create a malleable surface.  A Kinect for Windows scanner is used to digitize changes to the model in real-time.
Geospatial analyses include terrain modeling, hydrological modeling, fire modeling, erosion-deposition, landform identification, subsurface soil modeling, risk and suitability analysis, etc.

With TanGeoMS scientists, planners, and designers can easily and rapidly test ideas in geographic space while being guided by scientific feedback.  Applications include computer aided modeling, hazard and disaster management (such as fire management), ecosystem restoration, forestry, geological and geomorphological research, urban planning and design, construction and engineering, landscape architecture, remediation, natural resource exploration, military logistics and deployment, and education."
# image_file_name: 'TanGeoMS.png',
# image_content_type: 'image/png',
# image_file_size: 217160,
# image_updated_at: Time.now
)

Product.find_or_create_by(
title: "DBAT: Traffic Optimization System",
developer: "Sangkey Kim, PhD, College of Engineering, Civil, Construction, and Environmental Engineering",
email: "sangkey.kim@ncsu.edu",
institution: "North Carolina State University",
category: "Information Techology",
price: 100.99,
summary: "DBAT enables city traffic mangers to maximize the movement of vehicles through roadways by calibrating dynamic arterial bandwidth (the actual length of green lights) versus only the pre-programmed bandwidth",
detailed_description: "Well-designed signal coordination along arterial streets minimizes the number of stops and consequently travel delay.  Synchronizing the onset of green indication for the intersections along an arterial street is one of the key steps in improving coordination and is known as offset optimization.

The dynamic nature of coordinated green duration arises because semi-actuated control allocates green time to non-coordinated phases only as needed based on detector calls, thereby reserving any unused green from non-coordinated phases as additional green time for the coordinated movements.

The test results confirmed DBAT provides a better offset solution compared to other bandwidth optimization tools that generally optimize programmed bandwidth only and do not account for early return to green due to skipped or gapped-out movements.

Under the DBAT offsets, delay for the through movements on the corridor decreased by 52.8% in the northbound and 46.83% in the southbound. The average delay reduction over all measured paths for uncongested and congested scenarios was 13.88% and 3.50%, respectively."
# image_file_name: 'traffic.png',
# image_content_type: 'image/png',
# image_file_size: 328860,
# image_updated_at: Time.now
)

Product.find_or_create_by(
title: "System and Method of Error Control for Interactive Low-Bit Rate Video Transmission Over the Internet",
developer: "Injong Rhee, PhD, Dept. of Computer Science",
email: "injong.rhee@ncsu.edu",
institution: "North Carolina State University",
category: "Computer Science",
price: 100.99,
summary: "Computer software that improves video quality in cases on insufficient bandwidth through packet and data buffer management.",
detailed_description: "An important application of the Internet is its use for interactive video. As an example, several distance learning programs already are using this mode of course delivery. Unfortunately, the quality of the video signal is sometimes mediocre at best. An NCSU researcher has developed a signal processing algorithm that is intended to greatly improve the picture quality of interactive video.

Two of the key problems associated with interactive video transmission are: the limited bandwidth available and the fact that packets of information can be lost. In an attempt to reduce the required bandwidth, video signals are compressed. For the existing technology, this compression involves first transmitting an initial image (intra frame), and subsequently only sending the changes in picture elements (pixels) for each new frame. In most applications, the numbers of changes is a small fraction of the total number of pixels, and the amount of data that needs to be sent is dramatically reduced. With this technique, if the data are ever lost or corrupted for one frame, all of the following frames are corrupted–at least until a new intra frame is sent.

The algorithm is a technique in which lost packets of information can be resent after a delay in time and, through the use of data buffers, be used to restore the lost data such that subsequent picture frames are correct. The algorithm has been reduced to practice and shown to result in higher quality video for a fixed bandwidth.

Advantages
A signal processing algorithm that is envisioned being implemented as part of a MPEG (communications) card for a PC (or other computer) which handles video transmissions.
Could also be implemented in software
Patent Information

An US patent No. 6,105,407 has been issued, titled “System and Method of Error Control for Interactive Low-Bit Rate Video Transmission.")
