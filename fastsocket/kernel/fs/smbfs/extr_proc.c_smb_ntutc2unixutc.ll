; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_ntutc2unixutc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_ntutc2unixutc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@NTFS_TIME_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i64)* @smb_ntutc2unixutc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @smb_ntutc2unixutc(i64 %0) #0 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NTFS_TIME_OFFSET, align 8
  %7 = sub nsw i64 %5, %6
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @do_div(i64 %8, i32 10000000)
  %10 = mul nsw i32 %9, 100
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = bitcast %struct.timespec* %2 to { i32, i64 }*
  %15 = load { i32, i64 }, { i32, i64 }* %14, align 8
  ret { i32, i64 } %15
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
