# Use the original image as a base
FROM ghcr.io/git-releaser/git-releaser:dev-202312070426

# Copy the entrypoint script into the Docker image
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint script as the entrypoint for the Docker container
ENTRYPOINT ["/entrypoint.sh"]