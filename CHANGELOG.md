# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2026-01-06

### Added
- Initial release of ChangeCrab Python SDK
- Full support for ChangeCrab API endpoints:
  - Changelog management (list, get, create, update, delete)
  - Post management (list, create, update, delete)
  - Category listing
- Comprehensive error handling with custom exception classes:
  - `AuthenticationError` for 401/403 responses
  - `NotFoundError` for 404 responses
  - `ValidationError` for 422 responses with field-level errors
  - `RateLimitError` for 429 responses
  - `ServerError` for 5xx responses
- Type-safe data models using dataclasses:
  - `Changelog` model with all changelog properties
  - `Post` model with post data and categories
  - `Category` model for changelog categories
- Full type hints with `py.typed` marker for static type checking
- Comprehensive test suite with 100% endpoint coverage
- CI/CD pipeline with GitHub Actions
- Complete documentation with examples

### Features
- Clean, intuitive API design
- Automatic datetime parsing from API responses
- Boolean value normalization (handles 0/1, true/false, etc.)
- Dictionary conversion methods on all models
- Configurable base URL and timeout (default: 30 seconds)
- Automatic retry logic with exponential backoff for transient errors (timeouts, connection errors)
- Session-based HTTP client for connection pooling
- No sensitive data logging (API keys never exposed in error messages)
- Proper validation error handling with field-level error details

