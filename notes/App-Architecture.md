**Android App Architecture**
====================
The architecture of an Android app differs from desktop application architecture.
App architecture is based upon *components* that communicate with each other by
using *intents* that are described by a *manifest* and that are stored in an app
package.

  **Components**
--------------
* *activities*
* *services*
* *content providers*
* *broadcast receivers*

> An app is a collection of *components* that run in a Linux process and
> are managed by Android.

#### These components share a set of resources, including:
  * _databases_
  * _preferences_
  * _filesystem_
  * _Linux process_

Component reuse reduces overall memory footprint, which is very important
for devices with limited memory.
#### **When Needed** Only 

  >  Android starts a process when any part of the app is needed, such as the
  >  reusable shared components, and instantiates the `Java objects` for that
  >  part.
  >  This is why Android's apps don't have a single entry point, e.g. C-style
  >  `main()` function.

---

  ***Activities***
----------------
An *activity* is a component that presents a user interface so that the user can
interact with an app.

|   Application     |   Activity    |
---
|   Contacts        |   New Contact |
|   Phone           |   Dial Number |
|   Calculator      |   Calculate   |
|   Calculator      |   Advanced panel |

