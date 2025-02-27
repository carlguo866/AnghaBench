; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_io_resource_get_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_io_resource_get_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_dw_alloc = type { i64, %struct.bhndb_regwin* }
%struct.bhndb_regwin = type { i64, i64 }
%struct.bhndb_softc = type { %struct.bhndb_resources* }
%struct.bhndb_resources = type { i64, %struct.bhndb_dw_alloc* }
%struct.bhndb_region = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@BHNDB_REGWIN_T_DYN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid register window type\00", align 1
@BHNDB_ALLOC_FULFILL_ON_OVERCOMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"register windows exhausted attempting to map 0x%llx-0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhndb_dw_alloc* (%struct.bhndb_softc*, i64, i64, i32*, i32*, i64*)* @bhndb_io_resource_get_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhndb_dw_alloc* @bhndb_io_resource_get_window(%struct.bhndb_softc* %0, i64 %1, i64 %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.bhndb_dw_alloc*, align 8
  %8 = alloca %struct.bhndb_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.bhndb_resources*, align 8
  %15 = alloca %struct.bhndb_dw_alloc*, align 8
  %16 = alloca %struct.bhndb_region*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.bhndb_regwin*, align 8
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc* %19, i32 %20)
  %22 = load %struct.bhndb_softc*, %struct.bhndb_softc** %8, align 8
  %23 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %22, i32 0, i32 0
  %24 = load %struct.bhndb_resources*, %struct.bhndb_resources** %23, align 8
  store %struct.bhndb_resources* %24, %struct.bhndb_resources** %14, align 8
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %12, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.bhndb_resources*, %struct.bhndb_resources** %14, align 8
  %28 = call %struct.bhndb_dw_alloc* @bhndb_dw_next_free(%struct.bhndb_resources* %27)
  store %struct.bhndb_dw_alloc* %28, %struct.bhndb_dw_alloc** %15, align 8
  %29 = icmp ne %struct.bhndb_dw_alloc* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  store %struct.bhndb_dw_alloc* %31, %struct.bhndb_dw_alloc** %7, align 8
  br label %111

32:                                               ; preds = %6
  store i64 0, i64* %17, align 8
  br label %33

33:                                               ; preds = %77, %32
  %34 = load i64, i64* %17, align 8
  %35 = load %struct.bhndb_resources*, %struct.bhndb_resources** %14, align 8
  %36 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = load %struct.bhndb_resources*, %struct.bhndb_resources** %14, align 8
  %41 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %40, i32 0, i32 1
  %42 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %41, align 8
  %43 = load i64, i64* %17, align 8
  %44 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %42, i64 %43
  store %struct.bhndb_dw_alloc* %44, %struct.bhndb_dw_alloc** %15, align 8
  %45 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %46 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %45, i32 0, i32 1
  %47 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %46, align 8
  store %struct.bhndb_regwin* %47, %struct.bhndb_regwin** %18, align 8
  %48 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %49 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BHNDB_REGWIN_T_DYN, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %57 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  br label %77

61:                                               ; preds = %39
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  %66 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %18, align 8
  %69 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = icmp sgt i64 %64, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %77

74:                                               ; preds = %61
  %75 = load i32*, i32** %11, align 8
  store i32 1, i32* %75, align 4
  %76 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  store %struct.bhndb_dw_alloc* %76, %struct.bhndb_dw_alloc** %7, align 8
  br label %111

77:                                               ; preds = %73, %60
  %78 = load i64, i64* %17, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %17, align 8
  br label %33

80:                                               ; preds = %33
  %81 = load %struct.bhndb_resources*, %struct.bhndb_resources** %14, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call %struct.bhndb_region* @bhndb_find_resource_region(%struct.bhndb_resources* %81, i64 %82, i64 %83)
  store %struct.bhndb_region* %84, %struct.bhndb_region** %16, align 8
  %85 = load %struct.bhndb_region*, %struct.bhndb_region** %16, align 8
  %86 = icmp eq %struct.bhndb_region* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %7, align 8
  br label %111

88:                                               ; preds = %80
  %89 = load %struct.bhndb_region*, %struct.bhndb_region** %16, align 8
  %90 = getelementptr inbounds %struct.bhndb_region, %struct.bhndb_region* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BHNDB_ALLOC_FULFILL_ON_OVERCOMMIT, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %7, align 8
  br label %111

96:                                               ; preds = %88
  %97 = load %struct.bhndb_resources*, %struct.bhndb_resources** %14, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = call %struct.bhndb_dw_alloc* @bhndb_dw_steal(%struct.bhndb_resources* %97, i64* %98)
  store %struct.bhndb_dw_alloc* %99, %struct.bhndb_dw_alloc** %15, align 8
  %100 = icmp ne %struct.bhndb_dw_alloc* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32*, i32** %12, align 8
  store i32 1, i32* %102, align 4
  %103 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %15, align 8
  store %struct.bhndb_dw_alloc* %103, %struct.bhndb_dw_alloc** %7, align 8
  br label %111

104:                                              ; preds = %96
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %106, %107
  %109 = sub i64 %108, 1
  %110 = call i32 @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %105, i64 %109)
  br label %111

111:                                              ; preds = %104, %101, %95, %87, %74, %30
  %112 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %7, align 8
  ret %struct.bhndb_dw_alloc* %112
}

declare dso_local i32 @BHNDB_LOCK_ASSERT(%struct.bhndb_softc*, i32) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_dw_next_free(%struct.bhndb_resources*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bhndb_region* @bhndb_find_resource_region(%struct.bhndb_resources*, i64, i64) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_dw_steal(%struct.bhndb_resources*, i64*) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
