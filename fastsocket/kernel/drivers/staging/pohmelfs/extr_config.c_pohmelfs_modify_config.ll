; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_modify_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_modify_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_ctl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_ctl*, %struct.pohmelfs_ctl*)* @pohmelfs_modify_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_modify_config(%struct.pohmelfs_ctl* %0, %struct.pohmelfs_ctl* %1) #0 {
  %3 = alloca %struct.pohmelfs_ctl*, align 8
  %4 = alloca %struct.pohmelfs_ctl*, align 8
  store %struct.pohmelfs_ctl* %0, %struct.pohmelfs_ctl** %3, align 8
  store %struct.pohmelfs_ctl* %1, %struct.pohmelfs_ctl** %4, align 8
  %5 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %4, align 8
  %6 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %3, align 8
  %9 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %4, align 8
  %11 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %3, align 8
  %14 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
