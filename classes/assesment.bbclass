# OSS Assesment bbclass

do_collect_assesmentreport[vardeps] = " \
	ASSESSOR_NAME \
	CODING_RULE	\
	CONTRIBUTION_RULE \
	RELEASE_RULE \
	CHANGE_LOG \
	BUG_TRACKING \
	TEST_SUITE \
	USED_IN \
	ACTIVE_CONTRIBUTORS \
	OIN_LIST \
	ASSED_PV \
	PV \
"

python do_collect_assesmentreport() {
    if bb.utils.contains('ASSED_PV', d.getVar('PV'), True, False, d):
       print('ASSED')
    else :
       print('NOT ASSED')

    print(d.getVar('ASSESSOR_NAME'))
    print(d.getVar('CODING_RULE'))
    print(d.getVar('CONTRIBUTION_RULE'))
    print(d.getVar('RELEASE_RULE'))
    print(d.getVar('CHANGE_LOG'))
    print(d.getVar('BUG_TRACKING'))
    print(d.getVar('TEST_SUITE'))
    print(d.getVar('USED_IN'))
    print(d.getVar('ACTIVE_CONTRIBUTORS'))
    print(d.getVar('OIN_LIST'))
    print(d.getVar('ASSED_PV'))
    print(d.getVar('PV'))
}

addtask do_collect_assesmentreport after do_patch before do_configure
EXPORT_FUNCTIONS do_collect_assesmentreport
