# Homebrew Decipher

Homebrew formulae for Decipher Technology Studios products.

## Installation

To install this tap run the following command:

```bash
brew tap deciphernow/homebrew-decipher
```

## Formulae

The following table lists the formulae available from this tap.

| Name   | Description                                    |
|--------|------------------------------------------------|
| fabric | Command line utilities for Grey Matter Fabric. |

## Development

If you wish to develop additional formulae for this repository tap the repository using the `--full` option and treat the tap a you would any other git repository.

1. Tap the repository using the `--full` option so that you track all remote branches.

    ```bash
    brew tap --full deciphernow/homebrew-decipher
    ```
    
1. Change directories into the root directory for the tap.

    ```bash
    cd /usr/local/Homebrew/Library/Taps/deciphernow/homebrew-decipher
    ```
    
1. Edit or add formulas as you desire.  Note that homebrew has a tendency to reset your local repository to the remote master for a number of reasons so it is a good idea to commit often.  Most of the time it stashes changes so you can recover them, but it's best not to leave things to chance. 

## Testing

We do not currently support automated tests for pull requests against this repository but pull requests for branches within this repository can be tested as follows:

1. Tap the repository using the `--full` option so that you track all remote branches.

    ```bash
    brew tap --full deciphernow/homebrew-decipher
    ```
    
1. Change directories into the root directory for the tap.

    ```bash
    cd /usr/local/Homebrew/Library/Taps/deciphernow/homebrew-decipher
    ```

1. Ensure that all remote branches are up to date.

    ```bash
    git fetch --all
    ```
    
1. Make your local master branch match the branch you wish to test.

    ```bash
    git reset --hard origin/<BRANCH>
    ```

1. Install the formula or run other tests.

    ```bash
    brew install [--HEAD] [--devel] deciphernow/homebrew-decipher/<FORMULA>
    ```
    
    ```bash
    brew audit --new-formula deciphernow/homebrew-decipher/<FORMULA>
    ```

1. Reset your tap to the master branch.

    ```bash
    git reset --hard origin/master
    ```

## Contributing

1. Fork it
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create new Pull Request
