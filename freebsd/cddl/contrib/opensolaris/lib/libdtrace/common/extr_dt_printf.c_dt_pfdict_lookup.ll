; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_pfdict_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_pfdict_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_6__*, i8*)* @dt_pfdict_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @dt_pfdict_lookup(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @dt_strtab_hash(i8* %11, i32* null)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = urem i64 %12, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  br label %23

23:                                               ; preds = %35, %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %39

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %7, align 8
  br label %23

39:                                               ; preds = %33, %23
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %40
}

declare dso_local i64 @dt_strtab_hash(i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
