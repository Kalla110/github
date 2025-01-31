## Changes for 0.27

- Add vector of SimpleTeam in "requested_teams" field of PullRequest
  [#453](https://github.com/phadej/github/pull/453)
- Add endpoint to create gist
  [#455](https://github.com/phadej/github/pull/455)
- Update RepoWebhookEvent
  [#461](https://github.com/phadej/github/pull/461)
- PullRequest Reviews may not have submitted_at field 
  [#450](https://github.com/phadej/github/pull/450)

## Changes for 0.26

- Generalize PagedQuery to allow its reuse by preview github APIs
  [#439](https://github.com/phadej/github/pull/439)
- Add endpoint for listing organizations outside collaborators
  [#445](https://github.com/phadej/github/pull/445)
- Add endpoint for users search
  [#444](https://github.com/phadej/github/pull/444)
- Make repoWebhookResponseStatus optional
  [#436](https://github.com/phadej/github/pull/436)
- Teams improvements
  [#417](https://github.com/phadej/github/pull/417)
- Add deleteReference endpoint
  [#388](https://github.com/phadej/github/pull/388)
	
## Changes for 0.25

- Add `executeRequestWithMgrAndRes`
  [#421](https://github.com/phadej/github/pull/421)
- Add `limitsFromHttpResponse`
  [#421](https://github.com/phadej/github/pull/421)
- Add label descriptions
  [#418](https://github.com/phadej/github/pull/418)
- Add "draft" option to mergeable state
  [#431](https://github.com/phadej/github/pull/431)
- Use IssueNumber in editIssueR and issueR
  [#429](https://github.com/phadej/github/pull/429)
- Manage orgs in GitHub Enterprise
  [#420](https://github.com/phadej/github/pull/420)
- Add support for collaborator permission endpoint
  [#425](https://github.com/phadej/github/pull/425)
- Add support for the comment reply endpoint
  [#424](https://github.com/phadej/github/pull/424)
- Organise exports in `GitHub`
  [#430](https://github.com/phadej/github/pull/430)

## Changes for 0.24

**Major change**:
Introduce `github` n-ary combinator to hoist `... -> Request rw res`
into `... -> IO (Either Error res)` (i.e. n-ary `executeRequest`).
With that in place drop `.. -> IO (Either Error res)` functions.

This reduces symbol bloat in the library.
[#415](https://github.com/phadej/github/pull/415)

- Remove double `withOpenSSL`
  [#414](https://github.com/phadej/github/pull/414)
- Pull requests reviews API uses issue number
  [#409](https://github.com/phadej/github/pull/409)
- Update `Repo`, `NewRepo` and `EditRepo` data types
  [#407](https://github.com/phadej/github/pull/407)

## Changes for 0.23

- Escape URI paths
  [#404](https://github.com/phadej/github/pull/404)
- Add OwnerBot to OwnerType
  [#399](https://github.com/phadej/github/pull/399)
- Make File.fileSha optional
  [#392](https://github.com/phadej/github/pull/392)
- Update User-Agent to contain up to date version
  [#403](https://github.com/phadej/github/pull/403)
  [#394](https://github.com/phadej/github/pull/394)

## Changes for 0.22

- Type-class for various auth methods
  [#365](https://github.com/phadej/github/pull/365)
- Throw on non-200 responses
  [#350](https://github.com/phadej/github/pull/350)
- Add extension point for (preview) media types
  [#370](https://github.com/phadej/github/pull/370)
- Add missing webhook event types
  [#359](https://github.com/phadej/github/pull/359)
- Add invitation endpoint
  [#360](https://github.com/phadej/github/pull/360)
- Add notifications endpoints
  [#324](https://github.com/phadej/github/pull/324)
- Add ssh keys endpoints
  [#363](https://github.com/phadej/github/pull/365)
- Case insensitive enum parsing
  [#373](https://github.com/phadej/github/pull/373)
- Don't try parse unitary responses
  [#377](https://github.com/phadej/github/issues/377)
- Update dependencies
  [#364](https://github.com/phadej/github/pull/364)
  [#368](https://github.com/phadej/github/pull/368)
  [#369](https://github.com/phadej/github/pull/369)
- Documentation improvements
  [#357](https://github.com/phadej/github/pull/357)

## Changes for 0.21

- Refactor `Request` type.
  [#349](https://github.com/phadej/github/pull/349)
- Allow `http-client-0.6`
  [#344](https://github.com/phadej/github/pull/344)
- Change to use `cryptohash-sha1` (`cryptohash` was used before)
- Add Create milestone endponts
  [#337](https://github.com/phadej/github/pull/337)
- Make fileBlobUrl and fileRawUrl are optional
  [#339](https://github.com/phadej/github/issues/339)
  [#340](https://github.com/phadej/github/pull/340)
- Add organizationsR to request user organizations
  [#345](https://github.com/phadej/github/pull/345)
- Add updateMilestoneR, deleteMilestoneR
  [#338](https://github.com/phadej/github/pull/338)
- Allow multiple assignees in NewIssue and EditIssue
  [#336](https://github.com/phadej/github/pull/336)
- Add `pullRequestPatchR` and `pullRequestDiffR`
  [#325](https://github.com/phadej/github/pull/325)

## Changes for 0.20

- Add ratelimit endpoint
  [#315](https://github.com/phadej/github/pull/315)
- Add some deployment endoints
  [#330](https://github.com/phadej/github/pull/330)
- Add webhook installation events
  [#329](https://github.com/phadej/github/pull/330)
- Tigthen lower bounds (also remove aeson-compat dep)
  [#332](https://github.com/phadej/github/pull/332)

## Changes for 0.19

- Fix issue event type enumeration
  [#301](https://github.com/phadej/github/issues/301)
- Include label info in `IssseEvent`
  [#302](https://github.com/phadej/github/issues/302)
- Fix `ShowRepo` example
  [#306](https://github.com/phadej/github/pull/306)
- Add "Get archive link" API
  [#307](https://github.com/phadej/github/pull/307)
- Make "repo" in PullRequestCommit nullable (repository can be gone)
  [#311](https://github.com/phadej/github/pull/311)
- Add 	read-only emails endpoint
  [#313](https://github.com/phadej/github/pull/313)
- Organisation membership API
  [#312](https://github.com/phadej/github/pull/312)
- Fix isPullRequestMerged and other boolean responses
  [#312](https://github.com/phadej/github/pull/312)
- Add `behind` pull request mergeable state
  [#308](https://github.com/phadej/github/pull/308)
- Add list organisation invitations endpoint

## Changes for 0.18

- Endpoints for deleting issue comments.
  [#294](https://github.com/phadej/github/pull/294)
- Endpoints for (un)starring gists.
  [#296](https://github.com/phadej/github/pull/296)
- Add `archived` field to `Repo`.
  [#298](https://github.com/phadej/github/pull/298)
- Update dependencies.
  [#295](https://github.com/phadej/github/pull/295)
- Add Statuses endpoints.
  [#268](https://github.com/phadej/github/pull/268)
- Add requested reviewers field to pull request records.
  [#292](https://github.com/phadej/github/pull/292)

## Changes for 0.17.0

- Add `Ord Request` instance
- Repository contents
- Repository starring endpoints
- Pull Request review endpoints

## Changes for 0.16.0

- Add support for `mergeable_state = "blocked".`
- Fix HTTP status code of merge PR
- Supports newest versions of dependencies
- user events
- release endpoints
- forkExistingRepo

## Changes for 0.15.0

- Reworked `PullRequest` (notably `pullRequestsFor`)
- Reworked PR and Issue filtering
- GHC-8.0.1 support
- Change `repoMasterBranch` to `repoDefaultBranch` in `Repo`
- Add `listTeamReposR`
- Add `myStarredAcceptStarR`
- Add `HeaderQuery` to `Request`
- Add `Hashable Auth` instance
- Add `mkUserId`, `mkUserName`, `fromUserId`, `fromOrganizationId`
- Add 'userIssuesR'
- Add 'organizationIssuesR'
- Make `teamName :: Text` amnd `teamSlug :: Name Team` in both: `Team` and `SimpleTeam`
- Refactor 'Request' structure
- Added multiple issue assignees
- Preliminary support for repository events: `repositoryEventsR`
- Support for adding repository permissions to the team
- Remove 'simpleUserType', it was always the same.

See [git commit summary](https://github.com/phadej/github/compare/v0.14.1...v0.15.0)

## Changes for 0.14.1

- Add `membersOfWithR`, `listTeamMembersR`
- Add related enums: `OrgMemberFilter`, `OrgMemberRole`, `TeamMemberRole`
- Add `Enum` and `Bounded` instances to `Privacy`, `Permission`,
  `RepoPublicity`
- Don't require network access for search tests

## Changes for 0.14.0

Large API changes:

- Use `Text` and `Vector` in place of `String` and `[]`.
- Use `Name` and `Id` tagged types for names and identifiers.
- Make detailed structures un-prefixed, simple ones prefixed with `Simple`. Example: `Team` and `SimpleTeam`.
- Decouple request creation from execution (`*R` and `executeRequest*` functions).
- Add `Binary` instances for all data
- `GithubOwner` is a `newtype` of `Either User Organization`. There's still `SimpleOwner`.

## Changes for 0.5.0:

* OAuth.
* New function: `Github.Repos.organizationRepo`, to get the repo for a specific organization.
* Introduce a new `newRepoAutoInit` flag to `NewRepo`, for whether to initialize a repo while creating it.
* Relax the attoparsec version requirements.
* The above by [John Wiegley](https://github.com/jwiegley).

## Changes for 0.4.1:

* Stop using the uri package.
* Use aeson version 0.6.1.0.
* Use attoparsec version 0.10.3.0.
* Use http-conduit over 1.8.
* Use unordered-containers between 0.2 and 0.3.

## Changes for 0.4.0:

* Use http-conduit version 1.4.1.10.

## Changes for 0.3.0:

* Re-instantiate the Blobs API.
* `repoDescription1` and `repoPushedAt` are a `Maybe GithubDate`.
* Add `deleteRepo`, `editRepo`, and `createRepo`.
* Private gists, issues, organizations, pull requests, and users.
* Lock down `tls` and `tls-extra` instead of keeping up with the
  ever-changing `http-conduit` package.
* Features by [Pavel Ryzhov](https://github.com/paulrzcz) and [Simon Hengel](https://github.com/sol).

## Changes for 0.2.1:

* Expand the unordered-containers dependency to anything in 0.1.x .

## Changes for 0.2.0:

* `milestoneDueOn` and `repoLanguage` are now `Maybe` types.
* Introduce `GithubOwner` as the sum type for a `GithubUser` or `GithubOrganization`. Everything that once produced a `GithubUser` now produces a `GithubOwner`. All record accessors have changed their names
* Similar to `GithubOwner`, introduce `DetailedOwner`, which can be a `DetailedUser` or a `DetailedOrganization`. All record accessors have changed their names
* An `HTTPConnectionError` now composes `SomeException` instead of `IOException`. All exceptions raised by the underlying http-conduit library are encapulated there.
* The `githubIssueClosedBy` function now produces a `Maybe GithubOwner`.
* Remove the Blobs API, as it is broken upstream.
* Bugs found and squashed thanks to [Joey Hess](https://github.com/joeyh) and [Simon Hengel](https://github.com/sol).
