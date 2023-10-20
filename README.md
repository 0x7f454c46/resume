to 0pt Last update on 2023-10-20   *Kernel Engineer*

[0x7f454c46@gmail.com](mailto:0x7f454c46.at.gmail.com)  \[-1em\]\[-1em\]  
[github.com/0x7f454c46](https://github.com/0x7f454c46)  \[-1em\]\[-1em\]  
[linkedin.com/in/0x7f454c46](http://linkedin.com/in/0x7f454c46)\
*Currently* in Dublin, Ireland

------------------------------------------------------------------------

## Summary {#summary .unnumbered}

::: multicols
2 *Low-level Engineer, opensource contributor and maintainer. Focused on
long-term projects, that have priority on correctness and \"doing the
right thing\". Takes self-testing seriously. Author of long
email-threads and many code reviews that significantly decreased coding
issues per LOC.*\
\
Born in USSR/Russia. Got a university degree of an engineer and
self-taught Linux. Eventually fell from regression analysis, numerical
methods, differential equations and statistical C++ projects into
assembly, kernel C and multi-threaded Linux memory ordering
developments.

Started as home-projects enthusiast that recompiled OpenBSD kernel on a
home-server and learned Linux virtualization/replication basics. Moved
to bash-scripting projects, including a home web-scrapper that gathered
some data and statistics (a scripting skill that was very handy since
then).

Got a chance to participate in many wonderful projects. From being an
author of PoC on non-documented hardware to creator of GCC compiler
plugin. One of [CRIU](https://github.com/checkpoint-restore/criu)
(Checkpoint Restore in Userspace) contributors and maintainers. Author
of [some thousands
lines](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/?qt=author&q=Dmitry+Safonov)
in upstream Linux kernel. Contributed to many parts, including x86,
memory management, networking, selftests, tty drivers and core code.

Emigrated to Ireland in 2017. Since then, worked remotely from other
team members.
:::

------------------------------------------------------------------------

## Experience {#experience .unnumbered}

::: list
[Dublin, Ireland]{.smallcaps}

::: list
**Linux kernel engineer***Sept 17 -- present*

::: list
Currently working on Linux kernel support. I've spent time designing ;
writing kernel selftests to verify the functionality and to discover
corner-cases; writing
[documentation](https://lore.kernel.org/all/20231009230722.76268-1-dima@arista.com/T/#mc7061bd02f7c2285b45d28473e484cbd7eca3208)
on the project. Together with my colleagues, we wrote code that
implements in Linux kernel; we communicated with the userspace team to
get feedback and worked with the network interoperability testing team
for verification and scale testing. Besides writing the code, I was
reviewing all the changes and did some Gitlab automation. Later I
polished the result, implemented missing features, debugged the code and
split it apart into upstreamable patches.\
At the moment of writing the patch set is [version
15](https://lore.kernel.org/all/20231018205806.322831-1-dima@arista.com/),
it received approvals from some of the network maintainers and reviewers
and all pre-required changes that I've made (crypto, jump_label and )
were merged. I'm addressing the feedback from reviews, fixing items from
my todo-list and writing more selftests in the background. I'm quite
pleased with the result: it has about 5.5 thousand good-quality code
changes, that are properly split into patches, well documented and
tested. The project went smoothly, the customers are satisfied, no fires
lit.
:::

::: list
Previously I participated in Linux kernel upgrade projects. The goal was
to move from older kernels to newer LTS (Long Term Support) kernels,
porting company-specific patches and addressing any issues that arise on
testing. During these projects, I've focused on reviewing non-upstream
company kernel code and attempting to either eliminate it or upstream
it. That decreased the future work (technical debt) for maintaining and
upgrading the Linux kernel in the company as well as improved the
quality. Participating in that project involved fixing proprietary
drivers from different allocation issues (leaks/use-after-free) to
scaling issues and introducing proper locking. A little cherry on top
was debugging GNU/Make to fix a race in jobserver that was rarely
hitting the build system.
:::

::: list
One of the exciting things during my time here was debugging 2 CPU
issues in one of the major x86 vendors. Another issue I'm quite proud to
have debugged and fixed was missed locking in the generic tty driver.
The reason is that besides [missing semaphore in
tty_reopen()](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=83d817f41070c48bc3eb7ec18e43000a548fca5c),
I had to fix the tty semaphore realization itself: from [missed wake-up
on reader/writer
contention](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=231f8fd0cca078bd4396dd7e380db813ac5736e2),
[a theoretical issue on non-default
timeout](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=2f588cee24caf01c1ac08fff90d67c6af555e7c7),
[providing more priority to line discipline changes rather than
write/read](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c96cf923a98d1b094df9f0cf97a83e118817e31b)
and [optimizing the fast-path by not taking the writer
lock](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d3736d82e8169768218ee0ef68718875918091a0).
It was quite challenging to fix this tty mess as for most of those fixes
I had only one report which was dmesg log from syzbot or a person. From
that little log I've managed to find and fix the issues in semaphore
realization!\
Another big and interesting project that I did in the background was
[fixing IPSec/XFRM tunnels on
ia32](https://lore.kernel.org/all/20200921143657.604020-1-dima@arista.com/).
It ended up also having [a nice
selftest](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bc2652b7ae1e1b85b5fbd3621c98a9c743ed89d6).
:::

::: list
At this job, I participated in investigating customers' kernel
escalations, analyzing and doing triage for kernel issues in the testing
lab. I also mentored two people: one who joined on full-time and an
intern.
:::
:::
:::

::: list
[]{.smallcaps}

::: list
**Maintainers team***Dec 16 -- present*

::: list
::: displayquote
[\...a project by various mad
Russians\...](https://en.wikipedia.org/wiki/CRIU)
:::

Likely, the most interesting project I've worked on. It involves
everything: understanding CPU architecture, adding and modifying Linux
kernel code, network stack and etc. I was working on various things in
this project. From maintaining build/Makefiles and adding
cross-compilation for different architectures, to making arm/arm64 work.
I made [Linux kernel
patches](https://www.spinics.net/lists/kernel/msg2335645.html) to
support 32-bit x86 (ia32) Checkpoint/Restore. [Addressed issues with x86
mmap
allocator](https://lore.kernel.org/all/20170306141721.9188-2-dsafonov@virtuozzo.com/T/)
and added support to CRIU itself. Together with my good friend Andrei,
we [introduced a new time namespace in Linux
kernel](https://lore.kernel.org/all/20191112012724.250792-1-dima@arista.com/),
that helps migrating containers.\
Today CRIU is used by hosting providers, Google task manager (Borg) and
even by Microsoft's ChatGPT. Unfortunately, these days I'm not as
[active contributor to CRIU project, as I wished to
be](https://github.com/checkpoint-restore/criu/graphs/contributors), but
I'm trying.
:::
:::
:::

::: list
[Moscow, Russia]{.smallcaps}

::: list
**Kernel engineer***Jan 16 -- Jul 17*

::: list
I was working on VZ kernel (based on RHEL7, Linux v3.10). I was fixing
kernel crashes, adding OpenVZ-specific features and addressing bugs from
testing or customers. That's where I started working and contributing to
CRIU, being responsible for VZ CRIU (product version of CRIU). I was
reviewing patches, creating releases, backporting needed commits and
being liable for the resulting product.
:::
:::
:::

::: list
[Moscow, Russia]{.smallcaps}

::: list
**Kernel engineer***Dec 15 -- Jan 16*

::: list
Started working in a team that later was separated into Virtuozzo
company.
:::
:::
:::

::: list
[Moscow, Russia]{.smallcaps}

::: list
**Kernel engineer***Jul 14 -- Nov 15*

::: list
Developing Samsung Tizen TV kernel (Linux v3.10 based). I've worked on
feature requests on different parts of the kernel: IRQ handling, process
scheduler, memory management, etc. Also, that job involved analyzing
crash logs and providing bug fixes.
:::

::: list
One of the interesting projects I did by myself was adding FIQ support
to Linux and to closed-source Samsung Secure OS (running in ARM
TrustZone extension). That provided a reliable way to interrupt another
ARM CPU core, even if it was running in an IRQs-disabled context.
:::

::: list
Another PoC/research project that was made by me solo was a GPU swap.
That added functionality to an open-source Mali GPU driver that we
didn't have specifications for. As a result, it created a project that
preserved 150 - 200 MB on a 1.5 - 2 GB Tizen TV set and similar Android
Tablets/Phones by moving inactive GPU pages into ZRAM (compressed
graphical memory swapping).
:::

::: list
I was in a team that worked on ARM big.LITTLE Linux high-performance
scheduler. One of the most interesting bugs I was proud of fixing was
the incorrect voltage set for one of the CPU frequencies. That made
Linux kernel crash on overnight stress-testing in various random places.
Ouch!
:::
:::
:::

------------------------------------------------------------------------

## Education {#education .unnumbered}

::: list
[Moscow, Russia]{.smallcaps}

::: list
**Engineer Specialist degree in Informational Systems and
Technologies***2008 -- 2014*

::: list
Diploma thesis was \"Developing an algorithm for searching ground
objects in UAV live video stream\". Quite glad I didn't continue this
project in PhD as that would likely have been used in illegal invasion
in Ukraine.
:::
:::
:::

------------------------------------------------------------------------

## Skills {#skills .unnumbered}

::: basedescript
Linux, multi-threaded kernel-version of C, bash, x86 and ARM assembly,
GNU/Make, Git, Vim.
:::

::: basedescript
Russian *(native)*, English *(fluent)*, Spanish *(elementary)*,
Ukrainian *(elementary)*, Greek *(beginner)* and Latin *(beginner)*.
:::

------------------------------------------------------------------------

## Interests/hobbies {#interestshobbies .unnumbered}

::: basedescript
Book-worm (esp. non-fiction), culture-learning, functional programming,
hiking, learning languages, math/statistics, motorcycling and vegetarian
cooking.
:::
