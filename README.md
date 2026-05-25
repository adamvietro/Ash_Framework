# Tunez — Ash Framework Book Study

A music library server built while working through the [Ash Framework](https://ash-hq.org/) book cover to cover. This project implements a full-featured Elixir application using Ash as the primary application framework — exploring how Ash's declarative resource model differs from traditional Phoenix/Ecto CRUD patterns.

---

## What This Covers

This project follows all ten chapters of the Ash Framework book:

### Resources & Actions
- Defining Ash resources with basic CRUD actions
- Integrating actions into Phoenix LiveViews
- Relationships between resources (one-to-many, many-to-many)
- Loading related resource data
- Structured data with validations and identities
- Custom actions with arguments
- Changing data within actions

### Search & Query
- Custom search actions with dynamic sorting
- Pagination of search results
- Calculations — derived fields with no database column
- Relationship calculations as aggregates

### APIs — Generated, Not Written
- JSON REST API via AshJsonApi
- GraphQL interface via AshGraphql
- Both derived from the same resource definitions with minimal extra code

### Authentication
- Password authentication via AshAuthentication
- Automatic UI generation with AshAuthenticationPhoenix
- Magic link authentication

### Authorization
- Policy-based authorization with Ash Policies
- Role assignment to users
- Per-resource policies for artists and albums
- Removing forbidden actions from the UI based on policy evaluation

### Testing
- Resource testing
- Interface testing
- Test data setup and consolidation patterns

### Advanced Features
- Nested forms with track resources
- Managing relationships for related resources
- Drag-to-reorder tracks
- Automatic unit conversions (seconds ↔ minutes) via calculations
- Many-to-many following relationships between users and artists
- Real-time PubSub notifications for new albums
- Bulk actions
- Atomics

---

## Tech Stack

| Layer     | Technology                                  |
| --------- | ------------------------------------------- |
| Language  | Elixir                                      |
| Framework | Ash Framework                               |
| Web       | Phoenix, Phoenix LiveView                   |
| Auth      | AshAuthentication, AshAuthenticationPhoenix |
| REST API  | AshJsonApi                                  |
| GraphQL   | AshGraphql                                  |
| Database  | PostgreSQL (via AshPostgres)                |
| Testing   | ExUnit                                      |

---

## Getting Started

```bash
mix deps.get
mix ecto.setup
mix phx.server
```

Visit: [http://localhost:4000](http://localhost:4000)

---

## Running Tests

```bash
mix test
```

---

## Learn More

- [Ash Framework](https://ash-hq.org/)
- [Ash Framework Book](https://pragprog.com/titles/ldash/build-a-real-time-app-with-ash/)
- [My technical blog](https://blog-wild-leaf-1554.fly.dev)
