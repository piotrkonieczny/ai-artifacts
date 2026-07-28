# Code Review Checklist

Use this as a reference during reviews. Not every item applies to every PR.

## Correctness

- [ ] Logic matches the stated intent
- [ ] No off-by-one errors
- [ ] Null/undefined handling is explicit
- [ ] Race conditions are addressed (async code)
- [ ] Resource cleanup (file handles, connections, subscriptions)

## Security

- [ ] No secrets, keys, or tokens in code or logs
- [ ] User input is validated and sanitized
- [ ] SQL/NoSQL queries use parameterized inputs
- [ ] Auth checks are present on protected endpoints
- [ ] Dependencies have no known critical CVEs

## Performance

- [ ] No unnecessary re-renders (React) or N+1 queries (DB)
- [ ] Large data sets use pagination or streaming
- [ ] Expensive operations are cached where appropriate
- [ ] Bundle size impact is reasonable

## Maintainability

- [ ] Functions do one thing
- [ ] Names reveal intent
- [ ] No magic numbers or strings
- [ ] Error messages are actionable
- [ ] Complex logic has a brief comment explaining why

## Testing

- [ ] Happy path is covered
- [ ] Edge cases and error paths are tested
- [ ] Tests are deterministic (no flakiness)
- [ ] Mocks are at the right boundary (not over-mocking)

## API Design

- [ ] Consistent naming conventions
- [ ] Request/response shapes are documented
- [ ] Backward compatibility is maintained or breaking changes are intentional
- [ ] Rate limiting and pagination are considered
