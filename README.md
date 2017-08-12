# elm-dev-docker
Docker image for elm developement

Use this to run the image
`docker run --name elm -it --rm -p 80:3000 -v $HOME/workspace/elm:/root sundernarayanaswamy/elm-dev-docker`

It creates a sample-elm-project in your $HOME directory

`cd sample-elm-project/
 elm-app start`

Follow the user guide in
[https://github.com/halfzebra/create-elm-app]
