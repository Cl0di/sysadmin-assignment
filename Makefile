# Makefile for Vio.com System Administrator Assignment

# Define the default target as 'run-assignment' so that running 'make' will execute the assignment.
.PHONY: all setup-ldap create-ldif-files import-ldif run-assignment test clean

# Docker container name for the LDAP server
LDAP_CONTAINER_NAME := ldap-server

# LDAP admin credentials
LDAP_ADMIN_DN := "cn=admin,dc=viodotcom,dc=com"
LDAP_ADMIN_PW := adminpassword

# Target to execute all necessary steps for the assignment
all: run-assignment

# Target to build the Docker image for the assignment
setup-ldap:
	@echo "Building Docker image..."
	docker build -t viodotcom/assignment .

# Target to create LDIF files for all teams
create-ldif-files: create-platform-ldif create-foo-ldif create-bar-ldif

# Target to create LDIF files for the Platform team
create-platform-ldif:
	@echo "Creating LDIF files for the Platform team..."
	# Commands to generate LDIF files for the Platform team and its members

# Target to create LDIF files for the Foo team
create-foo-ldif:
	@echo "Creating LDIF files for the Foo team..."
	# Commands to generate LDIF files for the Foo team and its members

# Target to create LDIF files for the Bar team
create-bar-ldif:
	@echo "Creating LDIF files for the Bar team..."
	# Commands to generate LDIF files for the Bar team and its members

# Target to import LDIF files into the LDAP directory
import-ldif:
	@echo "Importing LDIF files into the LDAP directory..."
	docker exec $(LDAP_CONTAINER_NAME) ldapadd -x -D $(LDAP_ADMIN_DN) -w $(LDAP_ADMIN_PW) -f /path/to/ldap/platform.ldif
	docker exec $(LDAP_CONTAINER_NAME) ldapadd -x -D $(LDAP_ADMIN_DN) -w $(LDAP_ADMIN_PW) -f /path/to/ldap/foo.ldif
	docker exec $(LDAP_CONTAINER_NAME) ldapadd -x -D $(LDAP_ADMIN_DN) -w $(LDAP_ADMIN_PW) -f /path/to/ldap/bar.ldif
	# Repeat for other LDIF files as necessary

# Target to run the assignment, ensuring LDAP setup, LDIF files creation, and import are executed
run-assignment: setup-ldap create-ldif-files import-ldif
	@echo "LDAP directory has been populated with the structure and entries."

# Target to run tests for the assignment
test:
	@echo "Testing the assignment..."
	# Commands to test the assignment

# Target to clean up any generated files or Docker containers/images
clean:
	@echo "Cleaning up..."
	# Commands to clean up any generated files or Docker containers/images
