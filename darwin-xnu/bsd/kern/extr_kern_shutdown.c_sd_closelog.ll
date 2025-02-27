; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_closelog.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_closelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sd_logvp = common dso_local global i64 0, align 8
@NULLVP = common dso_local global i64 0, align 8
@MNT_WAIT = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sd_closelog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_closelog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @sd_logvp, align 8
  %5 = load i64, i64* @NULLVP, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i64, i64* @sd_logvp, align 8
  %9 = load i32, i32* @MNT_WAIT, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @VNOP_FSYNC(i64 %8, i32 %9, i32 %10)
  %12 = load i64, i64* @sd_logvp, align 8
  %13 = load i32, i32* @FWRITE, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @vnode_close(i64 %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %7, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @VNOP_FSYNC(i64, i32, i32) #1

declare dso_local i32 @vnode_close(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
