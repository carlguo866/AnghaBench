; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsglob.h_CIFS_DIR_SEP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsglob.h_CIFS_DIR_SEP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32 }

@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.cifs_sb_info*)* @CIFS_DIR_SEP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %3, align 8
  %4 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %5 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8 47, i8* %2, align 1
  br label %12

11:                                               ; preds = %1
  store i8 92, i8* %2, align 1
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i8, i8* %2, align 1
  ret i8 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
