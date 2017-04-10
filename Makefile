PROJECT = treehouse
PROJECT_DESCRIPTION = Spontaneously generate units and spawn your resources.
PROJECT_VERSION = 0.1.0

DEPS = cowboy chumak luerl lager econfig uuid jiffy hackney esdl2
dep_cowboy_commit = master

dep_esdl2 = git https://github.com/ninenines/esdl2 master

DEP_PLUGINS = cowboy

ERLC_OPTS = +debug_info

include erlang.mk

# Compile flags
ERLC_COMPILE_OPTS= +'{parse_transform, lager_transform}'

# Append these settings
ERLC_OPTS += $(ERLC_COMPILE_OPTS)
TEST_ERLC_OPTS += $(ERLC_COMPILE_OPTS)