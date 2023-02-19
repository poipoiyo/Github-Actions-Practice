# Github-Actions-Practice

A repo to demo github actions.

Workflow will be triggered once there is any change, pull request to `main` branch.

# Demo
[Detail link](https://github.com/poipoiyo/Github-Actions-Practice/actions/runs/4209581078)

<img src="https://github.com/poipoiyo/Demo-image/blob/main/Github-Actions-Practice/jobs.png" width="80%" />

# Unit test
The solution relys on google test. [How to use.](https://learn.microsoft.com/en-us/visualstudio/test/how-to-use-google-test-for-cpp?view=vs-2022)

They will be built and tested in workflow as well.

<img src="https://github.com/poipoiyo/Demo-image/blob/main/Github-Actions-Practice/gtest.png" width="40%" />

# Release
Each release build will be upload to github release.

<img src="https://github.com/poipoiyo/Demo-image/blob/main/Github-Actions-Practice/github-release.png" width="40%" />

# 3rd actions
There are many useful 3rd actions can be used in marketplace.

In this repo, [publish-test-results](https://github.com/marketplace/actions/publish-test-results) can help to visualize unit test result.

Demo pull request [link](https://github.com/poipoiyo/Github-Actions-Practice/pull/2).

<img src="https://github.com/poipoiyo/Demo-image/blob/main/Github-Actions-Practice/ut-result-publish.png" width="40%" />

# Runner Installation
1. Prepare windows machine and follow `Setting`->`Actions`->`Runners`->`New self-hosted runner` to install github actions.
2. Install chocolately to help install other necessary programs.
3. Run `$ choco install git, hub`
4. Run `$ choco install python --version=3.8.0`
5. Add environment path `python3` and `C:\Program Files\Git\bin`

# Further Steps
1. Add matrix to build debug and win32 packages
2. Trigger assertion test after building packages generation
3. More customize actions ...


