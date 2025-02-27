; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typestruct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: Could not register Netgraph node type, error=%d\0A\00", align 1
@NG_UBT_NODE_TYPE = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ubt_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubt_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %20 [
    i32 129, label %9
    i32 128, label %18
  ]

9:                                                ; preds = %3
  %10 = call i32 @ng_newtype(i32* @typestruct)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i8*, i8** @NG_UBT_NODE_TYPE, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  br label %22

18:                                               ; preds = %3
  %19 = call i32 @ng_rmtype(i32* @typestruct)
  store i32 %19, i32* %7, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %18, %17
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @ng_newtype(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @ng_rmtype(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
