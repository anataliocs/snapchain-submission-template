# Stellar Toronto Builder Summit - EasyA Consensus Hackathon
## Hackathon Submission Template

*Using this template will ensure all the requirements are met for a valid project submission.*

- Link to original repo [Snapchain Repo](https://github.com/ElliotFriend/snapchain-demo)
- Hackathon info: [Easy A](https://easya-ltd.notion.site/EasyA-Consensus-Hackathon-Toronto-1debf8719d6d80be9ddfe9f9b0d38397)

### Prompt
> For this hackathon, we invite you to prove web3 UX doesn’t have to suck by building a web3 dapp with the seamlessness, intuition, and fluidity of web2 UX. Prove it can be done! Identify ways to create a seamless and intuitive user experience, including:
> 
> A smooth, friction-free onboarding process that gets the user going in seconds;
> Passkeys (e.g. Face ID, fingerprint scanners, etc. built into devices) for user authentication and transaction signing, skipping the wallet integration (where it makes sense);
> A smart wallet integration to simplify and automate DeFi workflows, with the benefit of reducing the need for user interaction, and thereby improving the user experience. 

---

# Hackathon Submission

> ⚠️ How to check boxes
> - [ ] Part 1: Narrative <---- Unchecked
> - [X] Part 1: Narrative <---- Checked
>
> Be sure to check boxes as you complete them!


- [ ] Part 1: Narrative
- [ ] Part 2: Your Minimal Viable Product
- [ ] Part 3: Technical Docs

---

## Part 1: Narrative

*A brief explanation of what you are building, what it fixes, who it’s helping, why it’s important, and what’s your value proposition.*

> ⚠️ How to check boxes
> - [ ] Part 1: Narrative <---- Unchecked
> - [X] Part 1: Narrative <---- Checked
>
> Be sure to check boxes as you complete them!

** ⚠️ Required Fields Checklist:**
- [ ] Problem statement
- [ ] User base
- [ ] Impact
- [ ] Why Stellar: How do you leverage Stellar Passkeys to provide a seamless and intuitive UX?
- [ ] Describe your experience building on Stellar

**Problem statement:**
```text
[Write Problem statement here]
```

User base
```text
[Write User base estimate here and link sources]
```

Impact
```text
[Write Problem statement here]
```

Why Stellar: How do you leverage Stellar Passkeys to provide a seamless and intuitive UX?
```text
[Why did you choose Stellar?  Be specific.]
```

Describe your experience building on Stellar:
```text
[Negative feedback here is encouraged!!!  It will not impact your score.  We want to make the experience better!]
```
✨Extra points for valuable, actionable negative feedback that helps use improve the developer experience.

---

## Part 2: Your Minimal Viable Product

> ⚠️ How to check boxes
> - [ ] Part 1: Narrative <---- Unchecked
> - [X] Part 1: Narrative <---- Checked
>
> Be sure to check boxes as you complete them!

** ⚠️ Required Fields Checklist:**
- [ ] URL to a public code repository  
  - [ ] Unique repo name mentioning Stellar:  ```stellar-consensus2025-PROJECT-NAME-HERE```  
  - [ ] Github Repo Description mentioning Stellar  
  - [ ] Github Repo Website points at: https://developers.stellar.org/  
  - [ ] Github Repo Topics include: “stellar”, “rust”, “smart-contracts”, “consensus-toronto-2025”
- [ ] README.md MUST contain  
  - [ ] List of implemented features  
  - [ ] List of technologies used to build the project   
  - [ ] Must include Stellar SDK, Passkeys, and Launchtube:  
  - [ ] [https://github.com/kalepail/passkey-kit](https://github.com/kalepail/passkey-kit)  
  - [ ] [https://github.com/stellar/launchtube](https://github.com/stellar/launchtube)  
  - [ ] [https://github.com/stellar/js-stellar-sdk](https://github.com/stellar/js-stellar-sdk) 
  - [ ] Deployed contract IDs with Stellar Expert Links  
  - [ ] Optional: Link to deployed front-end
- [ ] Contract Code: Well-commented, functional Rust code
- [ ] Client Code: Front-end UI code with smart contract bindings and Passkeys integration
- [ ] Deployed Artifacts:   
  - [ ] Optional: Link to automated test execution  
  - [ ] Optional: Automated Build artifacts


List of implemented features:
```text
- [Feature 1]
- [Feature 2]
```

List of technologies used to build the project:
```text
- [Example: Typescript]
- [Example: Rust]
```
⚠️ Must include Stellar SDK, Passkeys, and Launchtube:
```text
@stellar/stellar-sdk: [VERSION USED]
passkey-kit: [VERSION USED]
```

Deployed contract IDs on Stellar Expert

_Example: https://stellar.expert/explorer/testnet/contract/CDZQVQ573JBURBK4KXKPSTQWBCBCJ5ZRBSFFZ6EIQUS5DIM5EAPYHIDP_

```text
https://stellar.expert/explorer/testnet/contract/[Contract]

```

Optional: Link to deployed front-end
```text
[Deployed Front-end Link](YOUR%20LINK%20HERE)
```

---

## Part 3: Technical Docs

** ⚠️ Required Fields Checklist:**
- [ ] Overview: Sentence describing your system at a high-level
- [ ] Diagrams: Use any common diagram format (flowcharts, components)  
  - [ ] Describe each major component and its function  
  - [ ] Describe how components interact
- [ ] Design Choices:   
  - [ ] What type of storage did you use and why?  
  - [ ] How did you store the contract state?  
  - [ ] What events did you emit (if any)?  
  - [ ] Describe your passkeys implementation?  
  - [ ] What issues did you overcome?

Overview: Sentence describing your system at a high-level

```text
High-level overview
```

**Diagrams: Use any common diagram format (flowcharts, components)**
Recommended: https://github.com/mermaid-js/mermaid
- Describe each major component and its function
- Describe how components interact

> ℹ NOTE! 
> Github should automatically render These charts in the README

_Examples below!_

Example Flow Chart:

```mermaid
graph TD;
flowchart LR

A[User] -->|verifyUser()| B(VerifiedUser)
B --> C{Approve User}
C -->|One| D[Result 1: Create Account]
C -->|Two| E[Result 2: Show Error Message]
```

Example Sequence Diagram:
```mermaid
graph TD;

sequenceDiagram
Smart Contract->>Front-end: Function Invocation
loop Verify Fields
John->>John: Verified
end
Note right of Function Invocation: This user was verified
John-->>Alice: Great!
John->>Bob: How about you?
Bob-->>John: Jolly good!
```


Design Choices:

What type of storage did you use and why?
```text
[Storage durability chosen for various fields and why]
```

How did you store the contract state?
```text
[Types chosen for various variables and why]
```

What events did you emit (if any)?
```text
[Emitted Events]
```

Describe your passkeys implementation?
```text
[How did you use Stellar passkeys?]
```

What issues did you overcome?
```text
[What challenges did you encounter and overcome building on Stellar?]
```


---

#### BONUS QUESTION

Have you built on other blockchain networks?
- Which other networks?
- How does the developer experience compare?
- What can we improve?

```text
[How does building on Stellar compare to other networks?]
```
