# Use the official Rust image as the base image.
FROM rust:latest

# Set the working directory inside the container.
WORKDIR /src

# Copy your Rust project's files into the container.
COPY . .

# Build your Rust project.
RUN cargo build --release

# Expose the port your application listens on.
EXPOSE 8080

# Command to run your application.
CMD ["cargo run"]