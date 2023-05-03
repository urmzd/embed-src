- [] Deploy image to Docker
- [] Update action.yml to use the specified image
- [] Create CD pipeline that builds the specified image from the Dockerfile, and publishes it to Docker
- [] Create a CI pipeline which locally builds the image and tests that it works as expected. 

```bash
    npx semantic-release -d # does export VERSION="release-version"
    docker build -t urmzd/embed-md:{{VERSION}}.
    docker push
```

- we replace {{version}} with the version recieved from semantic-release (dry-run)

CI Pipeline:

- Build Image (./Dockerfile) (tags: urmzd/embed-md:{{VERSION}})
- Update example with version
- Run image with mount example 
- Test that mount example now has code embedded. 
- Store build artifacts

CD Pipeline:

- Promote version and release
