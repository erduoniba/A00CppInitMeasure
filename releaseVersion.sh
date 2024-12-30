#!/bin/bash

function releaseVersion() {
	# 获取版本信息，譬如：'0.1.3'
	VersionString=`grep -E 's.version.*=' A00CppInitMeasure.podspec`
	VersionNumber=`echo $VersionString | awk -F"'" '{print $2}'`

	# 添加所有更改并提交
	git add .
	git commit -m "feat: 发布新版本 ${VersionNumber}"

	git tag ${VersionNumber}
	git push origin main --tags
	pod trunk push ./A00CppInitMeasure.podspec --verbose --use-libraries --allow-warnings
}



# 第一步，修改好代码，记得修正好 podspec 文件中的 tag

# 第二步，执行自动打二进制包脚本
sh Example/build_xcframework.sh

# 第三步，提交代码，添加tag，发布
releaseVersion