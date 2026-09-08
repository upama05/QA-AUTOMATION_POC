# QA Automation Demo — Selenium + Cucumber (BDD)

A sample test automation framework built to demonstrate hands-on QA
automation skills: Page Object Model design, BDD with Cucumber/Gherkin,
and CI integration via GitHub Actions.

This project automates login scenarios against a public demo site
([the-internet.herokuapp.com](https://the-internet.herokuapp.com/login)),
so it can be cloned and run by anyone without needing access to
private/proprietary systems.

## Why this project exists

I've spent 14+ years leading QA and test management for banking and
payments systems, working across test strategy, governance, and Agile
delivery as a Scrum Master. This repository is a small, self-contained
example of the automation practices I apply day-to-day — Page Object
Model structure, readable BDD scenarios, and pipeline-integrated test
execution — built against a public site so it's fully reproducible.

## Tech stack

| Layer               | Tool                              |
|---------------------|------------------------------------|
| Language             | Java 11                            |
| Browser automation   | Selenium WebDriver 4               |
| BDD framework        | Cucumber (Gherkin syntax)          |
| Test runner          | JUnit 4                            |
| Driver management    | WebDriverManager (auto-downloads driver binaries) |
| Build tool           | Maven                              |
| CI/CD                | GitHub Actions                     |

## Project structure

```
qa-automation-demo/
├── src/test/java/
│   ├── pages/               # Page Object Model classes
│   │   └── LoginPage.java
│   ├── stepdefinitions/     # Cucumber step definitions
│   │   └── LoginSteps.java
│   └── runners/             # Test runner + report configuration
│       └── TestRunner.java
├── src/test/resources/features/
│   └── login.feature        # Gherkin scenarios (business-readable)
├── .github/workflows/
│   └── tests.yml            # CI pipeline: runs tests on every push
├── pom.xml                  # Maven dependencies and build config
└── README.md
```

## What's covered

- **Successful login** with valid credentials
- **Invalid username** error handling
- **Invalid password** error handling
- **Scenario Outline** with a data table covering multiple credential
  combinations in one readable Gherkin block

## How to run it locally

**Prerequisites:** Java 11+, Maven, and Google Chrome installed.

```bash
# Clone the repository
git clone https://github.com/<your-username>/qa-automation-demo.git
cd qa-automation-demo

# Run all tests
mvn clean test
```

After running, an HTML report is generated at:
`target/cucumber-reports/cucumber-report.html`

## Continuous Integration

Every push to `main` automatically triggers the test suite via GitHub
Actions (see `.github/workflows/tests.yml`). The Cucumber HTML report
is uploaded as a downloadable build artifact on each run.

## Possible next steps

- Add API-level tests (e.g., using RestAssured) alongside UI tests
- Parameterize the browser (Chrome/Firefox) via Maven profiles
- Add Dockerfile to containerize the test execution environment

## About me

Test Manager | Scrum Master (PSM I Certified) | 14+ years in Banking &
Payments QA | [LinkedIn](https://linkedin.com/in/upma-singh-thakur-6bab1139)
