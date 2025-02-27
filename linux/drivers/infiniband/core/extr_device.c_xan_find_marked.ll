; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_xan_find_marked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_xan_find_marked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.xarray = type { i32 }

@xas = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xarray*, i64*, i32)* @xan_find_marked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xan_find_marked(%struct.xarray* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xarray*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.xarray* %0, %struct.xarray** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xarray*, %struct.xarray** %5, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xas, i32 0, i32 0), align 8
  %13 = call i32 @XA_STATE(i64 %12, %struct.xarray* %9, i64 %11)
  %14 = call i32 (...) @rcu_read_lock()
  br label %15

15:                                               ; preds = %24, %3
  %16 = load i32, i32* @ULONG_MAX, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @xas_find_marked(%struct.TYPE_5__* @xas, i32 %16, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @xa_is_zero(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %28

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @xas_retry(%struct.TYPE_5__* @xas, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %24, %22
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xas, i32 0, i32 0), align 8
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @xa_is_zero(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* null, i8** %4, align 8
  br label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %4, align 8
  br label %45

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i8* @XA_ERROR(i32 %43)
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %41, %39, %38
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i32 @XA_STATE(i64, %struct.xarray*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @xas_find_marked(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @xa_is_zero(i8*) #1

declare dso_local i64 @xas_retry(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @XA_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
