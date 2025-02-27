; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_add_oid_set_member.c_gss_add_oid_set_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_add_oid_set_member.c_gss_add_oid_set_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_add_oid_set_member(i64* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %9, align 8
  %15 = load i64*, i64** %5, align 8
  store i64 0, i64* %15, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = call i64 @gss_test_oid_set_member(i64* %16, %struct.TYPE_11__* %17, %struct.TYPE_10__* %19, i32* %12)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %4, align 8
  br label %113

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %29, i64* %4, align 8
  br label %113

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i8* @malloc(i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %10, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = load i64, i64* @ENOMEM, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %45, i64* %4, align 8
  br label %113

46:                                               ; preds = %30
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %51
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %11, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @malloc(i32 %55)
  %57 = bitcast i8* %56 to %struct.TYPE_11__*
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = icmp ne %struct.TYPE_11__* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %46
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = call i32 @free(%struct.TYPE_11__* %65)
  %67 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %67, i64* %4, align 8
  br label %113

68:                                               ; preds = %46
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memcpy(%struct.TYPE_11__* %76, %struct.TYPE_11__* %79, i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = icmp ne %struct.TYPE_11__* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %68
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(%struct.TYPE_11__* %89, %struct.TYPE_11__* %92, i32 %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = call i32 @free(%struct.TYPE_11__* %102)
  br label %104

104:                                              ; preds = %88, %68
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %104, %64, %42, %28, %23
  %114 = load i64, i64* %4, align 8
  ret i64 %114
}

declare dso_local i64 @gss_test_oid_set_member(i64*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
