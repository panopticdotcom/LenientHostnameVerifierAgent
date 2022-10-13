BUILDDIR ?= build
DISTDIR ?= dist
SRCDIR ?= src

JAR ?= LenientHostnameVerifierAgent.jar

.PHONY:
all: $(DISTDIR)/$(JAR)

.PHONY:
clean:
	$(RM) $(DISTDIR)/$(JAR) $(BUILDDIR)/*.class

$(DISTDIR)/$(JAR): $(BUILDDIR)/LenientHostnameVerifierAgent.class
	jar -cfm $@ $(SRCDIR)/manifest.txt -C $(BUILDDIR) .

$(BUILDDIR)/LenientHostnameVerifierAgent.class: $(SRCDIR)/LenientHostnameVerifierAgent.java
	mkdir -p build
	javac -d $(BUILDDIR) $<
