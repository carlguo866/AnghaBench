; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/extr_features.c_setup_xen_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/extr_features.c_setup_xen_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@XENFEAT_NR_SUBMAPS = common dso_local global i32 0, align 4
@XENVER_get_features = common dso_local global i32 0, align 4
@xen_features = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_xen_features() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %40, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @XENFEAT_NR_SUBMAPS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @XENVER_get_features, align 4
  %12 = call i64 @HYPERVISOR_xen_version(i32 %11, %struct.TYPE_3__* %1)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %43

15:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** @xen_features, align 8
  %30 = load i32, i32* %2, align 4
  %31 = mul nsw i32 %30, 32
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  store i32 %28, i32* %35, align 4
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %16

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %4

43:                                               ; preds = %14, %4
  ret void
}

declare dso_local i64 @HYPERVISOR_xen_version(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
