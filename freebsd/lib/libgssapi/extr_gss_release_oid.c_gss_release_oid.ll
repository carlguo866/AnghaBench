; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_release_oid.c_gss_release_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_release_oid.c_gss_release_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@GSS_C_NO_OID = common dso_local global %struct.TYPE_5__* null, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_release_oid(i64* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_C_NO_OID, align 8
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %10, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GSS_C_NO_OID, align 8
  %18 = icmp eq %struct.TYPE_5__* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %20, i64* %3, align 8
  br label %39

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @free(%struct.TYPE_5__* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = call i32 @free(%struct.TYPE_5__* %36)
  %38 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %33, %19
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
