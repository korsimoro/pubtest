---
title: "RWoT6 - Index"
---

## Rebooting the Web of Trust VI: Santa Barbara (March 2018)

This repository contains documents related to RWOT6, the sixth Rebooting the Web of Trust design workshop, which ran in Santa Barbara, California, on March 6th to 8th, 2018. The goal of the workshop was to generate five technical white papers and/or proposals on topics decided by the group that would have the greatest impact on the future.

_Please see the [Web of Trust Info website](http://www.weboftrust.info/) for more information about our community._

##  Topics & Advance Readings

In advance of the design workshop, all participants produced a one-or-two page topic paper to be shared with the other attendees on either:

* A specific problem that they wanted to solve with a web-of-trust solution, and why current solutions (PGP or CA-based PKI) can't address the problem?
* A specific solution related to the web-of-trust that you'd like others to use or contribute to?

Please see the [Topics & Advance Readings directory](Topics/) for a listing of all the papers.

## Complete Papers

The goal for each Rebooting the Web of Trust workshop is publication of three to five white papers:

## [*BTCR DID Resolver Specification*](Final/btcr-resolver/)
* **Kim Hamilton Duffy, Christopher Allen, Ryan Grant, and Dan Pape** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/btcr-resolver.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/btcr-resolver.odt)


> This describes the process of resolving a BTCR DID into a DID Document. The draft reference implementation is available at https://github.com/WebOfTrustInfo/btcr-did-tools-js (see didFormatter.js). Note that not all steps described in this document are implemented yet.

## [*Decentralized Autonomic Data (DAD) and the three R's of Key Management*](Final/DecentralizedAutonomicData/)
* **by Samuel M. Smith Ph.D. with Vishal Gupta** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/DecentralizedAutonomicData.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/DecentralizedAutonomicData.odt)

> This paper proposes a new class of data called decentralized autonomic data (DAD). The term decentralized means that the governance of the data may not reside with a single party. A related concept is that the trust in the data provenance is diffuse in nature. Central to the approach is leveraging the emerging DID (decentralized identifier) standard. The term autonomic means self-managing or self-regulating. In the context of data, we crystalize the meaning of self-managing to include cryptographic techniques for maintaining data provenance that make the data self-identifying, self-certifying, and self-securing. Implied thereby is the use of cryptographic keys and signatures to provide a root of trust for data integrity and to maintain that trust over transformation of that data, e.g. provenance. Thus key management must be a first order property of DADs. This includes key reproduction, rotation, and recovery. The pre-rotation and hybrid recovery methods presented herein are somewhat novel.

## [*Decentralized Identifiers v1.0*](Final/did-spec-1.0/)
* **A Status Note** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/did-spec-1.0.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/did-spec-1.0.odt)

> The Decentralized Identifiers specification editors and implementers spent some time at Rebooting the Web of Trust 6 processing the remaining issues in the issue tracker. This document summarizes the proposed resolutions that the group has put forward to resolve all of the DID specification issues that were submitted before 2018-03-05.

## [*Exploring Sustainable Technology Commons using Appreciative Inquiry*](Final/sustainable-commons/)
* **by Heather Vescent, Kaliya “Identity Woman” Young, Adrian Gropper, and Juan Caballero** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/sustainable-commons.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/sustainable-commons.odt)

> Technology commons come in a variety of flavors and have achieved varying levels of financial success. For-profit corporate activities have in few historical cases been set up with a financial feedback mechanism to support the commons upon which they depend and capitalize. Why do the commons and the technology sectors’ available forms of capitalism act as incompatible as oil and water, even though they support each other’s aims? When capitalist benefactors support the technology commons that they utilize, it creates a sustainable and thriving commons which enables and supports additional capitalistic technology innovation. Having worked on both sides of the equation, the authors of this piece propose a vocabulary to nourish these interactions between the two sides; identified characteristics of a sustainable technology commons; identified commons models and variations; applied Appreciative Inquiry principles to one commons model; and identified future research areas.

## [*Identity Hub Attestation Flows and Components*](Final/identity-hub-attestations/)
* **by Daniel Buchner, Cherie Duncan, John Toohey, Ron Kreutzer, and Stephen Curran** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/identity-hub-attestations.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/identity-hub-attestations.odt)

> In this document, we define a set of user flows and describe the associated Action Objects that support a Hub-centric approach to the request, issuance, presentation, verification, and revocation of interoperable attestations. This document extends the [Identity Hub Explainer](https://github.com/decentralized-identity/hubs/blob/master/explainer).

## [*Introduction to DID Auth*](Final/did-auth/)
* **by Markus Sabadello, Kyle Den Hartog, Christian Lundkvist, Cedric Franz, Alberto Elias, Andrew Hughes, John Jordan & Dmitri Zagidulin** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/did-auth.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/did-auth.odt)

> The term DID Auth has been used in different ways and is currently not well-defined. We define DID Auth as a ceremony where an identity owner, with the help of various components such as web browsers, mobile devices, and other agents, proves to a relying party that they are in control of a DID. This means demonstrating control of the DID using the mechanism specified in the DID Document's "authentication" object. This could take place using a number of different data formats, protocols, and flows. DID Auth includes the ability to establish mutually authenticated communication channels and to authenticate to web sites and applications. Authorization, Verifiable Credentials, and Capabilities are built on top of DID Auth and are out of scope for this document. This paper gives on overview of the scope of DID Auth, supported protocols and flows, and the use of components of the DID Documents that are relevant to authentication, as well as formats for challenges and responses.

## [*Open Badges are Verifiable Credentials*](Final/open-badges-are-verifiable-credentials/)
* **By Nate Otto & Kim Hamilton Duffy** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/open-badges-are-verifiable-credentials.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/open-badges-are-verifiable-credentials.odt)

> We identify use cases and requirements that connect threads of work happening in the Rebooting Web of Trust community around: educational achievement claims (particularly using the Open Badges vocabulary); use of decentralized identifiers (DIDs) within web services where educational claims circulate; and integrating blockchain-reliant verification layers. We illustrate each of these cases with a set of example documents and describe user stories for Open Badges ecosystem software in the roles of Issuer, Host/Backpack, Displayer, and Verifier that need to be implemented in order to enable the capabilities described.

## [*SSI: A Roadmap for Adoption*](Final/a-roadmap-for-ssi/)
* **By Moses Ma, Claire Rumore, Dan Gisolfi, Wes Kussmaul & Dan Greening (Senex Rex)** [(pdf)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/a-roadmap-for-ssi.pdf) [(odt)](https://github.com/WebOfTrustInfo/rwot6-santabarbara/raw/master/final-documents/a-roadmap-for-ssi.odt)

> This document proposes the formation of a short-term team to develop consistent messaging for the Self-Sovereign Identity (SSI) market. It will target key stakeholders who would actively promote SSI adoption. The goal is to create an SSI market roadmap. This roadmap will help SSI leaders, standards bodies, developers, academics, media, and investors coordinate and clarify their messaging for the market, to accelerate the SSI adoption. 

## Complete Rebooting the Web of Trust Listing

A different repository is available for each of the Rebooting the Web of Trust design workshops:

* [Rebooting the Web of Trust I: San Francisco (November 2015)](../RWoT1/)
* [Rebooting the Web of Trust II: ID2020 (May 2016)](../RWoT2/)
* [Rebooting the Web of Trust III: San Francisco (October 2016)](../RWoT3/)
* [Rebooting the Web of Trust IV: Paris (April 2017)](../RWoT4/)
* [Rebooting the Web of Trust V: Boston (October 2017)](../RWoT5/)
* [Rebooting the Web of Trust VI: Santa Barbara (March 2018)](../RWoT6/)
* [Rebooting the Web of Trust VII: Toronto (September 2018)](../RWoT7/)
* [Rebooting the Web of Trust VIII: Barcelona](../RWoT8)

## License

All of the contents of this directory are licensed [Creative Commons CC-BY](../LICENSE-CC-BY-4.0/) their contributors.
