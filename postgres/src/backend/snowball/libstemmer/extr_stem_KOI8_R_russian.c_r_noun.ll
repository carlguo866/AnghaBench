; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_r_noun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_r_noun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32 }

@a_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_noun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_noun(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %5 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %6 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %9 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %11 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %14 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %45, label %17

17:                                               ; preds = %1
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 5
  %29 = icmp ne i32 %28, 6
  br i1 %29, label %45, label %30

30:                                               ; preds = %17
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 31
  %42 = ashr i32 60991267, %41
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30, %17, %1
  store i32 0, i32* %2, align 4
  br label %65

46:                                               ; preds = %30
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = load i32, i32* @a_5, align 4
  %49 = call i32 @find_among_b(%struct.SN_env* %47, i32 %48, i32 36)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %65

52:                                               ; preds = %46
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = call i32 @slice_del(%struct.SN_env* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %62, %51, %45
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
