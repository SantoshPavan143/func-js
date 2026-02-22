{
  "image": "mcr.microsoft.com/devcontainers/universal:2",
  "features": {rapido}
}

In 2026, the **Io Dev Container** (often used within **Rapido**'s engineering ecosystem) is a standardized, containerized environment designed to streamline local development for high-scale mobility services.

If you are a developer looking to set up or discuss this specific environment, here is the "rapido" (fast) breakdown.

-----

### 🚀 What is the Io Dev Container?

It is a **Development Container** (defined by the `.devcontainer` spec) pre-configured with the specific toolsets required for Rapido’s microservices architecture. Instead of installing Go, Java, or specific DB drivers locally, you run your IDE "inside" this container.

### 🛠️ Key Components

The Rapido Io Dev Container typically includes:

  * **Runtimes:** Pin-pointed versions of **Go (Golang)** or **Java/Spring Boot** used in their backend.
  * **Infrastructure Tools:** Pre-installed CLI tools for **Kubernetes (kubectl)**, **ArgoCD**, and cloud providers (AWS/GCP).
  * **Middleware Drivers:** Drivers for **Kafka**, **Redis**, and **PostgreSQL** that match the production environment exactly.
  * **Security & Linting:** Automated pre-commit hooks and Rapido-specific security scanners (like Gitleaks or internal vuln-scanners).

-----

### ⚡ Quick Setup Guide (The "Rapido" Way)

To get this running in under 2 minutes:

1.  **Prerequisites:** Install **Docker Desktop** (or OrbStack) and **VS Code** with the **Dev Containers extension**.
2.  **Clone & Open:**
    ```bash
    git clone <rapido-repo-url>
    cd <repo-name>
    code .
    ```
3.  **Trigger the Build:** When VS Code detects the `.devcontainer` folder, click **"Reopen in Container"** in the bottom-right notification.
4.  **Verify:** Open the integrated terminal inside VS Code and run `rapido-cli info` or `go version` to ensure the environment is correctly loaded.

-----

### 💡 Why Rapido uses this (Discussion Points)

If you are discussing this in a team meeting or interview, focus on these three value drivers:

  * **Zero-Day Onboarding:** A new engineer can start committing code on Day 1 because they don't have to spend hours debugging "it works on my machine" issues with local dependencies.
  * **Parity:** It mirrors the **CI/CD pipeline** environment. If the code compiles in the Dev Container, it *will* compile in the production build.
  * **Microservice Isolation:** Since Rapido has hundreds of services, an engineer might work on a Go service today and a Java service tomorrow. Dev Containers prevent "Version Hell" where different projects require conflicting versions of the same library.

### ⚠️ Common Pitfalls in 2026

  * **Disk Performance:** On macOS, ensure you use the **VirtioFS** file sharing setting in Docker settings to avoid slow `npm install` or `go mod download` speeds.
  * **Secret Management:** Never hardcode Rapido API keys in the `devcontainer.json`. Use the **Secret Management** integration in VS Code to pull them from your local keychain.

**Would you like me to generate a specific `devcontainer.json` boilerplate for a Rapido Go service, or help you troubleshoot a "Container failed to build" error?**