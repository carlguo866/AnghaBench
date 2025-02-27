; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_misc.c_fat_time_fat2unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_misc.c_fat_time_fat2unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32, i32 }

@YEAR_2100 = common dso_local global i32 0, align 4
@SECS_PER_MIN = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@days_in_year = common dso_local global i32* null, align 8
@DAYS_DELTA = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_time_fat2unix(%struct.msdos_sb_info* %0, %struct.timespec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.msdos_sb_info*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %6, align 8
  store %struct.timespec* %1, %struct.timespec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = ashr i32 %22, 9
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %12, align 4
  %25 = ashr i32 %24, 5
  %26 = and i32 %25, 15
  %27 = call i32 @max(i32 1, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 31
  %30 = call i32 @max(i32 1, i32 %29)
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %17, align 4
  %33 = add nsw i32 %32, 3
  %34 = sdiv i32 %33, 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @YEAR_2100, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %38, %5
  %42 = load i32, i32* %17, align 4
  %43 = call i64 @IS_LEAP_YEAR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %16, align 4
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %45, %41
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 31
  %54 = shl i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 5
  %57 = and i32 %56, 63
  %58 = load i32, i32* @SECS_PER_MIN, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 11
  %64 = load i32, i32* @SECS_PER_HOUR, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %17, align 4
  %69 = mul nsw i32 %68, 365
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32*, i32** @days_in_year, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %71, %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* @DAYS_DELTA, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* @SECS_PER_DAY, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %87 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %51
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys_tz, i32 0, i32 0), align 4
  %93 = load i32, i32* @SECS_PER_MIN, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %91, %51
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sdiv i32 %102, 100
  %104 = add nsw i32 %101, %103
  %105 = load %struct.timespec*, %struct.timespec** %7, align 8
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = srem i32 %107, 100
  %109 = mul nsw i32 %108, 10000000
  %110 = load %struct.timespec*, %struct.timespec** %7, align 8
  %111 = getelementptr inbounds %struct.timespec, %struct.timespec* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %118

112:                                              ; preds = %97
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.timespec*, %struct.timespec** %7, align 8
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.timespec*, %struct.timespec** %7, align 8
  %117 = getelementptr inbounds %struct.timespec, %struct.timespec* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %100
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @IS_LEAP_YEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
