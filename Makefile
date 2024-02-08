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
    # Add commands to generate LDIF files for the Platform team
    # Check if LDIF files already exist or are modified before regenerating

# Target to create LDIF files for the Foo team
create-foo-ldif:
    @echo "Creating LDIF files for the Foo team..."
    # Add commands to generate LDIF files for the Foo team
    # Check if LDIF files already exist or are modified before regenerating

# Target to create LDIF files for the Bar team
create-bar-ldif:
    @echo "Creating LDIF files for the Bar team..."
    # Add commands to generate LDIF files for the Bar team
    # Check if LDIF files already exist or are modified before regenerating

# Target to run the assignment, ensuring LDAP setup and LDIF files are created first
run-assignment: setup-ldap create-ldif-files
    @echo "Running the assignment..."
    docker run -it --rm viodotcom/assignment

# Target to run tests for the assignment
test:
    @echo "Testing the assignment..."
    # Add commands to test the assignment

# Target to clean up any generated files or Docker containers/images
clean:
    @echo "Cleaning up..."
    # Add commands to clean up any generated files or Docker containers/images
