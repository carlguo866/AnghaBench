; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_debugfs.c_snic_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_debugfs.c_snic_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"snic\00", align 1
@snic_glob = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_debugfs_init() #0 {
  %1 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  %2 = bitcast i8* %1 to i32*
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snic_glob, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32* %2, i32** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snic_glob, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snic_glob, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
