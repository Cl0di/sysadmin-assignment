# Makefile for Vio.com System Administrator Assignment

# Define the default target as 'run-assignment' so that running 'make' will execute the assignment.
.PHONY: all setup-ldap create-ldif-files run-assignment test clean

# Target to execute all necessary steps for the assignment
all: run-assignment

# Target to build the Docker image for the assignment
setup-ldap:
	@echo "Building Docker image..."
	docker build -t viodotcom/assignment .

# Target to create LDIF files for the Platform team
create-platform-ldif:
	@echo "Creating LDIF files for the Platform team..."
	# Generate LDIF file for the Platform team
	echo "dn: ou=Platform,dc=viodotcom,dc=com" > ldap/platform.ldif
	echo "objectClass: organizationalUnit" >> ldap/platform.ldif
	echo "ou: Platform" >> ldap/platform.ldif

	# Generate LDIF file for users within the Platform team
	echo "dn: cn=Charlie,ou=Platform,dc=viodotcom,dc=com" > ldap/platform-users.ldif
	echo "objectClass: person" >> ldap/platform-users.ldif
	echo "cn: Charlie" >> ldap/platform-users.ldif
	echo "sn: (Last Name)" >> ldap/platform-users.ldif
	echo "title: Eng Manager" >> ldap/platform-users.ldif

	# Add LDIF files and commands for other users within the Platform team

# Target to create LDIF files for the Foo team
create-foo-ldif:
	@echo "Creating LDIF files for the Foo team..."
	# Generate LDIF file for the Foo team
	echo "dn: ou=Foo,dc=viodotcom,dc=com" > ldap/foo.ldif
	echo "objectClass: organizationalUnit" >> ldap/foo.ldif
	echo "ou: Foo" >> ldap/foo.ldif

	# Generate LDIF file for users within the Foo team
	echo "dn: cn=Carlos,ou=Foo,dc=viodotcom,dc=com" > ldap/foo-users.ldif
	echo "objectClass: person" >> ldap/foo-users.ldif
	echo "cn: Carlos" >> ldap/foo-users.ldif
	echo "sn: (Last Name)" >> ldap/foo-users.ldif
	echo "title: Eng Manager" >> ldap/foo-users.ldif

	# Add LDIF files and commands for other users within the Foo team

# Target to create LDIF files for the Bar team
create-bar-ldif:
	@echo "Creating LDIF files for the Bar team..."
	# Generate LDIF file for the Bar team
	echo "dn: ou=Bar,dc=viodotcom,dc=com" > ldap/bar.ldif
	echo "objectClass: organizationalUnit" >> ldap/bar.ldif
	echo "ou: Bar" >> ldap/bar.ldif

	# Generate LDIF file for users within the Bar team
	echo "dn: cn=Adam,ou=Bar,dc=viodotcom,dc=com" > ldap/bar-users.ldif
	echo "objectClass: person" >> ldap/bar-users.ldif
	echo "cn: Adam" >> ldap/bar-users.ldif
	echo "sn: (Last Name)" >> ldap/bar-users.ldif
	echo "title: Eng Manager" >> ldap/bar-users.ldif

	# Add LDIF files and commands for other users within the Bar team

# Target to run the assignment, ensuring LDAP setup and LDIF files are created first
run-assignment: setup-ldap create
