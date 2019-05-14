const person = [
    ["Label", "Type", "Description", "Image", "LinkedIn", "Facebook", "Twitter", "Github", "Medium"],
    ["Adam Lake", "Person", "", "", "", "", "", "", ""],
    ["Adam Powers", "Person", "", "", "", "", "", "", ""],
    ["Adin Schmahmann", "Person", "", "", "", "", "", "", ""],
    ["Adrian Gropper", "Person", "![Adrian-Gropper](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/2ca0d80c-4857-46c4-b9d2-b1650dc70766.jpg) Adrian Gropper, MD is CTO of the non-profit Patient Privacy Rights Foundation. I have training as an engineer from MIT and physician from Harvard Medical School. A career medical device entrepreneur, I founded AMICAS as the first Web-based radiology PACS and the first to provide imaging links in electronic health records as well as two other regulated medical diagnostics businesses. I participated in the founding of many healthcare interoperability initiatives including Blue Button, Direct Project, and Health Relationship Trust (HEART) and speaks frequently on privacy engineering in health care. My paper won a prize at ONC’s 2016 Blockchain Health competition. Our current project, HIE of One Trustee, uses public blockchains, standards, and open source software to enable patient-controlled independent health records that can last a lifetime. This reference implementation informs blockchain standards development for identity, credentials, and reputation with groups that include W3C, IEEE, Kantara, OpenID Foundation, and others.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/2ca0d80c-4857-46c4-b9d2-b1650dc70766.jpg", "https://www.linkedin.com/in/adrian-gropper-6916651/", "", "https://twitter.com/agropper", "https://github.com/agropper", ""],
    ["Ajit Tripathi", "Person", "", "", "", "", "", "", ""],
    ["Alberto Elias", "Person", "", "", "", "", "", "", ""],
    ["Alessandro Voto", "Person", "", "", "", "", "", "", ""],
    ["Alex Preukschat", "Person", "", "", "", "", "", "", ""],
    ["Alex Puig", "Person", "", "", "", "", "", "", ""],
    ["Alicia Carmona", "Person", "", "", "", "", "", "", ""],
    ["Amy Guy", "Person", "", "", "", "", "", "", ""],
    ["André Cruz", "Person", "", "", "", "", "", "", ""],
    ["Andres Junge", "Person", "", "", "", "", "", "", ""],
    ["Andrew Hughes", "Person", "![Andrew-Hughes](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/ae2303a3-6c8a-48a2-84b2-fb8196e92f40.png) Andrew Hughes CISM CISSP has been providing IM/IT consulting for over 25 years with a focus on security, privacy and digital identity operations, strategy and policy. Since 2013 he has worked with international associations and standards bodies as an independent analyst developing standards and related evaluation materials. He is Chair of the Leadership Council of the Kantara Initiative, helping to bring together community practices and develop conformity assessment programs for digital identity and personal information systems. He has been Editor for several standards at OASIS and ITU-T and has launched and Chaired several work groups at IDESG and Kantara. Andrew is an active contributor and member of the Standards Canada delegation to the ISO SC 27 working group on Identity management and Privacy.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/ae2303a3-6c8a-48a2-84b2-fb8196e92f40.png", "https://www.linkedin.com/in/andrew-hughes-682058a/?originalSubdomain=ca", "", "https://twitter.com/idimandrew", "", ""],
    ["Angus Champion de Crespigny", "Person", "", "", "", "", "", "", ""],
    ["Anya Petrova", "Person", "", "", "", "", "", "", ""],
    ["Arthur Brock", "Person", "![Art_Brock_headshot](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/6ccba474-4298-4063-8627-16d736be4a9f.jpg) I build targeted currencies which shape the social dynamics of our emerging post-industrial economy. To that end, I\"ve created more than a hundred designs for multi-currency systems, and my software company has built and deployed dozens of those systems. My current focus is launching Holochain, an alternative to blockchain for running fully P2P distributed applications. Initially, I put my degree in Artificial Intelligence to use at GM, Chrysler & Hughes, but soon realized I was committed to bringing intelligence to social architectures rather than to computers. I started student-run schools and award-winning, employee-run businesses and discovered that the self-managing feedback loops needed to operate these types of organizations were built on particular patterns of incentives and measurement. I began to unlock the social DNA by which groups operate and uncover the critical role of currencies as carriers of that social DNA.", "", "", "", "https://twitter.com/artbrock", "", "https://medium.com/@artbrock"],
    ["Bart Suichies", "Person", "", "", "", "", "", "", ""],
    ["Bentley Farrington", "Person", "", "", "", "", "", "", ""],
    ["Bill Tulloh", "Person", "", "", "", "", "", "", ""],
    ["Bob Clint", "Person", "", "", "", "", "", "", ""],
    ["Bohdan Andriyiv", "Person", "", "", "", "", "", "", ""],
    ["Boyma Fahnbulleh", "Person", "", "", "", "", "", "", ""],
    ["Brent Zundel", "Person", "", "", "", "", "", "", ""],
    ["Brian Weller", "Person", "", "", "", "", "", "", ""],
    ["Bryan Ford", "Person", "", "", "", "", "", "", ""],
    ["Bryce Glass", "Person", "", "", "", "", "", "", ""],
    ["Carsten Keutmann", "Person", "", "", "", "", "", "", ""],
    ["Carsten Stöcker", "Person", "", "", "", "", "", "", ""],
    ["Cedric Franz", "Person", "", "", "", "", "", "", ""],
    ["Cherie Duncan", "Person", "", "", "", "", "", "", ""],
    ["Christian Lundkvist", "Person", "", "", "", "", "", "", ""],
    ["Christopher Allen", "Person", "![christopherallen](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/22e1c37d-810b-4b4c-8974-a163a55d495c.jpg) Christopher Allen hosts iphonewebdev.com, the largest iPhone web dev community, and is a founder and organizer of the iPhoneDevCamp conference. A longtime technologist, Chris was one of the authors of TLS, the next-generation SSL protocol. Shannon Appelcline is a widely published writer and technologist, who has written everything from game programming articles to comic books. Shannon Appelcline is the Vice President of Skotos Tech. He manages the day-to-day operations of the company, and also directs marketing and business development. He\"s also a writer and game designer with credits in multiple industries. A blog on social software, collaboration, trust, security, privacy, and internet tools by Christopher Allen. Entrepreneur, Advisor & Technologist Principal Architect at Blockstream Internet Cryptography Pioneer Co-author TLS Security Standard Collaborative Tools & Patterns Decentralized Identity", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/22e1c37d-810b-4b4c-8974-a163a55d495c.jpg", "https://www.linkedin.com/in/christophera/", "", "https://twitter.com/ChristopherA", "https://github.com/ChristopherA", ""],
    ["Christopher Webber", "Person", "", "", "", "", "", "", ""],
    ["Claire Rumore", "Person", "", "", "", "", "", "", ""],
    ["Daan Sprenkels", "Person", "", "", "", "", "", "", ""],
    ["Dan Burnett", "Person", "", "", "", "", "", "", ""],
    ["Dan Gisolfi", "Person", "![Dangisolfi](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/f3cd2081-3477-4773-a618-67446b1566a0.jpg) Dan Gisolfi is an innovation agent who thrives on stewarding the incubation of novel business and technology concepts through all phases of the technology adoption lifecycle. Leveraging his technical and business acumen coupled with deep and trusted client relationships, Mr. Gisolfi partakes in all aspects of a nimble end-to-end engagement process to influence others and realize a vision. His enthusiasm, passion and persistence about the maturation of new ideas are key characteristics of a catalyst for disruptive change.  As a high-energy technical leader with diverse engineering, development lab and worldwide field experience, Mr. Gisolfi offers over 15 years of results-oriented technology evangelism that has impacted products, customer strategies and industry standards. He works closely with customers evolving and refining innovations using a tight feedback loop from customer experience to technology, graduating to solution/product. ", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/f3cd2081-3477-4773-a618-67446b1566a0.jpg", "https://www.linkedin.com/in/vinomaster/", "", "", "https://github.com/vinomaster?tab=followers", ""],
    ["Dan Greening", "Person", "", "", "", "", "", "", ""],
    ["Dan Pape", "Person", "", "", "", "", "", "", ""],
    ["Daniel Buchner", "Person", "![danielbuchner](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/727bf690-2b9c-49cd-aecc-2e15cbe3612e.jpg) Senior PM - Head of Decentralized Identity at Microsoft  I\"m passionate about developing apps and services that impact the lives of humans on a global scale. I love creating innovative products that solve tough problems for real people. Specialties: - Self-taught coder - Foundation in business and economics - Experience driving technical standards - Expert stakeholder-to-developer translator (v. v.) - Distributed and decentralized system architecture - Blockchain-based application and service development", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/727bf690-2b9c-49cd-aecc-2e15cbe3612e.jpg", "https://www.linkedin.com/in/dbuchner/", "", "https://twitter.com/csuwildcat", "https://github.com/csuwildcat", "https://medium.com/@csuwildcat/has-recommended"],
    ["Daniel Hardman", "Person", "", "", "", "", "", "", ""],
    ["Dave Croker", "Person", "", "", "", "", "", "", ""],
    ["Dave Longley", "Person", "", "", "", "", "", "", ""],
    ["David Fields", "Person", "", "", "", "", "", "", ""],
    ["David Lamers", "Person", "", "", "", "", "", "", ""],
    ["David Lehn", "Person", "", "", "", "", "", "", ""],
    ["David Longley", "Person", "", "", "", "", "", "", ""],
    ["David Stark", "Person", "", "", "", "", "", "", ""],
    ["David Suarez", "Person", "", "", "", "", "", "", ""],
    ["Dmitri Zagidulin", "Person", "", "", "", "", "", "", ""],
    ["Dmitry Khovratovich", "Person", "", "", "", "", "", "", ""],
    ["Dominic Tarr", "Person", "", "", "", "", "", "", ""],
    ["Drummond Reed", "Person", "![Drummondreed](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/1a3d6887-bc37-42d7-9907-315e8218d87f.jpeg) Drummond has spent over two decades working on Internet identity, security, privacy, and trust frameworks. He joined Evernym as Chief Trust Officer after Evernym’s acquisition of Respect Network, where he was CEO, co-founder, and co-author of the Respect Trust Framework, which was honored with the Privacy Award at the 2011 European Identity Conference. Drummond has served as co-chair of the OASIS XDI Technical Committee since 2004, the new semantic data interchange protocol that implements Privacy by Design. Prior to starting Respect Network, Drummond was Executive Director of two industry foundations: the Information Card Foundation and the Open Identity Exchange, the international not-for-profit clearinghouse for Internet trust frameworks. He has also served as a founding board member of the OpenID Foundation, ISTPA, XDI.org, and Identity Commons. In 2002 he was a recipient of the Digital Identity Pioneer Award from Digital ID World, and in 2013 he was honored as an OASIS Distinguished Contributor.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/1a3d6887-bc37-42d7-9907-315e8218d87f.jpeg", "https://www.linkedin.com/in/drummondreed/", "", "https://twitter.com/drummondreed?lang=en", "https://github.com/talltree", "https://medium.com/@drummondreed"],
    ["du5t", "Person", "", "", "", "", "", "", ""],
    ["Duke Dorje", "Person", "", "", "", "", "", "", ""],
    ["Eduardo Moraes de Morais", "Person", "", "", "", "", "", "", ""],
    ["Elizabeth M. Renieris", "Person", "", "", "", "", "", "", ""],
    ["Eric Welton", "Person", "", "", "", "", "", "", ""],
    ["Erica Connell", "Person", "", "", "", "", "", "", ""],
    ["Ethan Brown", "Person", "", "", "", "", "", "", ""],
    ["Eugeniu Rusu", "Person", "", "", "", "", "", "", ""],
    ["Fabien Petitcolas", "Person", "", "", "", "", "", "", ""],
    ["Florent Blondeau", "Person", "", "", "", "", "", "", ""],
    ["Frederic Engel", "Person", "", "", "", "", "", "", ""],
    ["Ganesh Annan", "Person", "", "", "", "", "", "", ""],
    ["Gary Zimmerman", "Person", "", "", "", "", "", "", ""],
    ["Glenn Willen", "Person", "", "", "", "", "", "", ""],
    ["Greg Martel", "Person", "", "", "", "", "", "", ""],
    ["Greg Maxwell", "Person", "", "", "", "", "", "", ""],
    ["Greg Slepak", "Person", "", "", "", "", "", "", ""],
    ["Hailey Park", "Person", "", "", "", "", "", "", ""],
    ["Hank Chiu", "Person", "", "", "", "", "", "", ""],
    ["Hankuan Yu", "Person", "", "", "", "", "", "", ""],
    ["Harlan T. Wood", "Person", "", "", "", "", "", "", ""],
    ["Harlan Wood", "Person", "", "", "", "", "", "", ""],
    ["Harrison Stahl", "Person", "", "", "", "", "", "", ""],
    ["Heather Vescent", "Person", "![Heather Vescent](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/4f2ce9f3-215f-4180-9dcb-a6e4161aa3ed.jpg) Heather Vescent is a futurist, primarily known as an expert in cyber economics and cryptocurrency. Her far-reaching research, published by the New York Times, CNN, American Banker, CNBC, Fox, and the Atlantic, explores trends in the future of money, economies, identity, wearable tech, relationships, augmented intelligence, IoT, cybersecurity, and humanity. Her talks have been featured at SxSW, Sibos, TedxZwolle, Cybersecurity Summit, Total Payments, Privacy Identity Innovation, The Future of Money, Tomorrow\"s Transactions, World Future Society and other global conferences. She has been profiled and quoted in Wired, TechCrunch, CNBC, The Atlantic, American Banker, The New York Times, LA Times, Elle Decor, Italian Elle, LA Weekly and San Jose Mercury News, and has appeared live on Fox News multiple times. ", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/4f2ce9f3-215f-4180-9dcb-a6e4161aa3ed.jpg ", "https://www.linkedin.com/in/heathervescent/", "https://www.facebook.com/futurevescent/", "https://twitter.com/heathervescent", "", "https://medium.com/@heathervescent"],
    ["Igor Kruiper", "Person", "", "", "", "", "", "", ""],
    ["Irene Hernandez", "Person", "", "", "", "", "", "", ""],
    ["J. Philipp Schmidt", "Person", "", "", "", "", "", "", ""],
    ["Jack Poole", "Person", "", "", "", "", "", "", ""],
    ["Jakub Lanc", "Person", "", "", "", "", "", "", ""],
    ["James Foley", "Person", "", "", "", "", "", "", ""],
    ["Jason Law", "Person", "", "", "", "", "", "", ""],
    ["Jefferson Sofarelli", "Person", "", "", "", "", "", "", ""],
    ["Jeremi Joslin", "Person", "", "", "", "", "", "", ""],
    ["João Santos", "Person", "", "", "", "", "", "", ""],
    ["Joe Andrieu", "Person", "![Joeandrieu](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/6b42f86a-6b74-41e7-86e6-789dd4800250.jpg) Requirements engineer for digital identity systems - I\"m a requirements engineer. After over 25 years of professional software development and entrepreneurial adventures, I\"ve turned my attention to resolving the biggest obstacle to successful projects: clear, responsive requirements. With apologies to George Box, all requirements are wrong. Some are useful. If the entire team isn\"t pulling in the same direction, you\"re wasting energy. Unfortunately, it can also be a waste of energy to develop extensive requirements specifications before starting work. Even worse, it is definitely a waste to rework and rework and rework because core requirements aren\"t being met. Even the best requirements need to change. The marketplace. Technology. People. Resources. Changes in any of these areas can require dramatic changes to your project. The trick is managing those changes in the most fluid and cost-effective way possible. I\"m on a mission to better understand how to create, maintain, and apply truly responsive requirements.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/6b42f86a-6b74-41e7-86e6-789dd4800250.jpg", "https://www.linkedin.com/in/joe-andrieu-a0528/", "", "https://twitter.com/JoeAndrieu", "https://github.com/jandrieu", "https://medium.com/@JoeAndrieu"],
    ["Joel Dietz", "Person", "", "", "", "", "", "", ""],
    ["John Callahan", "Person", "", "", "", "", "", "", ""],
    ["John Edge", "Person", "", "", "", "", "", "", ""],
    ["John Jordan", "Person", "", "", "", "", "", "", ""],
    ["John Toohey", "Person", "", "", "", "", "", "", ""],
    ["Jon Callas", "Person", "", "", "", "", "", "", ""],
    ["Jon Tsai", "Person", "", "", "", "", "", "", ""],
    ["Jonathan Endersby", "Person", "", "", "", "", "", "", ""],
    ["Joni McKervey", "Person", "", "", "", "", "", "", ""],
    ["jonnycrunch", "Person", "", "", "", "", "", "", ""],
    ["Jordi Baylina", "Person", "", "", "", "", "", "", ""],
    ["Joseph Bonneau", "Person", "", "", "", "", "", "", ""],
    ["Joseph Bonneau", "Person", "", "", "", "", "", "", ""],
    ["Joseph Poon", "Person", "", "", "", "", "", "", ""],
    ["Juan Caballero", "Person", "", "", "", "", "", "", ""],
    ["Jude Nelson", "Person", "![Judenelson](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/3b80b9dc-8b83-452c-b31b-2dcdb432ec61.jpg) Jude Nelson earned his PhD in computer science at Princeton and worked as a core member of PlanetLab, which received the ACM Test of Time Award for enabling planetary scale experimentation and deployment. His research covered wide-area storage systems and CDNs. 10+ years of Vim usage.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/3b80b9dc-8b83-452c-b31b-2dcdb432ec61.jpg", "https://www.linkedin.com/in/jude-nelson-a3181b4a/", "", "https://twitter.com/judecnelson?lang=en", "https://github.com/jcnelson", "https://medium.com/@judecnelson"],
    ["Justin Lin", "Person", "", "", "", "", "", "", ""],
    ["Justin Newton", "Person", "![Justinnewton](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/a7da33de-be75-4d6f-9064-72bd507d207a.jpg) Justin is an early internet pioneer and technology startup veteran. His last four companies (BlackLine, Demand Media, NetZero and Above Net) all exited with $1 Billion+ IPOs. He was responsible for architecting each company’s platform for global scale and preparing their data systems for regulatory compliance. Justin also founded The Internet Service Providers Consortium (the first trade association for ISPs) and served as its public policy director. Justin sits on the board for Adra Software and has been an advisor to more than a dozen startups, including Alcatel, Citrix and Juniper Networks.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/a7da33de-be75-4d6f-9064-72bd507d207a.jpg", "https://www.linkedin.com/in/justinnewton/", "", "https://twitter.com/justinwnewton?lang=en", "https://github.com/justinwnewton", "https://medium.com/@justinwnewton"],
    ["Kaliya Young", "Person", "![Kaliyayoung](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/8526ac7f-dc70-4f20-8007-9850e20f7d2e.jpg) Kaliya Young also known as “Identity Woman,” is an independent advocate for the rights and dignity of our digital selves. She is internationally recognized expert in the field of user-centric digital identity / self-sovereign identity and personal data. The Internet Identity Workshop that she co-founded in 2005, twice a year brings together brings the largest concentration on the planet of talent dedicated to designing and building identity systems that empower individuals.  In 2010 she founded the Personal Data Ecosystem Consortium and serves as Thought Leader and Catalyst Emeritus. She has worked directly with the US Government (NSTIC & DHS S&T) and the Government of British Columbia.  She is enrolled first ever class of students in the Masters of Science in Identity Management and Security at the University of Texas at Austin and graduates in December  2017.  She is currently honored as a Young Global Leader by the World Economic Forum. She is available to consult with organizations seeking to make sense of the emerging markets and opportunities in identity and personal data.  Kaliya the interactive conference designer and facilitator. She has designed and facilitated over 200 unconferences in the past 10 years. She works with a range of organizational & community clients who hire her for their events . Inc Magazine’s December ’09 issue covered the Mass Technology Leadership Council Innovation Unconference that Kaliya facilitated. She has has co-founded several unconferences including She’s Geeky: Connecting Women in Tech,  Digital Death Day covering what happens to your data after you die and Open Government Directive Workshop Series among others. She is active in several facilitator communities of practice including the Bay Area Fabulous Facilitators and National Coalition on Dialogue and Deliberation. She was an active contributor to the community developing the Group Works Deck. ", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/8526ac7f-dc70-4f20-8007-9850e20f7d2e.jpg", "https://www.linkedin.com/in/kaliya/", "", "https://twitter.com/identitywoman?lang=en", "", ""],
    ["Karolin Siebert", "Person", "", "", "", "", "", "", ""],
    ["Katryna Dow", "Person", "", "", "", "", "", "", ""],
    ["Ken Ebert", "Person", "", "", "", "", "", "", ""],
    ["Kenneth Bok", "Person", "", "", "", "", "", "", ""],
    ["Kevin Gannon", "Person", "", "", "", "", "", "", ""],
    ["Kiara Robles", "Person", "", "", "", "", "", "", ""],
    ["Kim Hamilton Duffy", "Person", "![Kimhamiltonduffy](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/715c2172-8210-480f-8297-acf66756b73e.jpg) Kim Hamilton Duffy is CTO of Learning Machine. Her focus is enabling decentralized, recipient-owned credentials and identity solutions. She is Principal Architect for Blockcerts, an initiative led by Learning Machine and MIT Media Lab, providing open standards, open source implementations, and an ecosystem enabling decentralized, blockchain-based credentials. Kim is co-chair of the W3C Credentials Community Group (CCG), which is driving the Decentralized Identifiers (DID) specification. Her standards work includes co-developing the BTCR DID method specification and open source implementations, aligning the Open Badges and Verifiable Credentials specifications, and contributing to JSON-LD signature suites and prototype implementations. Kim studied Mathematics and Computer Science at University of Texas at Austin (B.S.) and Cornell University (M.S.). Her professional experience includes architecting and building reliable, distributed systems; building developer-focused APIs and tools as owner of System.Collections and System.IO in the .NET Common Language Runtime; and generally hacking on fun, mathematically interesting problems.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/715c2172-8210-480f-8297-acf66756b73e.jpg", "https://www.linkedin.com/in/kimdhamilton/", "", "https://twitter.com/kimdhamilton?lang=en", "https://github.com/kimdhamilton", "https://medium.com/@kimdhamilton"],
    ["Klara Sok", "Person", "", "", "", "", "", "", ""],
    ["Kulpreet Singh", "Person", "", "", "", "", "", "", ""],
    ["Kyle Den Hartog", "Person", "", "", "", "", "", "", ""],
    ["Les Chasen", "Person", "", "", "", "", "", "", ""],
    ["Lionel Wolberger", "Person", "", "", "", "", "", "", ""],
    ["Lohan Spies", "Person", "", "", "", "", "", "", ""],
    ["Luca Boldrin", "Person", "", "", "", "", "", "", ""],
    ["Lucas Parker", "Person", "", "", "", "", "", "", ""],
    ["Luiz Gustavo Ferraz Aoqui", "Person", "", "", "", "", "", "", ""],
    ["Lyre Calliope", "Person", "", "", "", "", "", "", ""],
    ["Maciej Laskus", "Person", "", "", "", "", "", "", ""],
    ["Manu Sporny", "Person", "![manu sporny](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/2132369e-3a5a-47f7-b82a-280b6e3d2394.png)  Manu is a Founder and CEO of Digital Bazaar, and a chairman for the Web Payments and JSON-LD Community Groups at the World Wide Web Consortium (W3C). He also chairs the RDFa standardization work at the W3C and spends most of his time driving the creation of open standards and open technology that will integrate Linked Data, open identity, and payments into the core architecture of the Web. A champion for science and the arts, his life’s work is focused on empowering people to enact global change through the Web. He is currently focused on expanding the core infrastructure of the Web to include peer-to-peer payments, distributed banking, crowd funding, and a variety of other transparent-by-design financial services that will become the foundation of the new economy. Manu is an entrepreneur, having been deeply involved in the launch of 4 start-ups.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/2132369e-3a5a-47f7-b82a-280b6e3d2394.png  ", "https://www.linkedin.com/in/manusporny/", "", "https://twitter.com/manusporny?lang=en", "https://github.com/msporny", "https://medium.com/@manusporny"],
    ["Mark Friedenbach", "Person", "", "", "", "", "", "", ""],
    ["Mark S. Miller", "Person", "", "", "", "", "", "", ""],
    ["Mark van der Waal", "Person", "", "", "", "", "", "", ""],
    ["Markus Sabadello", "Person", "![Markussabadello](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/f9f0b712-b755-4c79-8dae-d03765bfffab.jpg) Markus Sabadello has been a pioneer and leader in the field of digital identity for many years and has contributed to cutting-edge technologies that have emerged in this space. He has been an early participant of decentralization movements such as the Federated Social Web, Respect Network, and the FreedomBox. He has worked as an analyst and consultant at the Harvard Berkman Center for Internet&Society, at the MIT Media Lab’s Human Dynamics Group, at the World Economic Forum, and at the Personal Data Ecosystem Consortium. Markus has spoken at dozens of conferences and published papers about both the politics and technologies of digital identity. In 2015 he founded Danube Tech, a consulting and development company that contributes to Sovrin Foundation, the Decentralized Identity Foundation, and various self-sovereign identity projects around the world.", " https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/f9f0b712-b755-4c79-8dae-d03765bfffab.jpg", "https://www.linkedin.com/in/markus-sabadello-353a0821/?originalSubdomain=at", "https://www.facebook.com/markus.sabadello", "https://twitter.com/peacekeeper?lang=en", "https://github.com/peacekeeper", ""],
    ["Marta Piekarska", "Person", "", "", "", "", "", "", ""],
    ["Martin Koeppelmann", "Person", "", "", "", "", "", "", ""],
    ["Martin Riedel", "Person", "", "", "", "", "", "", ""],
    ["Matt Stone", "Person", "", "", "", "", "", "", ""],
    ["Matthew Schutte", "Person", "", "", "", "", "", "", ""],
    ["Matthew Wong", "Person", "", "", "", "", "", "", ""],
    ["Michael B. Jones", "Person", "", "", "", "", "", "", ""],
    ["Michael Folkson", "Person", "", "", "", "", "", "", ""],
    ["Michael Haley", "Person", "", "", "", "", "", "", ""],
    ["Michael Lodder", "Person", "", "", "", "", "", "", ""],
    ["Michael Rüther", "Person", "", "", "", "", "", "", ""],
    ["Michael Shea", "Person", "", "", "", "", "", "", ""],
    ["Mike Varley", "Person", "", "", "", "", "", "", ""],
    ["Mitzi László", "Person", "", "", "", "", "", "", ""],
    ["Moses Ma", "Person", "![mosesma](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/a40e301c-ea99-4450-9e3e-d2920ed1cf18.jpg) Moses Ma is a partner at FutureLab Consulting, a strategic consulting firm that also runs a boutique high tech venture accelerator in San Francisco, with startups in enterprise software, digital media and other technologies. Featured in Time Magazine, the New York Times and other publications, his professional life has spanned academia, science, technology, philosophy and business. He has been involved in the forefront of many technologies: as a games designer he created SpectreVR, which invented the category of networked games; he co-developed with IBM the first specification for universal identity on the Internet; he invented the concept of eMarkets and helped to establish the foundational guidelines for the semantic Web, and worked at the following think tanks: CommerceNet, the Idea Factory, Nokia Innovent.", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/a40e301c-ea99-4450-9e3e-d2920ed1cf18.jpg", "https://www.linkedin.com/in/mosesma/", "https://www.facebook.com/moses.t.ma", "https://twitter.com/mosesma?lang=en", "https://github.com/mosesma", ""],
    ["Muneeb Ali", "Person", "", "", "", "", "", "", ""],
    ["Nacho Alamillo", "Person", "", "", "", "", "", "", ""],
    ["Nader Helmy", "Person", "", "", "", "", "", "", ""],
    ["Natalie Smolenski", "Person", "", "", "", "", "", "", ""],
    ["Nate Otto", "Person", "", "", "", "", "", "", ""],
    ["Nikolaos Alexopoulos", "Person", "", "", "", "", "", "", ""],
    ["Noah Thorp", "Person", "![Noahthorp](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/bd76e921-2f43-4dae-97e2-f579edd5f893.png) My career as technical entrepreneur is built on the principles of rapid feedback through experiments, continuous learning, spirited creativity, and iterating towards excellence. These principles have directed my path through agile software development as a developer, lean product management, company building as a founder, and ecosystem building as a platform creator. My background includes • Company formation and CEO roles * Extensive software product design and agile project management • Vetted CTO level technology evaluation and strategy experience • Proven results creating high quality, high velocity, high value teams using agile processes from XP, Scrum, and Lean.  • Passion for innovative problem solving and pragmatic solutions ", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/bd76e921-2f43-4dae-97e2-f579edd5f893.png", "https://www.linkedin.com/in/noahthorp/", "", "https://twitter.com/noahthorp?lang=en", "https://github.com/aquabu", "https://medium.com/@noahthorp"],
    ["Oleg Burundukov", "Person", "", "", "", "", "", "", ""],
    ["Oliver Terbu", "Person", "", "", "", "", "", "", ""],
    ["Olivier Maas", "Person", "", "", "", "", "", "", ""],
    ["Pat McBennett", "Person", "", "", "", "", "", "", ""],
    ["Pavel Kravchenko", "Person", "", "", "", "", "", "", ""],
    ["Pedro Teixeira", "Person", "", "", "", "", "", "", ""],
    ["Peter Scott", "Person", "", "", "", "", "", "", ""],
    ["Peter Snyder", "Person", "", "", "", "", "", "", ""],
    ["Peter Todd", "Person", "", "", "", "", "", "", ""],
    ["Phil Zimmerman", "Person", "", "", "", "", "", "", ""],
    ["Philip Sheldrake", "Person", "", "", "", "", "", "", ""],
    ["Philippe Honigman", "Person", "", "", "", "", "", "", ""],
    ["Pieter Wuille", "Person", "", "", "", "", "", "", ""],
    ["Raghav Chawla", "Person", "", "", "", "", "", "", ""],
    ["Randall Farmer", "Person", "", "", "", "", "", "", ""],
    ["Randy Farmer", "Person", "", "", "", "", "", "", ""],
    ["Rieks Joosten", "Person", "", "", "", "", "", "", ""],
    ["Robert Clint", "Person", "", "", "", "", "", "", ""],
    ["Rodolphe Marques", "Person", "", "", "", "", "", "", ""],
    ["Ron Kreutzer", "Person", "", "", "", "", "", "", ""],
    ["Ryan Grant", "Person", "", "", "", "", "", "", ""],
    ["Ryan Shea", "Person", "", "", "", "", "", "", ""],
    ["Sam Chase", "Person", "", "", "", "", "", "", ""],
    ["Samuel M. Smith Ph.D.", "Person", "", "", "", "", "", "", ""],
    ["Sandro Hawke", "Person", "", "", "", "", "", "", ""],
    ["Santi Casas", "Person", "", "", "", "", "", "", ""],
    ["Sean Gilligan", "Person", "", "", "", "", "", "", ""],
    ["Shannon Appelcline", "Person", "![Shannonappelcline](https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/249fea2f-c334-4e89-b23d-905ad60ba00d.jpg)  Shannon Appelcline is a writer and technologist. He was a participant in CharlesRiver Media\"s Massively Multiplayer Game Development 2. He has also beenpublished by Chaosium Inc., Issaries Inc., Jones Publishing, Partizan Press, WhiteWolf Publishing, and Wizards of the Coast. ", "https://s3.amazonaws.com/cloud.kumu.io/accounts/169502/111101/249fea2f-c334-4e89-b23d-905ad60ba00d.jpg", "", "", "", "", ""],
    ["Shannon Applecline", "Person", "", "", "", "", "", "", ""],
    ["Shaun Conway", "Person", "", "", "", "", "", "", ""],
    ["Shigeya Suzuki", "Person", "", "", "", "", "", "", ""],
    ["Shireen Mitchell", "Person", "", "", "", "", "", "", ""],
    ["Snorre Lothar von Gohren Edwin", "Person", "", "", "", "", "", "", ""],
    ["Sonia Sawhney", "Person", "", "", "", "", "", "", ""],
    ["Stephen Curran", "Person", "", "", "", "", "", "", ""],
    ["Tim Chen", "Person", "", "", "", "", "", "", ""],
    ["Tim Daubenschütz", "Person", "", "", "", "", "", "", ""],
    ["Tim Pastoor", "Person", "", "", "", "", "", "", ""],
    ["Titus Capilnean", "Person", "", "", "", "", "", "", ""],
    ["Toni Lane Casserly", "Sponsor", "", "", "", "", "", "", ""],
    ["Tyler Close", "Person", "", "", "", "", "", "", ""],
    ["Tyler Yasaka", "Person", "", "", "", "", "", "", ""],
    ["Unknown Author", "Person", "", "", "", "", "", "", ""],
    ["Vishal Gupta", "Person", "", "", "", "", "", "", ""],
    ["Vitalik Buterin", "Person", "", "", "", "", "", "", ""],
    ["Vivian Shen", "Person", "", "", "", "", "", "", ""],
    ["Wayne Hennessy-Barrett", "Person", "", "", "", "", "", "", ""],
    ["Wayne Thayer", "Person", "", "", "", "", "", "", ""],
    ["Wayne Vaughan", "Person", "", "", "", "", "", "", ""],
    ["Wes Kussmaul", "Person", "", "", "", "", "", "", ""],
    ["Will Abramson", "Person", "", "", "", "", "", "", ""],
    ["Wolf McNally", "Person", "", "", "", "", "", "", ""],
    ["Yancy Ribbens", "Person", "", "", "", "", "", "", ""],
    ["Zachary Larson", "Person", "", "", "", "", "", "", ""]
];