require 'fileutils'
`7z a -tzip #{Time.now.strftime("%Y_%m_%d__%H_%M")}__#{File.basename(FileUtils.pwd)}.zip -r -x!nbproject -x!*.zip -x!*.sh* -x!lib -x!log -x!public\\js -x!public\\ext -x!.git`
