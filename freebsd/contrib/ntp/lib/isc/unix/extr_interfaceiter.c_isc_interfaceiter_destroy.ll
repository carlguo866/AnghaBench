; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_interfaceiter.c_isc_interfaceiter_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_interfaceiter.c_isc_interfaceiter_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_interfaceiter_destroy(%struct.TYPE_6__** %0) #0 {
  %2 = alloca %struct.TYPE_6__**, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %2, align 8
  %4 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %5 = icmp ne %struct.TYPE_6__** %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @REQUIRE(i32 %6)
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @VALID_IFITER(%struct.TYPE_6__* %10)
  %12 = call i32 @REQUIRE(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32 @internal_destroy(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @isc_mem_put(i32 %22, %struct.TYPE_6__* %25, i32 %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = call i32 @isc_mem_put(i32 %35, %struct.TYPE_6__* %36, i32 24)
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %38, align 8
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_IFITER(%struct.TYPE_6__*) #1

declare dso_local i32 @internal_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
