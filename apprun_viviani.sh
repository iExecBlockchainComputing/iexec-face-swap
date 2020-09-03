#!/bin/sh
iexec app run 0xB0D39466fa25877475fCaBeF0Db46c12Be350687 \
      --chain viviani \
      --wallet-file user_wallet \
      --params {\"iexec_input_files\":[\"https://github.com/iExecBlockchainComputing/dapp-FaceSwap/raw/master/images/test4.jpg\",\"https://github.com/iExecBlockchainComputing/dapp-FaceSwap/raw/master/images/test6.jpg\"]} \
      --skip-request-check \
      --watch


