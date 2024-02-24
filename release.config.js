module.exports = {
    branches: "main",
    repositoryUrl: "https://github.com/Group-4-EKS/EKS-M-setup.git",
    plugins: [
      '@semantic-release/commit-analyzer',
      '@semantic-release/release-notes-generator',
      '@semantic-release/git',
      '@semantic-release/github']
     }