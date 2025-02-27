; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_gethostid.c_get_system_hostid.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_gethostid.c_get_system_hostid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/etc/hostid\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@HOSTID_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_system_hostid() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call i64 (...) @get_spl_hostid()
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %0
  store i32 4, i32* %5, align 4
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @read(i32 %15, i64* %4, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @HOSTID_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %1, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %24, %9
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i64, i64* %1, align 8
  ret i64 %29
}

declare dso_local i64 @get_spl_hostid(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
