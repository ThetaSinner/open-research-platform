pushd run
rem Start the dev infrastructure.
docker-compose -f docker-compose.dev.yaml up
popd

pushd
rem Set up the database.
mix ecto.create

rem Start the dev server.
mix phx.server
