; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdunlink.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdunlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidForkNumber = common dso_local global i64 0, align 8
@MAX_FORKNUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdunlink(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @InvalidForkNumber, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAX_FORKNUM, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mdunlinkfork(i32 %16, i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %5, align 8
  br label %11

23:                                               ; preds = %11
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mdunlinkfork(i32 %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @mdunlinkfork(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
