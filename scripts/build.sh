#!/bin/bash

cd /app

mix do deps.get, local.rebar --force, deps.compile

mix compile && npm install npm@latest

cd /app/apps/block_scout_web/assets/
npm install
npm run deploy
cd /app/apps/explorer
npm install &&


cd /app
mix phx.digest
