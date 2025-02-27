; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_do_write_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_do_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64, i32, i32, i64 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Writing whole lba %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32, i32, %struct.scatterlist*, i64, i32*)* @msb_do_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_do_write_request(%struct.msb_data* %0, i32 %1, i32 %2, %struct.scatterlist* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.msb_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.msb_data* %0, %struct.msb_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %104, %53, %6
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %105

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %21
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %15, align 8
  %27 = sub i64 %25, %26
  %28 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %29 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %24
  %33 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %34 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %40 = call i32 @msb_cache_discard(%struct.msb_data* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dbg_verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i32 @msb_update_block(%struct.msb_data* %44, i32 %45, %struct.scatterlist* %46, i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %7, align 4
  br label %106

53:                                               ; preds = %41
  %54 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %55 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %15, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %15, align 8
  %59 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %60 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %61
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %17

69:                                               ; preds = %24, %21
  %70 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @msb_cache_write(%struct.msb_data* %70, i32 %71, i32 %72, i32 0, %struct.scatterlist* %73, i64 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %106

80:                                               ; preds = %69
  %81 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %82 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %15, align 8
  %86 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %87 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %88
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.msb_data*, %struct.msb_data** %8, align 8
  %98 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %80
  store i32 0, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101, %80
  br label %17

105:                                              ; preds = %17
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %105, %78, %51
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @msb_cache_discard(%struct.msb_data*) #1

declare dso_local i32 @dbg_verbose(i8*, i32) #1

declare dso_local i32 @msb_update_block(%struct.msb_data*, i32, %struct.scatterlist*, i64) #1

declare dso_local i32 @msb_cache_write(%struct.msb_data*, i32, i32, i32, %struct.scatterlist*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
