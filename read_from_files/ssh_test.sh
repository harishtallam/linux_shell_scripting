#!/bin/sh
echo ${BAMBOO_INJECT_SSH_MNG1} ${BAMBOO_INJECT_SSH_MNG2} ${BAMBOO_INJECT_SSH_MNG3} ${BAMBOO_INJECT_SSH_MNG4}
host_id=(${BAMBOO_INJECT_SSH_MNG1} ${BAMBOO_INJECT_SSH_MNG2} ${BAMBOO_INJECT_SSH_MNG3} ${BAMBOO_INJECT_SSH_MNG4})
host_pwd=(${BAMBOO_INJECT_SRC_PASSWORD_MNG1} ${BAMBOO_INJECT_SRC_PASSWORD_MNG2} ${BAMBOO_INJECT_SRC_PASSWORD_MNG3} ${BAMBOO_INJECT_SRC_PASSWORD_MNG4})
#dos2unix command.txt
	function CREATE_SU_WRAPPER_FILE()
	{
	echo "cat > ${BAMBOO_SU_SCRIPT_PATH}/su_run_mng1.sh <<EOSU"> command.txt
	echo #!/usr/bin/expect -f>> command.txt
	echo set timeout -1>> command.txt
	echo spawn su "${BAMBOO_SRC_USERNAME}" -c "${BAMBOO_SU_SCRIPT_PATH}"'\$argv'>> command.txt
	echo expect "Password:" {send "${host_pwd[@]}\r\r"}>> command.txt
	echo expect eof>> command.txt
	echo EOSU>> command.txt
	}
for host in "${host_id[@]}"
do
		CREATE_SU_WRAPPER_FILE
		ssh -T ${BAMBOO_INJECT_SSH_USER}@${host} < command.txt
done
	