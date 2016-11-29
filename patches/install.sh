echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av frameworks/opt/telephony"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	#git am $rootdirectory/device/lenovo/A7010a48/patches/$dir/*.patch
	git apply $rootdirectory/device/lenovo/A7010a48/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
