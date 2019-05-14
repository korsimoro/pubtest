Knowing When Your Digital Identity Has Been Compromised
=======================================================

by Justin Newton @justinwnewton <justin@netki.com>

When using Web of Trust systems, it is critical to:

1. Ensure that you know who you can trust as "introducers"

2. Ensure that your identity and reputation are not being falsely used to create trust of others.

In order for the system to work effectively it is thus important that keys that can no longer be trusted are quickly identified and invalidated.  Additionally, it is important to users to know if their keys have been compromised so they can take action to secure or reclaim their identity.  How to manage key compromise after it is detected is covered in other papers, and will not be a topic here.

One of the challenges with PGP is the difficulty in knowing if your key has been compromised.  Frequently the only way one knows if their key has been stolen is through ad hoc reporting, or as a result of research into another breach of the computer holding the key(s).  We must do better.

One idea to support this is for key registries such as keybase or others to have a field for a callback URL that gets called when a key belonging to a given individual is used.  When software receives a signed message (such as a login, or introduction) it checks Keybase or similar service to see if the key is registered.  if so, it looks for a callback URL related to the key including a time and date stamp of when the signature was received, as well as the hash of the public key of the recipient.  In this way a user could validate that each use was authentic, in the same way we use apps to real time track credit card transactions to detect if they have been compromised.

This solution has a number of challenges which would need to be overcome:

1. The mapping of a key to a callback URL has its own privacy implications that need to be considered.

2. The server which collects this data may potentially store the data in a way that makes it a centralized point of attack to reveal user behaviors.

3. It is possible/likely that the hacker also has access to the notification service.

4. This would be a new standard that required broad adoption, and the privacy concerns listed above may limit that adoption

An important part of managing keys controlling identity is ensuring those keys are not being mis-used.  Current systems are inadequate to our current needs, and there seems to be little to no ongoing work in this area.  

