; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_set_categories.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_ad_set_categories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32 }
%struct.lev_targ_ad_setint = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"in do_ad_set_categories (%d, %d, %d):\0A\00", align 1
@MAX_AD_CATEGORY = common dso_local global i32 0, align 4
@LEV_TARG_AD_SETCATEGORIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_ad_set_categories(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.advert*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_targ_ad_setint*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ad_is_ancient(i32 %12)
  %14 = call %struct.advert* @get_ad_f(i32 %11, i32 %13)
  store %struct.advert* %14, %struct.advert** %8, align 8
  %15 = load i64, i64* @verbosity, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.advert*, %struct.advert** %8, align 8
  %25 = icmp ne %struct.advert* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_AD_CATEGORY, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MAX_AD_CATEGORY, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33, %29, %26, %23
  store i32 0, i32* %4, align 4
  br label %73

41:                                               ; preds = %36
  %42 = load %struct.advert*, %struct.advert** %8, align 8
  %43 = call i32 @load_ancient_ad(%struct.advert* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %73

48:                                               ; preds = %41
  %49 = load %struct.advert*, %struct.advert** %8, align 8
  %50 = getelementptr inbounds %struct.advert, %struct.advert* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.advert*, %struct.advert** %8, align 8
  %56 = getelementptr inbounds %struct.advert, %struct.advert* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %73

61:                                               ; preds = %54, %48
  %62 = load i32, i32* @LEV_TARG_AD_SETCATEGORIES, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.lev_targ_ad_setint* @alloc_log_event(i32 %62, i32 12, i32 %63)
  store %struct.lev_targ_ad_setint* %64, %struct.lev_targ_ad_setint** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %65, %67
  %69 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %10, align 8
  %70 = getelementptr inbounds %struct.lev_targ_ad_setint, %struct.lev_targ_ad_setint* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.lev_targ_ad_setint*, %struct.lev_targ_ad_setint** %10, align 8
  %72 = call i32 @ad_set_categories(%struct.lev_targ_ad_setint* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %61, %60, %46, %40
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local %struct.lev_targ_ad_setint* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @ad_set_categories(%struct.lev_targ_ad_setint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
