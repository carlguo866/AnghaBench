; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_agg_bookend.c_typeinfocache_polydatumcopy.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_agg_bookend.c_typeinfocache_polydatumcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64, %struct.TYPE_7__*)* @typeinfocache_polydatumcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typeinfocache_polydatumcopy(%struct.TYPE_6__* %0, i64 %1, i64 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = bitcast %struct.TYPE_7__* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = call i32 @get_typlenbyval(i64 %24, i32* %26, i32* %28)
  br label %30

30:                                               ; preds = %17, %4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = bitcast %struct.TYPE_7__* %31 to i8*
  %33 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @datumCopy(i32 %39, i32 %42, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  br label %57

51:                                               ; preds = %30
  %52 = call i32 @PointerGetDatum(i32* null)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %37
  ret void
}

declare dso_local i32 @get_typlenbyval(i64, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
