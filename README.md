GoLang - Base Project
----------------------------

A base GoLang project to spin up a webserver and an example of a API endpoint.

Endpoints: 

- Health (GET); `/healthz`

Warning Beginner Gopher here.

Build & Run app
---------------
```
	HTTPPort   int    `default:"8092"`
	Debug      bool   `default:"false"`
	DBDialect  string `required:"false"`
	DBHost     string `required:"true" default:"localhost"`
	DBPort     int    `required:"true" default:"3306"`
	DBUser     string `required:"true" default:"root"`
	DBPassword string `required:"true" default:"root"`
	DBDatabase string `required:"true" default:"gobase"`
	DBDsn      string
```
The application has the above environment variables that can be configured as the program is built & run. 

To run the application simply type the following run command:

1. `make build` - This will build the binary app and run all associated tests.
2. Configure the environment variables by prefixing each variable with `ENV_`. For example `ENV_DBDIALECT=mysql main`, or for multiple: `ENV_DBDIALECT=mysql ENV_DBUSER=myuser main`
3. Watch the logs for application boot. 