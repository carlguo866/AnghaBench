; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_at_fd.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_at_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@AT_FDCWD_ = common dso_local global i64 0, align 8
@AT_PWD = common dso_local global %struct.fd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fd* (i64)* @at_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fd* @at_fd(i64 %0) #0 {
  %2 = alloca %struct.fd*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @AT_FDCWD_, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.fd*, %struct.fd** @AT_PWD, align 8
  store %struct.fd* %8, %struct.fd** %2, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call %struct.fd* @f_get(i64 %10)
  store %struct.fd* %11, %struct.fd** %2, align 8
  br label %12

12:                                               ; preds = %9, %7
  %13 = load %struct.fd*, %struct.fd** %2, align 8
  ret %struct.fd* %13
}

declare dso_local %struct.fd* @f_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
