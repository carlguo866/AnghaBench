; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_can_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_can_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i64 }

@.str = private unnamed_addr constant [61 x i8] c"%s: unable to extend cache due to missing cache table reload\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: unable to shrink cache; cache block %llu is dirty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i32)* @can_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_resize(%struct.cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @from_cblock(i32 %6)
  %8 = load %struct.cache*, %struct.cache** %4, align 8
  %9 = getelementptr inbounds %struct.cache, %struct.cache* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @from_cblock(i32 %10)
  %12 = icmp sgt i64 %7, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.cache*, %struct.cache** %4, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.cache*, %struct.cache** %4, align 8
  %20 = call i32 @cache_device_name(%struct.cache* %19)
  %21 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %3, align 4
  br label %49

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %2
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @from_cblock(i32 %25)
  %27 = load %struct.cache*, %struct.cache** %4, align 8
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @from_cblock(i32 %29)
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @from_cblock(i32 %33)
  %35 = add nsw i64 %34, 1
  %36 = call i32 @to_cblock(i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.cache*, %struct.cache** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @is_dirty(%struct.cache* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.cache*, %struct.cache** %4, align 8
  %43 = call i32 @cache_device_name(%struct.cache* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @from_cblock(i32 %44)
  %46 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %45)
  store i32 0, i32* %3, align 4
  br label %49

47:                                               ; preds = %32
  br label %24

48:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %41, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @from_cblock(i32) #1

declare dso_local i32 @DMERR(i8*, i32, ...) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @to_cblock(i64) #1

declare dso_local i64 @is_dirty(%struct.cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
