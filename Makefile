BUILDDIR ?= build
DISTDIR ?= dist
SRCDIR ?= src

JAR ?= LenientHostnameVerifierAgent.jar

.PHONY:
all: $(DISTDIR)/$(JAR)

.PHONY:
clean:
	$(RM) $(DISTDIR)/$(JAR) $(BUILDDIR)/*.class

$(DISTDIR)/$(JAR): $(SRCDIR)/LenientHostnameVerifierAgent.java
	javac -d $(BUILDDIR) $<
	jar cfm $@ $(SRCDIR)/manifest.txt $(BUILDDIR)/*.class
