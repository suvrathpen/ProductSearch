ProductSearch is a simple Rails application that enables a user to search Semantics3's product database.

---

Live demo: [https://sem3-product-search.herokuapp.com/]()

Clone the repository at: [https://github.com/fingerprint/ProductSearch]()

### Prerequisites

- You will need to create an account at Semantics3: [https://semantics3.com/start]().

- Once your account has been activated (email verification is required), add the API_KEY and API_SECRET to the .env file (see .env.sample in the root of project).

### Objective

- Implement caching, where Semantics3 query responses are stored in a *SQL* database to speed-up subsequent searches (note: cache invalidation is not a requirement).

- Write unit tests.

### Optionals

- Refactor the search view using a front-end JavaScript framework (React, Vue.js, or Angular).

- Implement a simple interface that allows an “admin” to review, add, or remove items from the cache.

- Implement pagination.
