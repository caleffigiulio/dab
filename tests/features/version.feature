# vim: ts=4 sw=4 sts=4 noet
@smoke
Feature: Subcommand: dab version
	The version subcommand displays information on the current dab environment.

	Scenario: Can execute dab version and get environment info
		When I run `dab version`

		Then the output should match /^Dab Version: \b[0-9a-f]{5,40}\b/
		And the output should match /^Server Version: \b[0-9a-z]+.{2}[0-9a-z]\b/
		And the output should match /^Runtimes: \w[\w\h[:punct:]]+/
		And the output should match /^Kernel Version: \w[\w\h[:punct:]]+/
		And the output should match /^Operating System: \w[\w\h[:punct:]]+/
		And the output should match /^Architecture: \w[\w\h[:punct:]]+/
