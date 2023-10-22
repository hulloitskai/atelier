# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `graphql-persisted_queries` gem.
# Please instead update this file by running `bin/tapioca gem graphql-persisted_queries`.

# source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#3
module GraphQL
  class << self
    # source://graphql/2.1.0/lib/graphql.rb#35
    def default_parser; end

    # source://graphql/2.1.0/lib/graphql.rb#39
    def default_parser=(_arg0); end

    # source://graphql/2.1.0/lib/graphql.rb#45
    def parse(graphql_string, trace: T.unsafe(nil)); end

    # source://graphql/2.1.0/lib/graphql.rb#52
    def parse_file(filename); end

    # source://graphql/2.1.0/lib/graphql.rb#62
    def parse_with_racc(string, filename: T.unsafe(nil), trace: T.unsafe(nil)); end

    # source://graphql/2.1.0/lib/graphql.rb#58
    def scan(graphql_string); end

    # source://graphql/2.1.0/lib/graphql.rb#66
    def scan_with_ruby(graphql_string); end
  end
end

# Plugin definition
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#4
module GraphQL::PersistedQueries
  class << self
    # source://graphql-persisted_queries//lib/graphql/persisted_queries.rb#40
    def configure_compiled_queries; end

    # source://graphql-persisted_queries//lib/graphql/persisted_queries.rb#19
    def use(schema_defn, **options); end
  end
end

# source://graphql-persisted_queries//lib/graphql/persisted_queries/analyzers/http_method_validator.rb#5
module GraphQL::PersistedQueries::Analyzers; end

# Verifies that mutations are not executed using GET requests
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/analyzers/http_method_validator.rb#7
class GraphQL::PersistedQueries::Analyzers::HttpMethodValidator
  # @return [HttpMethodValidator] a new instance of HttpMethodValidator
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/analyzers/http_method_validator.rb#8
  def initialize(query); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/analyzers/http_method_validator.rb#12
  def perform; end
end

# Contains factory methods for error handlers
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/builder_helpers.rb#6
module GraphQL::PersistedQueries::BuilderHelpers
  class << self
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/builder_helpers.rb#7
    def camelize(name); end
  end
end

# source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/instrumentation.rb#5
module GraphQL::PersistedQueries::CompiledQueries; end

# Instrumentation to support compiled queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/instrumentation.rb#7
module GraphQL::PersistedQueries::CompiledQueries::Instrumentation
  class << self
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/instrumentation.rb#20
    def after_query(*_arg0); end

    # Actions to perform before the query resolution
    #
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/instrumentation.rb#10
    def before_query(query); end
  end
end

# Patches GraphQL::Execution::Multiplex to support compiled queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/multiplex_patch.rb#7
module GraphQL::PersistedQueries::CompiledQueries::MultiplexPatch
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/multiplex_patch.rb#22
  def add_not_found_error(query); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/multiplex_patch.rb#9
  def begin_query(results, idx, query, multiplex); end
end

# Patches GraphQL::Query to support compiled queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#7
module GraphQL::PersistedQueries::CompiledQueries::QueryPatch
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#8
  def persisted_query_not_found!; end

  # @return [Boolean]
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#12
  def persisted_query_not_found?; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#16
  def prepare_ast; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#32
  def try_load_document!; end

  private

  # @return [Boolean]
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#46
  def not_found_error?(error); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#42
  def resolver; end
end

# Fetches and persists compiled query
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/resolver.rb#7
class GraphQL::PersistedQueries::CompiledQueries::Resolver
  include ::GraphQL::PersistedQueries::ResolverHelpers

  # @return [Resolver] a new instance of Resolver
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/resolver.rb#10
  def initialize(schema, extensions); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/resolver.rb#15
  def fetch; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/resolver.rb#24
  def persist(query_string, compiled_query); end
end

# Contains factory methods for error handlers
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers/base_error_handler.rb#5
module GraphQL::PersistedQueries::ErrorHandlers
  class << self
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers.rb#10
    def build(handler, **options); end

    # source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers.rb#28
    def build_by_name(name, **options); end

    # source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers.rb#20
    def build_from_proc(proc); end
  end
end

# Base class for all error handlers
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers/base_error_handler.rb#7
class GraphQL::PersistedQueries::ErrorHandlers::BaseErrorHandler
  # @return [BaseErrorHandler] a new instance of BaseErrorHandler
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers/base_error_handler.rb#8
  def initialize(**_options); end

  # @raise [NotImplementedError]
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers/base_error_handler.rb#10
  def call(_error); end
end

# Default error handler for simply re-raising the error
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers/default_error_handler.rb#7
class GraphQL::PersistedQueries::ErrorHandlers::DefaultErrorHandler < ::GraphQL::PersistedQueries::ErrorHandlers::BaseErrorHandler
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/error_handlers/default_error_handler.rb#8
  def call(error); end
end

# Builds hash generator
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/hash_generator_builder.rb#8
class GraphQL::PersistedQueries::HashGeneratorBuilder
  # @return [HashGeneratorBuilder] a new instance of HashGeneratorBuilder
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/hash_generator_builder.rb#9
  def initialize(generator); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/hash_generator_builder.rb#13
  def build; end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/hash_generator_builder.rb#31
  def build_from_name; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/hash_generator_builder.rb#23
  def build_from_proc; end
end

# Resolves multiplex query
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/multiplex_resolver.rb#6
class GraphQL::PersistedQueries::MultiplexResolver
  # @return [MultiplexResolver] a new instance of MultiplexResolver
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/multiplex_resolver.rb#7
  def initialize(schema, queries, **kwargs); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/multiplex_resolver.rb#13
  def resolve; end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/multiplex_resolver.rb#42
  def perform_multiplex; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/multiplex_resolver.rb#25
  def resolve_persisted_queries; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/multiplex_resolver.rb#31
  def resolve_persisted_query(query_params, pos); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/multiplex_resolver.rb#21
  def results; end
end

# Raised when persisted query is not found in the storage
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/errors.rb#6
class GraphQL::PersistedQueries::NotFound < ::StandardError
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/errors.rb#9
  def message; end
end

# source://graphql-persisted_queries//lib/graphql/persisted_queries/errors.rb#7
GraphQL::PersistedQueries::NotFound::MESSAGE = T.let(T.unsafe(nil), String)

# Fetches or stores query string in the storage
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver.rb#6
class GraphQL::PersistedQueries::Resolver
  include ::GraphQL::PersistedQueries::ResolverHelpers

  # @return [Resolver] a new instance of Resolver
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver.rb#9
  def initialize(extensions, schema); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver.rb#14
  def resolve(query_string); end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver.rb#29
  def persist_query(query_string); end
end

# Helper functions for resolvers
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#6
module GraphQL::PersistedQueries::ResolverHelpers
  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#21
  def hash; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#15
  def validate_hash!(query_string); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#9
  def with_error_handling; end

  class << self
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#21
    def hash; end

    # @raise [GraphQL::PersistedQueries::WrongHash]
    #
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#15
    def validate_hash!(query_string); end

    # source://graphql-persisted_queries//lib/graphql/persisted_queries/resolver_helpers.rb#9
    def with_error_handling; end
  end
end

# Patches GraphQL::Schema to support persisted queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#12
module GraphQL::PersistedQueries::SchemaPatch
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#49
  def configure_persisted_query_error_handler(handler); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#35
  def configure_persisted_query_store(store, **options); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#53
  def hash_generator=(hash_generator); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#57
  def hash_generator_proc; end

  # Sets the attribute persisted_queries_tracing_enabled
  #
  # @param value the value to set the attribute persisted_queries_tracing_enabled to.
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#33
  def persisted_queries_tracing_enabled=(_arg0); end

  # @return [Boolean]
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#65
  def persisted_queries_tracing_enabled?; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#45
  def persisted_query_error_handler; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#41
  def persisted_query_store; end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#70
  def tracer(name); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#61
  def verify_http_method=(verify); end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#81
  def prepare_analyzer; end

  class << self
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#14
    def patch(schema, compiled_queries); end
  end
end

# Patches GraphQL::Schema to override multiplex (not needed for compiled queries)
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#27
module GraphQL::PersistedQueries::SchemaPatch::MultiplexPatch
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/schema_patch.rb#28
  def multiplex(queries, **kwargs); end
end

# Contains factory methods for store adapters
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#5
module GraphQL::PersistedQueries::StoreAdapters
  class << self
    # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters.rb#13
    def build(adapter, **options); end

    # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters.rb#21
    def build_by_name(name, **options); end
  end
end

# Base class for all store adapters
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#7
class GraphQL::PersistedQueries::StoreAdapters::BaseStoreAdapter
  include ::GraphQL::Tracing::Traceable

  # @return [BaseStoreAdapter] a new instance of BaseStoreAdapter
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#11
  def initialize(**_options); end

  # @raise [NotImplementedError]
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#30
  def fetch(_hash); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#15
  def fetch_query(hash, options = T.unsafe(nil)); end

  # @raise [NotImplementedError]
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#34
  def save(_hash, _query); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#25
  def save_query(hash, query, compiled_query: T.unsafe(nil)); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#38
  def trace(key, metadata); end

  # Sets the attribute tracers
  #
  # @param value the value to set the attribute tracers to.
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#9
  def tracers=(_arg0); end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/base_store_adapter.rb#49
  def build_key(hash, compiled_query); end
end

# Builds Redis object instance based on passed hash
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_client_builder.rb#7
class GraphQL::PersistedQueries::StoreAdapters::MemcachedClientBuilder
  # @return [MemcachedClientBuilder] a new instance of MemcachedClientBuilder
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_client_builder.rb#8
  def initialize(memcached_url: T.unsafe(nil), memcached_host: T.unsafe(nil), memcached_port: T.unsafe(nil), **dalli_args); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_client_builder.rb#21
  def build; end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_client_builder.rb#32
  def build_memcached_url; end
end

# Redis adapter for storing persisted queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#9
class GraphQL::PersistedQueries::StoreAdapters::MemcachedStoreAdapter < ::GraphQL::PersistedQueries::StoreAdapters::BaseStoreAdapter
  # @return [MemcachedStoreAdapter] a new instance of MemcachedStoreAdapter
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#13
  def initialize(dalli_client:, expiration: T.unsafe(nil), namespace: T.unsafe(nil)); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#20
  def fetch(hash); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#24
  def save(hash, query); end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#34
  def build_dalli_proc(dalli_client); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#30
  def key_for(hash); end
end

# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#10
GraphQL::PersistedQueries::StoreAdapters::MemcachedStoreAdapter::DEFAULT_EXPIRATION = T.let(T.unsafe(nil), Integer)

# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memcached_store_adapter.rb#11
GraphQL::PersistedQueries::StoreAdapters::MemcachedStoreAdapter::DEFAULT_NAMESPACE = T.let(T.unsafe(nil), String)

# Memory adapter for storing persisted queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memory_store_adapter.rb#7
class GraphQL::PersistedQueries::StoreAdapters::MemoryStoreAdapter < ::GraphQL::PersistedQueries::StoreAdapters::BaseStoreAdapter
  # @return [MemoryStoreAdapter] a new instance of MemoryStoreAdapter
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memory_store_adapter.rb#8
  def initialize(**_options); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memory_store_adapter.rb#13
  def fetch(hash); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/memory_store_adapter.rb#17
  def save(hash, query); end
end

# Builds Redis object instance based on passed hash
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_client_builder.rb#7
class GraphQL::PersistedQueries::StoreAdapters::RedisClientBuilder
  # @return [RedisClientBuilder] a new instance of RedisClientBuilder
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_client_builder.rb#8
  def initialize(redis_url: T.unsafe(nil), redis_host: T.unsafe(nil), redis_port: T.unsafe(nil), redis_db_name: T.unsafe(nil)); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_client_builder.rb#21
  def build; end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_client_builder.rb#34
  def build_redis_url; end
end

# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_client_builder.rb#32
GraphQL::PersistedQueries::StoreAdapters::RedisClientBuilder::DEFAULT_REDIS_DB = T.let(T.unsafe(nil), String)

# Redis adapter for storing persisted queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#9
class GraphQL::PersistedQueries::StoreAdapters::RedisStoreAdapter < ::GraphQL::PersistedQueries::StoreAdapters::BaseStoreAdapter
  # @return [RedisStoreAdapter] a new instance of RedisStoreAdapter
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#13
  def initialize(redis_client: T.unsafe(nil), expiration: T.unsafe(nil), namespace: T.unsafe(nil)); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#20
  def fetch(hash); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#24
  def save(hash, query); end

  private

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#37
  def build_redis_proc(redis_client); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#30
  def key_for(hash); end
end

# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#10
GraphQL::PersistedQueries::StoreAdapters::RedisStoreAdapter::DEFAULT_EXPIRATION = T.let(T.unsafe(nil), Integer)

# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_store_adapter.rb#11
GraphQL::PersistedQueries::StoreAdapters::RedisStoreAdapter::DEFAULT_NAMESPACE = T.let(T.unsafe(nil), String)

# Memory adapter for storing persisted queries
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#7
class GraphQL::PersistedQueries::StoreAdapters::RedisWithLocalCacheStoreAdapter < ::GraphQL::PersistedQueries::StoreAdapters::BaseStoreAdapter
  # @return [RedisWithLocalCacheStoreAdapter] a new instance of RedisWithLocalCacheStoreAdapter
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#11
  def initialize(redis_client: T.unsafe(nil), expiration: T.unsafe(nil), namespace: T.unsafe(nil), redis_adapter_class: T.unsafe(nil), memory_adapter_class: T.unsafe(nil)); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#25
  def fetch(hash); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#35
  def save(hash, query); end

  private

  # Returns the value of attribute memory_adapter.
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#42
  def memory_adapter; end

  # Returns the value of attribute redis_adapter.
  #
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#42
  def redis_adapter; end
end

# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#9
GraphQL::PersistedQueries::StoreAdapters::RedisWithLocalCacheStoreAdapter::DEFAULT_MEMORY_ADAPTER_CLASS = GraphQL::PersistedQueries::StoreAdapters::MemoryStoreAdapter

# source://graphql-persisted_queries//lib/graphql/persisted_queries/store_adapters/redis_with_local_cache_store_adapter.rb#8
GraphQL::PersistedQueries::StoreAdapters::RedisWithLocalCacheStoreAdapter::DEFAULT_REDIS_ADAPTER_CLASS = GraphQL::PersistedQueries::StoreAdapters::RedisStoreAdapter

# source://graphql-persisted_queries//lib/graphql/persisted_queries/version.rb#5
GraphQL::PersistedQueries::VERSION = T.let(T.unsafe(nil), String)

# Raised when provided hash is not matched with query
#
# source://graphql-persisted_queries//lib/graphql/persisted_queries/errors.rb#15
class GraphQL::PersistedQueries::WrongHash < ::StandardError
  # source://graphql-persisted_queries//lib/graphql/persisted_queries/errors.rb#16
  def message; end
end

class GraphQL::Query
  # source://graphql/2.1.0/lib/graphql/query.rb#98
  def initialize(schema, query_string = T.unsafe(nil), query: T.unsafe(nil), document: T.unsafe(nil), context: T.unsafe(nil), variables: T.unsafe(nil), validate: T.unsafe(nil), static_validator: T.unsafe(nil), subscription_topic: T.unsafe(nil), operation_name: T.unsafe(nil), root_value: T.unsafe(nil), max_depth: T.unsafe(nil), max_complexity: T.unsafe(nil), warden: T.unsafe(nil)); end

  # source://graphql/2.1.0/lib/graphql/query.rb#360
  def after_lazy(value, &block); end

  # source://graphql/2.1.0/lib/graphql/query.rb#316
  def analysis_errors; end

  # source://graphql/2.1.0/lib/graphql/query.rb#316
  def analysis_errors=(_arg0); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def analyzers(*args, **_arg1, &block); end

  # source://graphql/2.1.0/lib/graphql/query.rb#269
  def arguments_cache; end

  # source://graphql/2.1.0/lib/graphql/query.rb#265
  def arguments_for(ast_node, definition, parent_object: T.unsafe(nil)); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def ast_analyzers(*args, **_arg1, &block); end

  # source://graphql/2.1.0/lib/graphql/query.rb#28
  def context; end

  # source://graphql/2.1.0/lib/graphql/query.rb#179
  def current_trace; end

  # source://graphql/2.1.0/lib/graphql/query.rb#65
  def document; end

  # source://graphql/2.1.0/lib/graphql/query.rb#227
  def executed?; end

  # source://graphql/2.1.0/lib/graphql/query.rb#295
  def fingerprint; end

  # source://graphql/2.1.0/lib/graphql/query.rb#210
  def fragments; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def get_field(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def get_type(*args, **_arg1, &block); end

  # source://graphql/2.1.0/lib/graphql/query.rb#356
  def handle_or_reraise(err); end

  # source://graphql/2.1.0/lib/graphql/query.rb#74
  def inspect; end

  # source://graphql/2.1.0/lib/graphql/query.rb#172
  def interpreter?; end

  # source://graphql/2.1.0/lib/graphql/query.rb#189
  def lookahead; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def max_complexity(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def max_depth(*args, **_arg1, &block); end

  # source://graphql/2.1.0/lib/graphql/query.rb#176
  def multiplex; end

  # source://graphql/2.1.0/lib/graphql/query.rb#176
  def multiplex=(_arg0); end

  # source://graphql/2.1.0/lib/graphql/query.rb#343
  def mutation?; end

  # source://graphql/2.1.0/lib/graphql/query.rb#300
  def operation_fingerprint; end

  # source://graphql/2.1.0/lib/graphql/query.rb#34
  def operation_name; end

  # source://graphql/2.1.0/lib/graphql/query.rb#34
  def operation_name=(_arg0); end

  # source://graphql/2.1.0/lib/graphql/query.rb#214
  def operations; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def possible_types(*args, **_arg1, &block); end

  # source://graphql-persisted_queries//lib/graphql/persisted_queries/compiled_queries/query_patch.rb#16
  def prepare_ast; end

  # source://graphql/2.1.0/lib/graphql/query.rb#28
  def provided_variables; end

  # source://graphql/2.1.0/lib/graphql/query.rb#347
  def query?; end

  # source://graphql/2.1.0/lib/graphql/query.rb#168
  def query_string; end

  # source://graphql/2.1.0/lib/graphql/query.rb#62
  def query_string=(_arg0); end

  # source://graphql/2.1.0/lib/graphql/query.rb#331
  def resolve_type(abstract_type, value = T.unsafe(nil)); end

  # source://graphql/2.1.0/lib/graphql/query.rb#220
  def result; end

  # source://graphql/2.1.0/lib/graphql/query.rb#208
  def result_values; end

  # source://graphql/2.1.0/lib/graphql/query.rb#198
  def result_values=(result_hash); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def root_type_for_operation(*args, **_arg1, &block); end

  # source://graphql/2.1.0/lib/graphql/query.rb#31
  def root_value; end

  # source://graphql/2.1.0/lib/graphql/query.rb#31
  def root_value=(_arg0); end

  # source://graphql/2.1.0/lib/graphql/query.rb#277
  def sanitized_query_string(inline_variables: T.unsafe(nil)); end

  # source://graphql/2.1.0/lib/graphql/query.rb#28
  def schema; end

  # source://graphql/2.1.0/lib/graphql/query.rb#238
  def selected_operation; end

  # source://graphql/2.1.0/lib/graphql/query.rb#79
  def selected_operation_name; end

  # source://graphql/2.1.0/lib/graphql/query.rb#231
  def static_errors; end

  # source://graphql/2.1.0/lib/graphql/query.rb#49
  def static_validator; end

  # source://graphql/2.1.0/lib/graphql/query.rb#52
  def static_validator=(new_validator); end

  # source://graphql/2.1.0/lib/graphql/query.rb#351
  def subscription?; end

  # source://graphql/2.1.0/lib/graphql/query.rb#85
  def subscription_topic; end

  # source://graphql/2.1.0/lib/graphql/query.rb#183
  def subscription_update?; end

  # source://graphql/2.1.0/lib/graphql/query.rb#87
  def tracers; end

  # source://graphql/2.1.0/lib/graphql/query.rb#317
  def valid?; end

  # source://graphql/2.1.0/lib/graphql/query.rb#37
  def validate; end

  # source://graphql/2.1.0/lib/graphql/query.rb#40
  def validate=(new_validate); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def validation_errors(*args, **_arg1, &block); end

  # source://graphql/2.1.0/lib/graphql/query.rb#309
  def validation_pipeline; end

  # source://graphql/2.1.0/lib/graphql/query.rb#248
  def variables; end

  # source://graphql/2.1.0/lib/graphql/query.rb#305
  def variables_fingerprint; end

  # source://graphql/2.1.0/lib/graphql/query.rb#321
  def warden; end

  private

  # source://graphql/2.1.0/lib/graphql/query.rb#374
  def find_operation(operations, operation_name); end

  # source://graphql/2.1.0/lib/graphql/query.rb#448
  def with_prepared_ast; end
end