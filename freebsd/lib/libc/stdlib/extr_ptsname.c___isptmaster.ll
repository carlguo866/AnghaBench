; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_ptsname.c___isptmaster.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_ptsname.c___isptmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIOCPTMASTER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__isptmaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__isptmaster(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @TIOCPTMASTER, align 4
  %6 = call i64 @_ioctl(i32 %4, i32 %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load i64, i64* @errno, align 8
  %11 = load i64, i64* @EBADF, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @EINVAL, align 8
  store i64 %14, i64* @errno, align 8
  br label %15

15:                                               ; preds = %13, %9
  store i32 -1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @_ioctl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
