; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_bound_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_bound_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs_map = type { i64, i32, i32* }

@CK_HS_WORD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ck_hs_map*, i64)* @ck_hs_map_bound_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ck_hs_map_bound_get(%struct.ck_hs_map* %0, i64 %1) #0 {
  %3 = alloca %struct.ck_hs_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ck_hs_map* %0, %struct.ck_hs_map** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.ck_hs_map*, %struct.ck_hs_map** %3, align 8
  %9 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %7, %10
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @CK_HS_WORD_MAX, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ck_hs_map*, %struct.ck_hs_map** %3, align 8
  %14 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.ck_hs_map*, %struct.ck_hs_map** %3, align 8
  %19 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @CK_HS_LOAD(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CK_HS_WORD_MAX, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.ck_hs_map*, %struct.ck_hs_map** %3, align 8
  %29 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %28, i32 0, i32 1
  %30 = call i32 @ck_pr_load_uint(i32* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %17
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.ck_hs_map*, %struct.ck_hs_map** %3, align 8
  %34 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %33, i32 0, i32 1
  %35 = call i32 @ck_pr_load_uint(i32* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @CK_HS_LOAD(i32*) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
