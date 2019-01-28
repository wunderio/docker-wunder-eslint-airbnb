FROM node:carbon-alpine

RUN mkdir /eslint

COPY .eslintrc /eslint/
COPY .eslintrc-jquery /eslint/

# Install ESLint.
RUN npm install -g eslint

# Install Airbnb ESLint configuration from https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb
RUN npx install-peerdeps -g eslint-config-airbnb

# Change working dir to mount point.
WORKDIR /app

# Set entrypoint to eslint and set configuration file path.
ENTRYPOINT ["eslint"]
