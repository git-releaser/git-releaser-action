# Use the original image as a base
FROM ghcr.io/git-releaser/git-releaser:v0.1.1

# Copy the entrypoint script into the Docker image
COPY entrypoint.sh /entrypoint.sh

USER 1001

# Set the entrypoint script as the entrypoint for the Docker container
ENTRYPOINT ["/entrypoint.sh"]
