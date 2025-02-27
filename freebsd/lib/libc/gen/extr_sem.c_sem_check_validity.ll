; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c_sem_check_validity.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c_sem_check_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SEM_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__**)* @sem_check_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sem_check_validity(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  %4 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %5 = icmp ne %struct.TYPE_3__** %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SEM_MAGIC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %16

14:                                               ; preds = %6, %1
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
