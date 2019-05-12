const completed_paper_person = [
    ["From", "To", "Type"],
    ["Christopher Allen", "DPKI Paper", "Authored"],
    ["Arthur Brock", "DPKI Paper", "Authored"],
    ["Vitalik Buterin", "DPKI Paper", "Authored"],
    ["Jon Callas", "DPKI Paper", "Authored"],
    ["Duke Dorje", "DPKI Paper", "Authored"],
    ["Christian Lundkvist", "DPKI Paper", "Authored"],
    ["Pavel Kravchenko", "DPKI Paper", "Authored"],
    ["Jude Nelson", "DPKI Paper", "Authored"],
    ["Drummond Reed", "DPKI Paper", "Authored"],
    ["Markus Sabadello", "DPKI Paper", "Authored"],
    ["Greg Slepak", "DPKI Paper", "Authored"],
    ["Noah Thorp", "DPKI Paper", "Authored"],
    ["Harlan Wood", "DPKI Paper", "Authored"],
    ["Shannon Appelcline", "Rebranding the Web of Trust", "Authored"],
    ["Dave Croker", "Rebranding the Web of Trust", "Authored"],
    ["Randall Farmer", "Rebranding the Web of Trust", "Authored"],
    ["Justin Newton", "Rebranding the Web of Trust", "Authored"],
    ["Kim Hamilton Duffy", "BTCR DID Resolver Specification", "Authored"],
    ["Christopher Allen", "BTCR DID Resolver Specification", "Authored"],
    ["Ryan Grant", "BTCR DID Resolver Specification", "Authored"],
    ["Dan Pape", "BTCR DID Resolver Specification", "Authored"],
    ["Samuel M. Smith Ph.D.", "Decentralized Autonomic Data (DAD)", "Authored"],
    ["Vishal Gupta", "Decentralized Autonomic Data (DAD)", "Contributed"],
    ["Christopher Allen", "Decentralized Identifers v1.0", "Workshop Credit"],
    ["Joe Andrieu", "Decentralized Identifers v1.0", "Workshop Credit"],
    ["Shannon Appelcline", "Decentralized Identifers v1.0", "Workshop Credit"],
    ["Erica Connell", "Decentralized Identifers v1.0", "Workshop Credit"],
    ["Claire Rumore", "Decentralized Identifers v1.0", "Workshop Credit"],
    ["Manu Sporny", "Decentralized Identifers v1.0", "Workshop Credit"],
    ["Heather Vescent", "Sustainable Technology Commons using", "Contributed"],
    ["Kaliya Young", "Sustainable Technology Commons using", "Contributed"],
    ["Adrian Gropper", "Sustainable Technology Commons using", "Contributed"],
    ["Juan Caballero", "Sustainable Technology Commons using", "Contributed"],
    ["Daniel Buchner", "Identity Hub Attestation Flows", "Contributed"],
    ["Cherie Duncan", "Identity Hub Attestation Flows", "Contributed"],
    ["John Toohey", "Identity Hub Attestation Flows", "Contributed"],
    ["Ron Kreutzer", "Identity Hub Attestation Flows", "Contributed"],
    ["Stephen Curran", "Identity Hub Attestation Flows", "Contributed"],
    ["Markus Sabadello", "Introduction to DID Auth", "Authored"],
    ["Kyle Den Hartog", "Introduction to DID Auth", "Authored"],
    ["Christian Lundkvist", "Introduction to DID Auth", "Authored"],
    ["Cedric Franz", "Introduction to DID Auth", "Authored"],
    ["Alberto Elias", "Introduction to DID Auth", "Authored"],
    ["Andrew Hughes", "Introduction to DID Auth", "Authored"],
    ["John Jordan", "Introduction to DID Auth", "Authored"],
    ["Dmitri Zagidulin", "Introduction to DID Auth", "Authored"],
    ["Eugeniu Rusu", "Introduction to DID Auth", "Contributed"],
    ["Adam Powers", "Introduction to DID Auth", "Contributed"],
    ["John Callahan", "Introduction to DID Auth", "Contributed"],
    ["Joe Andrieu", "Introduction to DID Auth", "Contributed"],
    ["Nate Otto", "Open Badges are Verifiable Credentials", "Authored"],
    ["Kim Hamilton Duffy", "Open Badges are Verifiable Credentials", "Authored"],
    ["Kulpreet Singh", "Open Badges are Verifiable Credentials", "Contributed"],
    ["Luiz Gustavo Ferraz Aoqui", "Open Badges are Verifiable Credentials", "Contributed"],
    ["Moses Ma", "SSI: A Roadmap", "Authored"],
    ["Claire Rumore", "SSI: A Roadmap", "Authored"],
    ["Dan Gisolfi", "SSI: A Roadmap", "Authored"],
    ["Wes Kussmaul", "SSI: A Roadmap", "Authored"],
    ["Dan Greening", "SSI: A Roadmap", "Authored"],
    ["Joe Andrieu", "Identity Crisis", "Authored"],
    ["Kevin Gannon", "Identity Crisis", "Authored"],
    ["Igor Kruiper", "Identity Crisis", "Authored"],
    ["Ajit Tripathi", "Identity Crisis", "Authored"],
    ["Adrian Gropper", "Powering the Physician-Patient Relationship with HIE of One Blockchain Health IT", "Authored"],
    ["Wayne Hennessy-Barrett", "Protecting Digital Identities in Developing Countries", "Authored"],
    ["Drummond Reed", "Requirements for DIDs", "Authored"],
    ["Les Chasen", "Requirements for DIDs", "Authored"],
    ["Christopher Allen", "Smarter Signatures: Experiments in Verifications", "Authored"],
    ["Shannon Appelcline", "Smarter Signatures: Experiments in Verifications", "Authored"],
    ["Drummond Reed", "DID Data Model Implementer’s Draft", "Authored"],
    ["Les Chasen", "DID Data Model Implementer’s Draft", "Authored"],
    ["Christopher Allen", "DID Data Model Implementer’s Draft", "Authored"],
    ["Ryan Grant", "DID Data Model Implementer’s Draft", "Authored"],
    ["Manu Sporny", "DID Data Model Implementer’s Draft", "Contributed"],
    ["David Longley", "DID Data Model Implementer’s Draft", "Contributed"],
    ["Jason Law", "DID Data Model Implementer’s Draft", "Contributed"],
    ["Daniel Hardman", "DID Data Model Implementer’s Draft", "Contributed"],
    ["Markus Sabadello", "DID Data Model Implementer’s Draft", "Contributed"],
    ["Christian Lundkvist", "DID Data Model Implementer’s Draft", "Contributed"],
    ["Jonathan Endersby", "DID Data Model Implementer’s Draft", "Contributed"],
    ["Manu Sporny", "Digital Verification Advancements", "Authored"],
    ["Christopher Allen", "Digital Verification Advancements", "Authored"],
    ["Harlan Wood", "Digital Verification Advancements", "Authored"],
    ["Jason Law", "Digital Verification Advancements", "Authored"],
    ["Daniel Hardman", "Embedding Human Wisdom in Our Digital Tomorrow", "Authored"],
    ["Kaliya Young", "Embedding Human Wisdom in Our Digital Tomorrow", "Authored"],
    ["Matthew Schutte", "Embedding Human Wisdom in Our Digital Tomorrow", "Authored"],
    ["Daniel Buchner", "Hubs", "Authored"],
    ["Wayne Vaughan", "Hubs", "Authored"],
    ["Ryan Shea", "Hubs", "Authored"],
    ["Joe Andrieu", "Joram 1.0.0", "Authored"],
    ["Bob Clint", "Joram 1.0.0", "Authored"],
    ["Shannon Applecline", "Joram 1.0.0", "Contributed"],
    ["Zachary Larson", "Joram 1.0.0", "Contributed"],
    ["Vivian Shen", "Joram 1.0.0", "Contributed"],
    ["Natalie Smolenski", "Joram 1.0.0", "Contributed"],
    ["Christopher Allen", "Portable Reputation Toolkit Use Cases", "Authored"],
    ["Tim Daubenschütz", "Portable Reputation Toolkit Use Cases", "Authored"],
    ["Manu Sporny", "Portable Reputation Toolkit Use Cases", "Authored"],
    ["Noah Thorp", "Portable Reputation Toolkit Use Cases", "Authored"],
    ["Harlan Wood", "Portable Reputation Toolkit Use Cases", "Authored"],
    ["Glenn Willen", "Portable Reputation Toolkit Use Cases", "Authored"],
    ["Alessandro Voto", "Portable Reputation Toolkit Use Cases", "Authored"],
    ["Shaun Conway", "Smart Consent Protocol", "Authored"],
    ["Lohan Spies", "Smart Consent Protocol", "Authored"],
    ["Jonathan Endersby", "Smart Consent Protocol", "Authored"],
    ["Tim Daubenschütz", "Smart Consent Protocol", "Authored"],
    ["Angus Champion de Crespigny", "Design Considerations for Decentralized Reputation Systems", "Authored"],
    ["Dmitry Khovratovich", "Design Considerations for Decentralized Reputation Systems", "Contributed"],
    ["Florent Blondeau", "Design Considerations for Decentralized Reputation Systems", "Contributed"],
    ["Klara Sok", "Design Considerations for Decentralized Reputation Systems", "Contributed"],
    ["Philippe Honigman", "Design Considerations for Decentralized Reputation Systems", "Contributed"],
    ["Nikolaos Alexopoulos", "Design Considerations for Decentralized Reputation Systems", "Contributed"],
    ["Fabien Petitcolas", "Design Considerations for Decentralized Reputation Systems", "Contributed"],
    ["Shaun Conway", "Design Considerations for Decentralized Reputation Systems", "Contributed"],
    ["Kim Hamilton Duffy", "LD Signature Format Alignment", "Authored"],
    ["Rodolphe Marques", "LD Signature Format Alignment", "Authored"],
    ["Markus Sabadello", "LD Signature Format Alignment", "Authored"],
    ["Manu Sporny", "LD Signature Format Alignment", "Authored"],
    ["Joe Andrieu", "What Users Really Want", "Authored"],
    ["Frederic Engel", "What Users Really Want", "Authored"],
    ["Adam Lake", "What Users Really Want", "Authored"],
    ["Moses Ma", "What Users Really Want", "Authored"],
    ["Olivier Maas", "What Users Really Want", "Authored"],
    ["Mark van der Waal", "What Users Really Want", "Authored"],
    ["Christopher Webber", "ActivityPub: from decentralized to distributed social networks", "Contributed"],
    ["Manu Sporny", "ActivityPub: from decentralized to distributed social networks", "Contributed"],
    ["Joe Andrieu", "Amira 1.0.0", "Authored"],
    ["Christopher Allen", "Amira 1.0.0", "Authored"],
    ["Shannon Appelcline", "Amira 1.0.0", "Authored"],
    ["Lyre Calliope", "Amira 1.0.0", "Authored"],
    ["Toni Lane Casserly", "Amira 1.0.0", "Authored"],
    ["Tim Chen", "Amira 1.0.0", "Authored"],
    ["David Fields", "Amira 1.0.0", "Authored"],
    ["Michael Haley", "Amira 1.0.0", "Authored"],
    ["Shireen Mitchell", "Amira 1.0.0", "Authored"],
    ["Heather Vescent", "Amira 1.0.0", "Authored"],
    ["Kaliya Young", "Amira 1.0.0", "Authored"],
    ["Pat McBennett", "Amira 1.0.0", "Contributed"],
    ["Raghav Chawla", "Amira 1.0.0", "Contributed"],
    ["Greg Slepak", "The DCS Theorem", "Authored"],
    ["Anya Petrova", "The DCS Theorem", "Authored"],
    ["João Santos", "A Decentralized Approach to Blockcerts Credential Revocation", "Authored"],
    ["Kim Hamilton Duffy", "A Decentralized Approach to Blockcerts Credential Revocation", "Authored"],
    ["Lionel Wolberger", "Engineering Privacy for Verified Credentials", "Authored"],
    ["Brent Zundel", "Engineering Privacy for Verified Credentials", "Authored"],
    ["Zachary Larson", "Engineering Privacy for Verified Credentials", "Authored"],
    ["Irene Hernandez", "Engineering Privacy for Verified Credentials", "Authored"],
    ["Katryna Dow", "Engineering Privacy for Verified Credentials", "Authored"],
    ["Adrian Gropper", "Identity Hubs Capabilities Perspective", "Authored"],
    ["Drummond Reed", "Identity Hubs Capabilities Perspective", "Authored"],
    ["Mark S. Miller", "Identity Hubs Capabilities Perspective", "Authored"],
    ["Christopher Webber", "Linked Data Capabilities", "Authored"],
    ["Mark S. Miller", "Linked Data Capabilities", "Authored"],
    ["Manu Sporny", "Veres One DID Method 1.0", "Authored"],
    ["Dave Longley", "Veres One DID Method 1.0", "Authored"],
    ["Marta Piekarska", "When GDPR becomes real", "Authored"],
    ["Michael Lodder", "When GDPR becomes real", "Authored"],
    ["Zachary Larson", "When GDPR becomes real", "Authored"],
    ["Kaliya Young", "When GDPR becomes real", "Authored"],
    ["Shannon Appelcline", "How to Convince Dad* of the Importance of Self-Sovereign Identity", "Authored"],
    ["Kenneth Bok", "How to Convince Dad* of the Importance of Self-Sovereign Identity", "Authored"],
    ["Lucas Parker", "How to Convince Dad* of the Importance of Self-Sovereign Identity", "Authored"],
    ["Peter Scott", "How to Convince Dad* of the Importance of Self-Sovereign Identity", "Authored"],
    ["Matthew Wong", "How to Convince Dad* of the Importance of Self-Sovereign Identity", "Authored"],
    ["Harrison Stahl", "Peer to Peer Degrees of Trust", "Authored"],
    ["Titus Capilnean", "Peer to Peer Degrees of Trust", "Authored"],
    ["Peter Snyder", "Peer to Peer Degrees of Trust", "Authored"],
    ["Tyler Yasaka", "Peer to Peer Degrees of Trust", "Authored"],
    ["Ganesh Annan", "Resource Integrity Proofs", "Authored"],
    ["Kim Hamilton Duffy", "Resource Integrity Proofs", "Contributed"],
    ["Dave Longley", "Resource Integrity Proofs", "Contributed"],
    ["Manu Sporny", "Resource Integrity Proofs", "Contributed"],
    ["David Lehn", "Resource Integrity Proofs", "Contributed"],
    ["Bohdan Andriyiv", "Resource Integrity Proofs", "Contributed"],
    ["du5t", "Opportunities Created by the Web of Trust for Controlling and Leveraging Personal Data", "Authored"],
    ["Kaliya Young", "Opportunities Created by the Web of Trust for Controlling and Leveraging Personal Data", "Authored"],
    ["John Edge", "Opportunities Created by the Web of Trust for Controlling and Leveraging Personal Data", "Authored"],
    ["Drummond Reed", "Opportunities Created by the Web of Trust for Controlling and Leveraging Personal Data", "Authored"],
    ["Noah Thorp", "Opportunities Created by the Web of Trust for Controlling and Leveraging Personal Data", "Authored"],
    ["Christopher Allen", "Smart Signatures", "Authored"],
    ["Greg Maxwell", "Smart Signatures", "Authored"],
    ["Peter Todd", "Smart Signatures", "Authored"],
    ["Ryan Shea", "Smart Signatures", "Authored"],
    ["Pieter Wuille", "Smart Signatures", "Authored"],
    ["Joseph Bonneau", "Smart Signatures", "Authored"],
    ["Joseph Poon", "Smart Signatures", "Authored"],
    ["Tyler Close", "Smart Signatures", "Authored"],
    ["Shannon Appelcline", "Creating the New World of Trust", "Authored"],
    ["Christopher Allen", "Creating the New World of Trust", "Authored"],
    ["Brian Weller", "Creating the New World of Trust", "Authored"],
    ["Sonia Sawhney", "Creating the New World of Trust", "Authored"]
];
