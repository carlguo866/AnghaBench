; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity.h_verity_io_real_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity.h_verity_io_real_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32 }
%struct.dm_verity_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dm_verity*, %struct.dm_verity_io*)* @verity_io_real_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verity_io_real_digest(%struct.dm_verity* %0, %struct.dm_verity_io* %1) #0 {
  %3 = alloca %struct.dm_verity*, align 8
  %4 = alloca %struct.dm_verity_io*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %3, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %4, align 8
  %5 = load %struct.dm_verity_io*, %struct.dm_verity_io** %4, align 8
  %6 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %5, i64 1
  %7 = bitcast %struct.dm_verity_io* %6 to i32*
  %8 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %9 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  ret i32* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
