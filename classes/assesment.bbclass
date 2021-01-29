# OSS Assesment bbclass

do_collect_assesmentreport[vardeps] = " \
	CODING_RULE	\
	CONTRIBUTION_RULE \
	RELEASE_RULE \
	CHANGE_LOG \
	BUG_TRACKING \
	TEST_SUITE \
	USED_IN \
	ACTIVE_CONTRIBUTORS \
	OIN_LIST \
"

python do_collect_assesmentreport() {
    print(d.getVar('CODING_RULE'))
    print(d.getVar('CONTRIBUTION_RULE'))
    print(d.getVar('RELEASE_RULE'))
    print(d.getVar('CHANGE_LOG'))
    print(d.getVar('BUG_TRACKING'))
    print(d.getVar('TEST_SUITE'))
    print(d.getVar('USED_IN'))
    print(d.getVar('ACTIVE_CONTRIBUTORS'))
    print(d.getVar('OIN_LIST'))
}

addtask do_collect_assesmentreport after do_patch before do_configure
EXPORT_FUNCTIONS do_collect_assesmentreport